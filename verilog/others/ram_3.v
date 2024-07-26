`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2023 05:38:02 PM
// Design Name: 
// Module Name: ram_3
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


module ram_3(data_out, data_in, addr, wr, cs);
parameter addr_size=10, word_size=8, memory_size=1024;
input  [addr_size-1:0] addr;
input [word_size-1:0] data_in;
input wr, cs;
output [word_size-1:0] data_out;
reg [word_size-1:0] mem [memory_size-1:0];

assign data_out=mem[addr];

always@(wr or cs)
if(wr)    mem[addr]=data_in; //If write=1; then assign mem[addr]=data_in


endmodule
