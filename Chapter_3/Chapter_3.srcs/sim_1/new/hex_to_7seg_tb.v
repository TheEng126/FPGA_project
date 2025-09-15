`timescale 1ns / 1ps
module hex_to_7seg_tb;
    reg [3:0] hex;
    wire [6:0] seg7;

    hex_to_7seg uut(
        .hex(hex),
        .seg7(seg7)
    );

    initial begin
        hex = 4'h0; #10;
        hex = 4'h1; #10;
        hex = 4'h2; #10;
        hex = 4'h3; #10;
        hex = 4'h4; #10;
        hex = 4'h5; #10; 
        hex = 4'h6; #10; 
        hex = 4'h7; #10;
        hex = 4'h8; #10; 
        hex = 4'h9; #10; 
        hex = 4'ha; #10; 
        hex = 4'hb; #10;
        hex = 4'hc; #10; 
        hex = 4'hd; #10; 
        hex = 4'he; #10;
        hex = 4'hf; #10;
        $stop;
    end
endmodule
