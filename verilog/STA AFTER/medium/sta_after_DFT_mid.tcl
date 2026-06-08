file mkdir sta_after_synthesis_maxfreq/reports
set report_dir sta_after_synthesis_maxfreq/reports
read_lib slow.lib
read_verilog synthesised_netlist_time.v
set_top_module FIFO
read_sdc min_area_sta.sdc
check_timing > $report_dir/check_timing_maxfreq.rpt
report_timing > $report_dir/timing_report_maxfreq.rpt
report_timing -retime path_slew_propagation -max_path 50 -nworst 50 -path_type full_clock > $report_dir/pba_maxfreq.rpt
report_analysis_coverage > $report_dir/analysis_coverage_maxfreq.rpt
report_analysis_summary > $report_dir/analysis_summary_maxfreq.rpt
report_clocks > $report_dir/clocks_maxfreq.rpt
report_case_analysis > $report_dir/case_analysis_maxfreq.rpt
report_constraints -all_violators > $report_dir/allviolations_maxfreq.rpt
