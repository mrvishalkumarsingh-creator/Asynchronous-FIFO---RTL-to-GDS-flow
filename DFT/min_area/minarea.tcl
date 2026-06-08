
set_attr lib_search_path /home/vishal25157/Desktop/cmos65/90nm/verilog/DFT/min_area/lib
set_attr hdl_search_path /home/vishal25157/Desktop/cmos65/90nm/verilog/DFT/min_area/STA
set_attr library slow_wlm.lib
read_hdl synthesized_netlist.v
#set_top_module has
elaborate FIFO
read_sdc /home/vishal25157/Desktop/cmos65/90nm/verilog/DFT/min_area/minarea.sdc
report_timing -lint
set_attribute dft_scan_style muxed_scan
define_dft shift_enable -active high -create_port scan_en
define_dft test_mode -active high -create_port test_mode
report dft_setup
check_dft_rules > ../dft_report/dft_rules_report
fix_dft_violations -test_control test_mode -async_set -async_reset -clock
synthesize -to_mapped
set_attr dft_min_number_of_scan_chains 2 FIFO
set_attr dft_mix_clock_edges_in_scan_chains true FIFO
#replace_scan
connect_scan_chains -auto_create_chains -preview
connect_scan_chains -auto_create_chains
report_qor
write_atpg -cadence > /home/vishal25157/Desktop/cmos65/90nm/verilog/DFT/min_area/dft_report/rtl_module_time.atpg
write_atpg -stil > /home/vishal25157/Desktop/cmos65/90nm/verilog/DFT/min_area/dft_report/rtl_module_still_time.atpg
write_scandef > /home/vishal25157/Desktop/cmos65/90nm/verilog/DFT/min_area/dft_report/rtl_module_time.def
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge > ../syn_report/delays_time.sdf
write_hdl > /home/vishal25157/Desktop/cmos65/90nm/verilog/DFT/min_area/dft_report/synthesised_netlist_time.v
write_sdc > /home/vishal25157/Desktop/cmos65/90nm/verilog/DFT/min_area/dft_report/sdc_file_for_physical_design_time.sdc
write_script > /home/vishal25157/Desktop/cmos65/90nm/verilog/DFT/min_area/dft_report/synthesis_script_sdc_time.g
report_timing > /home/vishal25157/Desktop/cmos65/90nm/verilog/DFT/min_area/dft_report/synthesis_timing_report_time.rep
report_power > /home/vishal25157/Desktop/cmos65/90nm/verilog/DFT/min_area/dft_report/synthesis_power_report_time.rep
report_gates > /home/vishal25157/Desktop/cmos65/90nm/verilog/DFT/min_area/dft_report/synthesis_cell_report_time.rep
report_area > /home/vishal25157/Desktop/cmos65/90nm/verilog/DFT/min_area/dft_report/synthesis_area_report_time.rep
gui_show
