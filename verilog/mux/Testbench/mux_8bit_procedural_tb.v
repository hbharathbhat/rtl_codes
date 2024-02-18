`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// 
// Create Date: 09/18/2023 02:39:26 PM
// Module Name: mux_8bit_procedural_tb
//////////////////////////////////////////////////////////////////////////////////


module mux_8bit_procedural_tb;
reg [7:0] in; reg [2:0] sel; wire out;

mux_8bit_procedural dut(in,sel,out);
initial
    begin
        $dumpfile("mux_8bit_procedural.vcd");
        $dumpvars(0,mux_8bit_procedural_tb);
        $monitor($time,"in=%b, sel=%b, out=%b",in,sel,out);
        #5 in=8'b10011010; sel=3'b000;
        #5 in=8'b10011010; sel=3'b001;
        #5 in=8'b10011010; sel=3'b010;
        #5 in=8'b10011010; sel=3'b011;
        #5 in=8'b10011010; sel=3'b100;
        #5 in=8'b10011010; sel=3'b101;
        #5 in=8'b10011010; sel=3'b110;
        #5 in=8'b10011010; sel=3'b111;
        #5 $finish;
    end
endmodule
