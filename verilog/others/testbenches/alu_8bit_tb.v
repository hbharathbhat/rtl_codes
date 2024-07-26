`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2023 10:27:29 PM
// Design Name: 
// Module Name: alu_4bit_tb
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


module alu_8bit_tb;
reg [7:0] a,b;
reg [1:0] op;
wire [7:0] f;

alu_8bit dut(f,a,b,op);
initial
    begin
        $dumpfile("alu_8bit.vcd");
        $dumpvars(0,alu_8bit_tb);
        $monitor($time,"a=%h,b=%h,op=%b,f=%h",a,b,op,f);
        #5 a=8'h02;b=8'h06;op=2'b00;
        #5 a=8'h02;b=8'h06;op=2'b01;
        #5 a=8'h02;b=8'h06;op=2'b10;
        #5 a=8'h02;b=8'h06;op=2'b11;
        #5 $finish;
    end
endmodule
