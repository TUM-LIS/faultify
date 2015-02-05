`timescale 100 ps/100 ps
module golden_circuit (
clk,
rst,
testVector,
resultVector,
);
input clk;
input rst;
input[18:0] testVector;
output[18:0] resultVector;
IIR_Biquad toplevel_instance (
.clk(clk),
.n_reset(rst),
.sample_trig(testVector[0]),
.X_in(testVector [18:1]),
.filter_done(resultVector[0]),
.Y_out(resultVector [18:1]));
endmodule