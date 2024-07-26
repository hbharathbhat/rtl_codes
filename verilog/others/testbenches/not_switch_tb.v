`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2023 11:02:56 AM
// Design Name: 
// Module Name: not_switch_tb
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


module not_switch_tb;
wire f;
reg x;

not_switch dut(x,f);
initial
begin
$dumpfile("not_switch.vcd");
$dumpvars(0,not_switch_tb);
$monitor($time,"x=%b, f=%b",x,f);
#5 x=1'b0;
#5 x=1'b1;
#5 $finish;
end
endmodule
