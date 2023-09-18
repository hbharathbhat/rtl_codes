`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2023 10:42:14 AM
// Design Name: 
// Module Name: dff_tb
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


module dff_tb;
reg d,reset,set,clk; wire q, qbar;
dff dut(q,qbar,d,set,reset,clk);


initial
begin
$dumpfile("dff.vcd");
$dumpvars(0,dff_tb);
$monitor($time,"d=%b,set=%b,reset=%b,clk=%b",d,set,reset,clk);
forever #5 clk=~clk;
end
initial
begin
#5 d=1'b0;reset=1'b1;set=1'b1;
#5 d=1'b0;reset=1'b0;set=1'b0;
#5 d=1'b1;reset=1'b0;set=1'b0;
#5 $finish;
end

endmodule
