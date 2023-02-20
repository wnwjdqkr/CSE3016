`timescale 1ns / 1ps
module encoder_tb;
reg d0,d1,d2,d3; wire a,b;
encoder u_encoder(.a(a), .b(b), .d0(d0), .d1(d1), .d2(d2), .d3(d3));

initial begin
d0 = 1'b0;
d1 = 1'b0;
d2 = 1'b0;
d3 = 1'b0;
end

always@(d0 or d1 or d2 or d3)
begin
    d0 <=#160 ~d0;
    d1 <=#80 ~d1;
    d2 <=#40 ~d2;
    d3 <=#20 ~d3;
end

initial begin
    #320
    $finish;
end

endmodule