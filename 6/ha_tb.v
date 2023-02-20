`timescale 1ns / 1ps
module ha_tb;
reg x, y; wire s, c;
ha u_ha(.x (x), .y (y), .s(s), .c(c));

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
