`timescale 1ns/1ps

module tb_greater_1bit;

  // Khai báo ngõ vào dạng reg (có thể thay đổi trong testbench)
  reg a, b;

  // Ngõ ra dạng wire (kết nối với DUT)
  wire c;

  // Gọi module cần test (DUT = Device Under Test)
  greater_1bit uut (
    .a(a),
    .b(b),
    .c(c)
  );

  // Tạo các vector test
  initial begin
   
    // Test lần lượt các trường hợp
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    // Kết thúc mô phỏng
    $stop;
  end

endmodule
