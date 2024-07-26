`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2023 01:20:14 PM
// Design Name: 
// Module Name: parity_generator_tb
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


module parity_generator_tb;
reg clk,x;
wire z;

parity_generator dut(x,clk,z);

always #5 clk=~clk;

initial
begin
$dumpfile("parity_generator.vcd");
$dumpvars(0, parity_generator_tb);
$monitor($time,"x=%b, clk=%b, z=%b",x,clk,z);
clk=1'b0;
end

initial
begin
#2 x=0; #10 x=1; #10 x=1; #10 x=1;
#10 x=1; #10 x=1; #10 x=1; #10 x=0;
#10 x=0; #10 x=1; #10 x=1; #10 x=0;
#10 $finish;
end



endmodule
