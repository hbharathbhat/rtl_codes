`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/11/2024 08:41:40 PM 
// Module Name: mux_8to1_behavioral_tb
// Project Name: Multiplexer 8:1 Testbench
//////////////////////////////////////////////////////////////////////////////////


module mux_8to1_behavioral_tb;
reg [7:0] in;
reg [2:0] sel;
wire out;

mux_8to1_behavioral dut0(in, sel, out);

initial
begin
        in=8'b01010101;
        sel = 3'b000;
    #5  sel = 3'b001;
    #5  sel = 3'b010;
    #5  sel = 3'b011;
    #5  sel = 3'b100;
    #5  sel = 3'b101;
    #5  sel = 3'b110;
    #5  sel = 3'b111;
    #10 $finish;
end
endmodule
