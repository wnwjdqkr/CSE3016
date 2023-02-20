`timescale 1ns / 1ps

module BCDadder_tb();
reg [3:0] a, b; reg cin;
wire [3:0] sum; wire cout;

BCDadder u_BCDadder(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial begin
a=4'b0000;
b=4'b0000;
cin=1'b0;
end

always@(a or b or cin)
begin
a <= #10 a + 4'b0001;
b <= #20 b + 4'b0001;
cin <= #320 ~cin;
end

endmodule
