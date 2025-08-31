`timescale 1ns/1ps
module binary_decoder_3_8_tb;
    reg en;
    reg [2:0] a;
    wire b7, b6, b5, b4, b3, b2, b1, b0;
    wire [7:0] out;

binary_decoder_3_8 uut(
    .en(en),
    .a(a),
    .b7(b7), .b6(b6), .b5(b5), .b4(b4),
    .b3(b3), .b2(b2), .b1(b1), .b0(b0),
    .out(out)
);

    integer i;
initial begin
    en = 1;
    for (i = 0; i < 8; i = i + 1) begin
        a = i[2:0]; #10;
    end
    $stop;
end
    
endmodule