`timescale 1ns/1ps

module two_ff_sync #(parameter SIZE = 4)(
    output reg [SIZE-1:0] q2,
    input [SIZE-1:0] din,
    input clk, rst_n
);
    reg [SIZE-1:0] q1;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            {q2, q1} <= 0;
        else
            {q2, q1} <= {q1, din};
    end
endmodule

module FIFO_memory #(parameter DATA_SIZE = 8, ADDR_SIZE = 4)(
    output [DATA_SIZE-1:0] rdata,
    input [DATA_SIZE-1:0] wdata,
    input [ADDR_SIZE-1:0] waddr, raddr,
    input wclk_en, wfull, wclk
);
    localparam DEPTH = 1 << ADDR_SIZE;
    reg [DATA_SIZE-1:0] mem [0:DEPTH-1];
    assign rdata = mem[raddr];
    always @(posedge wclk) begin
        if (wclk_en && !wfull)
            mem[waddr] <= wdata;
    end
endmodule

module rptr_empty #(parameter ADDR_SIZE = 4)(
    output reg rempty,
    output [ADDR_SIZE-1:0] raddr,
    output reg [ADDR_SIZE:0] rptr,
    input [ADDR_SIZE:0] rq2_wptr,
    input rinc, rclk, rrst_n
);
    reg [ADDR_SIZE:0] rbin_current, rbin_next, rgray_next;
    integer i;
    always @(*) begin
        rbin_current = rptr;
        for (i = ADDR_SIZE; i > 0; i = i - 1) begin
            rbin_current[i-1] = rbin_current[i] ^ rptr[i-1];
        end
        rbin_next = rbin_current + (rinc & ~rempty);
        rgray_next = (rbin_next >> 1) ^ rbin_next;
        rempty = (rptr == rq2_wptr);
    end
    always @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n)
            rptr <= 0;
        else
            rptr <= rgray_next;
    end
    assign raddr = rbin_current[ADDR_SIZE-1:0];
endmodule

module wptr_full #(parameter ADDR_SIZE = 4)(
    output reg wfull,
    output [ADDR_SIZE-1:0] waddr,
    output reg [ADDR_SIZE:0] wptr,
    input [ADDR_SIZE:0] wq2_rptr,
    input winc, wclk, wrst_n
);
    reg [ADDR_SIZE:0] wbin_current, wbin_next, wgray_next;
    integer i;
    always @(*) begin
        wbin_current = wptr;
        for (i = ADDR_SIZE; i > 0; i = i - 1) begin
            wbin_current[i-1] = wbin_current[i] ^ wptr[i-1];
        end
        wbin_next = wbin_current + (winc & ~wfull);
        wgray_next = (wbin_next >> 1) ^ wbin_next;
        wfull = (wptr == {~wq2_rptr[ADDR_SIZE:ADDR_SIZE-1], wq2_rptr[ADDR_SIZE-2:0]});
    end
    always @(posedge wclk or negedge wrst_n) begin
        if (!wrst_n)
            wptr <= 0;
        else
            wptr <= wgray_next;
    end
    assign waddr = wbin_current[ADDR_SIZE-1:0];
endmodule

module FIFO #(
    parameter DSIZE = 8,
    parameter ASIZE = 4
)(
    output reg [DSIZE-1:0] rdata,  // MUST be reg for procedural assignment
    output wfull,
    output rempty,
    input [DSIZE-1:0] wdata,
    input winc, wclk, wrst_n,
    input rinc, rclk, rrst_n
);
    wire [ASIZE-1:0] waddr, raddr;
    wire [ASIZE:0] wptr, rptr, wq2_rptr, rq2_wptr;
    wire [DSIZE-1:0] rdata_raw;

    two_ff_sync #(ASIZE+1) sync_r2w (.q2(wq2_rptr), .din(rptr), .clk(wclk), .rst_n(wrst_n));
    two_ff_sync #(ASIZE+1) sync_w2r (.q2(rq2_wptr), .din(wptr), .clk(rclk), .rst_n(rrst_n));

    FIFO_memory #(DSIZE, ASIZE) fifomem (
        .rdata(rdata_raw), .wdata(wdata), .waddr(waddr), .raddr(raddr),
        .wclk_en(winc), .wfull(wfull), .wclk(wclk)
    );

    always @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n)
            rdata <= 0;
        else
            rdata <= rdata_raw;
    end

    rptr_empty #(ASIZE) rptr_empty_inst (.rempty(rempty), .raddr(raddr), .rptr(rptr), .rq2_wptr(rq2_wptr), .rinc(rinc), .rclk(rclk), .rrst_n(rrst_n));
    wptr_full #(ASIZE) wptr_full_inst (.wfull(wfull), .waddr(waddr), .wptr(wptr), .wq2_rptr(wq2_rptr), .winc(winc), .wclk(wclk), .wrst_n(wrst_n));
endmodule
