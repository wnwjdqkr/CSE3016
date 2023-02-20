`timescale 1ns / 1ps

module updown(
input CLK, rst, up,
output[3:0] out,
output[6:0] segment,
output digit
    );
reg[3:0] out=0;
reg[6:0] segment=0;
reg d;

always@(posedge CLK) begin
    if(rst == 1) begin
        out = 4'b0000;
        segment = 7'b0000000;
    end
    else if(up == 1) begin
        out = out+1;
        segment[0] = 0;
        segment[1] = 1;
        segment[2] = 1;
        segment[3] = 1;
        segment[4] = 1;
        segment[5] = 1;
        segment[6] = 0;
    end
    else if(up == 0) begin
        out = out-1;
         segment[0] = 0;
         segment[1] = 1;
         segment[2] = 1;
         segment[3] = 1;
         segment[4] = 1;
         segment[5] = 0;
         segment[6] = 1;
    end    
d =  segment[0] | segment[1] | segment[2] | segment[3] | segment[4] | segment[5] | segment[6];
end

assign digit = d;
endmodule
