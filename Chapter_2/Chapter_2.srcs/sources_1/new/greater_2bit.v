module greater_2bit (
    input  wire [1:0] a,
    input  wire [1:0] b,
    output wire       c
);
    assign c = (a[1] & ~b[1]) |                 // MSB c?a a l?n h?n b
               (a[1] & a[0] & ~b[0]) |          // a=11, b=10
               (~a[1] & a[0] & ~b[1] & ~b[0]);  // a=01, b=00
endmodule
