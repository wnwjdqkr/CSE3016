`timescale 1ns / 1ps

module hs(
    input x, y,
    output d, b
    );
    
assign d = x^y;
assign b = ~x&y;

endmodule