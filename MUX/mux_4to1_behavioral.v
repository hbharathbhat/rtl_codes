`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat ( https://github.com/bhatbharath )
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: 4:1 Multiplexer
// Module Name: mux_4to1_behavioral
// Description: Behavioral Description of 4:1 Multiplexer
//////////////////////////////////////////////////////////////////////////////////

module mux_4to1_behavioral(input [3:0] in, [1:0] sel, output reg out);

always@(sel)
    begin
        out=in[sel];
    end
endmodule
