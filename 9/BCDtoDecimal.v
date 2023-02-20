`timescale 1ns / 1ps

module BCDtoDecimal(
    input a, b, c, d,
    output x0, x1, x2, x3, x4, x5, x6, x7, x8, x9
    );
assign x0 = ~a&~b&~c&~d;
assign x1 = ~a&~b&~c&d;
assign x2 = ~a&~b&c&~d;
assign x3 = ~a&~b&c&d;
assign x4 = ~a&b&~c&~d;
assign x5 = ~a&b&~c&d;
assign x6 = ~a&b&c&~d;
assign x7 = ~a&b&c&d;
assign x8 = a&~b&~c&~d;
assign x9 = a&~b&~c&d;

endmodule