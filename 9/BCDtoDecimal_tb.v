`timescale 1ns / 1ps
module BCDtoDecimal_tb;
reg a, b, c, d; wire x0, x1, x2, x3, x4, x5, x6, x7, x8, x9;
BCDtoDecimal u_BCDtoDecimal(.a(a), .b(b), .c(c), .d(d), .x0(x0), .x1(x1), .x2(x2), .x3(x3), .x4(x4), .x5(x5), .x6(x6), .x7(x7), .x8(x8), .x9(x9));

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