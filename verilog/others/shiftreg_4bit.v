`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2023 08:22:06 PM
// Design Name: 
// Module Name: shiftreg_4bit
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


module shiftreg_4bit(a,e,clk,clr);
input a,clk,clr;
output reg e;
reg b,c,d;
always@(posedge clk or negedge clr)
begin
if(!clr)
    begin
        b=0;c=0;d=0;e=0;
    end
else
    begin
        e=d;
        d=c;
        c=b;
        b=a;
    end 
end   
endmodule
