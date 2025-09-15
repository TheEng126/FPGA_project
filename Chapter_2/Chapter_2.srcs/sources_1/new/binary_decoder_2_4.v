module binary_decoder_2_4 (
    input wire en,
    input wire [1:0] a,
    output wire b3, b2, b1, b0
);
    wire a1, a0;

    assign a1 = a[1];
    assign a0 = a[0]; 

    assign b0 = en & ~a1 & ~a0;
    assign b1 = en & ~a1 &  a0;
    assign b2 = en &  a1 & ~a0;
    assign b3 = en &  a1 &  a0;

endmodule