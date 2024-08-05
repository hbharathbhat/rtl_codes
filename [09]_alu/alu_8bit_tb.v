`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/05/2024 12:09:39 PM
// Module Name: alu_8bit_tb
// Project Name: ALU 8 bit Testbench
//////////////////////////////////////////////////////////////////////////////////


module alu_8bit_tb;
    reg [7:0] a, b;
    reg [3:0] f;
    wire [7:0] y;
    
    alu_32bit dut0(a, b, f, y);
    
    initial
    begin
        a=8'b01101011;
        b=8'b01001010;
            f=4'b0000;
        #10 f=4'b0000; 
        #10 f=4'b0001;
        #10 f=4'b0010;
        #10 f=4'b0011;
        #10 f=4'b0100;
        #10 f=4'b0101;
        #10 f=4'b0110;
        #10 f=4'b0111;
        #10 f=4'b1000;
        #10 $finish;
     end
endmodule   
