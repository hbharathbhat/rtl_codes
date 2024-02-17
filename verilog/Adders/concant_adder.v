`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: 8 Bit Adder Using Concantenation in Verilog
// Module Name: concant_adder
//////////////////////////////////////////////////////////////////////////////////

//8-bit adder description
module concant_adder(sum,cout,in1,in2,cin);
input [7:0] in1,in2;
input cin;
output [7:0] sum;
output cout;

assign #20 {cout,sum}=in1+in2+cin; // Concantenation of cout and sum

endmodule
