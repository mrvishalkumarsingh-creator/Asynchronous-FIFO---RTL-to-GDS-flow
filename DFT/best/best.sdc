create_clock -name clk -period 1.8 [get_ports clk]
# set SKEW 1
set_clock_uncertainty 0.15 [get_clocks clk]

set_clock_transition -rise -min 0.02 [get_clocks clk]
set_clock_transition -rise -max 0.200 [get_clocks clk]
set_clock_transition -fall -min 0.5 [get_clocks clk]
set_clock_transition -fall -max 0.06 [get_clocks clk]

# DELAY DEFINITION
set_output_delay -clock [get_clocks clk] -add_delay 0.1 [all_outputs]
set_input_delay -clock [get_clocks clk] -add_delay 1.78 [all_inputs]
set_load 1 [all_outputs]

set_max_capacitance 1.8 [all_outputs]


#set_wire_load_model "enclosed"
