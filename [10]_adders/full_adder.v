`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: H Bharath Bhat
// Create Date: 08/05/2024 06:21:16 PM
// Module Name: full_adder
// Project Name: Full Adder 8bit 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(
    input a, b, cin,
    output sum, cout
    );
    

       assign sum=a^b^cin;
       assign cout=(a&b)|(b&cin)|(a&cin);

    
endmodule
