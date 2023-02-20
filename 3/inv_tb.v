`timescale 1ns / 1ps
module inv_tb;
reg aa, bb;
wire y, zz;

inv u_inv (
.a (aa ),
.y (y ), 
.b (bb ),
.z (zz ) );

initial begin
aa = 1'b0;
bb = 1'b1;
end

always begin
aa = #100 ~aa;
bb = #50 ~bb;
end

initial begin
#1000
$finish;
end

endmodule