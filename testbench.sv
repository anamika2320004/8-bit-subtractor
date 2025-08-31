// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module tb_Subtractor_8bit;

    reg [7:0] a, b;
    wire [7:0] diff;
    wire borrow;

    // Instantiate the subtractor
    Subtractor_8bit uut (
        .a(a),
        .b(b),
        .diff(diff),
        .borrow(borrow)
    );

    initial begin
        // Dump waves for EPWave
        $dumpfile("waves.vcd");
        $dumpvars(0, tb_Subtractor_8bit);

        // Test cases
        a = 8'd50; b = 8'd25; #10;  // 50 - 25 = 25
        a = 8'd100; b = 8'd40; #10; // 100 - 40 = 60
        a = 8'd15; b = 8'd20; #10;  // 15 - 20 = -5 (wraps in 8-bit)
        a = 8'd200; b = 8'd150; #10;// 200 - 150 = 50
        a = 8'd0; b = 8'd1; #10;    // 0 - 1 = -1

        $finish;
    end
endmodule
