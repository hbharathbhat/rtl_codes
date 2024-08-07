`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/07/2024 09:59:36 AM
// Module Name: lod
// Project Name: Leading One Detector
//////////////////////////////////////////////////////////////////////////////////


module lod(
    input [7:0] data_in,
    output reg [2:0] data_out
    );
    
    always@(*)
    begin
        casex(data_in)
            8'b1xxxxxxx: data_out = 3'b111;
            8'b01xxxxxx: data_out = 3'b110;
            8'b001xxxxx: data_out = 3'b101;
            8'b0001xxxx: data_out = 3'b100;
            8'b00001xxx: data_out = 3'b011;
            8'b000001xx: data_out = 3'b010;
            8'b0000001x: data_out = 3'b001;
            8'b00000001: data_out = 3'b000;
            default: data_out = 3'b000;
        endcase
     end
        
endmodule
