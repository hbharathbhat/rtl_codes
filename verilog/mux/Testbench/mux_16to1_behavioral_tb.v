`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat ( https://github.com/bhatbharath )
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: 16:1 Multiplexer Testbench
// Module Name: mux_16to1_behavioral_tb
// Description: Testbench for Behavioral Description of 16:1 Multiplexer
//////////////////////////////////////////////////////////////////////////////////


module mux_16to1_behavioral_tb;
reg [15:0] in;
reg [3:0] sel;
wire out;

mux_16to1_behavioral dut(.sel(sel),.in(in),.out(out));


initial
    begin
        $dumpfile("mux_16to1_behavioral.vcd");
        $dumpvars(0,mux_16to1_behavioral_tb);
        $monitor($time,"sel=%h, in=%h, out=%b",sel,in,out);
        #5 in=16'h3f0a; sel=4'h0;
        #5 sel=4'h1;
        #5 sel=4'h6;
        #5 sel=4'hc;
        #5 $finish;
        
     end

endmodule
