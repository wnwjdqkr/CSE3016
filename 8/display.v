`timescale 1ns / 1ps

module display(
    input a, b, c, d,
    output A,B,C,D,E,F,G,DP,digit
    );

assign A = ~b&~c&~d | a&~b&~c | a&~c&~d | ~a&b&d | ~a&c | b&c | c&~d;
assign B = ~a&~b | ~a&~c&~d | ~a&c&d | a&~b&~c | a&~c&d | ~b&c&~d;
assign C = ~a&~c | ~a&d | ~a&b | ~c&d | a&~b;
assign D = ~b&~c&~d | a&~c&~d | b&~c&d | ~b&c&d | ~a&~b&c | b&c&~d;
assign E = ~b&~c&~d | a&~c&~d | a&b | a&c&d | c&~d;
assign F = ~c&~d | ~a&b&~c | a&~b&~c | a&c | b&c&~d;
assign G = ~a&b&~c | a&~b | b&~c&d | a&d | ~b&c&d | c&~d;
assign DP = 1;
assign digit = A|B|C|D|E|F|G|DP;
endmodule