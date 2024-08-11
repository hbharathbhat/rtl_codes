`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/11/2024 08:41:40 PM 
// Module Name: mux_8to1_behavioral
// Project Name: Multiplexer 8:1
//////////////////////////////////////////////////////////////////////////////////


module mux_8to1_behavioral(
    input [7:0] in,
    input [2:0] sel,
    output reg out
    );
    
    always@(sel)
    begin
        out = in[sel];
    end
endmodule
