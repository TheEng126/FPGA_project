module sign_manitude_adder
    #(parameter N = 4)
    (
    input wire [N-1:0] a,
    input wire [N-1:0] b,
    output reg [N-1:0] out
    );
    wire sign_a = a[N-1];
    wire sign_b = b[N-1];

    wire [N-2:0] mag_a = a[N-2:0];
    wire [N-2:0] mag_b = b[N-2:0];

    reg [N-2:0] mag_out;
    reg sign_out;
    always @(*) begin
        if(sign_a == sign_b)begin
            mag_out = mag_a + mag_b;
            sign_out = sign_b;
        end else if(sign_a < sign_b)begin
            mag_out = mag_b - mag_a;
            sign_out = sign_b;
        end else begin
            mag_out = mag_a - mag_b;
            sign_out = sign_a;
        end
        out = {sign_out, mag_out};
    end 
endmodule
