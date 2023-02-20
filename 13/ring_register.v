`timescale 1ns / 1ps

module ring_register(
input CLK, rst,
output[3:0] out
    );
reg [3:0] out=0;

always@(posedge CLK) begin
if(rst == 1)
    out = 4'b1000;
else begin
    if (out == 0)
        out <=1;
    else begin
    out[0] <= out[3];
    out[3:1] <= out[2:0];
    end
    end
end

endmodule
