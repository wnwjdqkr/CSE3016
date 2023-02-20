`timescale 1ns / 1ps

module decade_counter(CLK, RESET, out);
input CLK, RESET;
output[3:0] out;
reg[3:0] out;

always@(posedge CLK) begin
    if(RESET == 1)
        out = 4'b0000;
    else if(out == 4'b1001)
        out = 4'b0000;
    else out = out + 4'b0001;
end
endmodule