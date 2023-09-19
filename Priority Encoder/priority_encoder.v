`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2023 11:09:23 PM
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(in,code);
input [7:0] in;
output reg [2:0] code;
always@(*)
begin
    if(in[0])
        code=3'b000;
    else if (in[1])
        code=3'b001;
    else if (in[2])
        code=3'b010;
    else if (in[3])
        code=3'b011;
    else if (in[4])
        code=3'b100;
    else if (in[5])
        code=3'b101;
    else if (in[6])
        code=3'b110;
    else if (in[7])
        code=3'b111;
    else
        code=3'bxxx;    
end
endmodule
