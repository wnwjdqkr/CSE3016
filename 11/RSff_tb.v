`timescale 1ns / 1ps
module RSff_tb;
reg CLK, S, R;
wire Q, Q1;

RSff u_RSff(.CLK(CLK), .S(S), .R(R), .Q(Q), .Q1(Q1));

initial begin
CLK = 1'b0;
S = 1'b0;
R = 1'b1;
end

always CLK = #5 ~CLK;

always@(S or R) begin
S <= #2 ~S;
R <= #3 ~R;
end

endmodule
