`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2026 04:13:38 PM
// Design Name: 
// Module Name: tb_RCA
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


module tb_RCA;

    // Inputs
    reg [3:0] A, B;
    reg Cin;

    // Outputs
    wire [3:0] S;
    wire Cout;

    // Instantiate the DUT (Device Under Test)
    RCA uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin
        // Display heading
        $display("Time\tA\tB\tCin\t|\tSum\tCout");
        $monitor("%0t\t%b\t%b\t%b\t|\t%b\t%b",
                  $time, A, B, Cin, S, Cout);

        // Test Case 1
        A = 4'b0000; B = 4'b0000; Cin = 0;
        #10;

        // Test Case 2
        A = 4'b0001; B = 4'b0010; Cin = 0;
        #10;

        // Test Case 3
        A = 4'b0101; B = 4'b0011; Cin = 0;
        #10;

        // Test Case 4
        A = 4'b0111; B = 4'b1000; Cin = 0;
        #10;

        // Test Case 5
        A = 4'b1111; B = 4'b0001; Cin = 0;
        #10;

        // Test Case 6
        A = 4'b1111; B = 4'b1111; Cin = 0;
        #10;

        // Test Case 7
        A = 4'b1010; B = 4'b0101; Cin = 1;
        #10;

        // Test Case 8
        A = 4'b1111; B = 4'b1111; Cin = 1;
        #10;

        // Test Case 9
        A = 4'b1001; B = 4'b0110; Cin = 1;
        #10;

        // Test Case 10
        A = 4'b0011; B = 4'b1100; Cin = 1;
        #10;

        $finish;
    end

endmodule
