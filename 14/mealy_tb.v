`timescale 1ns / 1ps

module mealy_tb;
reg CLK, in, rst; wire out; 

mealy u_mealy(.CLK(CLK), .in(in), .out(out), .rst(rst)); 

initial begin
CLK = 1'b0;
in = 1'b1;
rst = 1'b0;
rst = #350 ~rst;
end

always #35 CLK = ~CLK;
always #13 in = ~in;

endmodule