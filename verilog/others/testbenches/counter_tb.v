`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 06:05:09 PM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb;
reg mode,clk,clr,load;
reg [0:7] d_in;
wire [0:7] count;

counter dut(mode,clr,load,d_in,clk,count);
initial
begin
$dumpfile("counter.vcd");
$dumpvars(0,counter_tb);
$monitor($time,"mode=%b,clr=%b,load=%b,d_in=%b,clk=%b,count=%b",mode,clr,load,d_in,clk,count);
clk=1'b0; #5 mode=1'b1; #5 clr=1'b1; #5 load=1'b1; d_in=8'b10101010;
end
always #5 clk=~clk;
initial
begin
#20 mode=1'b1; #25 clr=1'b0; #30 load=1'b0;
#250 $finish;
end
endmodule
