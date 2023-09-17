`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2023 11:07:17 PM
// Design Name: 
// Module Name: concant_adder
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

//8-bit adder description
module concant_adder(sum,cout,in1,in2,cin);
input [7:0] in1,in2;
input cin;
output [7:0] sum;
output cout;

assign #20 {cout,sum}=in1+in2+cin; // Concantenation of cout and sum

endmodule
