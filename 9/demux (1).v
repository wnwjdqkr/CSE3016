`timescale 1ns / 1ps

module demux(
    input x, c1, c0,
    output y0, y1, y2, y3
    );
assign y0 = ~c1 & ~c0 & x;
assign y1 = ~c1 & c0 & x;
assign y2 = c1 & ~c0 & x;
assign y3 = c1 & c0 & x;

endmodule