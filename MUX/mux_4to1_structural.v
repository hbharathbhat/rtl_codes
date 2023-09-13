`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 08:34:50 PM
// Design Name: 
// Module Name: mux_4to1_structural
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
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
