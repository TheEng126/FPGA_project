`timescale 1ns/1ps
module binary_decoder_4_16_tb;
    reg en;
    reg [3:0] a;
    wire b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0;
    wire [15:0] out;

binary_decoder_4_16 uut(
    .en(en),
    .a(a),
    .b15(b15), .b14(b14), .b13(b13), .b12(b12),
    .b11(b11), .b10(b10), .b9(b9), .b8(b8),
    .b7(b7), .b6(b6), .b5(b5), .b4(b4),
    .b3(b3), .b2(b2), .b1(b1), .b0(b0),
    .out(out)
);

    integer i;
initial begin
    en = 1;
    for (i = 0; i < 15; i = i + 1) begin
        a = i[3:0]; #10;
    end
    $stop;
end
    
endmodule