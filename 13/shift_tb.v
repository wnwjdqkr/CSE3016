`timescale 1ns / 1ps
module shift_tb;
reg CLK, rst, in;
wire[3:0] out;

shift u_shift(.CLK(CLK), .rst(rst), .in(in), .out(out));

initial begin
    CLK = 1'b0;
    rst = 1'b1;
    in = 1'b0;
    rst <= #200 ~rst;

end

always@(CLK or rst or in) begin
    CLK <= #10 ~CLK;
    in <= #30 ~in;
end

endmodule
