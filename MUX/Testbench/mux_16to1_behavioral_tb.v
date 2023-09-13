`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 01:31:55 PM
// Design Name: 
// Module Name: mux_16to1_behavioral_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
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
