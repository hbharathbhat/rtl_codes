`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/04/2024 06:12:15 PM
// Module Name: t_flipflop_tb
// Project Name: T Flipflop Testbench
//////////////////////////////////////////////////////////////////////////////////


module t_flipflop_tb;
wire q, qb;
reg t, clk, rst;

t_flipflop dut0(t, clk, rst, q, qb);

initial
begin
    rst=1'b1; clk=1'b0;
end

always #5 clk=~clk;

initial
begin
         t=1'b0;
    #10  t=1'b1;
    #20 $finish;
end
endmodule
