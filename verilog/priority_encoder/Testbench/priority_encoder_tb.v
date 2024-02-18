`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat ( https://github.com/bhatbharath )
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: Priority Encoder
// Module Name: priority_encoder_tb
// Description: Testbench for Priority Encoder
//////////////////////////////////////////////////////////////////////////////////


module priority_encoder_tb;
reg [7:0] in; wire [2:0] code;

priority_encoder dut(in,code);

initial
begin
    $dumpfile("priority_encoder.vcd");
    $dumpvars(0,priority_encoder_tb);
    $monitor($time,"in=%b, code=%b",in,code);
    #5 in=8'b10000000;
    #5 in=8'b00000100;
    #5 in=8'b10000010;
    #5 in=8'b00010000;
    #5 in=8'b00000001;
    #5 in=8'bxxxx1xxx;
    #5 in=8'bzzzzzz1z;
    #5 $finish;
end
endmodule
