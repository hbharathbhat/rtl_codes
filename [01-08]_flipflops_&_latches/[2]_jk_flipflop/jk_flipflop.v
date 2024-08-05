`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
//
// Create Date: 07/29/2024 06:01:34 PM
// Design Name: 
// Module Name: jk_flipflop
// Project Name: JK Flipflop
//////////////////////////////////////////////////////////////////////////////////


module jk_flipflop(input j, k, clk, rst, output reg q, qb);
reg [1:0] jk;

always@(posedge clk)
begin
    jk={j,k};
    if(rst)
    begin
        q=1'b0; qb=1'b1;
    end
    else
    case(jk)
        2'b00: q = q;
        2'b01: q = 1'b0;
        2'b10: q = 1'b1;
        2'b11: q = ~q;
    endcase
    qb = ~q;
end    
endmodule