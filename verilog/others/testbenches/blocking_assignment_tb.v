`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2023 10:00:30 AM
// Design Name: 
// Module Name: blocking_assignment_tb
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


module blocking_assignment_tb;
wire a,b,c,d;
blocking_assignment dut(a,b,c,d);
initial
begin
$dumpfile("blocking_assignment.vcd");
$dumpvars(0,blocking_assignment_tb);
$monitor($time,"a=%4d,b=%4d,c=%4d,d=%4d",a,b,c,d);
a=30;b=20;c=15;d=5;
#100 $finish;

end
endmodule
