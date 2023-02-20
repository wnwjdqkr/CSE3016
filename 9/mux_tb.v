`timescale 1ns / 1ps
module mux_tb;
reg x0, x1, x2, x3, c0, c1; wire y;
mux u_mux(.x0(x0), .x1(x1), .x2(x2), .x3(x3), .c1(c1), .c0(c0), .y(y));

initial begin
x0 = 1'b0;
x1 = 1'b0;
x2 = 1'b0;
x3 = 1'b0;
c0 = 1'b0;
c1 = 1'b0;
end

always@(x0 or x1 or x2 or x3 or c0 or c1)
begin
    c0 <=#320 ~c0;
    c1 <=#160 ~c1;
    x0 <=#80 ~x0;
    x1 <=#40 ~x1;
    x2 <=#20 ~x2;
    x3 <=#10 ~x3;
    end

initial begin
    #640
    $finish;
end

endmodule