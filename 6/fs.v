`timescale 1ns / 1ps

module fs(
    input x, y, bin,
    output d, bout
    );
    
assign d = (x^y)^bin;
assign bout = (~x&y)|((~x^y)&bin);

endmodule