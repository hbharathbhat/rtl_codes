`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/05/2024 12:09:39 PM
// Module Name: alu_8bit
// Project Name: ALU 8 bit
//////////////////////////////////////////////////////////////////////////////////

module alu_8bit(
    input [7:0] a, b,
    input [3:0] f,
    output reg [8:0] y
    );
    
    always@(a or b or f)
    begin
        case(f)
        4'b0000:y=a&b;
        4'b0001:y=a|b;
        4'b0010:y=a^b;
        4'b0011:y=~(a&b);
        4'b0100:y=~(a|b);
        4'b0101:y=a+b;   
        4'b0110:y=a-b;   
        4'b0111:y=a*b; 
        4'b1000:y=a/b;  
        default:y=32'b0;
        endcase
     end
        
endmodule
