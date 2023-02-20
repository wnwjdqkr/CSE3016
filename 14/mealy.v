`timescale 1ns / 1ps

module mealy(
input CLK, in, rst,
output out
    );
reg [1:0] state; reg out;

always@(posedge CLK) begin
    out = 1'b0;
   
    if (rst == 1'b1) state = 2'b00;
    else begin
    
    if (in == 1'b0) begin
        if (state == 2'b00) state = 2'b00;
        else if (state == 2'b01) state = 2'b00;
        else if (state == 2'b10) state = 2'b11;
        else if (state == 2'b11) state = 2'b00;
        else state = 2'b00;
    end
    else if (in == 1'b1) begin
        if (state == 2'b00) state = 2'b01;
        else if (state == 2'b01) state = 2'b10;
        else if (state == 2'b10) state = 2'b10;
        else if (state == 2'b11) begin
            state = 2'b01;
            out = 1'b1;
        end
        else state = 2'b01;
    end
    
    end
end

endmodule