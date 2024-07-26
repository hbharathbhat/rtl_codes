`timescale 1ns / 1ps

module ALU(X,Y,Z,carry,sign,zero,parity,overflow);
input [15:0] X,Y;
output [15:0] Z;
output sign,carry,parity,overflow,zero;

assign {carry,Z}=X+Y; //16-bit addition
assign sign=Z[15];
assign zero=~|Z; //NOR Operation
assign parity=~^Z; //X-NOR Operation
assign overflow= (X[15] & Y[15] & ~Z[15]) | (~X[15] & ~Y[15] & Z[15]);

endmodule
