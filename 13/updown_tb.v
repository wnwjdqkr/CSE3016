`timescale 1ns / 1ps

module updown_tb;
reg CLK, rst, up;
wire[3:0] out; wire[6:0] segment; wire digit;

updown u_updown(.CLK(CLK), .rst(rst), .up(up), .out(out), .segment(segment), .digit(digit));

initial begin
    CLK = 1'b0;
    rst = 1'b1;
    up = 1'b1;
end

always@(CLK or rst or up) begin
    CLK <= #10 ~CLK;
    rst <= #300 ~rst;
    up <= #600 ~up;
end

endmodule
