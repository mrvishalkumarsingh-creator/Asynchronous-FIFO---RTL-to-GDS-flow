`timescale 1ns/1ps

module FIFO_tb();

    parameter DSIZE = 8;
    parameter ASIZE = 3;
    parameter DEPTH = 8;

    reg [DSIZE-1:0] wdata;
    wire [DSIZE-1:0] rdata;
    wire wfull, rempty;
    reg winc, rinc, wclk, rclk, wrst_n, rrst_n;

    // DUT
    FIFO #(DSIZE, ASIZE) uut (
        .rdata(rdata),
        .wdata(wdata),
        .wfull(wfull),
        .rempty(rempty),
        .winc(winc),
        .rinc(rinc),
        .wclk(wclk),
        .rclk(rclk),
        .wrst_n(wrst_n),
        .rrst_n(rrst_n)
    );

    // Clocks
    always #5  wclk = ~wclk;  // 100 MHz
    always #10 rclk = ~rclk;  // 50 MHz

    initial begin
        // Initialize
        wclk = 0;
        rclk = 0;
        wrst_n = 1;
        rrst_n = 1;
        winc = 0;
        rinc = 0;
        wdata = 0;

        // Reset
        #40;
        wrst_n = 0;
        rrst_n = 0;
        repeat(5) @(posedge wclk);
        repeat(5) @(posedge rclk);
        wrst_n = 1;
        rrst_n = 1;
        repeat(2) @(posedge wclk);
        repeat(2) @(posedge rclk);

        // === FORCE ACTIVITY: Write 8 items (fill FIFO) ===
        wdata = 8'h00; winc = 1; @(posedge wclk); winc = 0;
        wdata = 8'h11; winc = 1; @(posedge wclk); winc = 0;
        wdata = 8'h22; winc = 1; @(posedge wclk); winc = 0;
        wdata = 8'h33; winc = 1; @(posedge wclk); winc = 0;
        wdata = 8'h44; winc = 1; @(posedge wclk); winc = 0;
        wdata = 8'h55; winc = 1; @(posedge wclk); winc = 0;
        wdata = 8'h66; winc = 1; @(posedge wclk); winc = 0;
        wdata = 8'h77; winc = 1; @(posedge wclk); winc = 0;

        // Now FIFO is FULL → wfull=1

        // === CRITICAL: Write when full (to cover wclk_en && wfull) ===
        wdata = 8'hFF; winc = 1; @(posedge wclk); winc = 0; // Should be ignored

        // === Read 8 items (empty FIFO) ===
        rinc = 1; @(posedge rclk); rinc = 0;
        rinc = 1; @(posedge rclk); rinc = 0;
        rinc = 1; @(posedge rclk); rinc = 0;
        rinc = 1; @(posedge rclk); rinc = 0;
        rinc = 1; @(posedge rclk); rinc = 0;
        rinc = 1; @(posedge rclk); rinc = 0;
        rinc = 1; @(posedge rclk); rinc = 0;
        rinc = 1; @(posedge rclk); rinc = 0;

        // Now FIFO is EMPTY → rempty=1

        // === Write data that toggles bits 2,3,7 ===
        wdata = 8'h8C; // 10001100 → bits 7,3,2 = 1
        winc = 1; @(posedge wclk); winc = 0;

        // === Read it to toggle rdata[2], rdata[3], rdata[7] ===
        rinc = 1; @(posedge rclk); rinc = 0;

        // === Reset during operation ===
        wdata = 8'hAA; winc = 1; @(posedge wclk); winc = 0;
        #20;
        wrst_n = 0; rrst_n = 0;
        repeat(3) @(posedge wclk);
        repeat(3) @(posedge rclk);
        wrst_n = 1; rrst_n = 1;
        repeat(2) @(posedge wclk);
        repeat(2) @(posedge rclk);

        $display(" Simulation finished.");
        $finish;
    end

endmodule
