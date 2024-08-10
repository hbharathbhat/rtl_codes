`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 08:32:01 PM
// Design Name: 
// Module Name: mux_2to1_behavioral
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


module mux_2to1_behavioral(in, sel, out);

input [1:0] in;
input sel;
output reg out;

always@(sel)
    begin
        out=in[sel];
    end
endmodule
