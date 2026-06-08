######################################################################

# Created by Genus(TM) Synthesis Solution 19.13-s073_1 on Tue Oct 14 17:17:09 IST 2025

# This file contains the RC script for /designs/FIFO

######################################################################

::legacy::set_attribute -quiet init_lib_search_path /home/utkarsh25154/Desktop/cmos65/90nm/verilog/DFT/best/lib /
::legacy::set_attribute -quiet common_ui false /
::legacy::set_attribute -quiet design_mode_process no_value /
::legacy::set_attribute -quiet phys_assume_met_fill 0.0 /
::legacy::set_attribute -quiet map_placed_for_hum false /
::legacy::set_attribute -quiet phys_use_invs_extraction true /
::legacy::set_attribute -quiet phys_route_time_out 120.0 /
::legacy::set_attribute -quiet capacitance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet resistance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet runtime_by_stage { {to_generic 1 24 0 6}  {first_condense 0 24 1 8}  {reify 1 25 3 11}  {global_incr_map 1 26 0 11}  {incr_opt 0 26 0 12} } /
::legacy::set_attribute -quiet tinfo_tstamp_file .rs_utkarsh25154.tstamp /
::legacy::set_attribute -quiet phys_use_segment_parasitics true /
::legacy::set_attribute -quiet probabilistic_extraction true /
::legacy::set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
::legacy::set_attribute -quiet maximum_interval_of_vias inf /
::legacy::set_attribute -quiet layer_aware_buffer true /
::legacy::set_attribute -quiet interconnect_mode wireload /
::legacy::set_attribute -quiet wireload_mode enclosed /
::legacy::set_attribute -quiet wireload_selection none /
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/slow/operating_conditions/slow
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/slow/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
# BEGIN DFT SECTION
::legacy::set_attribute -quiet dft_scan_style muxed_scan /
::legacy::set_attribute -quiet dft_scanbit_waveform_analysis false /
define_dft test_clock -name wclk -domain wclk -function test_clock -period 50000.0 -divide_period 1 -rise 1 -divide_rise 2 -fall 9 -divide_fall 10 -controllable /designs/FIFO/ports_in/wclk
::legacy::set_attribute -quiet user_defined_signal false /designs/FIFO/dft/test_clock_domains/wclk/wclk
::legacy::set_attribute -quiet tree_name wclk /designs/FIFO/dft/test_clock_domains/wclk/wclk
::legacy::set_attribute -quiet partition_info {} /designs/FIFO/dft/test_clock_domains/wclk/wclk
define_dft test_clock -name rclk -domain rclk -function test_clock -period 50000.0 -divide_period 1 -rise 1 -divide_rise 2 -fall 9 -divide_fall 10 -controllable /designs/FIFO/ports_in/rclk
::legacy::set_attribute -quiet user_defined_signal false /designs/FIFO/dft/test_clock_domains/rclk/rclk
::legacy::set_attribute -quiet tree_name rclk /designs/FIFO/dft/test_clock_domains/rclk/rclk
::legacy::set_attribute -quiet partition_info {} /designs/FIFO/dft/test_clock_domains/rclk/rclk
define_test_signal -name scan_en -active high   /designs/FIFO/ports_in/scan_en -function shift_enable  -index 0   -no_ideal  
::legacy::set_attribute -quiet pmbist_use none /designs/FIFO/dft/test_signals/scan_en
::legacy::set_attribute -quiet default_shift_enable true /designs/FIFO/dft/test_signals/scan_en
::legacy::set_attribute -quiet lec_value auto /designs/FIFO/dft/test_signals/scan_en
define_test_signal -name test_mode -active high   /designs/FIFO/ports_in/test_mode -function test_mode  -index 0   -no_ideal -skip_has_fanout_check 
::legacy::set_attribute -quiet pmbist_use none /designs/FIFO/dft/test_signals/test_mode
::legacy::set_attribute -quiet lec_value auto /designs/FIFO/dft/test_signals/test_mode
define_test_signal -name wrst_n -active high   /designs/FIFO/ports_in/wrst_n -function async_set_reset  -index 0  -shared_input -no_ideal -skip_has_fanout_check 
::legacy::set_attribute -quiet pmbist_use none /designs/FIFO/dft/test_signals/wrst_n
::legacy::set_attribute -quiet user_defined_signal false /designs/FIFO/dft/test_signals/wrst_n
::legacy::set_attribute -quiet lec_value auto /designs/FIFO/dft/test_signals/wrst_n
define_test_signal -name rrst_n -active high   /designs/FIFO/ports_in/rrst_n -function async_set_reset  -index 1  -shared_input -no_ideal -skip_has_fanout_check 
::legacy::set_attribute -quiet pmbist_use none /designs/FIFO/dft/test_signals/rrst_n
::legacy::set_attribute -quiet user_defined_signal false /designs/FIFO/dft/test_signals/rrst_n
::legacy::set_attribute -quiet lec_value auto /designs/FIFO/dft/test_signals/rrst_n
::legacy::set_attribute -quiet atpg_use none /designs/FIFO/dft/test_clock_domains/wclk/wclk
::legacy::set_attribute -quiet atpg_use none /designs/FIFO/dft/test_clock_domains/rclk/rclk
identify_multibit_cell_abstract_scan_segments -design /designs/FIFO
#define_dft scan_chain -name AutoChain_1 -sdi /designs/FIFO/ports_in/DFT_sdi_1  -sdo /designs/FIFO/ports_out/DFT_sdo_1  -analyze -non_shared_out      -write_script_flow
#::legacy::set_attribute -quiet compressed true /designs/FIFO/dft/report/actual_scan_chains/AutoChain_1
#define_dft scan_chain -name AutoChain_2 -sdi /designs/FIFO/ports_in/DFT_sdi_2  -sdo /designs/FIFO/ports_out/DFT_sdo_2  -analyze -non_shared_out      -write_script_flow
#::legacy::set_attribute -quiet compressed true /designs/FIFO/dft/report/actual_scan_chains/AutoChain_2
# END DFT SECTION
::legacy::set_attribute -quiet seq_reason_deleted_internal {} /designs/FIFO
::legacy::set_attribute -quiet qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 6458} {cell_count 304} {utilization  0.00} {runtime 1 24 0 6} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 7694} {cell_count 596} {utilization  0.00} {runtime 0 24 1 8} }{reify {wns 214748365} {tns 0} {vep 0} {area 5482} {cell_count 371} {utilization  0.00} {runtime 1 25 3 11} }{global_incr_map {wns 214748365} {tns 0} {vep 0} {area 5482} {cell_count 371} {utilization  0.00} {runtime 1 26 0 11} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 5479} {cell_count 367} {utilization  0.00} {runtime 0 26 0 12} }} /designs/FIFO
::legacy::set_attribute -quiet seq_mbci_coverage 0.0 /designs/FIFO
::legacy::set_attribute -quiet hdl_user_name FIFO /designs/FIFO
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/utkarsh25154/Desktop/cmos65/90nm/verilog/DFT/best/RTL/async_fifo.v} {/home/utkarsh25154/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/FIFO
::legacy::set_attribute -quiet verification_directory fv/FIFO /designs/FIFO
::legacy::set_attribute -quiet dft_min_number_of_scan_chains 2 /designs/FIFO
::legacy::set_attribute -quiet dft_mix_clock_edges_in_scan_chains true /designs/FIFO
::legacy::set_attribute -quiet original_name {wdata[7]} {/designs/FIFO/ports_in/wdata[7]}
::legacy::set_attribute -quiet original_name {wdata[6]} {/designs/FIFO/ports_in/wdata[6]}
::legacy::set_attribute -quiet original_name {wdata[5]} {/designs/FIFO/ports_in/wdata[5]}
::legacy::set_attribute -quiet original_name {wdata[4]} {/designs/FIFO/ports_in/wdata[4]}
::legacy::set_attribute -quiet original_name {wdata[3]} {/designs/FIFO/ports_in/wdata[3]}
::legacy::set_attribute -quiet original_name {wdata[2]} {/designs/FIFO/ports_in/wdata[2]}
::legacy::set_attribute -quiet original_name {wdata[1]} {/designs/FIFO/ports_in/wdata[1]}
::legacy::set_attribute -quiet original_name {wdata[0]} {/designs/FIFO/ports_in/wdata[0]}
::legacy::set_attribute -quiet original_name winc /designs/FIFO/ports_in/winc
::legacy::set_attribute -quiet original_name wclk /designs/FIFO/ports_in/wclk
::legacy::set_attribute -quiet original_name wrst_n /designs/FIFO/ports_in/wrst_n
::legacy::set_attribute -quiet original_name rinc /designs/FIFO/ports_in/rinc
::legacy::set_attribute -quiet original_name rclk /designs/FIFO/ports_in/rclk
::legacy::set_attribute -quiet original_name rrst_n /designs/FIFO/ports_in/rrst_n
::legacy::set_attribute -quiet dft_auto_created 6 /designs/FIFO/ports_in/scan_en
::legacy::set_attribute -quiet dft_auto_created 7 /designs/FIFO/ports_in/test_mode
::legacy::set_attribute -quiet dft_auto_created 2 /designs/FIFO/ports_in/DFT_sdi_1
::legacy::set_attribute -quiet dft_auto_created 2 /designs/FIFO/ports_in/DFT_sdi_2
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/FIFO/ports_out/rdata[7]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[7]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/FIFO/ports_out/rdata[7]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/FIFO/ports_out/rdata[7]}
::legacy::set_attribute -quiet original_name {rdata[7]} {/designs/FIFO/ports_out/rdata[7]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[7]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/FIFO/ports_out/rdata[6]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[6]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/FIFO/ports_out/rdata[6]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/FIFO/ports_out/rdata[6]}
::legacy::set_attribute -quiet original_name {rdata[6]} {/designs/FIFO/ports_out/rdata[6]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[6]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/FIFO/ports_out/rdata[5]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[5]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/FIFO/ports_out/rdata[5]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/FIFO/ports_out/rdata[5]}
::legacy::set_attribute -quiet original_name {rdata[5]} {/designs/FIFO/ports_out/rdata[5]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[5]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/FIFO/ports_out/rdata[4]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[4]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/FIFO/ports_out/rdata[4]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/FIFO/ports_out/rdata[4]}
::legacy::set_attribute -quiet original_name {rdata[4]} {/designs/FIFO/ports_out/rdata[4]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[4]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/FIFO/ports_out/rdata[3]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[3]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/FIFO/ports_out/rdata[3]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/FIFO/ports_out/rdata[3]}
::legacy::set_attribute -quiet original_name {rdata[3]} {/designs/FIFO/ports_out/rdata[3]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[3]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/FIFO/ports_out/rdata[2]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[2]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/FIFO/ports_out/rdata[2]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/FIFO/ports_out/rdata[2]}
::legacy::set_attribute -quiet original_name {rdata[2]} {/designs/FIFO/ports_out/rdata[2]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[2]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/FIFO/ports_out/rdata[1]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[1]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/FIFO/ports_out/rdata[1]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/FIFO/ports_out/rdata[1]}
::legacy::set_attribute -quiet original_name {rdata[1]} {/designs/FIFO/ports_out/rdata[1]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[1]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/FIFO/ports_out/rdata[0]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[0]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/FIFO/ports_out/rdata[0]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/FIFO/ports_out/rdata[0]}
::legacy::set_attribute -quiet original_name {rdata[0]} {/designs/FIFO/ports_out/rdata[0]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/FIFO/ports_out/rdata[0]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/FIFO/ports_out/wfull
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/FIFO/ports_out/wfull
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/FIFO/ports_out/wfull
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/FIFO/ports_out/wfull
::legacy::set_attribute -quiet original_name wfull /designs/FIFO/ports_out/wfull
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/FIFO/ports_out/wfull
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/FIFO/ports_out/rempty
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/FIFO/ports_out/rempty
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/FIFO/ports_out/rempty
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/FIFO/ports_out/rempty
::legacy::set_attribute -quiet original_name rempty /designs/FIFO/ports_out/rempty
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/FIFO/ports_out/rempty
::legacy::set_attribute -quiet dft_auto_created 3 /designs/FIFO/ports_out/DFT_sdo_1
::legacy::set_attribute -quiet dft_auto_created 3 /designs/FIFO/ports_out/DFT_sdo_2
::legacy::set_attribute -quiet hdl_user_name FIFO_memory /designs/FIFO/subdesigns/FIFO_memory_DATA_SIZE8_ADDR_SIZE4
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/utkarsh25154/Desktop/cmos65/90nm/verilog/DFT/best/RTL/async_fifo.v} {/home/utkarsh25154/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/FIFO/subdesigns/FIFO_memory_DATA_SIZE8_ADDR_SIZE4
::legacy::set_attribute -quiet dft_auto_created 1 /designs/FIFO/instances_hier/fifomem/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/FIFO/instances_hier/fifomem/subports_in/DFT_sen
::legacy::set_attribute -quiet dft_auto_created 1 /designs/FIFO/instances_hier/fifomem/subports_out/DFT_sdo
::legacy::set_attribute -quiet original_name {{fifomem/mem[0][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[0][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[0][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[0][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[0][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[0][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[0][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[0][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[0][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[0][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[0][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[0][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[0][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[0][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[0][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[0][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[0][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[0][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[0][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[0][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[0][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[0][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[0][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[0][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[0][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[1][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[1][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[1][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[1][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[1][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[1][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[1][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[1][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[1][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[1][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[1][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[1][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[1][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[1][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[1][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[1][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[1][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[1][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[1][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[1][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[1][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[1][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[1][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[1][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[1][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[2][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[2][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[2][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[2][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[2][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[2][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[2][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[2][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[2][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[2][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[2][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[2][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[2][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[2][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[2][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[2][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[2][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[2][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[2][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[2][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[2][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[2][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[2][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[2][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[2][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[3][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[3][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[3][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[3][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[3][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[3][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[3][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[3][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[3][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[3][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[3][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[3][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[3][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[3][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[3][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[3][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[3][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[3][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[3][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[3][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[3][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[3][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[3][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[3][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[3][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[4][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[4][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[4][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[4][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[4][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[4][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[4][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[4][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[4][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[4][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[4][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[4][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[4][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[4][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[4][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[4][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[4][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[4][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[4][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[4][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[4][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[4][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[4][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[4][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[4][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[5][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[5][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[5][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[5][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[5][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[5][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[5][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[5][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[5][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[5][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[5][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[5][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[5][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[5][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[5][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[5][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[5][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[5][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[5][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[5][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[5][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[5][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[5][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[5][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[5][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[6][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[6][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[6][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[6][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[6][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[6][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[6][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[6][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[6][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[6][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[6][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[6][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[6][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[6][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[6][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[6][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[6][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[6][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[6][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[6][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[6][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[6][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[6][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[6][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[6][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[7][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[7][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[7][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[7][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[7][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[7][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[7][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[7][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[7][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[7][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[7][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[7][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[7][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[7][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[7][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[7][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[7][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[7][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[7][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[7][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[7][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[7][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[7][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[7][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[7][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[8][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[8][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[8][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[8][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[8][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[8][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[8][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[8][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[8][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[8][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[8][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[8][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[8][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[8][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[8][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[8][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[8][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[8][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[8][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[8][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[8][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[8][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[8][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[8][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[8][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[9][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[9][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[9][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[9][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[9][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[9][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[9][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[9][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[9][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[9][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[9][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[9][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[9][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[9][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[9][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[9][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[9][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[9][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[9][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[9][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[9][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[9][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[9][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[9][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[9][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[10][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[10][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[10][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[10][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[10][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[10][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[10][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[10][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[10][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[10][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[10][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[10][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[10][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[10][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[10][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[10][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[10][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[10][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[10][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[10][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[10][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[10][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[10][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[10][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[10][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[11][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[11][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[11][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[11][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[11][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[11][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[11][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[11][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[11][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[11][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[11][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[11][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[11][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[11][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[11][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[11][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[11][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[11][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[11][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[11][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[11][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[11][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[11][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[11][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[11][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[12][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[12][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[12][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[12][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[12][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[12][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[12][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[12][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[12][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[12][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[12][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[12][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[12][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[12][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[12][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[12][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[12][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[12][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[12][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[12][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[12][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[12][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[12][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[12][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[12][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[13][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[13][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[13][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[13][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[13][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[13][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[13][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[13][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[13][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[13][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[13][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[13][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[13][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[13][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[13][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[13][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[13][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[13][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[13][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[13][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[13][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[13][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[13][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[13][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[13][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[14][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[14][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[14][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[14][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[14][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[14][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[14][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[14][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[14][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[14][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[14][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[14][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[14][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[14][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[14][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[14][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[14][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[14][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[14][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[14][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[14][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[14][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[14][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[14][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[14][7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[15][0]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][0]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[15][0]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][0]}
::legacy::set_attribute -quiet original_name {fifomem/mem[15][0]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[15][1]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][1]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[15][1]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][1]}
::legacy::set_attribute -quiet original_name {fifomem/mem[15][1]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[15][2]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][2]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[15][2]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][2]}
::legacy::set_attribute -quiet original_name {fifomem/mem[15][2]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[15][3]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][3]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[15][3]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][3]}
::legacy::set_attribute -quiet original_name {fifomem/mem[15][3]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[15][4]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][4]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[15][4]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][4]}
::legacy::set_attribute -quiet original_name {fifomem/mem[15][4]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[15][5]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][5]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[15][5]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][5]}
::legacy::set_attribute -quiet original_name {fifomem/mem[15][5]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[15][6]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][6]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[15][6]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][6]}
::legacy::set_attribute -quiet original_name {fifomem/mem[15][6]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{fifomem/mem[15][7]}} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][7]}
::legacy::set_attribute -quiet single_bit_orig_name {fifomem/mem[15][7]} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][7]}
::legacy::set_attribute -quiet original_name {fifomem/mem[15][7]/q} {/designs/FIFO/instances_hier/fifomem/instances_seq/mem_reg[15][7]/pins_out/Q}
::legacy::set_attribute -quiet hdl_user_name rptr_empty /designs/FIFO/subdesigns/rptr_empty_ADDR_SIZE4
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/utkarsh25154/Desktop/cmos65/90nm/verilog/DFT/best/RTL/async_fifo.v} {/home/utkarsh25154/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/FIFO/subdesigns/rptr_empty_ADDR_SIZE4
::legacy::set_attribute -quiet dft_auto_created 1 /designs/FIFO/instances_hier/rptr_empty_inst/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/FIFO/instances_hier/rptr_empty_inst/subports_in/DFT_sen
::legacy::set_attribute -quiet original_name {{rptr_empty_inst/rptr[3]}} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {rptr_empty_inst/rptr[3]} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[3]}
::legacy::set_attribute -quiet original_name {rptr_empty_inst/rptr[3]/q} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{rptr_empty_inst/rptr[2]}} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {rptr_empty_inst/rptr[2]} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[2]}
::legacy::set_attribute -quiet original_name {rptr_empty_inst/rptr[2]/q} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{rptr_empty_inst/rptr[4]}} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {rptr_empty_inst/rptr[4]} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[4]}
::legacy::set_attribute -quiet original_name {rptr_empty_inst/rptr[4]/q} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{rptr_empty_inst/rptr[1]}} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {rptr_empty_inst/rptr[1]} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[1]}
::legacy::set_attribute -quiet original_name {rptr_empty_inst/rptr[1]/q} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{rptr_empty_inst/rptr[0]}} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {rptr_empty_inst/rptr[0]} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[0]}
::legacy::set_attribute -quiet original_name {rptr_empty_inst/rptr[0]/q} {/designs/FIFO/instances_hier/rptr_empty_inst/instances_seq/rptr_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet hdl_user_name two_ff_sync /designs/FIFO/subdesigns/two_ff_sync_SIZE5
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/utkarsh25154/Desktop/cmos65/90nm/verilog/DFT/best/RTL/async_fifo.v} {/home/utkarsh25154/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/FIFO/subdesigns/two_ff_sync_SIZE5
::legacy::set_attribute -quiet dft_auto_created 1 /designs/FIFO/instances_hier/sync_r2w/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/FIFO/instances_hier/sync_r2w/subports_in/DFT_sen
::legacy::set_attribute -quiet original_name {{sync_r2w/q2[4]}} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_r2w/q2[4]} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[4]}
::legacy::set_attribute -quiet original_name {sync_r2w/q2[4]/q} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_r2w/q2[3]}} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_r2w/q2[3]} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[3]}
::legacy::set_attribute -quiet original_name {sync_r2w/q2[3]/q} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_r2w/q2[1]}} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_r2w/q2[1]} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[1]}
::legacy::set_attribute -quiet original_name {sync_r2w/q2[1]/q} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_r2w/q2[0]}} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_r2w/q2[0]} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[0]}
::legacy::set_attribute -quiet original_name {sync_r2w/q2[0]/q} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_r2w/q2[2]}} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_r2w/q2[2]} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[2]}
::legacy::set_attribute -quiet original_name {sync_r2w/q2[2]/q} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q2_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_r2w/q1[2]}} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_r2w/q1[2]} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[2]}
::legacy::set_attribute -quiet original_name {sync_r2w/q1[2]/q} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_r2w/q1[3]}} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_r2w/q1[3]} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[3]}
::legacy::set_attribute -quiet original_name {sync_r2w/q1[3]/q} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_r2w/q1[4]}} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_r2w/q1[4]} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[4]}
::legacy::set_attribute -quiet original_name {sync_r2w/q1[4]/q} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_r2w/q1[1]}} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_r2w/q1[1]} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[1]}
::legacy::set_attribute -quiet original_name {sync_r2w/q1[1]/q} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_r2w/q1[0]}} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_r2w/q1[0]} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[0]}
::legacy::set_attribute -quiet original_name {sync_r2w/q1[0]/q} {/designs/FIFO/instances_hier/sync_r2w/instances_seq/q1_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet hdl_user_name two_ff_sync /designs/FIFO/subdesigns/two_ff_sync_SIZE5_25
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/utkarsh25154/Desktop/cmos65/90nm/verilog/DFT/best/RTL/async_fifo.v} {/home/utkarsh25154/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/FIFO/subdesigns/two_ff_sync_SIZE5_25
::legacy::set_attribute -quiet dft_auto_created 1 /designs/FIFO/instances_hier/sync_w2r/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/FIFO/instances_hier/sync_w2r/subports_in/DFT_sen
::legacy::set_attribute -quiet original_name {{sync_w2r/q2[4]}} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_w2r/q2[4]} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[4]}
::legacy::set_attribute -quiet original_name {sync_w2r/q2[4]/q} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_w2r/q2[3]}} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_w2r/q2[3]} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[3]}
::legacy::set_attribute -quiet original_name {sync_w2r/q2[3]/q} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_w2r/q2[1]}} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_w2r/q2[1]} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[1]}
::legacy::set_attribute -quiet original_name {sync_w2r/q2[1]/q} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_w2r/q2[0]}} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_w2r/q2[0]} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[0]}
::legacy::set_attribute -quiet original_name {sync_w2r/q2[0]/q} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_w2r/q2[2]}} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_w2r/q2[2]} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[2]}
::legacy::set_attribute -quiet original_name {sync_w2r/q2[2]/q} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q2_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_w2r/q1[2]}} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_w2r/q1[2]} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[2]}
::legacy::set_attribute -quiet original_name {sync_w2r/q1[2]/q} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_w2r/q1[3]}} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_w2r/q1[3]} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[3]}
::legacy::set_attribute -quiet original_name {sync_w2r/q1[3]/q} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_w2r/q1[4]}} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_w2r/q1[4]} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[4]}
::legacy::set_attribute -quiet original_name {sync_w2r/q1[4]/q} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_w2r/q1[1]}} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_w2r/q1[1]} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[1]}
::legacy::set_attribute -quiet original_name {sync_w2r/q1[1]/q} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{sync_w2r/q1[0]}} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {sync_w2r/q1[0]} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[0]}
::legacy::set_attribute -quiet original_name {sync_w2r/q1[0]/q} {/designs/FIFO/instances_hier/sync_w2r/instances_seq/q1_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet hdl_user_name wptr_full /designs/FIFO/subdesigns/wptr_full_ADDR_SIZE4
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/utkarsh25154/Desktop/cmos65/90nm/verilog/DFT/best/RTL/async_fifo.v} {/home/utkarsh25154/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/FIFO/subdesigns/wptr_full_ADDR_SIZE4
::legacy::set_attribute -quiet dft_auto_created 1 /designs/FIFO/instances_hier/wptr_full_inst/subports_in/DFT_sen
::legacy::set_attribute -quiet original_name {{wptr_full_inst/wptr[3]}} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {wptr_full_inst/wptr[3]} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[3]}
::legacy::set_attribute -quiet original_name {wptr_full_inst/wptr[3]/q} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{wptr_full_inst/wptr[2]}} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {wptr_full_inst/wptr[2]} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[2]}
::legacy::set_attribute -quiet original_name {wptr_full_inst/wptr[2]/q} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{wptr_full_inst/wptr[4]}} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {wptr_full_inst/wptr[4]} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[4]}
::legacy::set_attribute -quiet original_name {wptr_full_inst/wptr[4]/q} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{wptr_full_inst/wptr[1]}} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {wptr_full_inst/wptr[1]} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[1]}
::legacy::set_attribute -quiet original_name {wptr_full_inst/wptr[1]/q} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{wptr_full_inst/wptr[0]}} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {wptr_full_inst/wptr[0]} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[0]}
::legacy::set_attribute -quiet original_name {wptr_full_inst/wptr[0]/q} {/designs/FIFO/instances_hier/wptr_full_inst/instances_seq/wptr_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{rdata[7]}} {/designs/FIFO/instances_seq/rdata_reg[7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_seq/rdata_reg[7]}
::legacy::set_attribute -quiet single_bit_orig_name {rdata[7]} {/designs/FIFO/instances_seq/rdata_reg[7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_seq/rdata_reg[7]}
::legacy::set_attribute -quiet original_name {rdata[7]/q} {/designs/FIFO/instances_seq/rdata_reg[7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{rdata[6]}} {/designs/FIFO/instances_seq/rdata_reg[6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_seq/rdata_reg[6]}
::legacy::set_attribute -quiet single_bit_orig_name {rdata[6]} {/designs/FIFO/instances_seq/rdata_reg[6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_seq/rdata_reg[6]}
::legacy::set_attribute -quiet original_name {rdata[6]/q} {/designs/FIFO/instances_seq/rdata_reg[6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{rdata[4]}} {/designs/FIFO/instances_seq/rdata_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_seq/rdata_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {rdata[4]} {/designs/FIFO/instances_seq/rdata_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_seq/rdata_reg[4]}
::legacy::set_attribute -quiet original_name {rdata[4]/q} {/designs/FIFO/instances_seq/rdata_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{rdata[0]}} {/designs/FIFO/instances_seq/rdata_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_seq/rdata_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {rdata[0]} {/designs/FIFO/instances_seq/rdata_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_seq/rdata_reg[0]}
::legacy::set_attribute -quiet original_name {rdata[0]/q} {/designs/FIFO/instances_seq/rdata_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{rdata[3]}} {/designs/FIFO/instances_seq/rdata_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_seq/rdata_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {rdata[3]} {/designs/FIFO/instances_seq/rdata_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_seq/rdata_reg[3]}
::legacy::set_attribute -quiet original_name {rdata[3]/q} {/designs/FIFO/instances_seq/rdata_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{rdata[5]}} {/designs/FIFO/instances_seq/rdata_reg[5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_seq/rdata_reg[5]}
::legacy::set_attribute -quiet single_bit_orig_name {rdata[5]} {/designs/FIFO/instances_seq/rdata_reg[5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_seq/rdata_reg[5]}
::legacy::set_attribute -quiet original_name {rdata[5]/q} {/designs/FIFO/instances_seq/rdata_reg[5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{rdata[2]}} {/designs/FIFO/instances_seq/rdata_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_seq/rdata_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {rdata[2]} {/designs/FIFO/instances_seq/rdata_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_seq/rdata_reg[2]}
::legacy::set_attribute -quiet original_name {rdata[2]/q} {/designs/FIFO/instances_seq/rdata_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{rdata[1]}} {/designs/FIFO/instances_seq/rdata_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/FIFO/instances_seq/rdata_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {rdata[1]} {/designs/FIFO/instances_seq/rdata_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/FIFO/instances_seq/rdata_reg[1]}
::legacy::set_attribute -quiet original_name {rdata[1]/q} {/designs/FIFO/instances_seq/rdata_reg[1]/pins_out/Q}
# BEGIN PMBIST SECTION
# END PMBIST SECTION
check_dft_rules /designs/FIFO
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 19.13-s073_1
## flowkit v19.10-s013_1
## Written on 17:17:10 14-Oct 2025
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_flowkit_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_flowkit_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_flowkit_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_flowkit_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_flowkit_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_flowkit_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_flowkit_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_flowkit_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_flowkit_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_flowkit_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_flowkit_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_flowkit_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_flowkit_db flow_template_type {}}
if {[is_attribute flow_template_version -obj_type root]} {set_flowkit_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_flowkit_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_branch -obj_type root]} {set_flowkit_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_flowkit_db flow_caller_data {}}
if {[is_attribute flow_current -obj_type root]} {set_flowkit_db flow_current {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_flowkit_db flow_hier_path {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_flowkit_db flow_db_directory dbs}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_flowkit_db flow_exit_when_done false}
if {[is_attribute flow_history -obj_type root]} {set_flowkit_db flow_history {}}
if {[is_attribute flow_log_directory -obj_type root]} {set_flowkit_db flow_log_directory logs}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_flowkit_db flow_mail_on_error false}
if {[is_attribute flow_mail_to -obj_type root]} {set_flowkit_db flow_mail_to {}}
if {[is_attribute flow_metrics_file -obj_type root]} {set_flowkit_db flow_metrics_file {}}
if {[is_attribute flow_metrics_snapshot_parent_uuid -obj_type root]} {set_flowkit_db flow_metrics_snapshot_parent_uuid {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_flowkit_db flow_metrics_snapshot_uuid {}}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_flowkit_db flow_overwrite_db false}
if {[is_attribute flow_report_directory -obj_type root]} {set_flowkit_db flow_report_directory reports}
if {[is_attribute flow_run_tag -obj_type root]} {set_flowkit_db flow_run_tag {}}
if {[is_attribute flow_schedule -obj_type root]} {set_flowkit_db flow_schedule {}}
if {[is_attribute flow_script -obj_type root]} {set_flowkit_db flow_script {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_flowkit_db flow_starting_db {}}
if {[is_attribute flow_status_file -obj_type root]} {set_flowkit_db flow_status_file {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_flowkit_db flow_step_canonical_current {}}
if {[is_attribute flow_step_current -obj_type root]} {set_flowkit_db flow_step_current {}}
if {[is_attribute flow_step_last -obj_type root]} {set_flowkit_db flow_step_last {}}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_flowkit_db flow_step_last_msg {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_flowkit_db flow_step_last_status not_run}
if {[is_attribute flow_step_next -obj_type root]} {set_flowkit_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_flowkit_db flow_working_directory .}

#############################################################
#####   User Defined Attributes   ###########################

