`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/06/2024 10:40:43 PM
// Module Name: jk_latch_tb
// Project Name: JK Latch Testbench
//////////////////////////////////////////////////////////////////////////////////


module jk_latch_tb;
reg j, k, en, rst;
wire q, qb;

jk_latch dut0(j, k, en, rst, q, qb);

initial
begin
        en=1'b0; rst=1'b0;
    #5  en=1'b1; rst=1'b0; j=1'b0; k=1'b1;
    #5  en=1'b1; rst=1'b0; j=1'b0; k=1'b0; 
    #5  en=1'b1; rst=1'b0; j=1'b0; k=1'b1;
    #5  en=1'b1; rst=1'b0; j=1'b1; k=1'b0;
    #5  en=1'b1; rst=1'b0; j=1'b1; k=1'b1;
    #5 $finish;

end
endmodule

