`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 04:54:50 PM
// Design Name: 
// Module Name: shiftreg_4bit_tb
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


module shiftreg_4bit_tb;
reg a,clk,clr;
wire e;

shiftreg_4bit dut(a,e,clk,clr);
initial
begin
$dumpfile("shiftreg_4bit.vcd");
$dumpvars(0,shiftreg_4bit_tb);
clk=1'b0; #2 clr=1'b0;#5 clr=1'b1;
end
always #5 clk=~clk;
initial
begin
#10 a=1;
#10 a=1;
#10 a=0;
#10 a=1;
#10 a=0;
#10 a=1;
#10 a=0;
#10 a=1;
#10 a=0;

#10 $finish;
end

endmodule
