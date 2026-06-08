
Pin: wclk E
Pin: wrst_n E

# Write Data Inputs (lower 4 bits)
Pin: wdata[0] E
Pin: wdata[1] E
Pin: wdata[2] E
Pin: wdata[3] E

# DFT Signals
Pin: scan_en E
Pin: test_mode E
# SOUTH SIDE - 7 PINS (Write Data & Control)


# Write Data Inputs (upper 4 bits)
Pin: wdata[4] S
Pin: wdata[5] S
Pin: wdata[6] S
Pin: wdata[7] S

# Write Control & Status
Pin: winc S
Pin: wfull S

# DFT Scan Input
Pin: DFT_sdi_1 S

# WEST SIDE - 8 PINS (Read Clock Domain)


Pin: rclk W
Pin: rrst_n W

# Read Data Outputs (lower 4 bits)
Pin: rdata[0] W
Pin: rdata[1] W
Pin: rdata[2] W
Pin: rdata[3] W

# Read Control & Status
Pin: rinc W
Pin: rempty W

# ========================================================================
# NORTH SIDE - 7 PINS (Read Data & DFT)
# ========================================================================

# Read Data Outputs (upper 4 bits)
Pin: rdata[4] N
Pin: rdata[5] N
Pin: rdata[6] N
Pin: rdata[7] N

# DFT Signals
Pin: DFT_sdi_2 N
Pin: DFT_sdo_1 N
Pin: DFT_sdo_2 N

# ========================================================================
# Pin Assignment Summary:
# ========================================================================
# EAST (8):  wclk, wrst_n, wdata[0:3], scan_en, test_mode
# SOUTH (7): wdata[4:7], winc, wfull, DFT_sdi_1
# WEST (8):  rclk, rrst_n, rdata[0:3], rinc, rempty
# NORTH (7): rdata[4:7], DFT_sdi_2, DFT_sdo_1, DFT_sdo_2
# ========================================================================
# Total: 30 pins (balanced 8-7-8-7 distribution)
# ========================================================================
