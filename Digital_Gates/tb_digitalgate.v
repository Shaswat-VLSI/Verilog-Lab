`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2026 01:35:15 PM
// Design Name: 
// Module Name: tb_digitalgate
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


module tb_digitalgate;


    // Inputs
    reg a, b;

    // Outputs
    wire y_and;
    wire y_or;
    wire y_not;
    wire y_nor;
    wire y_nand;
    wire y_xor;
    wire y_xnor;

    // Instantiate the DUT (Device Under Test)
    digitalgate uut (
        .a(a),
        .b(b),
        .y_and(y_and),
        .y_or(y_or),
        .y_not(y_not),
        .y_nor(y_nor),
        .y_nand(y_nand),
        .y_xor(y_xor),
        .y_xnor(y_xnor)
    );

    initial begin
        // Display heading
        $display("Time\tA B | AND OR NOT NOR NAND XOR XNOR");
        $monitor("%0t\t%b %b |  %b   %b   %b   %b    %b    %b    %b",
                 $time, a, b, y_and, y_or, y_not, y_nor, y_nand, y_xor, y_xnor);

        // Test all input combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
