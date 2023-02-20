`timescale 1ns / 1ps

module decade_counter_tb();
reg CLK, RESET; wire[3:0] out;

decade_counter u_decade_counter(.CLK(CLK), .RESET(RESET), .out(out));

initial begin
CLK = 1'b0;
RESET = 1'b1;
end

always@(CLK or RESET) begin
CLK <= #10 ~CLK;
RESET <= #300 ~RESET;
end

endmodule
