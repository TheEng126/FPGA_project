module binary_decoder_4_16(
    input wire en,
    input wire [3:0] a,
    output wire b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0,
    output wire [15:0] out
    );
    wire a3, a2, a1, a0;
    wire en_00, en_01, en_10, en_11;    

    assign en_00 = en & ~a3 & ~a2;
    assign en_01 = en & ~a3 &  a2;
    assign en_10 = en &  a3 & ~a2;
    assign en_11 = en &  a3 &  a2;

    assign a3 = a[3];
    assign a2 = a[2];
    assign a1 = a[1];
    assign a0 = a[0];
    
    binary_decoder_2_4 start_00(
        .en(en_00),
        .a({a1, a0}),  
        .b3(b3),
        .b2(b2),
        .b1(b1),
        .b0(b0)
    );

    binary_decoder_2_4 start_01(
        .en(en_01), 
        .a({a1, a0}),   
        .b3(b7),
        .b2(b6),
        .b1(b5),
        .b0(b4)
    );
    
    binary_decoder_2_4 start_10(
        .en(en_10), 
        .a({a1, a0}),   
        .b3(b11),
        .b2(b10),
        .b1(b9),
        .b0(b8)
    );

    binary_decoder_2_4 start_11(
        .en(en_11),
        .a({a1, a0}),  
        .b3(b15),
        .b2(b14),
        .b1(b13),
        .b0(b12)
    );

    assign out = {b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0};

endmodule
