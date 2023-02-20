`timescale 1ns / 1ps

module xor_tb;

reg a, b, c, d;
wire x, y, z;

xorm u_xor (.a(a), .b(b), .c(c), .d(d), .x(x), .y(y), .z(z));

initial begin
a = 1'b0;
b = 1'b1;
c = 1'b0;
d = 1'b1;
end

always begin
a = #30 ~a;
b = #40 ~b;
c = #50 ~c;
d = #70 ~d;
end

endmodule
