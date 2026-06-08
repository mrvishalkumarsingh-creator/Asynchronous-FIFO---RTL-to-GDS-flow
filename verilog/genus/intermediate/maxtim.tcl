# =============================================================
# TCL Script for Asynchronous FIFO Synthesis
# =============================================================

# Read standard cell library
read_lib slow.lib

# Read HDL source files
read_hdl two_ff_sync.v
read_hdl FIFO_memory.v
read_hdl rptr_empty.v
read_hdl wptr_full.v
read_hdl FIFO.v

# Elaborate top-level design
elaborate FIFO

# Read constraints (SDC)
read_sdc constraints.sdc

# Synthesize design with medium effort and map to target library
synthesize -to_mapped -effort medium

# Write out SDF (timing delay annotation)
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge > syn_report_intermediate/fifo_delays.sdf

# Check design timing intent
check_timing_intent > syn_report_intermediate/fifo_timing_intent.rep

# Export synthesized design files
write_hdl    > syn_report_intermediate/fifo_synthesized_netlist.v
write_sdc    > syn_report_intermediate/fifo_dc_constraints.sdc
write_script > syn_report_intermediate/fifo_synthesis_script.tcl

# Generate synthesis reports
report timing > syn_report_intermediate/fifo_timing_report.rep
report power  > syn_report_intermediate/fifo_power_report.rep
report gates  > syn_report_intermediate/fifo_cell_report.rep
report area   > syn_report_intermediate/fifo_area_report.rep

# Show GUI for visualization
gui_show
