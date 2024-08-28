`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 08:01:21 PM
// Design Name: 
// Module Name: PIPO2
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


module PIPO2(dout,din,ld,clr,clk);
input [15:0] din;
input ld, clr, clk;
output reg [15:0] dout;

always@(posedge clk)
if(clr) dout<=16'b0;
else if (ld) dout<=din;
endmodule
