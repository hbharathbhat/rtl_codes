`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 08:17:04 PM
// Design Name: 
// Module Name: mux_16to1_structural
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


module mux_16to1_structural(input [15:0] in, [3:0] sel, output out);

wire [3:0] t;

mux_4to1_behavioral m1(in[3:0], sel[1:0], t[1]);
mux_4to1_behavioral m2(in[7:4], sel[1:0], t[2]);
mux_4to1_behavioral m3(in[11:8], sel[1:0], t[3]);
mux_4to1_behavioral m4(in[15:12], sel[1:0], t[4]);
mux_4to1_behavioral m5(t,sel[3:2],out);

endmodule
