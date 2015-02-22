`timescale 100 ps/100 ps
module golden_circuit (
clk,
rst,
testVector,
resultVector,
);
input clk;
input rst;
input[69:0] testVector;
output[40:0] resultVector;
fpu toplevel_instance (
.OPA0I(testVector [31:0]),
.OPB0I(testVector [63:32]),
.FPU0OP0I(testVector [66:64]),
.RMODE0I(testVector [68:67]),
.OUTPUT0O(resultVector [31:0]),
.CLK0I(clk),
.START0I(testVector[69]),
.READY0O(resultVector[32]),
.INE0O(resultVector[33]),
.OVERFLOW0O(resultVector[34]),
.UNDERFLOW0O(resultVector[35]),
.DIV0ZERO0O(resultVector[36]),
.INF0O(resultVector[37]),
.ZERO0O(resultVector[38]),
.QNAN0O(resultVector[39]),
.SNAN0O(resultVector[40]));
endmodule