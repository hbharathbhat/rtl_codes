`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2023 05:35:34 PM
// Design Name: 
// Module Name: counter_4bit
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


module counter_4bit(clk,rst,count);
input clk,rst;
output reg [3:0] count;

always@(posedge rst or posedge clk)
    begin
    count=4'b0;
        if(rst)
            count<=0;
        else
            count<=count+1;
    end
endmodule
