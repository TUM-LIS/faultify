`timescale 100 ps/100 ps
module golden_circuit (
clk,
rst,
testVector,
resultVector,
);
input clk;
input rst;
input[110:0] testVector;
output[201:0] resultVector;
qr_wrapper_wrapper toplevel_instance (
.IN0A0R(testVector [47:0]),
.IN0A0I(testVector [95:48]),
.SIGMA0IN(testVector [107:96]),
.OUT0Q0R(resultVector [47:0]),
.OUT0Q0I(resultVector [95:48]),
.OUT0R0R(resultVector [143:96]),
.OUT0R0I(resultVector [191:144]),
.PERMUT(resultVector [199:192]),
.CLK(clk),
.RST(rst),
.REDUCED0MATRIX(testVector[108]),
.START(testVector[109]),
.REQUEST0OUT(testVector[110]),
.VALID0OUT(resultVector[200]),
.READY(resultVector[201]));
endmodule