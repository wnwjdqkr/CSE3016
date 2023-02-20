`timescale 1ns / 1ps

module dm4(
    input a, b, c,
    output x, y
    );

assign x = a|b;
assign y = ~(x&c);
endmodule
