`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat ( https://github.com/bhatbharath )
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: 16:1 Multiplexer
// Module Name: mux_16to1_behavioral
// Description: Behavioral Description of 16:1 Multiplexer
//////////////////////////////////////////////////////////////////////////////////


module mux_16to1_behavioral(
    input [3:0] sel,
    input [15:0] in,
    output reg out
    );
    
    always@(sel)
    begin
        out=in[sel];
    end
endmodule
