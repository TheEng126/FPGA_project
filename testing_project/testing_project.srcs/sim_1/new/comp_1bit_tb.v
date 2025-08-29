`timescale 1ns/1ps

module tb_comp_1bit;
    // khai báo tín hiệu
    reg a, b;       // ngõ vào của DUT -> reg để gán trong initial
    wire c;         // ngõ ra của DUT -> wire
    // gắn DUT (Device Under Test)
    comp_1bit uut (
        .a(a),
        .b(b),
        .c(c)
    );
    // khối kiểm thử
    initial begin
        
        // test case 1: a=0, b=0 -> c=1
        a=0; b=0; #10;
        // test case 2: a=0, b=1 -> c=0
        a=0; b=1; #10;
        // test case 3: a=1, b=0 -> c=0
        a=1; b=0; #10;
        // test case 4: a=1, b=1 -> c=1
        a=1; b=1; #10;
        // kết thúc mô phỏng
        $finish;
    end
endmodule
