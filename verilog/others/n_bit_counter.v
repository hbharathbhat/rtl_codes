`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2023 08:28:54 PM
// Design Name: 
// Module Name: n_bit_counter
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

//N-bit Counter using Negedge clk
module n_bit_counter(count,clk,clr);
parameter N=7; //Parameter Declaration
input clk,clr;
output reg [N:0] count;

always@(negedge clk)
    begin
        if(clr)
            count<=8'b0;
        else
            count<=count+1;
        end

endmodule
