


create_clock -name wclk -period 2.0 [get_ports wclk]

create_clock -name rclk -period 4.0 [get_ports rclk]

set_clock_uncertainty 0.15 [get_clocks {wclk rclk}]

# === CLOCK TRANSITIONS ===
set_clock_transition -rise -min 0.02 [get_clocks {wclk rclk}]
set_clock_transition -rise -max 0.20 [get_clocks {wclk rclk}]
set_clock_transition -fall -min 0.02 [get_clocks {wclk rclk}]
set_clock_transition -fall -max 0.20 [get_clocks {wclk rclk}]

# === DELAY DEFINITIONS ===
# Input delays relative to respective clocks
set_input_delay -clock [get_clocks wclk] -add_delay 0.2 [get_ports {wdata[*] winc wrst_n scan_en test_mode DFT_sdi_1}]
set_input_delay -clock [get_clocks rclk] -add_delay 0.2 [get_ports {rinc rrst_n DFT_sdi_2}]

# Output delays
set_output_delay -clock [get_clocks wclk] -add_delay 0.2 [get_ports {wfull DFT_sdo_1}]
set_output_delay -clock [get_clocks rclk] -add_delay 0.2 [get_ports {rdata[*] rempty DFT_sdo_2}]

# === LOADS AND CAPACITANCE ===
set_load 1 [all_outputs]
set_max_capacitance 1.8 [all_outputs]

