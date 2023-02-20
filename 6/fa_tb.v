`timescale 1ns / 1ps
module fa_tb;
reg x, y, cin; wire s, cout;
fa u_fa(.x (x), .y (y), .cin(cin), .s(s), .cout(cout));

initial begin
x = 1'b0;
y = 1'b0;
cin = 1'b0;
end

always begin
x = #20 ~x;
y = #30 ~y;
cin = #40 ~cin;
end

initial begin
   #1000
   $finish;
end

endmodule