`timescale 1ns / 1ps
module top_module_tb;
    reg [3:0] a;
    reg [3:0] b;
    wire out;

    // Gọi module cần test (DUT = Device Under Test)
    top_module uut (
        .a(a),
        .b(b),
        .out(out)
    );

    integer i, j;

    initial begin
        // Duyệt hết các giá trị của a và b (0 đến 15)
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                a = i[3:0];
                b = j[3:0];
                #10; // chờ 10ns cho mỗi vector
            end
        end
        $stop; // dừng simulation
    end
endmodule