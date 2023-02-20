`timescale 1ns / 1ps

module converter(
    input a, b, c, d,
    output e, f, g, h
    );
    
assign e = (b&d)|(b&c)|a;
assign f = (b&~d)|(b&c)|a;
assign g = (b&~c&d)|(~b&c)|a;
assign h = ~(~d);

endmodule