`timescale 1ns / 1ps

module mux(
    input x0, x1, x2, x3, c0, c1,
    output y
    );
assign y = ~c0&~c1&x0 | ~c0&c1&x1 | c0&~c1&x2 | c0&c1&x3;

endmodule