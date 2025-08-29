module comp_1bit (
    input wire a, b,
    output wire c
);

    assign c = (a ~^ b);
    
endmodule   