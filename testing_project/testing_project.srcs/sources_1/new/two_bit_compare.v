module comp_2bit (
    input wire [1:0] a,
    input wire [1:0] b,
    output wire c
);
    wire w0, w1;

    comp_1bit bit0 (.a(a[0]), .b(b[0]), .c(w0));
    comp_1bit bit1 (.a(a[1]), .b(b[1]), .c(w1));

    assign c = w0 & w1;
endmodule
