`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat ( https://github.com/bhatbharath )
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: 2:1 Multiplexer
// Module Name: mux_2to1_behavioral
// Description: Behavioral Description of 2:1 Multiplexer
//////////////////////////////////////////////////////////////////////////////////


module mux_2to1_behavioral(in, sel, out);

input [1:0] in;
input sel;
output reg out;

always@(sel)
    begin
        out=in[sel];
    end
endmodule
