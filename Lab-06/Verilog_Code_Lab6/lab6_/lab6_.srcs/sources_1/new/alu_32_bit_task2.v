`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2026 01:38:32 PM
// Design Name: 
// Module Name: alu_32_bit_task2
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


module alu_32_bit_task2(
    input[31:0] a , b ,
    input [3:0] aluControl, 
    output zero,
    output reg [31:0] aluResult 
    );
    assign zero = (aluResult == 32'b0) ;
    always @(*) begin 
              case(aluControl)
                4'b0000: aluResult  = a + b ;
                4'b0001: aluResult  = a - b ; 
                4'b0010: aluResult  = a & b ; 
                4'b0011: aluResult  = a | b ;  
                4'b0100: aluResult  = a ^ b ; 
                4'b0101: aluResult  = a << b; 
                4'b0110: aluResult  = a >> b; 
                default : aluResult = 32'b0; 
              endcase 
    end 
    
endmodule
