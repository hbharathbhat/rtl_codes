`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2023 06:55:25 PM
// Design Name: 
// Module Name: mux_4to1_structural_tb
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
