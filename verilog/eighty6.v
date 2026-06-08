`timescale 1ns/1ps

module FIFO_tb();

    parameter DSIZE = 8;
    parameter ASIZE = 3;
    parameter DEPTH = 8;

    reg [DSIZE-1:0] wdata;
    wire [DSIZE-1:0] rdata;
    wire wfull, rempty;
    reg winc, rinc, wclk, rclk, wrst_n, rrst_n;

    // ALL variables at module scope (Verilog-2001 requirement)
    reg [7:0] d1, d2;
    reg [7:0] tmp;
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

    always #5  wclk = ~wclk;
    always #10 rclk = ~rclk;

    task write_val;
        input [7:0] val;
    begin
        wdata = val;
        winc = 1;
        @(posedge wclk);
        winc = 0;
        @(posedge wclk);
    end
    endtask

    task read_val;
        output [7:0] val;
    begin
        rinc = 1;
        @(posedge rclk);
        val = rdata;
        rinc = 0;
        @(posedge rclk);
    end
    endtask

    initial begin
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

        // TEST 1: Basic RW
        $display("=== TEST 1: Basic RW ===");
        write_val(8'h11);
        write_val(8'h22);
        read_val(d1);
        read_val(d2);
        if (d1 !== 8'h11 || d2 !== 8'h22) $display("Data mismatch!");

        // TEST 2: Fill to full
        $display("=== TEST 2: Fill to full ===");
        for (i = 0; i < DEPTH - 2; i = i + 1) begin
            write_val(i[7:0]);
        end
        if (!wfull) $display("FIFO should be full!");

        // TEST 3: Overflow
        $display("=== TEST 3: Overflow ===");
        winc = 1; wdata = 8'hAA;
        repeat(3) @(posedge wclk);
        winc = 0;

        // TEST 4: Empty FIFO
        $display("=== TEST 4: Empty FIFO ===");
        for (i = 0; i < DEPTH; i = i + 1) begin
            read_val(tmp);
        end
        if (!rempty) $display("FIFO should be empty!");

        // TEST 5: Underflow
        $display("=== TEST 5: Underflow ===");
        rinc = 1;
        repeat(3) @(posedge rclk);
        rinc = 0;

        // TEST 6: Wrap-around
        $display("=== TEST 6: Wrap-around ===");
        for (i = 0; i < DEPTH; i = i + 1) write_val(i[7:0]);
        for (i = 0; i < DEPTH; i = i + 1) read_val(tmp);
        for (i = 0; i < DEPTH; i = i + 1) write_val(i[7:0]);
        for (i = 0; i < DEPTH; i = i + 1) read_val(tmp);

        // TEST 7: Async stress
        $display("=== TEST 7: Async stress ===");
        fork
            begin
                for (i = 0; i < 10; i = i + 1) begin
                    write_val(i[7:0]);
                    #8;
                end
            end
            begin
                for (i = 0; i < 10; i = i + 1) begin
                    read_val(tmp);
                    #12;
                end
            end
        join

        // TEST 8: Reset during op
        $display("=== TEST 8: Reset during op ===");
        write_val(8'h55);
        write_val(8'h66);
        #20;
        wrst_n = 0;
        rrst_n = 0;
        repeat(3) @(posedge wclk);
        repeat(3) @(posedge rclk);
        wrst_n = 1;
        rrst_n = 1;
        repeat(2) @(posedge wclk);
        repeat(2) @(posedge rclk);
        if (!rempty) $display("FIFO not empty after reset!");

        $display("Simulation finished.");
        $finish;
    end

endmodule
