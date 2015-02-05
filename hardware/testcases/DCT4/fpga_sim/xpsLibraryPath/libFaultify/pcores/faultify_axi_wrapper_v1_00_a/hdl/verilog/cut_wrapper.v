`timescale 100 ps/100 ps
module circuit_under_test (
clk,
rst,
testVector,
resultVector,
injectionVector
);
input clk;
input rst;
input[63:0] testVector;
output[22:0] resultVector;
input[12:0] injectionVector;
dct4_inj toplevel_instance (
.CK(clk),
.inp(testVector [63:0]),
.outp(resultVector [19:0]),
.outi(resultVector [22:20]),
.p_desc0_p_O_FD(injectionVector[0]),
.p_desc1_p_O_FD(injectionVector[1]),
.p_desc2_p_O_FD(injectionVector[2]),
.p_i_1_rep1_Z_p_O_FD(injectionVector[3]),
.p_i_1_rep2_Z_p_O_FD(injectionVector[4]),
.p_desc3_p_O_FD(injectionVector[5]),
.p_i_2_rep1_Z_p_O_FD(injectionVector[6]),
.p_desc9_p_O_FD(injectionVector[7]),
.p_desc10_p_O_FD(injectionVector[8]),
.p_desc11_p_O_FD(injectionVector[9]),
.p_desc12_p_O_FD(injectionVector[10]),
.p_desc13_p_O_FD(injectionVector[11]),
.p_i_0_rep1_Z_p_O_FD(injectionVector[12]));
endmodule