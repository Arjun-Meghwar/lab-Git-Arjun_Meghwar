`timescale 1ns / 1ps

//A, B, ALUControl[3:0]
//Outputs: ALUResult, Zero
module alu_32bit_WithControl(
    input wire [31:0]a ,
    input wire [31:0]b , 
    input wire [3:0] AluControl,  
    output reg [31:0] aluResult,
    output zero  
    );
    
    // assigning zero to 0 
    assign zero = (aluResult == 32'b0) ;
    always @(*) begin 
      case(AluControl)
        4'b0000: aluResult  = a + b ;
        4'b0001: aluResult  = a - b ; 
        4'b0010: aluResult  = a & b ; 
        4'b0011: aluResult  = a | b ;  
        4'b0100: aluResult  = a ^ b ; 
        4'b0101: aluResult  = a << b[31:0]; 
        4'b0110: aluResult  = a >> b[30:1]; 
        default : aluResult = 32'b0; 
      endcase 
    end 
endmodule
