`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: 1 Bit Half-Adder
// Module Name: half_adder
//////////////////////////////////////////////////////////////////////////////////
// Half Adder
module half_adder(a,b,s,c);
input a,b;
output s,c;

assign s=a^b;
assign c=a&b;
endmodule
