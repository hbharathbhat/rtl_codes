`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 08:20:57 PM
// Design Name: 
// Module Name: controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//Control Path 
module controller(
    input clk, eqz, start,
    output ldA, ldB, ldP, clrP, decB, done
    );
    
 reg [2:0] state;
 parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100;
 
 always@(posedge clk)
 begin
 case(state)
 S0: if(start) state<=S1;
 S1: state<=S2;
 S2: state<=S3;
 S3: #2 if(eqz) state<=S4;
 S4: state<=S4;
 default: state<=S0;
 endcase
 end
 
 
endmodule
