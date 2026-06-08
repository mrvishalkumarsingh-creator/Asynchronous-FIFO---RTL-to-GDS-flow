#--------------------------------------------------------------------------------

file mkdir ./placement_reports/timing
file mkdir ./placement_reports/area
file mkdir ./placement_reports/gates
file mkdir ./placement_reports/power
file mkdir ./placement_reports/verification

file mkdir ./cts_reports/timing
file mkdir ./cts_reports/area
file mkdir ./cts_reports/power

file mkdir ./route_reports/timing
file mkdir ./route_reports/area
file mkdir ./route_reports/power
file mkdir ./route_reports/verification

file mkdir ./gds
file mkdir ./netlists
file mkdir ./sdf
file mkdir ./def

#--------------------------------------------------------------------------------
# 2. DESIGN INITIALIZATION
# Load all necessary libraries, the DFT netlist, and timing constraints.
#--------------------------------------------------------------------------------

set init_gnd_net GND
set init_pwr_net VDD

set init_io_file pin_location.io 
set init_lef_file gsclib090_translated_ref.lef
set init_mmmc_file rtl_module.view
set init_top_cell FIFO
set init_verilog synthesised_netlist.v

init_design

#--------------------------------------------------------------------------------
# 3. INITIAL SANITY CHECKS
# Verify all input files are correct before starting.
#--------------------------------------------------------------------------------

checkDesign -physicalLibrary
checkDesign -timingLibrary
checkDesign -netlist
check_timing

#--------------------------------------------------------------------------------
# 4. FLOORPLANNING
# Create the die area with 50% utilization (for your first run).
#--------------------------------------------------------------------------------

getIoFlowFlag
setIoFlowFlag 0
floorPlan -site gsclib090site -r 1 0.8 4.06 4.06 4.06 4.06

#--------------------------------------------------------------------------------
# 5. POWER PLANNING (RINGS & STRIPES)
# Build the VDD and GND power grid.
#--------------------------------------------------------------------------------

addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer Metal9 -type core_rings -jog_distance 0.435 -threshold 0.435 -nets {GND VDD} -follow core -stacked_via_bottom_layer Metal1 -layer {bottom Metal8 top Metal8 right Metal9 left Metal9} -width 1.25 -spacing 0.4 -offset 0.435

addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit Metal9 -max_same_layer_jog_length 0.88 -padcore_ring_bottom_layer_limit Metal7 -number_of_sets 15 -skip_via_on_pin Standardcell -stacked_via_top_layer Metal9 -padcore_ring_top_layer_limit Metal9 -spacing 0.4 -merge_stripes_value 0.435 -layer Metal8 -block_ring_bottom_layer_limit Metal7 -width 0.44 -nets {VDD GND} -stacked_via_bottom_layer Metal1

#--------------------------------------------------------------------------------
# 6. SCAN CHAIN SPECIFICATION
# Specify the scan chain path (must be done before placement).
#--------------------------------------------------------------------------------

specifyScanChain scan1 -start DFT_sdi_1 -stop DFT_sdo_1
# specifyScanChain scan2 -start DFT_sdi_2 -stop DFT_sdo_2

#--------------------------------------------------------------------------------
# 7. PLACEMENT & PRE-CTS OPTIMIZATION
# Place the standard cells and run initial timing optimization.
#--------------------------------------------------------------------------------
puts "INFO: Placing standard cells..."
setPlaceMode -fp false
placeDesign

puts "INFO: Running pre-CTS optimization..."
optDesign -preCTS

earlyGlobalRoute

#--------------------------------------------------------------------------------
# 8. POST-PLACEMENT REPORTS
# Generate all reports required by the project for this stage.
#--------------------------------------------------------------------------------

# Verification Reports
verify_drc > ./placement_reports/verification/placement_DRC.rpt
verifyConnectivity > ./placement_reports/verification/placement_connectivity.rpt

# Timing Reports
report_timing -late -max_paths 100 > ./placement_reports/timing/timing_setup.rpt
report_timing -early -max_paths 100 > ./placement_reports/timing/timing_hold.rpt

# Area & Gate Reports
report_area -detail > ./placement_reports/area/area.rpt
reportGateCount -outfile ./placement_reports/gates/gate_count.rpt

# Power Report
set_power_analysis_mode -method static -analysis_view view1
set_power_output_dir ./placement_reports/power/
set_default_switching_activity -input_activity 0.2 -period 10.0
report_power -rail_analysis_format VS -outfile ./placement_reports/power/power.rpt

