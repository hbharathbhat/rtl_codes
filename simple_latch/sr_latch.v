`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat ( https://github.com/bhatbharath )
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: SR Latch
// Module Name: sr_latch
//////////////////////////////////////////////////////////////////////////////////


module sr_latch(
    input S,R,
    output Q,Qbar
    );
    
    assign Q=~(R&Qbar);
    assign Qbar=~(S&Q);
endmodule
