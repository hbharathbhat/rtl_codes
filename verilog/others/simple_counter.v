`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2023 07:21:19 PM
// Design Name: 
// Module Name: simple_counter
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

//32-bit synchronous counter
module simple_counter(count,clk,rst);
input clk,rst;
output reg [31:0] count;

always@(posedge clk)
    begin
        if(rst)
            count=32'b0;
        else
            count=count+1;
        end 
 endmodule

