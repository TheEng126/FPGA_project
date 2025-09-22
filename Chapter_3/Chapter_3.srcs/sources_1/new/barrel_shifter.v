module barrel_shifter(
    input wire [7:0] i_a,
    input wire [2:0] i_amt,
    output reg [7:0] o_y
    );

    always @(*) begin
        case (i_amt)
            3'b000: o_y = i_a;
            3'b001: o_y = {i_a[0], i_a[7:1]};
            3'b010: o_y = {i_a[1:0], i_a[7:2]};
            3'b011: o_y = {i_a[2:0], i_a[7:3]};
            3'b100: o_y = {i_a[3:0], i_a[7:4]};
            3'b101: o_y = {i_a[4:0], i_a[7:5]};
            3'b110: o_y = {i_a[5:0], i_a[7:6]};
            default: o_y = {i_a[6:0], i_a[7]};
        endcase
    end
endmodule
