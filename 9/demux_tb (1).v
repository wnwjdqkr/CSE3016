`timescale 1ns / 1ps
module demux_tb;
reg x, c1, c0; wire y0, y1, y2, y3;
demux u_demux(.x(x), .c1(c1), .c0(c0), .y0(y0), .y1(y1), .y2(y2), .y3(y3));

initial begin
x = 1'b0;
c0 = 1'b0;
c1 = 1'b0;
end

always@(x or c0 or c1)
begin
    x <=#160 ~x;
    c1 <=#80 ~c1;
    c0 <=#40 ~c0;
    end

initial begin
    #320
    $finish;
end

endmodule