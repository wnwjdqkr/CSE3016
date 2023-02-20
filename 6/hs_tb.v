`timescale 1ns / 1ps
module hs_tb;
reg x, y; wire d, b;
hs u_hs(.x (x), .y (y), .d(d), .b(b));

initial begin
x = 1'b1;
y = 1'b0;
end

always begin
x = #20 ~x;
y = #30 ~y;
end

initial begin
   #1000
   $finish;
end

endmodule