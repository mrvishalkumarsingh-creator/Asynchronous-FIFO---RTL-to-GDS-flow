# Create report directory
set report_dir /home/vishal25157/Desktop/cmos65/90nm/verilog/STA_AFTER/best/sta_after_DFT_mid/reports
file mkdir $report_dir

#-----------------------------------------
# Library and Design Setup
#-----------------------------------------
read_lib /home/vishal25157/Desktop/cmos65/90nm/verilog/STA_AFTER/best/lib/slow_wlm.lib
read_verilog /home/vishal25157/Desktop/cmos65/90nm/verilog/STA_AFTER/best/dft_report/synthesised_netlist_time.v
set_top_module FIFO
read_sdc /home/vishal25157/Desktop/cmos65/90nm/verilog/STA_AFTER/best/best_sta.sdc

#-----------------------------------------
# Wireload Model Setup
#-----------------------------------------
set_wire_load_model -name "wlm"
set_wire_load_mode segmented

#-----------------------------------------
# Timing and Analysis Reports
#-----------------------------------------
check_timing > $report_dir/check_timing.rpt
report_timing > $report_dir/timing_report.rpt
report_analysis_coverage > $report_dir/analysis_coverage.rpt
report_analysis_summary > $report_dir/analysis_summary.rpt

#-----------------------------------------
# Clock and Constraint Reports
#-----------------------------------------
report_clocks > $report_dir/clocks.rpt
report_case_analysis > $report_dir/case_analysis.rpt
report_constraints -all_violators > $report_dir/allviolations.rpt

#-----------------------------------------
# Wireload Report
#-----------------------------------------
report_wire_load > $report_dir/wireload.rpt

#-----------------------------------------
# Path-Based and Graph-Based Analysis
#-----------------------------------------
# PBA (Path-Based Analysis)
report_timing -retime path_slew_propagation -max_paths 30 -nworst 30 -path_type full_clock > $report_dir/pba.rpt
report_timing -max_paths 30 -nworst 30 -retime path_slew_propagation > $report_dir/pba_setup.rpt
report_timing -early -max_paths 30 -nworst 30 -retime path_slew_propagation > $report_dir/pba_hold.rpt

# GBA (Graph-Based Analysis)
report_timing -late -max_paths 30 -nworst 30 -path_type full_clock -net > $report_dir/gba_setup.rpt
report_timing -early -max_paths 30 -nworst 30 -path_type full_clock -net > $report_dir/gba_hold.rpt

#-----------------------------------------
# End of Script
#-----------------------------------------
exit
