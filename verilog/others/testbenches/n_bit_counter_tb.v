`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 07:50:48 PM
// Design Name: 
// Module Name: n_bit_counter_tb
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


module n_bit_counter_tb;
parameter N=7;
reg clk,clr;
wire [N:0] count;

n_bit_counter dut(count,clk,clr);
initial
begin
$dumpfile("n_bit_counter.vcd");
$dumpvars(0,n_bit_counter_tb);
$monitor($time,"count=%b,clk=%b,clr=%b",count,clk,clr);
#5 clk=1'b0;clr=1'b0;
#5 clk=1'b0;clr=1'b1;
#5 clk=1'b1;clr=1'b0;
#5 clk=1'b1;clr=1'b1;
#5 $finish;
end
endmodule
