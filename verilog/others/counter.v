`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2023 03:53:56 PM
// Design Name: 
// Module Name: counter
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


module counter(mode,clr,load,d_in,clk,count);
input mode,clk,clr,load;
input [0:7] d_in;
output reg [0:7] count;

always@(posedge clk)
    if(load)
        count<=d_in;
    else if(clr)
        count<=0;
    else if(mode)
        count<=count+1;
    else
        count<=count-1;
endmodule
