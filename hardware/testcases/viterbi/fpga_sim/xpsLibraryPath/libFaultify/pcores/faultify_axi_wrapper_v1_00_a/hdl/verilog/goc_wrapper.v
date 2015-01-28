`timescale 100 ps/100 ps
module golden_circuit (
clk,
rst,
testVector,
resultVector,
);
input clk;
input rst;
input[68:0] testVector;
output[4:0] resultVector;
dec_viterbi toplevel_instance (
.aclk(clk),
.aresetn(rst),
.s_axis_input_tvalid(testVector[0]),
.s_axis_input_tdata(testVector [32:1]),
.s_axis_input_tlast(testVector[33]),
.s_axis_input_tready(resultVector[0]),
.m_axis_output_tvalid(resultVector[1]),
.m_axis_output_tdata(resultVector[2]),
.m_axis_output_tlast(resultVector[3]),
.m_axis_output_tready(testVector[34]),
.s_axis_ctrl_tvalid(testVector[35]),
.s_axis_ctrl_tdata(testVector [67:36]),
.s_axis_ctrl_tlast(testVector[68]),
.s_axis_ctrl_tready(resultVector[4]));
endmodule