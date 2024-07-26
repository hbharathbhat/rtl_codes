`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2023 04:30:37 PM
// Design Name: 
// Module Name: ring_counter_tb
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


module ring_counter_tb;
wire [7:0] count; reg init, clk;

ring_counter dut(clk,init,count);
initial
begin
$dumpfile("ring_counter.vcd");
$dumpvars(0,ring_counter_tb);
$monitor($time,"clk=%b,init=%b,count=%b",clk,init,count);
#5 init=1'b0;
#5 init=1'b1;
end
always #5 clk=~clk;

initial
begin

#250 $finish;
end

endmodule
