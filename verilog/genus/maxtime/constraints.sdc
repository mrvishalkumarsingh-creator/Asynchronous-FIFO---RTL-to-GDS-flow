# Clock definitions
create_clock -name wclk -period 2.000 [get_ports wclk]
create_clock -name rclk -period 10.000 [get_ports rclk]

# Asynchronous reset (active-low) — optional, but good practice
set_false_path -from [get_ports wrst_n]
set_false_path -from [get_ports rrst_n]

# Treat wclk and rclk as asynchronous
set_clock_groups -asynchronous -group {wclk} -group {rclk}

# Disable timing checks on cross-domain gray code synchronizers
# (These are handled by two_ff_sync instances)

# From read domain to write domain: rptr → sync_r2w → wq2_rptr
set_false_path -from [get_pins rptr_empty_inst/rptr[*]] \
               -to   [get_pins sync_r2w/din[*]]

# From write domain to read domain: wptr → sync_w2r → rq2_wptr
set_false_path -from [get_pins wptr_full_inst/wptr[*]] \
               -to   [get_pins sync_w2r/din[*]]

# Also disable timing through the synchronizer flops themselves
set_false_path -through [get_cells sync_r2w/q1[*]]
set_false_path -through [get_cells sync_w2r/q1[*]]

# Optional: multicycle paths for gray code stability (not strictly needed if using proper sync)
# But generally, false_path is sufficient for async FIFO pointers

# Ensure FIFO memory has proper write timing (only on wclk)
# (No special constraint needed if synthesis infers RAM correctly)

# Prevent combinational loops or false paths in full/empty logic
# The gray-to-binary conversion is combinational but safe due to coding style

# If your tool reports timing on rdata (registered output), ensure it meets rclk period
# (This is auto-handled if rdata is flopped on rclk — which it is)

