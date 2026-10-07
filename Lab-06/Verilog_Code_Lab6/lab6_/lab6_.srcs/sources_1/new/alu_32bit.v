`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2026 12:56:24 PM
// Design Name: 
// Module Name: alu_32bit
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


// 1 bit alu design 
module alu_32bit(
    input [31:0] a , [31:0] b , 
    output [31:0] alu_res1
);
    
    assign alu_res1 = a + b ;
    
    assign alu_res2 = a - b; 
     
    assign alu_res3 = a & b; 
    
    assign alu_res4 = a | b;
    
    assign alu_res5 = a ^ b; 
    
    assign alu_res6 = a << b; 
    
    assign alu_res7 = a >> b; 
    
    
    
endmodule
