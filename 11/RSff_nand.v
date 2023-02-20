`timescale 1ns / 1ps

module RSff_nand(
input CLK, S, R,
output Q, Q1
    );

assign Q = ~( ~(CLK&S) & ((CLK&R)|~Q) ); 
assign Q1 = ~Q;

endmodule
