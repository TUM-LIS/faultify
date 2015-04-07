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
.clk_i(clk),
.opa_i(testVector [31:0]),
.opb_i(testVector [63:32]),
.fpu_op_i(testVector [66:64]),
.rmode_i(testVector [68:67]),
.output_o(resultVector [31:0]),
.start_i(testVector[69]),
.ready_o(resultVector[32]),
.ine_o(resultVector[33]),
.overflow_o(resultVector[34]),
.underflow_o(resultVector[35]),
.div_zero_o(resultVector[36]),
.inf_o(resultVector[37]),
.zero_o(resultVector[38]),
.qnan_o(resultVector[39]),
.snan_o(resultVector[40]));
endmodule