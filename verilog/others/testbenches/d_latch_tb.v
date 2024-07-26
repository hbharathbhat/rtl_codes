`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2023 08:12:12 AM
// Design Name: 
// Module Name: d_latch_tb
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


module d_latch_tb;
reg En,D; wire Q;

d_latch dut(En,D,Q);
initial
    begin
        $dumpfile("d_latch.vcd");
        $dumpvars(0,d_latch_tb);
        $monitor($time,"En=%b,D=%b,Q=%b",En,D,Q);
        #5 En=0;D=0;
        #5 En=0;D=1;
        #5 En=1;D=0;
        #5 En=1;D=1;
        #5 $finish;
    end
endmodule
