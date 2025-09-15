`timescale 1ns / 1ps
module sign_magnitude_adder_tb;

    parameter N = 4;

    reg  [N-1:0] a, b;
    wire [N-1:0] out;

    sign_manitude_adder #(.N(N)) uut(
        .a(a),
        .b(b),
        .out(out)
    );

    initial begin
        a = 4'b0011; b = 4'b0001; #10; // +3 + +1
        a = 4'b1011; b = 4'b0001; #10; // -3 + +1
        a = 4'b0010; b = 4'b1110; #10; // +2 + -2
        $stop;  
    end
endmodule
