`timescale 1ns / 1ps

module binary_counter(CLK, rst, out);
input CLK, rst;
output[1:0] out;
reg[1:0] out;

initial out = 2'b00;

always@(posedge CLK) begin
if (rst == 1'b1)
    out <= 2'b00;
else
    out <= out + 1;
end

endmodule
