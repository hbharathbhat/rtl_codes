`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/05/2024 12:09:39 PM
// Module Name: alu_32bit_tb
// Project Name: ALU 32 bit Tesbench
//////////////////////////////////////////////////////////////////////////////////


module alu_32bit_tb;
    reg [31:0] a, b;
    reg [2:0] f;
    wire [31:0] y;
    
    alu_32bit dut0(a, b, f, y);
    
    initial
    begin
        a=32'h1000000f;
        b=32'h11000005;
            f=3'b000;
        #10 f=3'b000; 
        #10 f=3'b001;
        #10 f=3'b010;
        #10 f=3'b011;
        #10 f=3'b100;
        #10 f=3'b101;
        #10 f=3'b110;
        #10 f=3'b111;
        #10 $finish;
     end
endmodule   
