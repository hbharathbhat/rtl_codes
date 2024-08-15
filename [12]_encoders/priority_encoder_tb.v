`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat 
// Create Date: 08/15/2024 08:08:10 AM
// Module Name: priority_encoder_tb
// Project Name: Priority Encoder
//////////////////////////////////////////////////////////////////////////


module priority_encoder_tb;
reg [7:0] in;
wire [2:0] out;

priority_encoder dut0(in, out);

initial
begin
        in = 8'b00000000;
    #5  in = 8'b00000001;
    #5  in = 8'b00000010;
    #5  in = 8'b00000100;
    #5  in = 8'b00001000;
    #5  in = 8'b00010000;
    #5  in = 8'b00100000;
    #5  in = 8'b01000000;
    #5  in = 8'b10000000;
    #10 $finish;
end
endmodule
