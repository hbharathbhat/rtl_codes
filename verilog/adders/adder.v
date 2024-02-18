`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: 4 Bit Adder
// Module Name: adder
//////////////////////////////////////////////////////////////////////////////////


module adder(a,b,cin,s,cout);

input [3:0] a,b;
input cin;
output [3:0] s;
output cout;

assign {cout,s}=a+b+cin;




endmodule
