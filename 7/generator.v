`timescale 1ns / 1ps

module generator(
    input a, b, c, d,
    output p
    );

assign p = a^b^c^d;

endmodule
