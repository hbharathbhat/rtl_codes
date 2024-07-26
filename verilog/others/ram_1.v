`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2023 04:19:51 PM
// Design Name: 
// Module Name: ram_1
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

// Single-port RAM with synchronous read/write

module ram_1(addr, data, clk, rd, wr, cs);
input [9:0] addr;
input clk, rd, wr, cs;
inout [7:0] data;
reg [7:0] mem [1023:0];
reg [7:0] d_out;

assign data=(cs&&rd)?d_out:8'bz;
always@(posedge clk)
if (cs && wr && !rd) mem[addr] = data;
always@(posedge clk)
if (cs && rd && !wr) d_out=mem[addr];

endmodule
