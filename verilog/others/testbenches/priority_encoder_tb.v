`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2023 11:14:29 PM
// Design Name: 
// Module Name: priority_encoder_tb
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
