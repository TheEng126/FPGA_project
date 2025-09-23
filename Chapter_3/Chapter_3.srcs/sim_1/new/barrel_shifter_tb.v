`timescale 1ns / 1ps
module barrel_shifter_tb;
    reg [7:0] i_a;
    reg [2:0] i_amt;
    wire [7:0] o_y;

    barrel_shifter uut(
        .i_a(i_a),
        .i_amt(i_amt),
        .o_y(o_y)
    );

    initial begin
        i_a = 8'b00001111;
        i_amt = 3'b001; #10;
        i_amt = 3'b111; #10;
        i_amt = 3'b101; #10;
        i_amt = 3'b011; #10;
        i_amt = 3'b100; #10;
        $stop;
    end
endmodule
