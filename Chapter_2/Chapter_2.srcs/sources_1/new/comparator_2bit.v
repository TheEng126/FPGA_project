module comparator_2bit (
    input wire [1:0] a,
    input wire [1:0] b,
    output wire cp
);
    assign cp = (~a[1] & ~a[0] & ~b[1] & ~b[0] |
                ~a[1] & a[0] & ~b[1] & b[0] |
                a[1] & ~a[0] & b[1] & ~b[0] |
                a[1] & a[0] & b[1] & b[0]);
            
endmodule