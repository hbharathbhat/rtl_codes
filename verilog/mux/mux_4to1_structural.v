`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat ( https://github.com/bhatbharath )
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: 4:1 Multiplexer
// Module Name: mux_4to1_structural
// Description: Structural Description of 4:1 Multiplexer
//////////////////////////////////////////////////////////////////////////////////

module mux_4to1_structural(in, sel, out);
input [3:0] in;
input [1:0] sel;
output out;
wire [1:0] q;

mux_2to1_behavioral m1(in[1:0], sel[1:0], q[1]);
mux_2to1_behavioral m2(in[3:2], sel[1:0], q[2]);
mux_2to1_behavioral m3(q, sel[1:0], out);




endmodule
