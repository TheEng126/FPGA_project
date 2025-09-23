`timescale 1ns / 1ps
module multifunction_barrel_shifter_tb;

    reg [7:0] i_a;
    reg [2:0] i_b;
    reg [1:0] i_signal;
    wire [7:0] o_c;

multifunction_barrel_shifter uut(
    .i_a(i_a),
    .i_b(i_b),
    .i_signal(i_signal),
    .o_c(o_c)   
);  
initial begin
    i_signal = 2'b00;
    i_a = 8'b00001111;
    i_b = 3'b000; #10;
    i_b = 3'b001; #10;
    i_b = 3'b010; #10;
    i_b = 3'b011; #10;
    i_b = 3'b100; #10;
    i_b = 3'b101; #10;
    i_b = 3'b110; #10;

    i_signal = 2'b01;
    i_b = 3'b000; #10;
    i_b = 3'b001; #10;
    i_b = 3'b010; #10;
    i_b = 3'b011; #10;
    i_b = 3'b100; #10;
    i_b = 3'b101; #10;
    i_b = 3'b110; #10;
    i_b = 3'b111; #10;
    
    i_signal = 2'b10; #10;
    i_signal = 2'b11; #10;
    $stop;
end
endmodule