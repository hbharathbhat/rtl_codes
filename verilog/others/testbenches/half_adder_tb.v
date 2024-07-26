`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 01:01:57 PM
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;
reg a,b; wire s,c; integer i;

half_adder dut(a,b,s,c);
initial
begin
for(i=0;i<=2;i=i+1)
begin
{a,b}=1; #5;
$display("T=%2,a=%b,b=%b,s=%b,c=%b",$time,a,b,s,c);
end
#5 $finish;
end
endmodule
