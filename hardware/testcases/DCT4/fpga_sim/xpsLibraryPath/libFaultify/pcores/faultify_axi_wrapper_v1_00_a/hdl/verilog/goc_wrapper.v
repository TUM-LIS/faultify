`timescale 100 ps/100 ps
module golden_circuit (
clk,
rst,
testVector,
resultVector,
);
input clk;
input rst;
input[63:0] testVector;
output[22:0] resultVector;
dct4 toplevel_instance (
.CK(clk),
.inp(testVector [63:0]),
.outp(resultVector [19:0]),
.outi(resultVector [22:20]));
endmodule