file mkdir /home/utkarsh25154/Desktop/cmos65/90nm/verilog/logic_eq_check_mid
set_log_file logical_equivalence_checking.log -replace
read_library /home/utkarsh25154/Desktop/cmos65/90nm/verilog/lib/slow.v -verilog -both

read_design /home/utkarsh25154/Desktop/cmos65/90nm/verilog/async_fifo.v -verilog -golden

read_design /home/utkarsh25154/Desktop/cmos65/90nm/verilog/syn_report_mid/synthesized_netlist.v -verilog -revised

set_system_mode lec
add_compared_points -all
compare
report_messages -compare -verb
report_compare_data -noneq
report_verification

write_compared_points -replace /home/utkarsh25154/Desktop/cmos65/90nm/verilog/logic_eq_check_mid/lec_compared_points
write_mapped_points -replace /home/utkarsh25154/Desktop/cmos65/90nm/verilog/logic_eq_check_mid/lec_mapped_points
set_verification_information /home/utkarsh25154/Desktop/cmos65/90nm/verilog/logic_eq_check_mid
write_verification_information
