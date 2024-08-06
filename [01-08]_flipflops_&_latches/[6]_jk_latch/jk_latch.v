`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/06/2024 10:30:32 PM
// Module Name: jk_latch
// Project Name: JK Latch
//////////////////////////////////////////////////////////////////////////////////


module jk_latch(
    input j, k, en, rst,
    output reg q, qb
    );
    
    reg [1:0] jk;
    
    always@(j or k or en or rst)
    begin
        jk={j,k};
        if(en)
        begin
            if(rst)
            begin
                q=1'b0;
                qb=1'b1;
            end
            else
                case(jk)
                    2'b00:q=q;
                    2'b01:q=1'b0;
                    2'b10:q=1'b1;
                    2'b11:q=~q;
                endcase
                qb=~q;
            end
     end
endmodule
