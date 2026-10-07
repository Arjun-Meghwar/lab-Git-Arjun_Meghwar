`timescale 1ns / 1ps

module alu_32bit_task2_tb;

    // inputs
    reg [31:0] a, b;
    reg [3:0] alu_ctrl;
    // outputs
    wire out_zero;
    wire[31:0] alu_res;

    // Instantiate the ALU
    alu_32bit_WithControl uut (
        .a(a),
        .b(b),
        .AluControl(alu_ctrl),
        .zero(out_zero),
        .aluResult(alu_res)
    );

    initial begin

        // Default inputs
        a = 0;
        b = 0;
        alu_ctrl = 4'b0000;
        #10;

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

        // Back to default inputs
        a = 0;
        b = 0;
        alu_ctrl = 4'b0000;
        #10;

        $finish;

    end

endmodule