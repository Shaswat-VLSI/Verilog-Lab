`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2026 04:04:24 PM
// Design Name: 
// Module Name: RCA
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
//This is a Rippel Carry Adder using 4Full Adder.

module RCA(
    input [3:0] A,B,
    input Cin,
    output Cout,
    output [3:0] S
    );
    wire c1,c2,c3;
    
    fulladder FA0 (
        .A(A[0]),
        .B(B[0]),
        .Cin(Cin),
        .S(S[0]),
        .Cout(c1)
    );
    fulladder FA1 (
        .A(A[1]),
        .B(B[1]),
        .Cin(c1),
        .S(S[1]),
        .Cout(c2)
    );
    fulladder FA2 (
        .A(A[2]),
        .B(B[2]),
        .Cin(c2),
        .S(S[2]),
        .Cout(c3)
    );
    fulladder FA3 (
        .A(A[3]),
        .B(B[3]),
        .Cin(c3),
        .S(S[3]),
        .Cout(Cout)
    );
endmodule
