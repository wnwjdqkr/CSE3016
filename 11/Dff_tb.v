`timescale 1ns / 1ps
module Dff_tb;
reg CLK, D;
wire Q, Q1;

Dff u_Dff(.CLK(CLK), .D(D), .Q(Q), .Q1(Q1));

initial begin
CLK = 1'b1;
D = 1'b0;
end

always CLK = #5 ~CLK;

always@(D) begin
D <= #2 ~D;
end

endmodule
