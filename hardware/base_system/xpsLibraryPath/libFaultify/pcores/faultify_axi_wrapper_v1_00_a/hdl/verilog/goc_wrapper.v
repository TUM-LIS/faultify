`timescale 100 ps/100 ps
module golden_circuit (
clk,
rst,
testVector,
resultVector,
);
input clk;
input rst;
input[31:0] testVector;
output[53:0] resultVector;
b14 toplevel_instance (
.clock(clk),
.reset(rst),
.addr(resultVector [19:0]),
.datai(testVector [31:0]),
.datao(resultVector [51:20]),
.rd(resultVector[52]),
.wr(resultVector[53]));
endmodule