`timescale 1ns / 1ps

module rom(addr, data, rd_en, cs);
input [2:0] addr;
input cs, rd_en;
output reg [7:0] data;

always@(*)
case(addr)
    0: data=22;
    1: data=45;
    2: data=46;
    3: data=14;
    4: data=13;
    5: data=28;
    6: data=25;
    7: data=12;
endcase

endmodule
