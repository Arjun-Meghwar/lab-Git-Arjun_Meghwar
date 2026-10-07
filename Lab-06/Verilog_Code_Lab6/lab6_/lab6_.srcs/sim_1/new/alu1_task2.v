`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2026 01:01:40 PM
// Design Name: 
// Module Name: alu1_task2
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


module alu1_task2;

     reg a, b; 
     reg [3:0] alu_ctrl; 
     // ouput 
     wire out_zero;
     wire alu_res; 
     
 

   
    // Instantiate the ALU
    alu_1 uut (
        .a(a),
        .b(b),
        .aluControl(alu_ctrl),
        .zero(out_zero),
        .aluResult(alu_res)
    );

    initial begin

        // Addition
        a = 0;
        b = 0;
        alu_ctrl = 4'b0000;
        #10;

        a = 1;
        b = 0;
        #10;

        a = 1;
        b = 1;
        #10;


        // Subtraction
        a = 1;
        b = 0;
        alu_ctrl = 4'b0001;
        #10;


        // AND
        a = 1;
        b = 1;
        alu_ctrl = 4'b0010;
        #10;

        a = 1;
        b = 0;
        #10;


        // OR
        a = 0;
        b = 1;
        alu_ctrl = 4'b0011;
        #10;


        // XOR
        a = 1;
        b = 1;
        alu_ctrl = 4'b0100;
        #10;

        a = 1;
        b = 0;
        #10;


        // Left shift
        a = 1;
        b = 1;
        alu_ctrl = 4'b0101;
        #10;


        // Right shift
        a = 1;
        b = 1;
        alu_ctrl = 4'b0110;
        #10;


        $finish;

    end

endmodule
