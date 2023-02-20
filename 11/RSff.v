`timescale 1ns / 1ps

module RSff(
input CLK, S, R,
output Q, Q1
    );

assign Q = (CLK&S) | ~((CLK&R)|~Q); 
assign Q1 = (CLK&R) | ~((CLK&S)|Q); 

endmodule
