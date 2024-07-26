`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2023 10:15:48 PM
// Design Name: 
// Module Name: alu_4bit
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


module alu_8bit(f,a,b,op);
input [1:0] op; input [7:0] a,b; output reg [7:0] f;

parameter ADD=2'b00, SUB=2'b01, MUL=2'b10, DIV=2'b11;
always@(*)
    case(op)
        ADD: f=a+b;
        SUB: f=a-b;
        MUL: f=a*b;
        DIV: f=a/b;
    endcase
endmodule
