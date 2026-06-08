# ####################################################################

#  Created by Genus(TM) Synthesis Solution 19.13-s073_1 on Mon Oct 13 19:22:51 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design FIFO

create_clock -name "wclk" -period 4.0 -waveform {0.0 2.0} [get_ports wclk]
create_clock -name "rclk" -period 10.0 -waveform {0.0 5.0} [get_ports rclk]
set_false_path -from [list \
  [get_ports wrst_n]  \
  [get_ports rrst_n] ]
set_false_path -from [list \
  [get_pins {rptr_empty_inst/rptr[4]}]  \
  [get_pins {rptr_empty_inst/rptr[3]}]  \
  [get_pins {rptr_empty_inst/rptr[2]}]  \
  [get_pins {rptr_empty_inst/rptr[1]}]  \
  [get_pins {rptr_empty_inst/rptr[0]}] ] -to [list \
  [get_pins {sync_r2w/din[4]}]  \
  [get_pins {sync_r2w/din[3]}]  \
  [get_pins {sync_r2w/din[2]}]  \
  [get_pins {sync_r2w/din[1]}]  \
  [get_pins {sync_r2w/din[0]}] ]
set_false_path -from [list \
  [get_pins {wptr_full_inst/wptr[4]}]  \
  [get_pins {wptr_full_inst/wptr[3]}]  \
  [get_pins {wptr_full_inst/wptr[2]}]  \
  [get_pins {wptr_full_inst/wptr[1]}]  \
  [get_pins {wptr_full_inst/wptr[0]}] ] -to [list \
  [get_pins {sync_w2r/din[4]}]  \
  [get_pins {sync_w2r/din[3]}]  \
  [get_pins {sync_w2r/din[2]}]  \
  [get_pins {sync_w2r/din[1]}]  \
  [get_pins {sync_w2r/din[0]}] ]
set_clock_groups -name "clock_groups_wclk_to_rclk" -asynchronous -group [get_clocks wclk] -group [get_clocks rclk]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
