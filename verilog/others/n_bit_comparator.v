`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2023 11:35:47 PM
// Design Name: 
// Module Name: n_bit_comparator
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


module n_bit_comparator(a,b,lt,gt,eq);
parameter bit=16;
input [bit-1:0] a,b;
output reg lt,gt,eq;
always@(*)
    begin
    gt=0;lt=0;eq=0;
        if(a>b) 
            gt=1;
        else if(a<b) 
            lt=1;
        else 
            eq=1;
    end
endmodule
