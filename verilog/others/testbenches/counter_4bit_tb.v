`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2023 05:54:07 PM
// Design Name: 
// Module Name: counter_4bit_tb
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


module counter_4bit_tb;
wire [3:0] count;
reg clk,rst;

counter_4bit dut(clk,rst,count);
initial
    begin
        $dumpfile("counter_4bit.vcd");
        $dumpvars(0,counter_4bit_tb);
        $monitor($time,"clk=%b,rst=%b,count=%b",clk,rst,count);
        clk=1'b0;
    end
always #5 clk=~clk;
initial
    begin
        #10 rst=1'b1;
        $finish;
    end
endmodule
