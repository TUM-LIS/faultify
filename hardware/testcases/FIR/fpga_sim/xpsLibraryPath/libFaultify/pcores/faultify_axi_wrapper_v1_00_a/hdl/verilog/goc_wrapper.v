`timescale 100 ps/100 ps
module golden_circuit (
clk,
rst,
testVector,
resultVector,
);
input clk;
input rst;
input[7:0] testVector;
output[7:0] resultVector;
fir toplevel_instance (
.x_in(testVector [7:0]),
.clk(clk),
.y(resultVector [7:0]));
endmodule