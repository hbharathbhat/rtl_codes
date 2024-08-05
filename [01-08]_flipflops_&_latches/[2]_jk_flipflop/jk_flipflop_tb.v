`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
//
// Create Date: 07/29/2024 06:01:34 PM
// Design Name: 
// Module Name: jk_fliflop_tb
// Project Name: JK Flipflop Testbench
//////////////////////////////////////////////////////////////////////////////////


module jk_flipflop_tb;
reg j, k, clk, rst;
wire q, qb;

jk_flipflop dut0(j, k, clk, rst, q, qb);

initial
begin
    clk = 1'b0; rst = 1'b0;
end

always #5 clk = ~clk;

initial
begin
        j=1'b0; k=1'b0; rst=1'b1;
    #10 j=1'b0; k=1'b0; rst=1'b0;
    #10 j=1'b0; k=1'b1; rst=1'b0;
    #10 j=1'b1; k=1'b0; rst=1'b0;
    #10 j=1'b1; k=1'b1; rst=1'b0;
    #10 $finish;
end
endmodule

