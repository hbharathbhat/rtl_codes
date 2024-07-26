`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 10:06:29 PM
// Design Name: 
// Module Name: half_adder_tb2
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


module half_adder_tb2;
reg a,b; wire s,c; integer i;

half_adder dut(.a(a),.b(b),.s(sum),.c(cout));

initial
begin
$dumpfile("half_adder_tb2.vcd");
$dumpvars(0,half_adder_tb2);
$monitor($time,"a=%b,b=%b,sum=%b,cout=%b",a,b,s,c);
#5 a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0;
#5 a=1;b=1;
#5 $finish;
end

endmodule
