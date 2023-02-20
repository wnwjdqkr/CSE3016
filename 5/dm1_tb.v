`timescale 1ns / 1ps

module dm1_tb;
reg a, b, c; wire x, y;
dm1 n_dm1 ( .a(a), .b(b), .c(c), .x(x), .y(y));

initial begin
a = 1'b0;
b = 1'b1;
c = 1'b0;
end

always begin
a = #20 ~a;
b = #30 ~b;
c = #50 ~c;
end

endmodule
