`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// 
// Create Date: 07/28/2024 03:56:52 PM
// Design Name: SR Flipflop
// Module Name: sr_flipflop
//////////////////////////////////////////////////////////////////////////////////


module sr_flipflop(input s, r, clk, rst, output reg q, qb);
reg [1:0] sr;

always@(posedge clk)
begin
    sr={s,r};
    if(rst)
    begin
        q=1'b0; qb=1'b1;
    end
    else
    case(sr)
        2'b00: q = q;
        2'b01: q = 1'b0;
        2'b10: q = 1'b1;
        2'b11: q = 1'bz;
    endcase
    qb = ~q;
end    
endmodule
