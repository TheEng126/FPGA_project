module greater_2bit (
    input wire [1:0] a,
    input wire [1:0] b,
    output wire c
);
    assign c = a[0] & ~(a[1] & b[0] & b[1]);
endmodule