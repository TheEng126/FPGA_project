module top_module(
    input wire [3:0] a,
    input wire [3:0] b,

    output wire out
    );

    wire [1:0] a_high = a[3:2];
    wire [1:0] a_low  = a[1:0];
    wire [1:0] b_high = b[3:2];
    wire [1:0] b_low  = b[1:0];

    wire w0, w1, w2;

    greater_2bit bit34(.a(a_high), .b(b_high), .c(w0));
    comparator_2bit bit(.a(a_high), .b(b_high), .cp(w1));

    greater_2bit bit12(.a(a_low), .b(b_low), .c(w2));

    assign out = w0 | w1 & w2;

endmodule
