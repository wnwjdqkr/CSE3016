/*
module fa(
input x, y, cin, output s, cout);
assign s=(x^y)^cin;
assign cout= (x&y)|((x^y)&cin);
endmodule
*/
//  port: a[3] a[2] a[1] a[0] b... s[3]...s[0] cout
`timescale 1ns / 1ps

module adder(
input [3:0] a,b, input cin,
output [3:0] s, output cout
    );
wire c1, c2, c3;

assign s[0] = (a[0]^b[0])^cin;
assign c1 = (a[0]&b[0])|((a[0]^b[0])&cin);

assign s[1] = (a[1]^b[1])^c1;
assign c2 = (a[1]&b[1])|((a[1]^b[1])&c1);

assign s[2] = (a[2]^b[2])^c2;
assign c3 = (a[2]&b[2])|((a[2]^b[2])&c2);

assign s[3] = (a[3]^b[3])^c3;
assign cout = (a[3]&b[3])|((a[3]^b[3])&c3);

endmodule
