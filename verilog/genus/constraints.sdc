# =============================================================
# SDC Constraints for Asynchronous FIFO
# =============================================================

# ---------------------------
# CLOCK DEFINITIONS
# ---------------------------

# Write clock (write_clk)
create_clock -name write_clk -period 2 [get_ports "write_clk"]
set_clock_latency 0.02 -source -late [get_clocks "write_clk"]
set_clock_latency 0.02 -source -early [get_clocks "write_clk"]
set_clock_transition -rise 0.6 [get_clocks "write_clk"]
set_clock_transition -fall 0.6 [get_clocks "write_clk"]

# Read clock (read_clk)
create_clock -name read_clk -period 12 [get_ports "read_clk"]
set_clock_latency 0.02 -source -late [get_clocks "read_clk"]
set_clock_latency 0.02 -source -early [get_clocks "read_clk"]
set_clock_transition -rise 0.6 [get_clocks "read_clk"]
set_clock_transition -fall 0.6 [get_clocks "read_clk"]

# ---------------------------
# CLOCK RELATIONSHIP
# ---------------------------

# Declare write and read clocks as asynchronous (no timing relation)
set_clock_groups -asynchronous -group [get_clocks "write_clk"] -group [get_clocks "read_clk"]

# ---------------------------
# INPUT DELAYS
# ---------------------------

# Write domain inputs
set_input_delay 0.5 -clock [get_clocks "write_clk"] [get_ports {write_data[*]}]
set_input_delay 0.5 -clock [get_clocks "write_clk"] [get_ports "write_enable"]
set_input_delay 0.5 -clock [get_clocks "write_clk"] [get_ports "write_reset_n"]

# Read domain inputs
set_input_delay 0.5 -clock [get_clocks "read_clk"] [get_ports "read_enable"]
set_input_delay 0.5 -clock [get_clocks "read_clk"] [get_ports "read_reset_n"]

# ---------------------------
# OUTPUT DELAYS
# ---------------------------

# Outputs synchronized to each domain
set_output_delay 0.5 -clock [get_clocks "read_clk"] [get_ports {read_data[*]}]
set_output_delay 0.5 -clock [get_clocks "write_clk"] [get_ports "fifo_full"]
set_output_delay 0.5 -clock [get_clocks "read_clk"] [get_ports "fifo_empty"]

# ---------------------------
# DESIGN SAFETY MARGINS (OPTIONAL)
# ---------------------------

set_clock_uncertainty -setup 0.1 [get_clocks "write_clk"]
set_clock_uncertainty -hold 0.05 [get_clocks "write_clk"]

set_clock_uncertainty -setup 0.1 [get_clocks "read_clk"]
set_clock_uncertainty -hold 0.05 [get_clocks "read_clk"]

# =============================================================
# END OF FILE
# =============================================================
