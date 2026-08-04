`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2026 06:41:34 PM
// Design Name: 
// Module Name: tb_halfadder
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


module tb_halfadder;

    // Inputs
    reg A, B;

    // Outputs
    wire S, Cout;

    // Instantiate the Design Under Test (DUT)
    halfadder uut (
        .A(A),
        .B(B),
        .S(S),
        
        .Cout(Cout)
    );

    // Apply test vectors
    initial begin
        $display("Time\tA\tB\t|\tS\tCout");
        $monitor("%0t\t%b\t%b\t|\t%b\t%b", $time, A, B, S, Cout);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end

endmodule