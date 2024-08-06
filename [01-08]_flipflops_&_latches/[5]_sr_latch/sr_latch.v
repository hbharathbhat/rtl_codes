`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/05/2024 07:02:39 PM
// Module Name: sr_latch
// Project Name: SR Latch
//////////////////////////////////////////////////////////////////////////////////


module sr_latch(
    input s, r, en, rst,
    output reg q, qb);
    
   reg [1:0] sr;
   
   always@(s or r or en or rst)
   begin
        sr={s,r};
        if(en)
        begin
            if(rst)
                q=1'b0; qb=1'b1;
            end
            else
            case(sr)
                2'b00:q=q;
                2'b01:q=1'b0;
                2'b10:q=1'b1;
                2'b11:q=1'bz;
            endcase
            qb=~q;        
   end
endmodule
