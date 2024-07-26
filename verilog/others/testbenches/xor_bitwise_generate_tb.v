`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2023 09:51:40 PM
// Design Name: 
// Module Name: xor_bitwise_generate_tb
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


module xor_bitwise_generate_tb;
reg [15:0] a,b;
wire [15:0] f;
xor_bitwise_generate G (a,b,f);
initial
begin
    $dumpfile("xor_bitwise_generate.vcd");//.vcd: Value Change Dump
    $dumpvars(0,xor_bitwise_generate_tb);
    $display($time,"a=%b, b=%b, f=%b",a,b,f);
    #5 a=16'haaaa;b=16'h00ff;
    #5 a=16'h0f0f;b=16'h3333;
    #5 a=16'h9ab0;b=16'h12ff;
    #5 $finish;
end

endmodule
