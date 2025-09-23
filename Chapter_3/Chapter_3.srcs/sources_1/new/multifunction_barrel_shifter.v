module barrel_shift_right (
    input wire [7:0] i_a,
    input wire [2:0] i_b,
    output reg [7:0] o_c
);
    always @(*) begin
        case(i_b)
            3'b000: o_c = i_a;
            3'b001: o_c = {i_a [0], i_a [7:1]};
            3'b010: o_c = {i_a [1:0], i_a [7:2]};
            3'b011: o_c = {i_a [2:0], i_a [7:3]};
            3'b100: o_c = {i_a [3:0], i_a [7:4]};
            3'b101: o_c = {i_a [4:0], i_a [7:5]};
            3'b110: o_c = {i_a [5:0], i_a [7:6]};
            default: o_c = {i_a [6:0], i_a [7]};
        endcase
    end
endmodule 

module reverse(
    input wire [7:0] i_a,
    input wire en,
    output wire [7:0] o_c


);
    assign o_c = {i_a[0], i_a[1], i_a[2], i_a[3], i_a[4], i_a[5], i_a[6], i_a[7]};
endmodule

module barrel_shift_left (
    input wire [7:0] i_a,
    input wire [2:0] i_b,
    output reg [7:0] o_c
);
    always @(*) begin
        case (i_b)
            3'b000: o_c = i_a;
            3'b001: o_c = {i_a[6:0], i_a[7]};
            3'b010: o_c = {i_a[5:0], i_a[7:6]};
            3'b011: o_c = {i_a[4:0], i_a[7:5]};
            3'b100: o_c = {i_a[3:0], i_a[7:4]};
            3'b101: o_c = {i_a[2:0], i_a[7:3]};
            3'b110: o_c = {i_a[1:0], i_a[7:2]};
            default: o_c = {i_a[0], i_a[7:1]};
        endcase
    end
    
endmodule

module multifunction_barrel_shifter(
    input wire [7:0] i_a,
    input wire [2:0] i_b,
    input wire [1:0] i_signal,
    output reg [7:0] o_c
);
    wire [7:0] o_cr, o_cl, o_sv;

    reverse sv (.i_a(o_cr), .o_c(o_sv));
    barrel_shift_left rl (.i_a(i_a), .i_b(i_b), .o_c(o_cl));
    barrel_shift_right rr (.i_a(i_a), .i_b(i_b), .o_c(o_cr));

    always @(*) begin
        case (i_signal)
            2'b00: o_c = o_cl;
            2'b01: o_c = o_cr;
            2'b10: o_c = o_sv;
            default: o_c = 8'b00000000;
        endcase 
    end
endmodule