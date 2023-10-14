`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat ( https://github.com/bhatbharath )
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: D-Latch
// Module Name: d_latch
//////////////////////////////////////////////////////////////////////////////////


module d_latch(En,D,Q);
input En,D;
output Q;

assign Q=En?D:Q; // Whenever En=0 Q will be assigned with Q & whenever En=1 D qill be assigned to Q

endmodule
