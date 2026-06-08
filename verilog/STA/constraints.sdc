# File: constraints.sdc
# Purpose: Clock and CDC constraints for async FIFO

# Clock definitions
create_clock -name wclk -period 2.000 [get_ports wclk]
create_clock -name rclk -period 10.000 [get_ports rclk]

# Asynchronous active-low resets
set_false_path -from [get_ports wrst_n]
set_false_path -from [get_ports rrst_n]

# Declare the two clocks as asynchronous (MOST IMPORTANT)
set_clock_groups -asynchronous -group [get_clocks wclk] -group [get_clocks rclk]

# That's it! No internal paths, no false_path to sync flops.
# The async clock group disables all cross-domain timing.
