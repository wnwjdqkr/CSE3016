`timescale 1ns / 1ps
module fs_tb;
reg x, y, bin; wire d, bout;
fs u_fs(.x (x), .y (y), .bin(bin), .d(d), .bout(bout));

initial begin
x = 1'b0;
y = 1'b0;
bin = 1'b0;
end

always begin
x = #20 ~x;
y = #30 ~y;
bin = #40 ~bin;
end

initial begin
   #1000
   $finish;
end

endmodule