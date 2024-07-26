`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 03:31:55 PM
// Design Name: 
// Module Name: addertest
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


module addertest;
reg [15:0] a,b; reg cin; wire [15:0] s; wire cout;

adder_16bit dut(a,b,cin,s,cout);
initial
begin
$dumpfile("adder.vcd");
$dumpvars(0,addertest);
$monitor($time,"a=%h,b=%h,cin=%h,s=%b,cout=%b",a,b,cin,s,cout);
#5 a=16'h0001;b=16'h0010;cin=1'h0;
#5 a=16'h8abc;b=16'h6bbb;
#5 a=16'hbad6;b=16'hdabc;
#5 a=16'h8fff;b=16'h8000;
#5 a=16'hfffe;b=16'h0002;
#5 a=16'hAAAA;b=16'h5555;
#5 $finish;
end

endmodule
