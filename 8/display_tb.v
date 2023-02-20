`timescale 1ns / 1ps
module display_tb;
reg a, b, c, d; wire A, B, C, D, E, F, G, DP, digit;
display u_display(.a(a), .b(b), .c(c), .d(d), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G), .DP(DP), .digit(digit));
initial begin
a = 1'b0;
b = 1'b0;
c = 1'b0;
d = 1'b0;
end

always@(a or b or c or d)
begin
    a <=#160 ~a;
    b <=#80 ~b;
    c <=#40 ~c;
    d <=#20 ~d;
end

initial begin
    #320
    $finish;
end

endmodule