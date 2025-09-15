`timescale 1ns/1ps
module binary_decoder_2_4_tb;
    reg en;
    reg [1:0] a;
    wire b3, b2, b1, b0;
    wire [3:0] out;

binary_decoder_2_4 uut(
    .en(en),
    .a(a),
    .b3(b3), .b2(b2), .b1(b1), .b0(b0),
    .out(out)
);

    integer i;
initial begin
    en = 1;
    for (i = 0; i < 4; i = i + 1) begin
        a = i[1:0]; #10;
    end
    $stop;
end
    
endmodule