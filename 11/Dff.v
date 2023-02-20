`timescale 1ns / 1ps

`timescale 1ns / 1ps

module Dff(
input CLK, D,
output Q, Q1
    );
//assign Q = S | ~(R|~Q); 

assign Q = (CLK&D) | ~((CLK&~D)|~Q);
assign Q1 = (CLK&~D) | ~((CLK&D)|Q); 

endmodule

