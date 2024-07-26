`timescale 1ns / 1ps

module alutest;
reg [15:0] X,Y;
wire [15:0] Z;
wire s,c,p,o,zr;

ALU dut(X,Y,Z,c,s,zr,p,o);
initial
begin
$dumpfile("alu.vcd");
$dumpvars(0,alutest);
$monitor($time,"X=%h,Y=%h,Z=%b,c=%b,s=%b,zr=%b,p=%b,o=%b",X,Y,Z,c,s,zr,p,o);
#5 X=16'h8fff;Y=16'h8000;
#5 X=16'hfffe;Y=16'h0002;
#5 X=16'hAAAA;Y=16'h5555;
#5 $finish;
end


endmodule
