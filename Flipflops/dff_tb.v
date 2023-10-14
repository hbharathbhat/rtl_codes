`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: Testbench for D-Flipflop
// Module Name: dff_tb
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
