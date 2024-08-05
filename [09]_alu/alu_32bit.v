`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/05/2024 12:09:39 PM
// Module Name: alu_32bit
// Project Name: ALU 32 bit
//////////////////////////////////////////////////////////////////////////////////


module alu_32bit(
    input [31:0] a, b,
    input [2:0] f,
    output reg [31:0] y
    );
    
    always@(a or b or f)
    begin
        case(f)
        3'b000:y=a&b;
        3'b001:y=a|b;
        3'b010:y=~(a&b);
        3'b011:y=~(a|b);
        3'b100:y=a+b;
        3'b101:y=a-b;
        3'b110:y=a*b;
        3'b111:y=a/b;
        default: y=32'b0;
        endcase
     end
        
endmodule
