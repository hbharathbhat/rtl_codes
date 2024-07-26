`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2023 10:01:59 AM
// Design Name: 
// Module Name: workspace_temp_tb
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


module workspace_temp_tb;
reg clk,a,b;
wire c;

workspace_temp dut(clk,a,b,c);

initial
begin
$dumpfile("workspace_temp.vcd");
$dumpvars(0,workspace_temp_tb);
$monitor($time,"clk=%b,a=%b,b=%b,c=%b",clk,a,b,c);
#5 a=1'b0;b=1'b0;clk=1'b0;
#5 a=1'b0;b=1'b1;
#5 a=1'b1;b=1'b0;
#5 a=1'b1;b=1'b1;
#5 $finish;
end
endmodule
