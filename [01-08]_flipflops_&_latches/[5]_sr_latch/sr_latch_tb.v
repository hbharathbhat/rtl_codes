`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/05/2024 07:02:39 PM
// Module Name: sr_latch_tb
// Project Name: SR Latch Testbench
//////////////////////////////////////////////////////////////////////////////////


module sr_latch_tb;
reg s, r, en, rst;
wire q, qb;

sr_latch dut0(s, r, en, rst, q, qb);

initial
begin
        en=1'b0; rst=1'b0;
    #5  en=1'b1; rst=1'b0; s=1'b0; r=1'b1;
    #5  en=1'b1; rst=1'b0; s=1'b0; r=1'b0; 
    #5  en=1'b1; rst=1'b0; s=1'b0; r=1'b1;
    #5  en=1'b1; rst=1'b0; s=1'b1; r=1'b0;
    #5  en=1'b1; rst=1'b0; s=1'b1; r=1'b1;
    #5 $finish;

end
endmodule
