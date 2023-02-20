`timescale 1ns / 1ps

module shift(
input CLK, rst, in,
output[3:0] out
    );
reg[3:0] out=0;

always@(posedge CLK) begin
    if (rst == 1)
        out = 4'b0000;
    else begin
        out[3] = out[2];
        out[2] = out[1];
        out[1] = out[0];
        out[0] = in;
        end
end

endmodule