#--------------------------------------------------------------------------------
# 9. CLOCK TREE SYNTHESIS (CTS)
# Build the physical clock tree.
#--------------------------------------------------------------------------------
puts "INFO: Starting Clock Tree Synthesis..."
set_ccopt_mode -cts_buffer_cells {CLKBUFX12 CLKBUFX16 CLKBUFX2 CLKBUFX20 CLKBUFX3 CLKBUFX4 CLKBUFX6 CLKBUFX8 CLKINVX1 CLKINVX12 CLKINVX16 CLKINVX2 CLKINVX20 CLKINVX3 CLKINVX4 CLKINVX6 CLKINVX8}

create_ccopt_clock_tree_spec -file file_cts.spec -keep_all_sdc_clocks -views {view1}

source file_cts.spec

# ccopt_design is a super command. Capable of doing complete CTS
ccopt_design -check_prerequisites
ccopt_design

set init_mmmc_file postCTS.view

# --- CRITICAL STEP ---
# Switch from ideal clock to propagated (real) clock for all future analysis
puts "INFO: Switching to propagated clock mode..."

# 1. Get a list of all constraint modes in the design
set all_modes [all_constraint_modes]

# 2. Enable interactive editing for ALL modes
set_interactive_constraint_modes $all_modes

# 3. Apply the propagated clock constraint to all modes
set_propagated_clock [all_clocks]

# 4. Exit interactive constraint mode (set back to empty list)
set_interactive_constraint_modes {}

#--------------------------------------------------------------------------------
# 10. POST-CTS OPTIMIZATION
# Fix setup and hold violations introduced by the real clock tree.
#--------------------------------------------------------------------------------
puts "INFO: Running post-CTS optimization..."
optDesign -postCTS -setup
optDesign -postCTS -hold

#--------------------------------------------------------------------------------
# 11. POST-CTS REPORTS
# Generate all reports required by the project for this stage.
#--------------------------------------------------------------------------------
puts "INFO: Generating Post-CTS reports..."
# Timing Reports
report_timing -late -max_paths 100 > ./cts_reports/timing/timing_setup.rpt
report_timing -early -max_paths 100 > ./cts_reports/timing/timing_hold.rpt

# Area Report
report_area -detail > ./cts_reports/area/area.rpt

# Power Report
set_power_analysis_mode -method static -analysis_view view1
set_power_output_dir ./cts_reports/power/
set_default_switching_activity -input_activity 0.2 -period 10.0
report_power -rail_analysis_format VS -outfile ./cts_reports/power/power.rpt

#--------------------------------------------------------------------------------
# 12. ROUTING
# Perform global and detailed routing.
#--------------------------------------------------------------------------------
puts "INFO: Starting Global and Detail Routing..."
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -wireOpt

#--------------------------------------------------------------------------------
# 13. POST-ROUTING OPTIMIZATION
# Fix final setup and hold violations using real routed wire delays.
# Enable On-Chip Variation (OCV) for signoff-quality analysis.
#--------------------------------------------------------------------------------
puts "INFO: Running post-Routing optimization..."
setAnalysisMode -analysisType onChipVariation
optDesign -postRoute -setup
optDesign -postRoute -hold

#--------------------------------------------------------------------------------
# 14. FINAL EXTRACTION & SIGN-OFF REPORTS
# Generate final reports required by the project for this stage.
#--------------------------------------------------------------------------------
puts "INFO: Generating final Post-Routing signoff reports..."
# Final Parasitic Extraction
extractRC
rcOut -spef ./FIFO.spef

# Final Timing Reports
report_timing -late -max_paths 100 > ./route_reports/timing/timing_setup_final.rpt
report_timing -early -max_paths 100 > ./route_reports/timing/timing_hold_final.rpt

# Final Area Report
report_area -detail > ./route_reports/area/area_final.rpt

# Final Power Report
set_power_analysis_mode -method static -analysis_view view1
set_power_output_dir ./route_reports/power/
set_default_switching_activity -input_activity 0.2 -period 10.0
report_power -rail_analysis_format VS -outfile ./route_reports/power/power_final.rpt

# Final Verification
puts "INFO: Running final DRC and LVS checks..."
verify_drc > ./route_reports/verification/final_DRC.rpt
verifyConnectivity > ./route_reports/verification/final_LVS.rpt

#--------------------------------------------------------------------------------
# 15. SAVE FINAL DESIGN
# Write out all the final files (GDS, Netlist, DEF).
#--------------------------------------------------------------------------------
puts "INFO: Saving final design files..."
# GDS File
streamOut ./gds/FIFO_0.5.gds -mapFile streamOut.map -libName DesignLib -units 2000 -mode ALL

# Final Netlist
saveNetlist ./netlists/FIFO_post_route.v

# Final DEF File
defOut -floorplan -netlist -routing ./def/FIFO.def

# Final SDF File
write_sdf -ideal_clock_network ./sdf/FIFO_final.sdf

# Final Innovus Database
saveDesign ./FIFO_final.enc

puts "INFO: SCRIPT COMPLETED SUCCESSFULLY."
#================================================================================
# SCRIPT END
#================================================================================
