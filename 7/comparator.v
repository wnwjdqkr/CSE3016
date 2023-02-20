`timescale 1ns / 1ps

module comparator(
    input a, b, c, d,
    output x, y, z
    );

assign x = (a&~c)|(b&~c&~d)|(a&b&~d);
assign y = ~(a^c) & ~(b^d);
assign z = (~a&c)|(~a&~b&d)|(~b&c&d);

endmodule
