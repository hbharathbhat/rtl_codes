`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat ( https://github.com/bhatbharath )
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: Priority Encoder
// Module Name: priority_encoder
// Description: Priority Encoder using Conditional Statements
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
