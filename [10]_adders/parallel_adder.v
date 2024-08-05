`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/05/2024 06:21:16 PM
// Module Name: parallel_adder
// Project Name: Parallel Adder 8bit 
//////////////////////////////////////////////////////////////////////////////////


module parallel_adder(
    input [7:0] a, b,
    input cin,  
    output [7:0] sum,
    output cout);
    
    wire c0, c1, c2, c3, c4, c5, c6;
    
    full_adder dut0(a[0], b[0], cin, sum[0], c0);
    full_adder dut1(a[1], b[1], c0, sum[1], c1);
    full_adder dut2(a[2], b[2], c1, sum[2], c2);
    full_adder dut3(a[3], b[3], c2, sum[3], c3);
    full_adder dut4(a[4], b[4], c3, sum[4], c4);
    full_adder dut5(a[5], b[5], c4, sum[5], c5);
    full_adder dut6(a[6], b[6], c5, sum[6], c6);
    full_adder dut7(a[7], b[7], c6, sum[7], cout);
                                 
endmodule
