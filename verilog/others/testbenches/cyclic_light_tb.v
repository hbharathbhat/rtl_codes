`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2023 11:36:15 AM
// Design Name: 
// Module Name: cyclic_light_tb
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


module cyclic_light_tb;
reg clk;
wire [0:2] light;

cyclic_lamp dut(clk,light);
always #5 clk=~clk;
initial
begin
$dumpfile("cyclic_light.vcd");
$dumpvars(0,cyclic_light_tb);
$monitor($time,"RGY=%b", light);
clk=1'b0;
#100 $finish;
end
endmodule
