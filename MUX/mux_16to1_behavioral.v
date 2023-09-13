`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 01:30:12 PM
// Design Name: 
// Module Name: mux_16to1_behavioral
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


module mux_16to1_behavioral(
    input [3:0] sel,
    input [15:0] in,
    output reg out
    );
    
    always@(sel)
    begin
        out=in[sel];
    end
endmodule
