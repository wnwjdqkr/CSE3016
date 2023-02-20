`timescale 1ns / 1ps

module bit(
    input a, b,
    output w, x, y, z
    );

assign w = ~(a^b);
assign x = a^b;
assign y = a&~b;
assign z = ~a&b;
endmodule
