`timescale 1ns / 1ps

module binary_counter_tb();
reg CLK, rst;
wire[1:0] out;

binary_counter u_binary_counter(.CLK(CLK), .rst(rst), .out(out));

initial begin
CLK = 1'b0;
rst = 1'b0;
end

always CLK = #10 ~CLK;
initial rst <= #200 1'b1;

endmodule
