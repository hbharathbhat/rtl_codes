`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: 1 bit Simple Latch
// Module Name: simple_latch_tb
//////////////////////////////////////////////////////////////////////////////////

module simple_latch_tb;
reg data,load; wire dout,t;

simple_latch dut(data,load,dout,t);
initial
    begin
    $dumpfile("simple_latch.vcd");
    $dumpvars(0,simple_latch_tb);
    $monitor($time,"data=%h,load=%h,dout=%b,t=%b",data,load,dout,t);
    #5 data=1'h0;load=1'h0;
    #5 data=1'h0;load=1'h1;
    #5 data=1'h1;load=1'h0;
    #5 data=1'h1;load=1'h1;
    #5 $finish;
    
    end
endmodule
