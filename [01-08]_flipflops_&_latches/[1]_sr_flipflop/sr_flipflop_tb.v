`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// 
// Create Date: 07/28/2024 03:56:52 PM
// Design Name: SR Flipflop Testbench
// Module Name: sr_flipflop_tb
//////////////////////////////////////////////////////////////////////////////////


module sr_flipflop_tb;
reg s, r,clk, rst;
wire q, qb;

sr_flipflop dut0(s, r, clk, rst, q, qb);

initial
begin
    clk = 1'b0; rst = 1'b0;
end

always #5 clk = ~clk;

initial
begin
        s=1'b0; r=1'b0; rst=1'b1;
    #10 s=1'b0; r=1'b0; rst=1'b0;
    #10 s=1'b0; r=1'b1; rst=1'b0;
    #10 s=1'b1; r=1'b0; rst=1'b0;
    #10 s=1'b1; r=1'b1; rst=1'b0;
    #10 $finish;
end
endmodule
