`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: 16 Bit Adder
// Module Name: adder_16bit
// Description: This is a 16-bit adder built using instantiation of 4 4-bit full-adders
//////////////////////////////////////////////////////////////////////////////////

//Ripple Carry Adder
module adder_16bit(a,b,cin,s,cout);

input [15:0] a,b;
input cin;
output [15:0] s;
output cout;
wire c1,c2,c3;

adder a1(a[3:0],b[3:0],cin,s[3:0],c1);
adder a2(a[7:4],b[7:4],c1,s[7:4],c2);
adder a3(a[11:8],b[11:8],c2,s[11:8],c3);
adder a4(a[15:12],b[15:12],c3,s[15:12],cout);

endmodule
