`timescale 1ns/1ps

// Two-flip-flop synchronizer for clock domain crossing
module ClockDomainSynchronizer #(parameter WIDTH = 4)(
    output reg [WIDTH-1:0] sync_out,
    input [WIDTH-1:0]      async_in,
    input                  dest_clk, 
    input                  dest_reset_n
);
    reg [WIDTH-1:0] sync_reg1;
    
    always @(posedge dest_clk or negedge dest_reset_n) begin
        if (!dest_reset_n)
            {sync_out, sync_reg1} <= 0;
        else
            {sync_out, sync_reg1} <= {sync_reg1, async_in};
    end
endmodule

//-----------------------------------------------------------------------------

// Dual-port synchronous memory block
module FifoMemoryBlock #(parameter DATA_WIDTH = 8, ADDR_WIDTH = 4)(
    output [DATA_WIDTH-1:0] read_data,
    input [DATA_WIDTH-1:0]  write_data,
    input [ADDR_WIDTH-1:0]  write_addr, 
    input [ADDR_WIDTH-1:0]  read_addr,
    input                   write_enable, 
    input                   fifo_is_full, 
    input                   write_clk
);
    localparam DEPTH = 1 << ADDR_WIDTH;
    reg [DATA_WIDTH-1:0] memory_array [0:DEPTH-1];

    assign read_data = memory_array[read_addr];

    always @(posedge write_clk) begin
        if (write_enable && !fifo_is_full)
            memory_array[write_addr] <= write_data;
    end
endmodule

//-----------------------------------------------------------------------------

// Read pointer logic with empty flag generation
module ReadPointerLogic #(parameter ADDR_WIDTH = 4)(
    output reg                   is_empty,
    output [ADDR_WIDTH-1:0]      read_addr,
    output reg [ADDR_WIDTH:0]    read_ptr_gray,
    input [ADDR_WIDTH:0]         synced_write_ptr_gray,
    input                        read_enable, 
    input                        read_clk, 
    input                        read_reset_n
);

    reg [ADDR_WIDTH:0] read_ptr_bin, next_read_ptr_bin, next_read_ptr_gray;
    integer i;

    always @(*) begin
        // Gray-to-binary conversion
        read_ptr_bin = read_ptr_gray;
        for (i = ADDR_WIDTH; i > 0; i = i - 1) begin
            read_ptr_bin[i-1] = read_ptr_bin[i] ^ read_ptr_gray[i-1];
        end

        // Increment binary pointer if reading from a non-empty FIFO
        next_read_ptr_bin = read_ptr_bin + (read_enable & ~is_empty);
        
        // Binary-to-Gray conversion for the next state
        next_read_ptr_gray = (next_read_ptr_bin >> 1) ^ next_read_ptr_bin;
        
        // Empty condition check
        is_empty = (read_ptr_gray == synced_write_ptr_gray);
    end

    always @(posedge read_clk or negedge read_reset_n) begin
        if (!read_reset_n)
            read_ptr_gray <= 0;
        else
            read_ptr_gray <= next_read_ptr_gray;
    end

    assign read_addr = read_ptr_bin[ADDR_WIDTH-1:0];

endmodule

//-----------------------------------------------------------------------------

// Write pointer logic with full flag generation
module WritePointerLogic #(parameter ADDR_WIDTH = 4)(
    output reg                   is_full,
    output [ADDR_WIDTH-1:0]      write_addr,
    output reg [ADDR_WIDTH:0]    write_ptr_gray,
    input [ADDR_WIDTH:0]         synced_read_ptr_gray,
    input                        write_enable, 
    input                        write_clk, 
    input                        write_reset_n
);

    reg [ADDR_WIDTH:0] write_ptr_bin, next_write_ptr_bin, next_write_ptr_gray;
    integer i;

    always @(*) begin
        // Gray-to-binary conversion
        write_ptr_bin = write_ptr_gray;
        for (i = ADDR_WIDTH; i > 0; i = i - 1) begin
            write_ptr_bin[i-1] = write_ptr_bin[i] ^ write_ptr_gray[i-1];
        end

        // Increment binary pointer if writing to a non-full FIFO
        next_write_ptr_bin = write_ptr_bin + (write_enable & ~is_full);
        
        // Binary-to-Gray conversion for the next state
        next_write_ptr_gray = (next_write_ptr_bin >> 1) ^ next_write_ptr_bin;
        
        // Full condition check
        is_full = (write_ptr_gray == {~synced_read_ptr_gray[ADDR_WIDTH:ADDR_WIDTH-1], synced_read_ptr_gray[ADDR_WIDTH-2:0]});
    end

    always @(posedge write_clk or negedge write_reset_n) begin
        if (!write_reset_n)
            write_ptr_gray <= 0;
        else
            write_ptr_gray <= next_write_ptr_gray;
    end

    assign write_addr = write_ptr_bin[ADDR_WIDTH-1:0];

endmodule

//-----------------------------------------------------------------------------

// Top-level Asynchronous FIFO module
module FIFO #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4
)(
    output [DATA_WIDTH-1:0] read_data,
    output                  fifo_full,
    output                  fifo_empty,
    input [DATA_WIDTH-1:0]  write_data,
    input                   write_enable, 
    input                   write_clk, 
    input                   write_reset_n,
    input                   read_enable, 
    input                   read_clk, 
    input                   read_reset_n
);

    wire [ADDR_WIDTH-1:0] write_addr, read_addr;
    wire [ADDR_WIDTH:0]   write_ptr_gray, read_ptr_gray, 
                          synced_to_write_domain_read_ptr, 
                          synced_to_read_domain_write_ptr;

    // Synchronize the Gray-coded read pointer to the write clock domain
    ClockDomainSynchronizer #(ADDR_WIDTH+1) ReadPtrSync_inst (
        .sync_out(synced_to_write_domain_read_ptr),
        .async_in(read_ptr_gray),
        .dest_clk(write_clk),
        .dest_reset_n(write_reset_n)
    );

    // Synchronize the Gray-coded write pointer to the read clock domain
    ClockDomainSynchronizer #(ADDR_WIDTH+1) WritePtrSync_inst (
        .sync_out(synced_to_read_domain_write_ptr),
        .async_in(write_ptr_gray),
        .dest_clk(read_clk),
        .dest_reset_n(read_reset_n)
    );

    // Instantiate the memory block
    FifoMemoryBlock #(DATA_WIDTH, ADDR_WIDTH) Memory_inst (
        .read_data(read_data),
        .write_data(write_data),
        .write_addr(write_addr),
        .read_addr(read_addr),
        .write_enable(write_enable),
        .fifo_is_full(fifo_full),
        .write_clk(write_clk)
    );

    // Instantiate the read-side logic
    ReadPointerLogic #(ADDR_WIDTH) ReadLogic_inst (
        .is_empty(fifo_empty),
        .read_addr(read_addr),
        .read_ptr_gray(read_ptr_gray),
        .synced_write_ptr_gray(synced_to_read_domain_write_ptr),
        .read_enable(read_enable),
        .read_clk(read_clk),
        .read_reset_n(read_reset_n)
    );

    // Instantiate the write-side logic
    WritePointerLogic #(ADDR_WIDTH) WriteLogic_inst (
        .is_full(fifo_full),
        .write_addr(write_addr),
        .write_ptr_gray(write_ptr_gray),
        .synced_read_ptr_gray(synced_to_write_domain_read_ptr),
        .write_enable(write_enable),
        .write_clk(write_clk),
        .write_reset_n(write_reset_n)
    );

endmodule
