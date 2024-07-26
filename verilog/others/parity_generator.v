`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2023 01:11:29 PM
// Design Name: 
// Module Name: parity_generator
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

// This design will cause the synthesis tool to genertae a latch for the output 'even_odd'
module parity_generator(x,clk,z);
input clk,x;
output reg z;
reg even_odd;
parameter EVEN=0, ODD=1;

always@(posedge clk)
begin
case(even_odd)
    EVEN:begin
        z<=x?1:0;
        even_odd<=x?ODD:EVEN;
        end
    ODD: begin
        z<=x?0:1;
        even_odd<=x?EVEN:ODD;
        end
    default:even_odd<=EVEN;
endcase
end
endmodule
