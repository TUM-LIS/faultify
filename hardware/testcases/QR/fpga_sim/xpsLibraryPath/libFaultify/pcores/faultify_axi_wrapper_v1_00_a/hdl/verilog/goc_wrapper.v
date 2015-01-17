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
.clk(clk),
.rst(rst),
.reduced_matrix(testVector[0]),
.start(testVector[1]),
.request_out(testVector[2]),
.valid_out(resultVector[0]),
.ready(resultVector[1]),
.in_A_r(testVector [50:3]),
.in_A_i(testVector [98:51]),
.sigma_in(testVector [110:99]),
.out_Q_r(resultVector [49:2]),
.out_Q_i(resultVector [97:50]),
.out_R_r(resultVector [145:98]),
.out_R_i(resultVector [193:146]),
.permut(resultVector [201:194]));
endmodule