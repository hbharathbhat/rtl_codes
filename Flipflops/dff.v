`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2023 10:38:16 AM
// Design Name: 
// Module Name: dff
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


module dff(q,qbar,d,set,reset,clk);
input d,set,reset,clk;
output reg q; output qbar;

assign qbar=~q;
always@(posedge clk or negedge set or negedge reset)
    begin
        if(reset==0)
            q<=0;
        else if (set==0)
            q<=1;
        else
            q<=d;
    end

endmodule
