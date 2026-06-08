######################################################################

# Created by Genus(TM) Synthesis Solution 19.13-s073_1 on Mon Oct 13 22:36:55 IST 2025

# This file contains the RC script for design:FIFO

######################################################################

set_db -quiet design_mode_process no_value
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_hum false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet runtime_by_stage { {to_generic 0 7 0 6}  {first_condense 2 9 3 10}  {reify 2 11 6 16}  {global_incr_map 1 12 0 17}  {incr_opt 0 12 0 17} }
set_db -quiet tinfo_tstamp_file .rs_vishal25157.tstamp
set_db -quiet metric_enable true
set_db -quiet flow_metrics_snapshot_uuid eb340329-feaf-410b-b86f-dc58e9bb4fa5
set_db -quiet phys_use_segment_parasitics true
set_db -quiet probabilistic_extraction true
set_db -quiet ple_correlation_factors {1.9000 2.0000}
set_db -quiet maximum_interval_of_vias inf
set_db -quiet layer_aware_buffer true
set_db -quiet interconnect_mode wireload
set_db -quiet wireload_mode enclosed
set_db -quiet wireload_selection none
set_db -quiet operating_condition:default_emulate_libset_max/slow/slow .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow/slow .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow/_nominal_ .tree_type balanced_tree
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name wclk -domain domain_1 -period 2000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -remove -design design:FIFO port:FIFO/wclk
define_clock -name rclk -domain domain_1 -period 10000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -remove -design design:FIFO port:FIFO/rclk
define_cost_group -design design:FIFO -name rclk
define_cost_group -design design:FIFO -name wclk
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:FIFO/wclk -name create_clock_delay_domain_1_wclk_R_0 port:FIFO/wclk
set_db -quiet external_delay:FIFO/create_clock_delay_domain_1_wclk_R_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:FIFO/wclk -edge_fall -name create_clock_delay_domain_1_wclk_F_0 port:FIFO/wclk
set_db -quiet external_delay:FIFO/create_clock_delay_domain_1_wclk_F_0 .clock_network_latency_included true
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:FIFO/rclk -name create_clock_delay_domain_1_rclk_R_0 port:FIFO/rclk
set_db -quiet external_delay:FIFO/create_clock_delay_domain_1_rclk_R_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:FIFO/rclk -edge_fall -name create_clock_delay_domain_1_rclk_F_0 port:FIFO/rclk
set_db -quiet external_delay:FIFO/create_clock_delay_domain_1_rclk_F_0 .clock_network_latency_included true
path_group -paths [specify_paths -to clock:FIFO/wclk]  -name wclk -group cost_group:FIFO/wclk -user_priority -1047552
path_group -paths [specify_paths -to clock:FIFO/rclk]  -name rclk -group cost_group:FIFO/rclk -user_priority -1047552
path_disable -paths [specify_paths -lenient -from {port:FIFO/wrst_n port:FIFO/rrst_n}]  -name zipped_path_disable_0 -user_priority -901120
set_db -quiet exception:FIFO/zipped_path_disable_0 .sdc_filename_linenumber {{constraints.sdc 7} {constraints.sdc 6}}
path_disable -paths [specify_paths -lenient -from clock:FIFO/wclk -to clock:FIFO/rclk]  -name set_clock_groups_exception_constraints.sdc_line_10 -user_priority -887808
set_db -quiet exception:FIFO/set_clock_groups_exception_constraints.sdc_line_10 .sdc_filename_linenumber {{constraints.sdc 10}}
set_db -quiet exception:FIFO/set_clock_groups_exception_constraints.sdc_line_10 .skip_in_write_sdc true
set_db -quiet exception:FIFO/set_clock_groups_exception_constraints.sdc_line_10 .asynchronous true
set_db -quiet exception:FIFO/set_clock_groups_exception_constraints.sdc_line_10 .from_corresponds_to_group_option true
set_db -quiet exception:FIFO/set_clock_groups_exception_constraints.sdc_line_10 .scg_id 1
set_db -quiet exception:FIFO/set_clock_groups_exception_constraints.sdc_line_10 .scg_name clock_groups_wclk_to_rclk
path_disable -paths [specify_paths -lenient -from clock:FIFO/rclk -to clock:FIFO/wclk]  -name set_clock_groups_exception_constraints.sdc_line_10_1 -user_priority -887808
set_db -quiet exception:FIFO/set_clock_groups_exception_constraints.sdc_line_10_1 .sdc_filename_linenumber {{constraints.sdc 10}}
set_db -quiet exception:FIFO/set_clock_groups_exception_constraints.sdc_line_10_1 .skip_in_write_sdc true
set_db -quiet exception:FIFO/set_clock_groups_exception_constraints.sdc_line_10_1 .asynchronous true
set_db -quiet exception:FIFO/set_clock_groups_exception_constraints.sdc_line_10_1 .from_corresponds_to_group_option true
set_db -quiet exception:FIFO/set_clock_groups_exception_constraints.sdc_line_10_1 .scg_id 1
set_db -quiet exception:FIFO/set_clock_groups_exception_constraints.sdc_line_10_1 .scg_name clock_groups_wclk_to_rclk
path_disable -paths [specify_paths -lenient -from {{hpin:FIFO/rptr_empty_inst/rptr[4]} {hpin:FIFO/rptr_empty_inst/rptr[3]} {hpin:FIFO/rptr_empty_inst/rptr[2]} {hpin:FIFO/rptr_empty_inst/rptr[1]} {hpin:FIFO/rptr_empty_inst/rptr[0]}} -to {{hpin:FIFO/sync_r2w/din[4]} {hpin:FIFO/sync_r2w/din[3]} {hpin:FIFO/sync_r2w/din[2]} {hpin:FIFO/sync_r2w/din[1]} {hpin:FIFO/sync_r2w/din[0]}}]  -name constraints.sdc_line_16 -user_priority -909312
set_db -quiet exception:FIFO/constraints.sdc_line_16 .sdc_filename_linenumber {{constraints.sdc 16}}
path_disable -paths [specify_paths -lenient -from {{hpin:FIFO/wptr_full_inst/wptr[4]} {hpin:FIFO/wptr_full_inst/wptr[3]} {hpin:FIFO/wptr_full_inst/wptr[2]} {hpin:FIFO/wptr_full_inst/wptr[1]} {hpin:FIFO/wptr_full_inst/wptr[0]}} -to {{hpin:FIFO/sync_w2r/din[4]} {hpin:FIFO/sync_w2r/din[3]} {hpin:FIFO/sync_w2r/din[2]} {hpin:FIFO/sync_w2r/din[1]} {hpin:FIFO/sync_w2r/din[0]}}]  -name constraints.sdc_line_20 -user_priority -909312
set_db -quiet exception:FIFO/constraints.sdc_line_20 .sdc_filename_linenumber {{constraints.sdc 20}}
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
identify_multibit_cell_abstract_scan_segments -design design:FIFO
# END DFT SECTION
set_db -quiet design:FIFO .seq_reason_deleted_internal {}
set_db -quiet design:FIFO .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 8979} {cell_count 504} {utilization  0.00} {runtime 0 7 0 6} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 11203} {cell_count 1056} {utilization  0.00} {runtime 2 9 3 10} }{reify {wns 77} {tns 0} {vep 0} {area 4670} {cell_count 325} {utilization  0.00} {runtime 2 11 6 16} }{global_incr_map {wns 32} {tns 0} {vep 0} {area 4661} {cell_count 321} {utilization  0.00} {runtime 1 12 0 17} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 4614} {cell_count 310} {utilization  0.00} {runtime 0 12 0 17} }}
set_db -quiet design:FIFO .seq_mbci_coverage 0.0
set_db -quiet design:FIFO .hdl_user_name FIFO
set_db -quiet design:FIFO .hdl_filelist {{default -v2001 {SYNTHESIS} {FIFO.v} {} {}}}
set_db -quiet design:FIFO .verification_directory fv/FIFO
set_db -quiet {port:FIFO/wdata[7]} .original_name {wdata[7]}
set_db -quiet {port:FIFO/wdata[6]} .original_name {wdata[6]}
set_db -quiet {port:FIFO/wdata[5]} .original_name {wdata[5]}
set_db -quiet {port:FIFO/wdata[4]} .original_name {wdata[4]}
set_db -quiet {port:FIFO/wdata[3]} .original_name {wdata[3]}
set_db -quiet {port:FIFO/wdata[2]} .original_name {wdata[2]}
set_db -quiet {port:FIFO/wdata[1]} .original_name {wdata[1]}
set_db -quiet {port:FIFO/wdata[0]} .original_name {wdata[0]}
set_db -quiet port:FIFO/winc .original_name winc
set_db -quiet port:FIFO/wclk .original_name wclk
set_db -quiet port:FIFO/wrst_n .original_name wrst_n
set_db -quiet port:FIFO/rinc .original_name rinc
set_db -quiet port:FIFO/rclk .original_name rclk
set_db -quiet port:FIFO/rrst_n .original_name rrst_n
set_db -quiet {port:FIFO/rdata[7]} .original_name {rdata[7]}
set_db -quiet {port:FIFO/rdata[6]} .original_name {rdata[6]}
set_db -quiet {port:FIFO/rdata[5]} .original_name {rdata[5]}
set_db -quiet {port:FIFO/rdata[4]} .original_name {rdata[4]}
set_db -quiet {port:FIFO/rdata[3]} .original_name {rdata[3]}
set_db -quiet {port:FIFO/rdata[2]} .original_name {rdata[2]}
set_db -quiet {port:FIFO/rdata[1]} .original_name {rdata[1]}
set_db -quiet {port:FIFO/rdata[0]} .original_name {rdata[0]}
set_db -quiet port:FIFO/wfull .original_name wfull
set_db -quiet port:FIFO/rempty .original_name rempty
set_db -quiet module:FIFO/FIFO_memory_DATA_SIZE8_ADDR_SIZE4 .hdl_user_name FIFO_memory
set_db -quiet module:FIFO/FIFO_memory_DATA_SIZE8_ADDR_SIZE4 .hdl_filelist {{default -v2001 {SYNTHESIS} {FIFO.v} {} {}}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][0]} .original_name {{fifomem/mem[0][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][0]} .single_bit_orig_name {fifomem/mem[0][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[0][0]/Q} .original_name {fifomem/mem[0][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][1]} .original_name {{fifomem/mem[0][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][1]} .single_bit_orig_name {fifomem/mem[0][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[0][1]/Q} .original_name {fifomem/mem[0][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][2]} .original_name {{fifomem/mem[0][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][2]} .single_bit_orig_name {fifomem/mem[0][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[0][2]/Q} .original_name {fifomem/mem[0][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][3]} .original_name {{fifomem/mem[0][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][3]} .single_bit_orig_name {fifomem/mem[0][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[0][3]/Q} .original_name {fifomem/mem[0][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][4]} .original_name {{fifomem/mem[0][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][4]} .single_bit_orig_name {fifomem/mem[0][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[0][4]/Q} .original_name {fifomem/mem[0][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][5]} .original_name {{fifomem/mem[0][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][5]} .single_bit_orig_name {fifomem/mem[0][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[0][5]/Q} .original_name {fifomem/mem[0][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][6]} .original_name {{fifomem/mem[0][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][6]} .single_bit_orig_name {fifomem/mem[0][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[0][6]/Q} .original_name {fifomem/mem[0][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][7]} .original_name {{fifomem/mem[0][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][7]} .single_bit_orig_name {fifomem/mem[0][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[0][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[0][7]/Q} .original_name {fifomem/mem[0][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][0]} .original_name {{fifomem/mem[1][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][0]} .single_bit_orig_name {fifomem/mem[1][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[1][0]/Q} .original_name {fifomem/mem[1][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][1]} .original_name {{fifomem/mem[1][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][1]} .single_bit_orig_name {fifomem/mem[1][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[1][1]/Q} .original_name {fifomem/mem[1][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][2]} .original_name {{fifomem/mem[1][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][2]} .single_bit_orig_name {fifomem/mem[1][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[1][2]/Q} .original_name {fifomem/mem[1][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][3]} .original_name {{fifomem/mem[1][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][3]} .single_bit_orig_name {fifomem/mem[1][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[1][3]/Q} .original_name {fifomem/mem[1][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][4]} .original_name {{fifomem/mem[1][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][4]} .single_bit_orig_name {fifomem/mem[1][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[1][4]/Q} .original_name {fifomem/mem[1][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][5]} .original_name {{fifomem/mem[1][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][5]} .single_bit_orig_name {fifomem/mem[1][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[1][5]/Q} .original_name {fifomem/mem[1][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][6]} .original_name {{fifomem/mem[1][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][6]} .single_bit_orig_name {fifomem/mem[1][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[1][6]/Q} .original_name {fifomem/mem[1][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][7]} .original_name {{fifomem/mem[1][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][7]} .single_bit_orig_name {fifomem/mem[1][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[1][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[1][7]/Q} .original_name {fifomem/mem[1][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][0]} .original_name {{fifomem/mem[2][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][0]} .single_bit_orig_name {fifomem/mem[2][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[2][0]/Q} .original_name {fifomem/mem[2][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][1]} .original_name {{fifomem/mem[2][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][1]} .single_bit_orig_name {fifomem/mem[2][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[2][1]/Q} .original_name {fifomem/mem[2][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][2]} .original_name {{fifomem/mem[2][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][2]} .single_bit_orig_name {fifomem/mem[2][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[2][2]/Q} .original_name {fifomem/mem[2][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][3]} .original_name {{fifomem/mem[2][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][3]} .single_bit_orig_name {fifomem/mem[2][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[2][3]/Q} .original_name {fifomem/mem[2][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][4]} .original_name {{fifomem/mem[2][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][4]} .single_bit_orig_name {fifomem/mem[2][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[2][4]/Q} .original_name {fifomem/mem[2][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][5]} .original_name {{fifomem/mem[2][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][5]} .single_bit_orig_name {fifomem/mem[2][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[2][5]/Q} .original_name {fifomem/mem[2][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][6]} .original_name {{fifomem/mem[2][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][6]} .single_bit_orig_name {fifomem/mem[2][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[2][6]/Q} .original_name {fifomem/mem[2][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][7]} .original_name {{fifomem/mem[2][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][7]} .single_bit_orig_name {fifomem/mem[2][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[2][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[2][7]/Q} .original_name {fifomem/mem[2][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][0]} .original_name {{fifomem/mem[3][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][0]} .single_bit_orig_name {fifomem/mem[3][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[3][0]/Q} .original_name {fifomem/mem[3][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][1]} .original_name {{fifomem/mem[3][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][1]} .single_bit_orig_name {fifomem/mem[3][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[3][1]/Q} .original_name {fifomem/mem[3][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][2]} .original_name {{fifomem/mem[3][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][2]} .single_bit_orig_name {fifomem/mem[3][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[3][2]/Q} .original_name {fifomem/mem[3][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][3]} .original_name {{fifomem/mem[3][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][3]} .single_bit_orig_name {fifomem/mem[3][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[3][3]/Q} .original_name {fifomem/mem[3][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][4]} .original_name {{fifomem/mem[3][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][4]} .single_bit_orig_name {fifomem/mem[3][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[3][4]/Q} .original_name {fifomem/mem[3][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][5]} .original_name {{fifomem/mem[3][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][5]} .single_bit_orig_name {fifomem/mem[3][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[3][5]/Q} .original_name {fifomem/mem[3][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][6]} .original_name {{fifomem/mem[3][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][6]} .single_bit_orig_name {fifomem/mem[3][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[3][6]/Q} .original_name {fifomem/mem[3][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][7]} .original_name {{fifomem/mem[3][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][7]} .single_bit_orig_name {fifomem/mem[3][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[3][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[3][7]/Q} .original_name {fifomem/mem[3][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][0]} .original_name {{fifomem/mem[4][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][0]} .single_bit_orig_name {fifomem/mem[4][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[4][0]/Q} .original_name {fifomem/mem[4][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][1]} .original_name {{fifomem/mem[4][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][1]} .single_bit_orig_name {fifomem/mem[4][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[4][1]/Q} .original_name {fifomem/mem[4][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][2]} .original_name {{fifomem/mem[4][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][2]} .single_bit_orig_name {fifomem/mem[4][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[4][2]/Q} .original_name {fifomem/mem[4][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][3]} .original_name {{fifomem/mem[4][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][3]} .single_bit_orig_name {fifomem/mem[4][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[4][3]/Q} .original_name {fifomem/mem[4][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][4]} .original_name {{fifomem/mem[4][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][4]} .single_bit_orig_name {fifomem/mem[4][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[4][4]/Q} .original_name {fifomem/mem[4][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][5]} .original_name {{fifomem/mem[4][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][5]} .single_bit_orig_name {fifomem/mem[4][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[4][5]/Q} .original_name {fifomem/mem[4][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][6]} .original_name {{fifomem/mem[4][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][6]} .single_bit_orig_name {fifomem/mem[4][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[4][6]/Q} .original_name {fifomem/mem[4][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][7]} .original_name {{fifomem/mem[4][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][7]} .single_bit_orig_name {fifomem/mem[4][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[4][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[4][7]/Q} .original_name {fifomem/mem[4][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][0]} .original_name {{fifomem/mem[5][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][0]} .single_bit_orig_name {fifomem/mem[5][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[5][0]/Q} .original_name {fifomem/mem[5][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][1]} .original_name {{fifomem/mem[5][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][1]} .single_bit_orig_name {fifomem/mem[5][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[5][1]/Q} .original_name {fifomem/mem[5][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][2]} .original_name {{fifomem/mem[5][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][2]} .single_bit_orig_name {fifomem/mem[5][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[5][2]/Q} .original_name {fifomem/mem[5][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][3]} .original_name {{fifomem/mem[5][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][3]} .single_bit_orig_name {fifomem/mem[5][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[5][3]/Q} .original_name {fifomem/mem[5][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][4]} .original_name {{fifomem/mem[5][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][4]} .single_bit_orig_name {fifomem/mem[5][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[5][4]/Q} .original_name {fifomem/mem[5][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][5]} .original_name {{fifomem/mem[5][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][5]} .single_bit_orig_name {fifomem/mem[5][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[5][5]/Q} .original_name {fifomem/mem[5][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][6]} .original_name {{fifomem/mem[5][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][6]} .single_bit_orig_name {fifomem/mem[5][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[5][6]/Q} .original_name {fifomem/mem[5][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][7]} .original_name {{fifomem/mem[5][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][7]} .single_bit_orig_name {fifomem/mem[5][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[5][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[5][7]/Q} .original_name {fifomem/mem[5][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][0]} .original_name {{fifomem/mem[6][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][0]} .single_bit_orig_name {fifomem/mem[6][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[6][0]/Q} .original_name {fifomem/mem[6][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][1]} .original_name {{fifomem/mem[6][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][1]} .single_bit_orig_name {fifomem/mem[6][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[6][1]/Q} .original_name {fifomem/mem[6][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][2]} .original_name {{fifomem/mem[6][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][2]} .single_bit_orig_name {fifomem/mem[6][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[6][2]/Q} .original_name {fifomem/mem[6][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][3]} .original_name {{fifomem/mem[6][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][3]} .single_bit_orig_name {fifomem/mem[6][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[6][3]/Q} .original_name {fifomem/mem[6][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][4]} .original_name {{fifomem/mem[6][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][4]} .single_bit_orig_name {fifomem/mem[6][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[6][4]/Q} .original_name {fifomem/mem[6][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][5]} .original_name {{fifomem/mem[6][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][5]} .single_bit_orig_name {fifomem/mem[6][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[6][5]/Q} .original_name {fifomem/mem[6][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][6]} .original_name {{fifomem/mem[6][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][6]} .single_bit_orig_name {fifomem/mem[6][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[6][6]/Q} .original_name {fifomem/mem[6][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][7]} .original_name {{fifomem/mem[6][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][7]} .single_bit_orig_name {fifomem/mem[6][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[6][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[6][7]/Q} .original_name {fifomem/mem[6][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][0]} .original_name {{fifomem/mem[7][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][0]} .single_bit_orig_name {fifomem/mem[7][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[7][0]/Q} .original_name {fifomem/mem[7][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][1]} .original_name {{fifomem/mem[7][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][1]} .single_bit_orig_name {fifomem/mem[7][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[7][1]/Q} .original_name {fifomem/mem[7][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][2]} .original_name {{fifomem/mem[7][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][2]} .single_bit_orig_name {fifomem/mem[7][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[7][2]/Q} .original_name {fifomem/mem[7][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][3]} .original_name {{fifomem/mem[7][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][3]} .single_bit_orig_name {fifomem/mem[7][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[7][3]/Q} .original_name {fifomem/mem[7][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][4]} .original_name {{fifomem/mem[7][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][4]} .single_bit_orig_name {fifomem/mem[7][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[7][4]/Q} .original_name {fifomem/mem[7][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][5]} .original_name {{fifomem/mem[7][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][5]} .single_bit_orig_name {fifomem/mem[7][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[7][5]/Q} .original_name {fifomem/mem[7][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][6]} .original_name {{fifomem/mem[7][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][6]} .single_bit_orig_name {fifomem/mem[7][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[7][6]/Q} .original_name {fifomem/mem[7][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][7]} .original_name {{fifomem/mem[7][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][7]} .single_bit_orig_name {fifomem/mem[7][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[7][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[7][7]/Q} .original_name {fifomem/mem[7][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][0]} .original_name {{fifomem/mem[8][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][0]} .single_bit_orig_name {fifomem/mem[8][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[8][0]/Q} .original_name {fifomem/mem[8][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][1]} .original_name {{fifomem/mem[8][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][1]} .single_bit_orig_name {fifomem/mem[8][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[8][1]/Q} .original_name {fifomem/mem[8][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][2]} .original_name {{fifomem/mem[8][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][2]} .single_bit_orig_name {fifomem/mem[8][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[8][2]/Q} .original_name {fifomem/mem[8][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][3]} .original_name {{fifomem/mem[8][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][3]} .single_bit_orig_name {fifomem/mem[8][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[8][3]/Q} .original_name {fifomem/mem[8][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][4]} .original_name {{fifomem/mem[8][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][4]} .single_bit_orig_name {fifomem/mem[8][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[8][4]/Q} .original_name {fifomem/mem[8][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][5]} .original_name {{fifomem/mem[8][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][5]} .single_bit_orig_name {fifomem/mem[8][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[8][5]/Q} .original_name {fifomem/mem[8][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][6]} .original_name {{fifomem/mem[8][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][6]} .single_bit_orig_name {fifomem/mem[8][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[8][6]/Q} .original_name {fifomem/mem[8][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][7]} .original_name {{fifomem/mem[8][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][7]} .single_bit_orig_name {fifomem/mem[8][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[8][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[8][7]/Q} .original_name {fifomem/mem[8][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][0]} .original_name {{fifomem/mem[9][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][0]} .single_bit_orig_name {fifomem/mem[9][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[9][0]/Q} .original_name {fifomem/mem[9][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][1]} .original_name {{fifomem/mem[9][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][1]} .single_bit_orig_name {fifomem/mem[9][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[9][1]/Q} .original_name {fifomem/mem[9][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][2]} .original_name {{fifomem/mem[9][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][2]} .single_bit_orig_name {fifomem/mem[9][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[9][2]/Q} .original_name {fifomem/mem[9][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][3]} .original_name {{fifomem/mem[9][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][3]} .single_bit_orig_name {fifomem/mem[9][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[9][3]/Q} .original_name {fifomem/mem[9][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][4]} .original_name {{fifomem/mem[9][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][4]} .single_bit_orig_name {fifomem/mem[9][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[9][4]/Q} .original_name {fifomem/mem[9][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][5]} .original_name {{fifomem/mem[9][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][5]} .single_bit_orig_name {fifomem/mem[9][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[9][5]/Q} .original_name {fifomem/mem[9][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][6]} .original_name {{fifomem/mem[9][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][6]} .single_bit_orig_name {fifomem/mem[9][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[9][6]/Q} .original_name {fifomem/mem[9][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][7]} .original_name {{fifomem/mem[9][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][7]} .single_bit_orig_name {fifomem/mem[9][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[9][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[9][7]/Q} .original_name {fifomem/mem[9][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][0]} .original_name {{fifomem/mem[10][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][0]} .single_bit_orig_name {fifomem/mem[10][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[10][0]/Q} .original_name {fifomem/mem[10][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][1]} .original_name {{fifomem/mem[10][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][1]} .single_bit_orig_name {fifomem/mem[10][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[10][1]/Q} .original_name {fifomem/mem[10][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][2]} .original_name {{fifomem/mem[10][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][2]} .single_bit_orig_name {fifomem/mem[10][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[10][2]/Q} .original_name {fifomem/mem[10][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][3]} .original_name {{fifomem/mem[10][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][3]} .single_bit_orig_name {fifomem/mem[10][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[10][3]/Q} .original_name {fifomem/mem[10][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][4]} .original_name {{fifomem/mem[10][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][4]} .single_bit_orig_name {fifomem/mem[10][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[10][4]/Q} .original_name {fifomem/mem[10][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][5]} .original_name {{fifomem/mem[10][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][5]} .single_bit_orig_name {fifomem/mem[10][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[10][5]/Q} .original_name {fifomem/mem[10][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][6]} .original_name {{fifomem/mem[10][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][6]} .single_bit_orig_name {fifomem/mem[10][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[10][6]/Q} .original_name {fifomem/mem[10][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][7]} .original_name {{fifomem/mem[10][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][7]} .single_bit_orig_name {fifomem/mem[10][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[10][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[10][7]/Q} .original_name {fifomem/mem[10][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][0]} .original_name {{fifomem/mem[11][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][0]} .single_bit_orig_name {fifomem/mem[11][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[11][0]/Q} .original_name {fifomem/mem[11][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][1]} .original_name {{fifomem/mem[11][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][1]} .single_bit_orig_name {fifomem/mem[11][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[11][1]/Q} .original_name {fifomem/mem[11][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][2]} .original_name {{fifomem/mem[11][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][2]} .single_bit_orig_name {fifomem/mem[11][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[11][2]/Q} .original_name {fifomem/mem[11][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][3]} .original_name {{fifomem/mem[11][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][3]} .single_bit_orig_name {fifomem/mem[11][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[11][3]/Q} .original_name {fifomem/mem[11][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][4]} .original_name {{fifomem/mem[11][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][4]} .single_bit_orig_name {fifomem/mem[11][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[11][4]/Q} .original_name {fifomem/mem[11][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][5]} .original_name {{fifomem/mem[11][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][5]} .single_bit_orig_name {fifomem/mem[11][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[11][5]/Q} .original_name {fifomem/mem[11][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][6]} .original_name {{fifomem/mem[11][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][6]} .single_bit_orig_name {fifomem/mem[11][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[11][6]/Q} .original_name {fifomem/mem[11][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][7]} .original_name {{fifomem/mem[11][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][7]} .single_bit_orig_name {fifomem/mem[11][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[11][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[11][7]/Q} .original_name {fifomem/mem[11][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][0]} .original_name {{fifomem/mem[12][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][0]} .single_bit_orig_name {fifomem/mem[12][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[12][0]/Q} .original_name {fifomem/mem[12][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][1]} .original_name {{fifomem/mem[12][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][1]} .single_bit_orig_name {fifomem/mem[12][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[12][1]/Q} .original_name {fifomem/mem[12][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][2]} .original_name {{fifomem/mem[12][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][2]} .single_bit_orig_name {fifomem/mem[12][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[12][2]/Q} .original_name {fifomem/mem[12][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][3]} .original_name {{fifomem/mem[12][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][3]} .single_bit_orig_name {fifomem/mem[12][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[12][3]/Q} .original_name {fifomem/mem[12][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][4]} .original_name {{fifomem/mem[12][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][4]} .single_bit_orig_name {fifomem/mem[12][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[12][4]/Q} .original_name {fifomem/mem[12][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][5]} .original_name {{fifomem/mem[12][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][5]} .single_bit_orig_name {fifomem/mem[12][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[12][5]/Q} .original_name {fifomem/mem[12][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][6]} .original_name {{fifomem/mem[12][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][6]} .single_bit_orig_name {fifomem/mem[12][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[12][6]/Q} .original_name {fifomem/mem[12][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][7]} .original_name {{fifomem/mem[12][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][7]} .single_bit_orig_name {fifomem/mem[12][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[12][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[12][7]/Q} .original_name {fifomem/mem[12][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][0]} .original_name {{fifomem/mem[13][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][0]} .single_bit_orig_name {fifomem/mem[13][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[13][0]/Q} .original_name {fifomem/mem[13][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][1]} .original_name {{fifomem/mem[13][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][1]} .single_bit_orig_name {fifomem/mem[13][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[13][1]/Q} .original_name {fifomem/mem[13][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][2]} .original_name {{fifomem/mem[13][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][2]} .single_bit_orig_name {fifomem/mem[13][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[13][2]/Q} .original_name {fifomem/mem[13][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][3]} .original_name {{fifomem/mem[13][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][3]} .single_bit_orig_name {fifomem/mem[13][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[13][3]/Q} .original_name {fifomem/mem[13][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][4]} .original_name {{fifomem/mem[13][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][4]} .single_bit_orig_name {fifomem/mem[13][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[13][4]/Q} .original_name {fifomem/mem[13][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][5]} .original_name {{fifomem/mem[13][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][5]} .single_bit_orig_name {fifomem/mem[13][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[13][5]/Q} .original_name {fifomem/mem[13][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][6]} .original_name {{fifomem/mem[13][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][6]} .single_bit_orig_name {fifomem/mem[13][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[13][6]/Q} .original_name {fifomem/mem[13][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][7]} .original_name {{fifomem/mem[13][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][7]} .single_bit_orig_name {fifomem/mem[13][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[13][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[13][7]/Q} .original_name {fifomem/mem[13][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][0]} .original_name {{fifomem/mem[14][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][0]} .single_bit_orig_name {fifomem/mem[14][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[14][0]/Q} .original_name {fifomem/mem[14][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][1]} .original_name {{fifomem/mem[14][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][1]} .single_bit_orig_name {fifomem/mem[14][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[14][1]/Q} .original_name {fifomem/mem[14][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][2]} .original_name {{fifomem/mem[14][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][2]} .single_bit_orig_name {fifomem/mem[14][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[14][2]/Q} .original_name {fifomem/mem[14][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][3]} .original_name {{fifomem/mem[14][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][3]} .single_bit_orig_name {fifomem/mem[14][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[14][3]/Q} .original_name {fifomem/mem[14][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][4]} .original_name {{fifomem/mem[14][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][4]} .single_bit_orig_name {fifomem/mem[14][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[14][4]/Q} .original_name {fifomem/mem[14][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][5]} .original_name {{fifomem/mem[14][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][5]} .single_bit_orig_name {fifomem/mem[14][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[14][5]/Q} .original_name {fifomem/mem[14][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][6]} .original_name {{fifomem/mem[14][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][6]} .single_bit_orig_name {fifomem/mem[14][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[14][6]/Q} .original_name {fifomem/mem[14][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][7]} .original_name {{fifomem/mem[14][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][7]} .single_bit_orig_name {fifomem/mem[14][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[14][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[14][7]/Q} .original_name {fifomem/mem[14][7]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][0]} .original_name {{fifomem/mem[15][0]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][0]} .single_bit_orig_name {fifomem/mem[15][0]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[15][0]/Q} .original_name {fifomem/mem[15][0]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][1]} .original_name {{fifomem/mem[15][1]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][1]} .single_bit_orig_name {fifomem/mem[15][1]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[15][1]/Q} .original_name {fifomem/mem[15][1]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][2]} .original_name {{fifomem/mem[15][2]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][2]} .single_bit_orig_name {fifomem/mem[15][2]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[15][2]/Q} .original_name {fifomem/mem[15][2]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][3]} .original_name {{fifomem/mem[15][3]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][3]} .single_bit_orig_name {fifomem/mem[15][3]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[15][3]/Q} .original_name {fifomem/mem[15][3]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][4]} .original_name {{fifomem/mem[15][4]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][4]} .single_bit_orig_name {fifomem/mem[15][4]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[15][4]/Q} .original_name {fifomem/mem[15][4]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][5]} .original_name {{fifomem/mem[15][5]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][5]} .single_bit_orig_name {fifomem/mem[15][5]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[15][5]/Q} .original_name {fifomem/mem[15][5]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][6]} .original_name {{fifomem/mem[15][6]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][6]} .single_bit_orig_name {fifomem/mem[15][6]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[15][6]/Q} .original_name {fifomem/mem[15][6]/q}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][7]} .original_name {{fifomem/mem[15][7]}}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][7]} .single_bit_orig_name {fifomem/mem[15][7]}
set_db -quiet {inst:FIFO/fifomem/mem_reg[15][7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/fifomem/mem_reg[15][7]/Q} .original_name {fifomem/mem[15][7]/q}
set_db -quiet module:FIFO/rptr_empty_ADDR_SIZE4 .hdl_user_name rptr_empty
set_db -quiet module:FIFO/rptr_empty_ADDR_SIZE4 .hdl_filelist {{default -v2001 {SYNTHESIS} {FIFO.v} {} {}}}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[3]} .original_name {{rptr_empty_inst/rptr[3]}}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[3]} .single_bit_orig_name {rptr_empty_inst/rptr[3]}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/rptr_empty_inst/rptr_reg[3]/Q} .original_name {rptr_empty_inst/rptr[3]/q}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[4]} .original_name {{rptr_empty_inst/rptr[4]}}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[4]} .single_bit_orig_name {rptr_empty_inst/rptr[4]}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/rptr_empty_inst/rptr_reg[4]/Q} .original_name {rptr_empty_inst/rptr[4]/q}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[2]} .original_name {{rptr_empty_inst/rptr[2]}}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[2]} .single_bit_orig_name {rptr_empty_inst/rptr[2]}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/rptr_empty_inst/rptr_reg[2]/Q} .original_name {rptr_empty_inst/rptr[2]/q}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[1]} .original_name {{rptr_empty_inst/rptr[1]}}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[1]} .single_bit_orig_name {rptr_empty_inst/rptr[1]}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/rptr_empty_inst/rptr_reg[1]/Q} .original_name {rptr_empty_inst/rptr[1]/q}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[0]} .original_name {{rptr_empty_inst/rptr[0]}}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[0]} .single_bit_orig_name {rptr_empty_inst/rptr[0]}
set_db -quiet {inst:FIFO/rptr_empty_inst/rptr_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/rptr_empty_inst/rptr_reg[0]/Q} .original_name {rptr_empty_inst/rptr[0]/q}
set_db -quiet module:FIFO/two_ff_sync_SIZE5 .hdl_user_name two_ff_sync
set_db -quiet module:FIFO/two_ff_sync_SIZE5 .hdl_filelist {{default -v2001 {SYNTHESIS} {FIFO.v} {} {}}}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[4]} .original_name {{sync_r2w/q2[4]}}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[4]} .single_bit_orig_name {sync_r2w/q2[4]}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_r2w/q2_reg[4]/Q} .original_name {sync_r2w/q2[4]/q}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[3]} .original_name {{sync_r2w/q2[3]}}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[3]} .single_bit_orig_name {sync_r2w/q2[3]}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_r2w/q2_reg[3]/Q} .original_name {sync_r2w/q2[3]/q}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[1]} .original_name {{sync_r2w/q2[1]}}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[1]} .single_bit_orig_name {sync_r2w/q2[1]}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_r2w/q2_reg[1]/Q} .original_name {sync_r2w/q2[1]/q}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[0]} .original_name {{sync_r2w/q2[0]}}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[0]} .single_bit_orig_name {sync_r2w/q2[0]}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_r2w/q2_reg[0]/Q} .original_name {sync_r2w/q2[0]/q}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[2]} .original_name {{sync_r2w/q2[2]}}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[2]} .single_bit_orig_name {sync_r2w/q2[2]}
set_db -quiet {inst:FIFO/sync_r2w/q2_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_r2w/q2_reg[2]/Q} .original_name {sync_r2w/q2[2]/q}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[2]} .original_name {{sync_r2w/q1[2]}}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[2]} .single_bit_orig_name {sync_r2w/q1[2]}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_r2w/q1_reg[2]/Q} .original_name {sync_r2w/q1[2]/q}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[3]} .original_name {{sync_r2w/q1[3]}}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[3]} .single_bit_orig_name {sync_r2w/q1[3]}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_r2w/q1_reg[3]/Q} .original_name {sync_r2w/q1[3]/q}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[4]} .original_name {{sync_r2w/q1[4]}}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[4]} .single_bit_orig_name {sync_r2w/q1[4]}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_r2w/q1_reg[4]/Q} .original_name {sync_r2w/q1[4]/q}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[1]} .original_name {{sync_r2w/q1[1]}}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[1]} .single_bit_orig_name {sync_r2w/q1[1]}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_r2w/q1_reg[1]/Q} .original_name {sync_r2w/q1[1]/q}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[0]} .original_name {{sync_r2w/q1[0]}}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[0]} .single_bit_orig_name {sync_r2w/q1[0]}
set_db -quiet {inst:FIFO/sync_r2w/q1_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_r2w/q1_reg[0]/Q} .original_name {sync_r2w/q1[0]/q}
set_db -quiet module:FIFO/two_ff_sync_SIZE5_1 .hdl_user_name two_ff_sync
set_db -quiet module:FIFO/two_ff_sync_SIZE5_1 .hdl_filelist {{default -v2001 {SYNTHESIS} {FIFO.v} {} {}}}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[4]} .original_name {{sync_w2r/q2[4]}}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[4]} .single_bit_orig_name {sync_w2r/q2[4]}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_w2r/q2_reg[4]/Q} .original_name {sync_w2r/q2[4]/q}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[3]} .original_name {{sync_w2r/q2[3]}}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[3]} .single_bit_orig_name {sync_w2r/q2[3]}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_w2r/q2_reg[3]/Q} .original_name {sync_w2r/q2[3]/q}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[1]} .original_name {{sync_w2r/q2[1]}}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[1]} .single_bit_orig_name {sync_w2r/q2[1]}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_w2r/q2_reg[1]/Q} .original_name {sync_w2r/q2[1]/q}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[0]} .original_name {{sync_w2r/q2[0]}}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[0]} .single_bit_orig_name {sync_w2r/q2[0]}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_w2r/q2_reg[0]/Q} .original_name {sync_w2r/q2[0]/q}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[2]} .original_name {{sync_w2r/q2[2]}}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[2]} .single_bit_orig_name {sync_w2r/q2[2]}
set_db -quiet {inst:FIFO/sync_w2r/q2_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_w2r/q2_reg[2]/Q} .original_name {sync_w2r/q2[2]/q}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[2]} .original_name {{sync_w2r/q1[2]}}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[2]} .single_bit_orig_name {sync_w2r/q1[2]}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_w2r/q1_reg[2]/Q} .original_name {sync_w2r/q1[2]/q}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[3]} .original_name {{sync_w2r/q1[3]}}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[3]} .single_bit_orig_name {sync_w2r/q1[3]}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_w2r/q1_reg[3]/Q} .original_name {sync_w2r/q1[3]/q}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[4]} .original_name {{sync_w2r/q1[4]}}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[4]} .single_bit_orig_name {sync_w2r/q1[4]}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_w2r/q1_reg[4]/Q} .original_name {sync_w2r/q1[4]/q}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[1]} .original_name {{sync_w2r/q1[1]}}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[1]} .single_bit_orig_name {sync_w2r/q1[1]}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_w2r/q1_reg[1]/Q} .original_name {sync_w2r/q1[1]/q}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[0]} .original_name {{sync_w2r/q1[0]}}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[0]} .single_bit_orig_name {sync_w2r/q1[0]}
set_db -quiet {inst:FIFO/sync_w2r/q1_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/sync_w2r/q1_reg[0]/Q} .original_name {sync_w2r/q1[0]/q}
set_db -quiet module:FIFO/wptr_full_ADDR_SIZE4 .hdl_user_name wptr_full
set_db -quiet module:FIFO/wptr_full_ADDR_SIZE4 .hdl_filelist {{default -v2001 {SYNTHESIS} {FIFO.v} {} {}}}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[3]} .original_name {{wptr_full_inst/wptr[3]}}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[3]} .single_bit_orig_name {wptr_full_inst/wptr[3]}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/wptr_full_inst/wptr_reg[3]/Q} .original_name {wptr_full_inst/wptr[3]/q}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[2]} .original_name {{wptr_full_inst/wptr[2]}}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[2]} .single_bit_orig_name {wptr_full_inst/wptr[2]}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/wptr_full_inst/wptr_reg[2]/Q} .original_name {wptr_full_inst/wptr[2]/q}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[1]} .original_name {{wptr_full_inst/wptr[1]}}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[1]} .single_bit_orig_name {wptr_full_inst/wptr[1]}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/wptr_full_inst/wptr_reg[1]/Q} .original_name {wptr_full_inst/wptr[1]/q}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[0]} .original_name {{wptr_full_inst/wptr[0]}}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[0]} .single_bit_orig_name {wptr_full_inst/wptr[0]}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/wptr_full_inst/wptr_reg[0]/Q} .original_name {wptr_full_inst/wptr[0]/q}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[4]} .original_name {{wptr_full_inst/wptr[4]}}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[4]} .single_bit_orig_name {wptr_full_inst/wptr[4]}
set_db -quiet {inst:FIFO/wptr_full_inst/wptr_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/wptr_full_inst/wptr_reg[4]/Q} .original_name {wptr_full_inst/wptr[4]/q}
set_db -quiet {pin:FIFO/wptr_full_inst/wptr_reg[4]/QN} .original_name {wptr_full_inst/wptr[4]/q}
set_db -quiet {inst:FIFO/rdata_reg[7]} .original_name {{rdata[7]}}
set_db -quiet {inst:FIFO/rdata_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/rdata_reg[7]} .single_bit_orig_name {rdata[7]}
set_db -quiet {inst:FIFO/rdata_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/rdata_reg[7]/Q} .original_name {rdata[7]/q}
set_db -quiet {inst:FIFO/rdata_reg[6]} .original_name {{rdata[6]}}
set_db -quiet {inst:FIFO/rdata_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/rdata_reg[6]} .single_bit_orig_name {rdata[6]}
set_db -quiet {inst:FIFO/rdata_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/rdata_reg[6]/Q} .original_name {rdata[6]/q}
set_db -quiet {inst:FIFO/rdata_reg[4]} .original_name {{rdata[4]}}
set_db -quiet {inst:FIFO/rdata_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/rdata_reg[4]} .single_bit_orig_name {rdata[4]}
set_db -quiet {inst:FIFO/rdata_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/rdata_reg[4]/Q} .original_name {rdata[4]/q}
set_db -quiet {inst:FIFO/rdata_reg[0]} .original_name {{rdata[0]}}
set_db -quiet {inst:FIFO/rdata_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/rdata_reg[0]} .single_bit_orig_name {rdata[0]}
set_db -quiet {inst:FIFO/rdata_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/rdata_reg[0]/Q} .original_name {rdata[0]/q}
set_db -quiet {inst:FIFO/rdata_reg[3]} .original_name {{rdata[3]}}
set_db -quiet {inst:FIFO/rdata_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/rdata_reg[3]} .single_bit_orig_name {rdata[3]}
set_db -quiet {inst:FIFO/rdata_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/rdata_reg[3]/Q} .original_name {rdata[3]/q}
set_db -quiet {inst:FIFO/rdata_reg[5]} .original_name {{rdata[5]}}
set_db -quiet {inst:FIFO/rdata_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/rdata_reg[5]} .single_bit_orig_name {rdata[5]}
set_db -quiet {inst:FIFO/rdata_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/rdata_reg[5]/Q} .original_name {rdata[5]/q}
set_db -quiet {inst:FIFO/rdata_reg[2]} .original_name {{rdata[2]}}
set_db -quiet {inst:FIFO/rdata_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/rdata_reg[2]} .single_bit_orig_name {rdata[2]}
set_db -quiet {inst:FIFO/rdata_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/rdata_reg[2]/Q} .original_name {rdata[2]/q}
set_db -quiet {inst:FIFO/rdata_reg[1]} .original_name {{rdata[1]}}
set_db -quiet {inst:FIFO/rdata_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:FIFO/rdata_reg[1]} .single_bit_orig_name {rdata[1]}
set_db -quiet {inst:FIFO/rdata_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:FIFO/rdata_reg[1]/Q} .original_name {rdata[1]/q}
# BEGIN PMBIST SECTION
# END PMBIST SECTION
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 19.13-s073_1
## flowkit v19.10-s013_1
## Written on 22:36:56 13-Oct 2025
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {}}
if {[is_attribute flow_current -obj_type root]} {set_db flow_current {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_db flow_db_directory dbs}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {}}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_metrics_file -obj_type root]} {set_db flow_metrics_file {}}
if {[is_attribute flow_metrics_snapshot_parent_uuid -obj_type root]} {set_db flow_metrics_snapshot_parent_uuid {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid eb340329-feaf-410b-b86f-dc58e9bb4fa5}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_db flow_overwrite_db false}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {}}
if {[is_attribute flow_status_file -obj_type root]} {set_db flow_status_file {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {}}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last {}}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status not_run}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}

#############################################################
#####   User Defined Attributes   ###########################

