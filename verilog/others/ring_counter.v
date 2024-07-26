`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2023 04:25:15 PM
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(clk,init,count);
input clk,init;output reg [7:0] count;

always@(posedge clk)
    begin
        if(init)
            count=8'b10000000;
        else
            begin
                count<=count<<1;
                count[0]<=count[7];
            end
     end

endmodule
