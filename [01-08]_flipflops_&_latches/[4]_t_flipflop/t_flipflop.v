`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/04/2024 06:12:15 PM
// Module Name: t_flipflop
// Project Name: T Flipflop
//////////////////////////////////////////////////////////////////////////////////


module t_flipflop(input t, clk, rst, output reg q, qb);

always@(posedge clk)
begin
    if(rst)
    begin
        q=1'b0; qb=1'b1;
    end
    else
    case(t)
        1'b0:q=1'b1;
        1'b1:q=1'b0;
    endcase
    qb=~q;
end
endmodule
