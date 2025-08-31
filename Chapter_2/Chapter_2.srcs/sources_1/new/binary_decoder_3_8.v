module binary_decoder_3_8(
    input wire en,
    input wire [2:0] a,
    output wire b7, b6, b5, b4, b3, b2, b1, b0,
    output wire [7:0] out
    );
    wire a2, a1, a0;
    wire en_low, en_high;

    assign en_low  = en & ~a2; 
    assign en_high = en &  a2;

    assign a2 = a[2];
    assign a1 = a[1];
    assign a0 = a[0];
    
    binary_decoder_2_4 left(
        .en(en_high), 
        .a({a1, a0}),   
        .b3(b7),
        .b2(b6),
        .b1(b5),
        .b0(b4)
    );
    binary_decoder_2_4 right(
        .en(en_low),
        .a({a1, a0}),  
        .b3(b3),
        .b2(b2),
        .b1(b1),
        .b0(b0)
    );

    assign out = {b7, b6, b5, b4, b3, b2, b1, b0};

endmodule
