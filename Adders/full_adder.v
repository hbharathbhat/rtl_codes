`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat  ( https://github.com/bhatbharath )
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: 1 Bit Full Adder
// Module Name: full_adder
// Description: This is a structural Level Description of a 1 bit full adder
//////////////////////////////////////////////////////////////////////////////////

//Full_adder: Structural Description
module full_adder(a,b,cin,s,cout);

input a,b,cin;
output s,cout;
wire s1,c1,c2,c3;

xor G1(s1,a,b);
xor G2(s,s1,cin);

and G3(c1,a,b);
and G4(c2,a,cin);
and G5(c3,b,cin);

or G6(cout,c1,c2,c3);

 
endmodule
