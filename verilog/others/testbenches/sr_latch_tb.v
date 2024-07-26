`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2023 08:28:13 AM
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb;
reg S,R; wire Q,Qbar;

sr_latch dut(S,R,Q,Qbar);
initial begin
    $dumpfile("sr_latch.vcd");
    $dumpvars(0,sr_latch_tb);
    $monitor($time,"S=%b,R=%b,Q=%b,Qbar=%b",S,R,Q,Qbar);
    #5 S=0;R=0;
    #5 S=0;R=1;
    #5 S=1;R=0;
    #5 S=1;R=1;
    #5 $finish;

end

endmodule
