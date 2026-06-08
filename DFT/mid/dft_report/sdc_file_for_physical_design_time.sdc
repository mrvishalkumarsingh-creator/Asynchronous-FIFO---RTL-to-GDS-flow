# ####################################################################

#  Created by Genus(TM) Synthesis Solution 19.13-s073_1 on Wed Nov 05 12:42:53 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design FIFO

set_load -pin_load 1.0 [get_ports {rdata[7]}]
set_load -pin_load 1.0 [get_ports {rdata[6]}]
set_load -pin_load 1.0 [get_ports {rdata[5]}]
set_load -pin_load 1.0 [get_ports {rdata[4]}]
set_load -pin_load 1.0 [get_ports {rdata[3]}]
set_load -pin_load 1.0 [get_ports {rdata[2]}]
set_load -pin_load 1.0 [get_ports {rdata[1]}]
set_load -pin_load 1.0 [get_ports {rdata[0]}]
set_load -pin_load 1.0 [get_ports wfull]
set_load -pin_load 1.0 [get_ports rempty]
set_clock_gating_check -setup 0.0 
set_max_capacitance 1.8 [get_ports {rdata[7]}]
set_max_capacitance 1.8 [get_ports {rdata[6]}]
set_max_capacitance 1.8 [get_ports {rdata[5]}]
set_max_capacitance 1.8 [get_ports {rdata[4]}]
set_max_capacitance 1.8 [get_ports {rdata[3]}]
set_max_capacitance 1.8 [get_ports {rdata[2]}]
set_max_capacitance 1.8 [get_ports {rdata[1]}]
set_max_capacitance 1.8 [get_ports {rdata[0]}]
set_max_capacitance 1.8 [get_ports wfull]
set_max_capacitance 1.8 [get_ports rempty]
set_wire_load_mode "enclosed"
