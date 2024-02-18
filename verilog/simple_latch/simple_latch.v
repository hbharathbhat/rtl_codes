`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// 
// Create Date: 09/12/2023 03:18:50 PM
// Design Name: 1 bit Simple Latch
// Module Name: simple_latch
//////////////////////////////////////////////////////////////////////////////////

module simple_latch(data,load,dout,t);
input data, load;
output reg dout,t;


always@(load or data)
    begin
        if(!load)
            t=data; //LHS must be reg type in always block
            dout=!t;
    end

endmodule
