
set report_dir /home/utkarsh25154/Desktop/cmos65/90nm/verilog/STA/reports
file mkdir $report_dir

read_lib /home/utkarsh25154/Desktop/cmos65/90nm/verilog/STA/slow_wlm.lib
read_verilog /home/utkarsh25154/Desktop/cmos65/90nm/verilog/syn_report_mid/synthesized_netlist.v
set_top_module FIFO
read_sdc /home/utkarsh25154/Desktop/cmos65/90nm/verilog/STA/constraints.sdc



set_wire_load_model -name "wlm"
set_wire_load_mode segmented


check_timing > $report_dir/check_timing.rpt
report_timing > $report_dir/timing_report.rpt
report_analysis_coverage > $report_dir/analysis_coverage.rpt
report_analysis_summary > $report_dir/analysis_summary.rpt


report_clocks > $report_dir/clocks.rpt
report_case_analysis > $report_dir/case_analysis.rpt
report_constraints -all_violators > $report_dir/allviolations.rpt


report_wire_load > $report_dir/wireload.rpt


report_timing -max_paths 30 -nworst 30 -retime path_slew_propagation > $report_dir/pba_setup.rpt
report_timing -early -max_paths 30 -nworst 30 -retime path_slew_propagation > $report_dir/pba_hold.rpt


report_timing -late -max_paths 30 -nworst 30 -path_type full_clock -net > $report_dir/gba_setup.rpt
report_timing -early -max_paths 30 -nworst 30 -path_type full_clock -net > $report_dir/gba_hold.rpt


exit
