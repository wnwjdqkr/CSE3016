`timescale 1ns / 1ps

module sub_tb;
reg [3:0] a, b; reg bin;
wire [3:0] d; wire bout;
sub u_sub(.a(a), .b(b), .bin(bin), .d(d), .bout(bout));

initial begin
a=4'b0000;
b=4'b0000;
bin=1'b0;
end

always@(a or b or bin)
begin
a <= #10 a + 4'b0001;
b <= #20 b + 4'b0001;
bin <= #320 ~bin;
end

endmodule
