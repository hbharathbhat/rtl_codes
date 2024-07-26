`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 11:28:07 AM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
reg [3:0] a,b; reg cin;
wire [3:0] s; wire cout;

full_adder dut(a,b,cin,s,cout);

initial
begin
$dumpfile("full_adder_vcd");
$dumpvars(0,full_adder_tb);
$monitor($time,"a=%b,b=%b,cin=%b,s=%b,cout=%b",a,b,cin,s,cout);
#5 a=4'b1000;b=4'b1011;cin=1'b0;
#5 a=4'b1010;b=4'b1001;cin=1'b1;
#5 a=4'b0010;b=4'b0111;;cin=1'b0;
#5 $finish;
end

endmodule
