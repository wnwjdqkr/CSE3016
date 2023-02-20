`timescale 1ns / 1ps
module converter_tb;
reg a, b, c, d; wire e, f, g, h;
converter u_converter(.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h));

initial begin
a = 1'b0;
b = 1'b0;
c = 1'b0;
d = 1'b1;
end

always begin
a = #20 ~a;
b = #30 ~b;
c = #40 ~c;
d = #50 ~d;
end

initial begin
   #1000
   $finish;
end

endmodule
