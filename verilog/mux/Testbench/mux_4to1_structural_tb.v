`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat ( https://github.com/bhatbharath )
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: 4:1 Multiplexer Testbench
// Module Name: mux_4to1_structural_tb
// Description: Testbench for Structural Description of 4:1 Multiplexer
//////////////////////////////////////////////////////////////////////////////////


module mux_4to1_structural_tb;
reg [3:0] in; reg [1:0] sel; wire out;

mux_4to1_structural dut(in,sel,out);
initial
    begin
        $dumpfile("mux_4to1_structural.vcd");
        $dumpvars(0,mux_4to1_structural_tb);
        $monitor($time,"in=%h,sel=%h,out=%b",in,sel,out);
        #5 in=4'h0;sel=2'h0;
        #5 in=4'h1;sel=2'h0;
        #5 in=4'h0;sel=2'h1;
        #5 in=4'h1;sel=2'h1;    
        #5 $finish;        
end
endmodule
