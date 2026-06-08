create_clock -name clk -period 2 -waveform {0 2} [get_ports clk]
set_clock_uncertainty 0.1 [get_clocks clk]

set_clock_transition -rise -min 0.01 [get_clocks clk]
set_clock_transition -rise -max 0.02 [get_clocks clk]
set_clock_transition -fall -min 0.05 [get_clocks clk]
set_clock_transition -fall -max 0.05 [get_clocks clk]


set_output_delay -clock [get_clocks clk] -add_delay 0.5 [all_outputs]
set_input_delay -clock [get_clocks clk] -add_delayÊ1Ê[all_inputs]
