`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2026 04:40:39 PM
// Design Name: 
// Module Name: tb_RCAmini
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


module tb_RCAmini;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;

    // Outputs
    wire [3:0] S;
    wire Cout;

    // Instantiate the DUT
    RCAmini uut (
        .A(A),
        .B(B),
        .S(S),
        .Cout(Cout)
    );

    initial begin
        // Display header
        $display("Time\tA\tB\t|\tSum\tCout");
        $monitor("%0t\t%b\t%b\t|\t%b\t%b",
                 $time, A, B, S, Cout);

        // Test Case 1
        A = 4'b0000; B = 4'b0000;
        #10;

        // Test Case 2
        A = 4'b0001; B = 4'b0010;
        #10;

        // Test Case 3
        A = 4'b0101; B = 4'b0011;
        #10;

        // Test Case 4
        A = 4'b0111; B = 4'b1000;
        #10;

        // Test Case 5
        A = 4'b1111; B = 4'b0001;
        #10;

        // Test Case 6
        A = 4'b1111; B = 4'b1111;
        #10;

        // Test Case 7
        A = 4'b1001; B = 4'b0110;
        #10;

        // Test Case 8
        A = 4'b1010; B = 4'b0101;
        #10;

        // Test Case 9
        A = 4'b1100; B = 4'b0011;
        #10;

        // Test Case 10
        A = 4'b1000; B = 4'b1000;
        #10;

        $finish;
    end

endmodule
