`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: H Bharath Bhat 
// 
// Create Date: 09/15/2023 08:09:39 AM
// Design Name: 
// Module Name: d_latch
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////


module d_latch(En,D,Q);
input En,D;
output Q;

assign Q=En?D:Q; // Whenever En=0 Q will be assigned with Q & whenever En=1 D qill be assigned to Q

endmodule
