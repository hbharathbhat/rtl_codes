`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/04/2024 06:12:15 PM
// Module Name: d_flipflop_tb
// Project Name: D Flipflop Testbench
//////////////////////////////////////////////////////////////////////////////////


module d_flipflop_tb;
wire q, qb;
reg d, clk, rst;

d_flipflop dut0(d, clk, rst, q, qb);

initial
begin
    rst=1'b1; clk=1'b0;
end

always #5 clk=~clk;

initial
begin
        d=1'b0;
    #10  d=1'b1;
    #20 $finish;
end
endmodule
