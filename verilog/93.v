`timescale 1ns/1ps

module FIFO_tb();

    parameter DSIZE = 8;
    parameter ASIZE = 3;
    parameter DEPTH = 8;

    reg [DSIZE-1:0] wdata;
    wire [DSIZE-1:0] rdata;
    wire wfull, rempty;
    reg winc, rinc, wclk, rclk, wrst_n, rrst_n;

    // All variables at module scope (Verilog-2001)
    reg [7:0] read_val;
    integer i;

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
        repeat(3) @(posedge wclk);
        repeat(3) @(posedge rclk);
        wrst_n = 1;
        rrst_n = 1;
        repeat(2) @(posedge wclk);
        repeat(2) @(posedge rclk);

        // === TEST 1: Basic write/read ===
        $display("=== TEST 1: Basic RW ===");
        wdata = 8'h11; winc = 1; @(posedge wclk); winc = 0;
        wdata = 8'h22; winc = 1; @(posedge wclk); winc = 0;
        rinc = 1; @(posedge rclk); read_val = rdata; rinc = 0;
        rinc = 1; @(posedge rclk); read_val = rdata; rinc = 0;

        // === TEST 2: Fill FIFO to full ===
        $display("=== TEST 2: Fill to full ===");
        for (i = 0; i < DEPTH - 2; i = i + 1) begin
            wdata = i[7:0];
            winc = 1;
            @(posedge wclk);
            winc = 0;
        end
        // Now FIFO is full

        // === TEST 3: Overflow attempt ===
        $display("=== TEST 3: Overflow ===");
        wdata = 8'hAA; winc = 1; repeat(3) @(posedge wclk); winc = 0;

        // === TEST 4: Empty FIFO ===
        $display("=== TEST 4: Empty FIFO ===");
        for (i = 0; i < DEPTH; i = i + 1) begin
            rinc = 1;
            @(posedge rclk);
            rinc = 0;
        end

        // === TEST 5: Underflow attempt ===
        $display("=== TEST 5: Underflow ===");
        rinc = 1; repeat(3) @(posedge rclk); rinc = 0;

        // === TEST 6: Wrap-around ===
        $display("=== TEST 6: Wrap-around ===");
        for (i = 0; i < DEPTH; i = i + 1) begin
            wdata = i[7:0];
            winc = 1;
            @(posedge wclk);
            winc = 0;
        end
        for (i = 0; i < DEPTH; i = i + 1) begin
            rinc = 1;
            @(posedge rclk);
            rinc = 0;
        end

        // === TEST 7: Async stress ===
        $display("=== TEST 7: Async stress ===");
        fork
            begin
                for (i = 0; i < 10; i = i + 1) begin
                    wdata = i[7:0];
                    winc = 1;
                    @(posedge wclk);
                    winc = 0;
                    #8;
                end
            end
            begin
                for (i = 0; i < 10; i = i + 1) begin
                    rinc = 1;
                    @(posedge rclk);
                    rinc = 0;
                    #12;
                end
            end
        join

        // === TEST 8: Reset during operation ===
        $display("=== TEST 8: Reset during op ===");
        wdata = 8'h55; winc = 1; @(posedge wclk); winc = 0;
        #20;
        wrst_n = 0; rrst_n = 0;
        repeat(3) @(posedge wclk);
        repeat(3) @(posedge rclk);
        wrst_n = 1; rrst_n = 1;
        repeat(2) @(posedge wclk);
        repeat(2) @(posedge rclk);

        $display("✅ Simulation finished.");
        $finish;
    end

endmodule
