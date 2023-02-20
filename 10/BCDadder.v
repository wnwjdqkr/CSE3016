`timescale 1ns / 1ps

module BCDadder(
input [3:0] a, b, input cin,
output [3:0] sum, output cout
    );
    
wire s0, s1, s2, s3; wire k;
wire c1, c2, c3, c4, c5, c6;

assign s0 = (a[0]^b[0])^cin;
assign c1 = (a[0]&b[0])|((a[0]^b[0])&cin);

assign s1 = (a[1]^b[1])^c1;
assign c2 = (a[1]&b[1])|((a[1]^b[1])&c1);

assign s2 = (a[2]^b[2])^c2;
assign c3 = (a[2]&b[2])|((a[2]^b[2])&c2);

assign s3 = (a[3]^b[3])^c3;
assign k = (a[3]&b[3])|((a[3]^b[3])&c3);

assign cout = (s2&s3) | (s1&s3) | k;

assign sum[0] = (0^s0); //cin?
assign c4 = (0&s0);

assign sum[1] = (cout^s1)^c4;
assign c5 = (cout&s1)|((cout^s1)&c4);

assign sum[2] = (cout^s2)^c5;
assign c6 = (cout&s2)|((cout^s2)&c5);

assign sum[3] = (0^s3)^c6;

endmodule
