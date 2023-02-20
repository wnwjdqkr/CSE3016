`timescale 1ns / 1ps

module decade_counter_2421(CLK, RESET, out);
input CLK, RESET;
output[3:0] out;
reg[3:0] tmp;

always@(posedge CLK) begin
    if(RESET == 1'b1)
        tmp = 4'b0000;
    else if(out == 4'b1111)
        tmp = 4'b0000;
    //else if(out == 4'b0100)
        //out = 4'b1011;
    else tmp = tmp + 4'b0001;
end

assign out[3] = (tmp[2]&tmp[0]) | (tmp[2]&tmp[1]) | tmp[3];
assign out[2] = (tmp[2]&~tmp[0]) | (tmp[2]&tmp[1]) | tmp[3];
assign out[1] = (tmp[2]&~tmp[1]&tmp[0]) | (~tmp[2]&tmp[1]) | tmp[3];
assign out[0] = tmp[0];
endmodule