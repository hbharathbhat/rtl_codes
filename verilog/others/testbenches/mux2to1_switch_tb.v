`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2023 11:13:11 AM
// Design Name: 
// Module Name: mux2to1_switch_tb
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


module mux2to1_switch_tb;
wire out;
reg I0,I1,s;

mux2to1_switch dut(I0,I1,s,out);
initial
begin
$dumpfile("mux2to1_switch.vcd");
$dumpvars(0,mux2to1_switch_tb);
$monitor($time,"I0=%b, I1=%b, s=%b, out=%b",I0,I1,s,out);
#5 I0=1'b0;I1=1'b1;s=1'b0;
#5 I0=1'b0;I1=1'b1;s=1'b1;
#5 $finish;
end

endmodule
