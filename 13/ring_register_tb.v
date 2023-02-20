`timescale 1ns / 1ps

module ring_register_tb;
reg CLK, rst;
wire[3:0] out;

ring_register u_ring_register(.CLK(CLK), .rst(rst), .out(out));

initial begin
CLK = 0;
rst = 1;
end

always #10 CLK = ~CLK;
always #200 rst = ~rst;
endmodule
