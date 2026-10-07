`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2026 12:32:27 PM
// Design Name: 
// Module Name: alu_1
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
module alu_1(
    input a , b ,
    input [3:0] aluControl, 
    output zero,
    output reg aluResult 
);
     
    assign zero = (aluResult == 1'b0) ;
    always @(*) begin 
              case(aluControl)
                4'b0000: aluResult  = a + b ;
                4'b0001: aluResult  = a - b ; 
                4'b0010: aluResult  = a & b ; 
                4'b0011: aluResult  = a | b ;  
                4'b0100: aluResult  = a ^ b ; 
                4'b0101: aluResult  = a << b; 
                4'b0110: aluResult  = a >> b; 
                default : aluResult = 1'b0; 
              endcase 
    end 
    
    
endmodule
