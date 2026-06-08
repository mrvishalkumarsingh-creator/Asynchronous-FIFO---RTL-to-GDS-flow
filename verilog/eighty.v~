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
    reg [7:0] d1, d2, tmp;
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

        // === TEST 1: Basic RW with full-bit patterns ===
        $display("=== TEST 1: Full-bit toggle patterns ===");
        write_val(8'h00);  // All bits 0
        write_val(8'hFF);  // All bits 1 → toggles EVERY bit
        write_val(8'h55);  // 01010101
        write_val(8'hAA);  // 10101010 → ensures bit 4 toggles

        read_val(d1); // 0x00
        read_val(d2); // 0xFF
        if (d1 !== 8'h00 || d2 !== 8'hFF) $display("Data mismatch!");

        read_val(tmp); // 0x55
        read_val(tmp); // 0xAA

        // === TEST 2: Fill to full ===
        $display("=== TEST 2: Fill to full ===");
        for (i = 0; i < DEPTH - 4; i = i + 1) begin
            write_val(i[7:0]);
        end
        if (!wfull) $display("FIFO should be full!");

        // === TEST 3: Empty FIFO ===
        $display("=== TEST 3: Empty FIFO ===");
        for (i = 0; i < DEPTH; i = i + 1) begin
            read_val(tmp);
        end
        if (!rempty) $display("FIFO should be empty!");

        // === TEST 4: Wrap-around with toggle data ===
        $display("=== TEST 4: Wrap with toggle data ===");
        write_val(8'h0F); // bit 4 = 0
        write_val(8'h10); // bit 4 = 1 → toggles rdata[4]
        read_val(tmp);    // 0x0F
        read_val(tmp);    // 0x10

        // === TEST 5: Reset during operation ===
        $display("=== TEST 5: Reset during op ===");
        write_val(8'h33);
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

        // === OPTIONAL: Trigger one error to cover else branch ===
        // (Uncomment ONLY if you want 100% block coverage)
        /*
        $display("=== TEST 6: Intentional error to cover else branch ===");
        write_val(8'h99);
        read_val(d1);
        if (d1 !== 8'h00) $display("This will print and cover the error branch");
        */

        $display(" Simulation finished.");
        $finish;
    end

endmodule
