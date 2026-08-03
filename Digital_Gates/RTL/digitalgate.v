`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2026 01:28:09 PM
// Design Name: 
// Module Name: digitalgate
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


module digitalgate(
    input a, b,
    output y_and,
    output y_not,
    output y_or,
    output y_nor,
    output y_nand,
    output y_xor,
    output y_xnor,
);

assign y_or   = a | b;
assign y_and  = a & b;
assign y_not = ~a;
assign y_nor  = ~(a | b);
assign y_nand = ~(a & b);
assign y_xor  = a ^ b;
assign y_xnor = ~(a ^ b);

endmodule
