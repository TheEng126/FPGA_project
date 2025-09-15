module hex_to_7seg(
    input wire [3:0] hex,
    output reg [6:0] seg7
);

    always @(*) begin
        case(hex)
        4'h0: seg7[6:0] = 7'b0000001;
        4'h1: seg7[6:0] = 7'b1001111;
        4'h2: seg7[6:0] = 7'b0010010;
        4'h3: seg7[6:0] = 7'b0000110;
        4'h4: seg7[6:0] = 7'b0110011;
        4'h5: seg7[6:0] = 7'b0100100;
        4'h6: seg7[6:0] = 7'b0100000;
        4'h7: seg7[6:0] = 7'b0001111;
        4'h8: seg7[6:0] = 7'b0000000;
        4'h9: seg7[6:0] = 7'b0000100; 
        4'ha: seg7[6:0] = 7'b0001000; 
        4'hb: seg7[6:0] = 7'b1100000; 
        4'hc: seg7[6:0] = 7'b0110001; 
        4'hd: seg7[6:0] = 7'b1000010; 
        4'he: seg7[6:0] = 7'b0110000; 
        default: seg7 [6:0] = 7'b0111000;
    endcase
    end
endmodule