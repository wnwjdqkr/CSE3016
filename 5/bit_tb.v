`timescale 1ns / 1ps

module bit_tb;
reg a, b; wire w, x, y, z;
bit n_bit( .a(a), .b(b), .w(w), .x(x), .y(y), .z(z));

initial begin
a = 1'b0;
b = 1'b1;
end

always begin
a = #20 ~a;
b = #30 ~b;
end

endmodule
