//
// Written by Synplify
// Product Version "H-2013.03-SP1-1 "
// Program "Synplify Premier", Mapper "map201303sp1_1rc, Build 007R"
// Fri Dec 26 10:51:23 2014
//
// Source file index table:
// Object locations will have the form <file>:<line>
// file 0 "noname"
// file 1 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vhd/std.vhd "
// file 2 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vhd/snps_haps_pkg.vhd "
// file 3 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vhd/std1164.vhd "
// file 4 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vhd/numeric.vhd "
// file 5 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vhd/umr_capim.vhd "
// file 6 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vhd/arith.vhd "
// file 7 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vhd/unsigned.vhd "
// file 8 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/shifter.vhd "
// file 9 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/qr_pack.vhd "
// file 10 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/pkg_support.vhd "
// file 11 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/pkg_helper_preproc.vhd "
// file 12 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/multiplier.vhd "
// file 13 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/mult_with_reg.vhd "
// file 14 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/mult_pipe.vhd "
// file 15 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/add_sub.vhd "
// file 16 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/vec_sub.vhd "
// file 17 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/complex_mult_pipe.vhd "
// file 18 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/vec_mult.vhd "
// file 19 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/r_mat_regs.vhd "
// file 20 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/qr_decomp_ctl.vhd "
// file 21 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/qr_decomp_ctl_mux.vhd "
// file 22 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/mat_regs.vhd "
// file 23 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/inv_sqrt.vhd "
// file 24 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/complex_mult_pipe_prod.vhd "
// file 25 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/inner_prod.vhd "
// file 26 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/qr_decomp.vhd "
// file 27 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/qr_wrapper.vhd "
// file 28 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/qr_wrapper_wrapper.vhd "
// file 29 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/mat_regs_q2.vhd "
// file 30 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/src/complex_mult_norm_up.vhd "
// file 31 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/xilinx/unisim.v "
// file 32 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vlog/umr_capim.v "
// file 33 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vlog/scemi_objects.v "
// file 34 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vlog/scemi_pipes.svh "
// file 35 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vlog/hypermods.v "
// file 36 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/fpga_syn/rev_1/syntmp/multadd.v "
// file 37 "\/home/david/projects/faultify_github/faultify/hardware/testcases/QR/fpga_syn/rev_1/syntmp/unisim.v "

`timescale 100 ps/100 ps
module mat_regs (
  col_sel_AQ2_mux_i_m3_lut6_2_O6,
  col_sel_AQ2_mux_i_m3_lut6_2_O5,
  col_sel_AQ_int,
  w_col_sel_AQ_mux_i_m3_lut6_2_O6,
  w_col_sel_AQ_mux_i_m3_lut6_2_O5,
  vec_out_r_AQ_0,
  vec_in_r_AQ_mux_0_4,
  vec_in_r_AQ_mux_0_9,
  vec_in_r_AQ_mux_0_6,
  vec_in_r_AQ_mux_0_0,
  vec_in_r_AQ_mux_0_1,
  vec_in_r_AQ_mux_0_2,
  vec_in_r_AQ_mux_0_3,
  vec_in_r_AQ_mux_0_10,
  vec_in_r_AQ_mux_0_7,
  vec_in_r_AQ_mux_0_8,
  vec_out_r_AQ_3,
  vec_in_r_AQ_mux_3,
  out_Q_r,
  vec_out_r_AQ_2,
  vec_out_r_AQ_1,
  vec_in_r_AQ_mux_2,
  vec_in_r_AQ_mux_1,
  vec_out_i_AQ_0,
  vec_in_i_AQ_mux_0_5,
  vec_in_i_AQ_mux_0_10,
  vec_in_i_AQ_mux_0_7,
  vec_in_i_AQ_mux_0_0,
  vec_in_i_AQ_mux_0_1,
  vec_in_i_AQ_mux_0_4,
  vec_in_i_AQ_mux_0_6,
  vec_in_i_AQ_mux_0_11,
  vec_in_i_AQ_mux_0_8,
  vec_in_i_AQ_mux_0_9,
  vec_out_i_AQ_3,
  vec_in_i_AQ_mux_3,
  out_Q_i,
  vec_out_i_AQ_2,
  vec_out_i_AQ_1,
  vec_in_i_AQ_mux_2,
  vec_in_i_AQ_mux_1,
  row_sel_AQ,
  single_out_r_AQ2_1,
  single_out_r_AQ2_6,
  single_out_r_AQ2_4,
  single_out_r_AQ2_0,
  single_out_i_AQ2_1,
  single_out_i_AQ2_5,
  single_out_i_AQ2_4,
  single_out_i_AQ2_0,
  single_out_i_AQ2_11,
  single_out_i_AQ_1,
  single_out_i_AQ_0,
  single_out_i_AQ_8,
  single_out_i_AQ_10,
  single_out_i_AQ_11,
  single_out_i_AQ_9,
  single_out_i_AQ_4,
  single_out_r_AQ_4,
  single_out_r_AQ_2,
  single_out_r_AQ_7,
  single_out_r_AQ_1,
  single_out_r_AQ_0,
  clk,
  wr_en_AQ_mux_i_m3_lut6_2_O6,
  N_507,
  N_508,
  N_505,
  N_506,
  N_645,
  N_641,
  N_637,
  N_632,
  N_628,
  N_624,
  N_623,
  N_622,
  N_612,
  N_607,
  N_606,
  N_605,
  N_597,
  N_596,
  N_595,
  N_586,
  N_585,
  N_584,
  N_583,
  N_582,
  N_571,
  N_568,
  N_567,
  N_566,
  N_555,
  N_552,
  N_549
)
;
input [0:0] col_sel_AQ2_mux_i_m3_lut6_2_O6 ;
input [0:0] col_sel_AQ2_mux_i_m3_lut6_2_O5 ;
input [1:0] col_sel_AQ_int ;
input [0:0] w_col_sel_AQ_mux_i_m3_lut6_2_O6 ;
input [0:0] w_col_sel_AQ_mux_i_m3_lut6_2_O5 ;
output [11:0] vec_out_r_AQ_0 ;
input vec_in_r_AQ_mux_0_4 ;
input vec_in_r_AQ_mux_0_9 ;
input vec_in_r_AQ_mux_0_6 ;
input vec_in_r_AQ_mux_0_0 ;
input vec_in_r_AQ_mux_0_1 ;
input vec_in_r_AQ_mux_0_2 ;
input vec_in_r_AQ_mux_0_3 ;
input vec_in_r_AQ_mux_0_10 ;
input vec_in_r_AQ_mux_0_7 ;
input vec_in_r_AQ_mux_0_8 ;
output [11:0] vec_out_r_AQ_3 ;
input [11:0] vec_in_r_AQ_mux_3 ;
output [47:0] out_Q_r ;
output [11:0] vec_out_r_AQ_2 ;
output [11:0] vec_out_r_AQ_1 ;
input [11:0] vec_in_r_AQ_mux_2 ;
input [11:0] vec_in_r_AQ_mux_1 ;
output [11:0] vec_out_i_AQ_0 ;
input vec_in_i_AQ_mux_0_5 ;
input vec_in_i_AQ_mux_0_10 ;
input vec_in_i_AQ_mux_0_7 ;
input vec_in_i_AQ_mux_0_0 ;
input vec_in_i_AQ_mux_0_1 ;
input vec_in_i_AQ_mux_0_4 ;
input vec_in_i_AQ_mux_0_6 ;
input vec_in_i_AQ_mux_0_11 ;
input vec_in_i_AQ_mux_0_8 ;
input vec_in_i_AQ_mux_0_9 ;
output [11:0] vec_out_i_AQ_3 ;
input [11:0] vec_in_i_AQ_mux_3 ;
output [47:0] out_Q_i ;
output [11:0] vec_out_i_AQ_2 ;
output [11:0] vec_out_i_AQ_1 ;
input [11:0] vec_in_i_AQ_mux_2 ;
input [11:0] vec_in_i_AQ_mux_1 ;
input [1:0] row_sel_AQ ;
output single_out_r_AQ2_1 ;
output single_out_r_AQ2_6 ;
output single_out_r_AQ2_4 ;
output single_out_r_AQ2_0 ;
output single_out_i_AQ2_1 ;
output single_out_i_AQ2_5 ;
output single_out_i_AQ2_4 ;
output single_out_i_AQ2_0 ;
output single_out_i_AQ2_11 ;
output single_out_i_AQ_1 ;
output single_out_i_AQ_0 ;
output single_out_i_AQ_8 ;
output single_out_i_AQ_10 ;
output single_out_i_AQ_11 ;
output single_out_i_AQ_9 ;
output single_out_i_AQ_4 ;
output single_out_r_AQ_4 ;
output single_out_r_AQ_2 ;
output single_out_r_AQ_7 ;
output single_out_r_AQ_1 ;
output single_out_r_AQ_0 ;
input clk ;
input wr_en_AQ_mux_i_m3_lut6_2_O6 ;
input N_507 ;
input N_508 ;
input N_505 ;
input N_506 ;
output N_645 ;
output N_641 ;
output N_637 ;
output N_632 ;
output N_628 ;
output N_624 ;
output N_623 ;
output N_622 ;
output N_612 ;
output N_607 ;
output N_606 ;
output N_605 ;
output N_597 ;
output N_596 ;
output N_595 ;
output N_586 ;
output N_585 ;
output N_584 ;
output N_583 ;
output N_582 ;
output N_571 ;
output N_568 ;
output N_567 ;
output N_566 ;
output N_555 ;
output N_552 ;
output N_549 ;
wire vec_in_r_AQ_mux_0_4 ;
wire vec_in_r_AQ_mux_0_9 ;
wire vec_in_r_AQ_mux_0_6 ;
wire vec_in_r_AQ_mux_0_0 ;
wire vec_in_r_AQ_mux_0_1 ;
wire vec_in_r_AQ_mux_0_2 ;
wire vec_in_r_AQ_mux_0_3 ;
wire vec_in_r_AQ_mux_0_10 ;
wire vec_in_r_AQ_mux_0_7 ;
wire vec_in_r_AQ_mux_0_8 ;
wire vec_in_i_AQ_mux_0_5 ;
wire vec_in_i_AQ_mux_0_10 ;
wire vec_in_i_AQ_mux_0_7 ;
wire vec_in_i_AQ_mux_0_0 ;
wire vec_in_i_AQ_mux_0_1 ;
wire vec_in_i_AQ_mux_0_4 ;
wire vec_in_i_AQ_mux_0_6 ;
wire vec_in_i_AQ_mux_0_11 ;
wire vec_in_i_AQ_mux_0_8 ;
wire vec_in_i_AQ_mux_0_9 ;
wire single_out_r_AQ2_1 ;
wire single_out_r_AQ2_6 ;
wire single_out_r_AQ2_4 ;
wire single_out_r_AQ2_0 ;
wire single_out_i_AQ2_1 ;
wire single_out_i_AQ2_5 ;
wire single_out_i_AQ2_4 ;
wire single_out_i_AQ2_0 ;
wire single_out_i_AQ2_11 ;
wire single_out_i_AQ_1 ;
wire single_out_i_AQ_0 ;
wire single_out_i_AQ_8 ;
wire single_out_i_AQ_10 ;
wire single_out_i_AQ_11 ;
wire single_out_i_AQ_9 ;
wire single_out_i_AQ_4 ;
wire single_out_r_AQ_4 ;
wire single_out_r_AQ_2 ;
wire single_out_r_AQ_7 ;
wire single_out_r_AQ_1 ;
wire single_out_r_AQ_0 ;
wire clk ;
wire wr_en_AQ_mux_i_m3_lut6_2_O6 ;
wire N_507 ;
wire N_508 ;
wire N_505 ;
wire N_506 ;
wire N_645 ;
wire N_641 ;
wire N_637 ;
wire N_632 ;
wire N_628 ;
wire N_624 ;
wire N_623 ;
wire N_622 ;
wire N_612 ;
wire N_607 ;
wire N_606 ;
wire N_605 ;
wire N_597 ;
wire N_596 ;
wire N_595 ;
wire N_586 ;
wire N_585 ;
wire N_584 ;
wire N_583 ;
wire N_582 ;
wire N_571 ;
wire N_568 ;
wire N_567 ;
wire N_566 ;
wire N_555 ;
wire N_552 ;
wire N_549 ;
wire [1:0] mat_r_1_I_47_DOC;
wire [1:0] mat_r_1_I_47_DOD;
wire [1:0] mat_r_1_I_45_DOC;
wire [1:0] mat_r_1_I_45_DOD;
wire [1:0] mat_r_1_I_43_DOC;
wire [1:0] mat_r_1_I_43_DOD;
wire [1:0] mat_r_1_I_41_DOC;
wire [1:0] mat_r_1_I_41_DOD;
wire [1:0] mat_r_1_I_39_DOC;
wire [1:0] mat_r_1_I_39_DOD;
wire [1:0] mat_r_1_I_37_DOC;
wire [1:0] mat_r_1_I_37_DOD;
wire [1:0] mat_r_1_I_35_DOC;
wire [1:0] mat_r_1_I_35_DOD;
wire [1:0] mat_r_1_I_33_DOC;
wire [1:0] mat_r_1_I_33_DOD;
wire [1:0] mat_r_1_I_31_DOC;
wire [1:0] mat_r_1_I_31_DOD;
wire [1:0] mat_r_1_I_29_DOC;
wire [1:0] mat_r_1_I_29_DOD;
wire [1:0] mat_r_1_I_27_DOC;
wire [1:0] mat_r_1_I_27_DOD;
wire [1:0] mat_r_1_I_25_DOC;
wire [1:0] mat_r_1_I_25_DOD;
wire [1:0] mat_r_1_I_23_DOC;
wire [1:0] mat_r_1_I_23_DOD;
wire [1:0] mat_r_1_I_21_DOC;
wire [1:0] mat_r_1_I_21_DOD;
wire [1:0] mat_r_1_I_19_DOC;
wire [1:0] mat_r_1_I_19_DOD;
wire [1:0] mat_r_1_I_17_DOC;
wire [1:0] mat_r_1_I_17_DOD;
wire [1:0] mat_r_1_I_15_DOC;
wire [1:0] mat_r_1_I_15_DOD;
wire [1:0] mat_r_1_I_13_DOC;
wire [1:0] mat_r_1_I_13_DOD;
wire [1:0] mat_r_1_I_11_DOC;
wire [1:0] mat_r_1_I_11_DOD;
wire [1:0] mat_r_1_I_9_DOC;
wire [1:0] mat_r_1_I_9_DOD;
wire [1:0] mat_r_1_I_7_DOC;
wire [1:0] mat_r_1_I_7_DOD;
wire [1:0] mat_r_1_I_5_DOC;
wire [1:0] mat_r_1_I_5_DOD;
wire [1:0] mat_r_1_I_3_DOC;
wire [1:0] mat_r_1_I_3_DOD;
wire [1:0] mat_r_1_I_1_DOC;
wire [1:0] mat_r_1_I_1_DOD;
wire [1:0] mat_i_1_I_47_DOC;
wire [1:0] mat_i_1_I_47_DOD;
wire [1:0] mat_i_1_I_45_DOC;
wire [1:0] mat_i_1_I_45_DOD;
wire [1:0] mat_i_1_I_43_DOC;
wire [1:0] mat_i_1_I_43_DOD;
wire [1:0] mat_i_1_I_41_DOC;
wire [1:0] mat_i_1_I_41_DOD;
wire [1:0] mat_i_1_I_39_DOC;
wire [1:0] mat_i_1_I_39_DOD;
wire [1:0] mat_i_1_I_37_DOC;
wire [1:0] mat_i_1_I_37_DOD;
wire [1:0] mat_i_1_I_35_DOC;
wire [1:0] mat_i_1_I_35_DOD;
wire [1:0] mat_i_1_I_33_DOC;
wire [1:0] mat_i_1_I_33_DOD;
wire [1:0] mat_i_1_I_31_DOC;
wire [1:0] mat_i_1_I_31_DOD;
wire [1:0] mat_i_1_I_29_DOC;
wire [1:0] mat_i_1_I_29_DOD;
wire [1:0] mat_i_1_I_27_DOC;
wire [1:0] mat_i_1_I_27_DOD;
wire [1:0] mat_i_1_I_25_DOC;
wire [1:0] mat_i_1_I_25_DOD;
wire [1:0] mat_i_1_I_23_DOC;
wire [1:0] mat_i_1_I_23_DOD;
wire [1:0] mat_i_1_I_21_DOC;
wire [1:0] mat_i_1_I_21_DOD;
wire [1:0] mat_i_1_I_19_DOC;
wire [1:0] mat_i_1_I_19_DOD;
wire [1:0] mat_i_1_I_17_DOC;
wire [1:0] mat_i_1_I_17_DOD;
wire [1:0] mat_i_1_I_15_DOC;
wire [1:0] mat_i_1_I_15_DOD;
wire [1:0] mat_i_1_I_13_DOC;
wire [1:0] mat_i_1_I_13_DOD;
wire [1:0] mat_i_1_I_11_DOC;
wire [1:0] mat_i_1_I_11_DOD;
wire [1:0] mat_i_1_I_9_DOC;
wire [1:0] mat_i_1_I_9_DOD;
wire [1:0] mat_i_1_I_7_DOC;
wire [1:0] mat_i_1_I_7_DOD;
wire [1:0] mat_i_1_I_5_DOC;
wire [1:0] mat_i_1_I_5_DOD;
wire [1:0] mat_i_1_I_3_DOC;
wire [1:0] mat_i_1_I_3_DOD;
wire [1:0] mat_i_1_I_1_DOC;
wire [1:0] mat_i_1_I_1_DOD;
wire GND ;
wire VCC ;
// @22:45
  RAM32M mat_r_1_I_47 (
	.DOA({out_Q_r[8], out_Q_r[5]}),
	.DOB({vec_out_r_AQ_3[8], vec_out_r_AQ_3[5]}),
	.DOC(mat_r_1_I_47_DOC[1:0]),
	.DOD(mat_r_1_I_47_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_3[8], vec_in_r_AQ_mux_3[5]}),
	.DIB({vec_in_r_AQ_mux_3[8], vec_in_r_AQ_mux_3[5]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_47.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_47.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_47.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_47.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_45 (
	.DOA({out_Q_r[41], out_Q_r[19]}),
	.DOB({vec_out_r_AQ_0[5], vec_out_r_AQ_2[7]}),
	.DOC(mat_r_1_I_45_DOC[1:0]),
	.DOD(mat_r_1_I_45_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_0_4, vec_in_r_AQ_mux_2[7]}),
	.DIB({vec_in_r_AQ_mux_0_4, vec_in_r_AQ_mux_2[7]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_45.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_45.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_45.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_45.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_43 (
	.DOA({out_Q_r[46], out_Q_r[2]}),
	.DOB({vec_out_r_AQ_0[10], vec_out_r_AQ_3[2]}),
	.DOC(mat_r_1_I_43_DOC[1:0]),
	.DOD(mat_r_1_I_43_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_0_9, vec_in_r_AQ_mux_3[2]}),
	.DIB({vec_in_r_AQ_mux_0_9, vec_in_r_AQ_mux_3[2]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_43.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_43.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_43.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_43.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_41 (
	.DOA({out_Q_r[32], out_Q_r[20]}),
	.DOB({vec_out_r_AQ_1[8], vec_out_r_AQ_2[8]}),
	.DOC(mat_r_1_I_41_DOC[1:0]),
	.DOD(mat_r_1_I_41_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_1[8], vec_in_r_AQ_mux_2[8]}),
	.DIB({vec_in_r_AQ_mux_1[8], vec_in_r_AQ_mux_2[8]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_41.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_41.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_41.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_41.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_39 (
	.DOA({out_Q_r[43], out_Q_r[21]}),
	.DOB({vec_out_r_AQ_0[7], vec_out_r_AQ_2[9]}),
	.DOC(mat_r_1_I_39_DOC[1:0]),
	.DOD(mat_r_1_I_39_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_0_6, vec_in_r_AQ_mux_2[9]}),
	.DIB({vec_in_r_AQ_mux_0_6, vec_in_r_AQ_mux_2[9]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_39.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_39.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_39.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_39.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_37 (
	.DOA({out_Q_r[26], out_Q_r[35]}),
	.DOB({vec_out_r_AQ_1[2], vec_out_r_AQ_1[11]}),
	.DOC(mat_r_1_I_37_DOC[1:0]),
	.DOD(mat_r_1_I_37_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_1[2], vec_in_r_AQ_mux_1[11]}),
	.DIB({vec_in_r_AQ_mux_1[2], vec_in_r_AQ_mux_1[11]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_37.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_37.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_37.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_37.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_35 (
	.DOA({out_Q_r[22], out_Q_r[18]}),
	.DOB({vec_out_r_AQ_2[10], vec_out_r_AQ_2[6]}),
	.DOC(mat_r_1_I_35_DOC[1:0]),
	.DOD(mat_r_1_I_35_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_2[10], vec_in_r_AQ_mux_2[6]}),
	.DIB({vec_in_r_AQ_mux_2[10], vec_in_r_AQ_mux_2[6]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_35.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_35.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_35.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_35.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_33 (
	.DOA({out_Q_r[36], out_Q_r[23]}),
	.DOB({vec_out_r_AQ_0[0], vec_out_r_AQ_2[11]}),
	.DOC(mat_r_1_I_33_DOC[1:0]),
	.DOD(mat_r_1_I_33_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({N_507, vec_in_r_AQ_mux_2[11]}),
	.DIB({N_507, vec_in_r_AQ_mux_2[11]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_33.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_33.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_33.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_33.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_31 (
	.DOA({out_Q_r[10], out_Q_r[37]}),
	.DOB({vec_out_r_AQ_3[10], vec_out_r_AQ_0[1]}),
	.DOC(mat_r_1_I_31_DOC[1:0]),
	.DOD(mat_r_1_I_31_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_3[10], vec_in_r_AQ_mux_0_0}),
	.DIB({vec_in_r_AQ_mux_3[10], vec_in_r_AQ_mux_0_0}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_31.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_31.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_31.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_31.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_29 (
	.DOA({out_Q_r[24], out_Q_r[11]}),
	.DOB({vec_out_r_AQ_1[0], vec_out_r_AQ_3[11]}),
	.DOC(mat_r_1_I_29_DOC[1:0]),
	.DOD(mat_r_1_I_29_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_1[0], vec_in_r_AQ_mux_3[11]}),
	.DIB({vec_in_r_AQ_mux_1[0], vec_in_r_AQ_mux_3[11]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_29.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_29.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_29.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_29.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_27 (
	.DOA({out_Q_r[38], out_Q_r[25]}),
	.DOB({vec_out_r_AQ_0[2], vec_out_r_AQ_1[1]}),
	.DOC(mat_r_1_I_27_DOC[1:0]),
	.DOD(mat_r_1_I_27_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_0_1, vec_in_r_AQ_mux_1[1]}),
	.DIB({vec_in_r_AQ_mux_0_1, vec_in_r_AQ_mux_1[1]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_27.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_27.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_27.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_27.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_25 (
	.DOA({out_Q_r[12], out_Q_r[39]}),
	.DOB({vec_out_r_AQ_2[0], vec_out_r_AQ_0[3]}),
	.DOC(mat_r_1_I_25_DOC[1:0]),
	.DOD(mat_r_1_I_25_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_2[0], vec_in_r_AQ_mux_0_2}),
	.DIB({vec_in_r_AQ_mux_2[0], vec_in_r_AQ_mux_0_2}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_25.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_25.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_25.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_25.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_23 (
	.DOA({out_Q_r[9], out_Q_r[13]}),
	.DOB({vec_out_r_AQ_3[9], vec_out_r_AQ_2[1]}),
	.DOC(mat_r_1_I_23_DOC[1:0]),
	.DOD(mat_r_1_I_23_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_3[9], vec_in_r_AQ_mux_2[1]}),
	.DIB({vec_in_r_AQ_mux_3[9], vec_in_r_AQ_mux_2[1]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_23.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_23.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_23.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_23.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_21 (
	.DOA({out_Q_r[40], out_Q_r[27]}),
	.DOB({vec_out_r_AQ_0[4], vec_out_r_AQ_1[3]}),
	.DOC(mat_r_1_I_21_DOC[1:0]),
	.DOD(mat_r_1_I_21_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_0_3, vec_in_r_AQ_mux_1[3]}),
	.DIB({vec_in_r_AQ_mux_0_3, vec_in_r_AQ_mux_1[3]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_21.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_21.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_21.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_21.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_19 (
	.DOA({out_Q_r[14], out_Q_r[0]}),
	.DOB({vec_out_r_AQ_2[2], vec_out_r_AQ_3[0]}),
	.DOC(mat_r_1_I_19_DOC[1:0]),
	.DOD(mat_r_1_I_19_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_2[2], vec_in_r_AQ_mux_3[0]}),
	.DIB({vec_in_r_AQ_mux_2[2], vec_in_r_AQ_mux_3[0]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_19.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_19.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_19.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_19.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_17 (
	.DOA({out_Q_r[6], out_Q_r[34]}),
	.DOB({vec_out_r_AQ_3[6], vec_out_r_AQ_1[10]}),
	.DOC(mat_r_1_I_17_DOC[1:0]),
	.DOD(mat_r_1_I_17_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_3[6], vec_in_r_AQ_mux_1[10]}),
	.DIB({vec_in_r_AQ_mux_3[6], vec_in_r_AQ_mux_1[10]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_17.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_17.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_17.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_17.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_15 (
	.DOA({out_Q_r[42], out_Q_r[1]}),
	.DOB({vec_out_r_AQ_0[6], vec_out_r_AQ_3[1]}),
	.DOC(mat_r_1_I_15_DOC[1:0]),
	.DOD(mat_r_1_I_15_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({N_508, vec_in_r_AQ_mux_3[1]}),
	.DIB({N_508, vec_in_r_AQ_mux_3[1]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_15.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_15.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_15.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_15.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_13 (
	.DOA({out_Q_r[7], out_Q_r[47]}),
	.DOB({vec_out_r_AQ_3[7], vec_out_r_AQ_0[11]}),
	.DOC(mat_r_1_I_13_DOC[1:0]),
	.DOD(mat_r_1_I_13_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_3[7], vec_in_r_AQ_mux_0_10}),
	.DIB({vec_in_r_AQ_mux_3[7], vec_in_r_AQ_mux_0_10}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_13.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_13.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_13.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_13.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_11 (
	.DOA({out_Q_r[30], out_Q_r[17]}),
	.DOB({vec_out_r_AQ_1[6], vec_out_r_AQ_2[5]}),
	.DOC(mat_r_1_I_11_DOC[1:0]),
	.DOD(mat_r_1_I_11_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_1[6], vec_in_r_AQ_mux_2[5]}),
	.DIB({vec_in_r_AQ_mux_1[6], vec_in_r_AQ_mux_2[5]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_11.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_11.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_11.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_11.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_9 (
	.DOA({out_Q_r[44], out_Q_r[31]}),
	.DOB({vec_out_r_AQ_0[8], vec_out_r_AQ_1[7]}),
	.DOC(mat_r_1_I_9_DOC[1:0]),
	.DOD(mat_r_1_I_9_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_0_7, vec_in_r_AQ_mux_1[7]}),
	.DIB({vec_in_r_AQ_mux_0_7, vec_in_r_AQ_mux_1[7]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_9.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_9.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_9.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_9.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_7 (
	.DOA({out_Q_r[3], out_Q_r[45]}),
	.DOB({vec_out_r_AQ_3[3], vec_out_r_AQ_0[9]}),
	.DOC(mat_r_1_I_7_DOC[1:0]),
	.DOD(mat_r_1_I_7_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_3[3], vec_in_r_AQ_mux_0_8}),
	.DIB({vec_in_r_AQ_mux_3[3], vec_in_r_AQ_mux_0_8}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_7.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_7.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_7.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_7.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_5 (
	.DOA({out_Q_r[4], out_Q_r[28]}),
	.DOB({vec_out_r_AQ_3[4], vec_out_r_AQ_1[4]}),
	.DOC(mat_r_1_I_5_DOC[1:0]),
	.DOD(mat_r_1_I_5_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_3[4], vec_in_r_AQ_mux_1[4]}),
	.DIB({vec_in_r_AQ_mux_3[4], vec_in_r_AQ_mux_1[4]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_5.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_5.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_5.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_5.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_3 (
	.DOA({out_Q_r[15], out_Q_r[33]}),
	.DOB({vec_out_r_AQ_2[3], vec_out_r_AQ_1[9]}),
	.DOC(mat_r_1_I_3_DOC[1:0]),
	.DOD(mat_r_1_I_3_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_2[3], vec_in_r_AQ_mux_1[9]}),
	.DIB({vec_in_r_AQ_mux_2[3], vec_in_r_AQ_mux_1[9]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_3.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_3.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_3.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_3.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_r_1_I_1 (
	.DOA({out_Q_r[29], out_Q_r[16]}),
	.DOB({vec_out_r_AQ_1[5], vec_out_r_AQ_2[4]}),
	.DOC(mat_r_1_I_1_DOC[1:0]),
	.DOD(mat_r_1_I_1_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_r_AQ_mux_1[5], vec_in_r_AQ_mux_2[4]}),
	.DIB({vec_in_r_AQ_mux_1[5], vec_in_r_AQ_mux_2[4]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_r_1_I_1.INIT_A=64'h0000000000000000;
defparam mat_r_1_I_1.INIT_B=64'h0000000000000000;
defparam mat_r_1_I_1.INIT_C=64'h0000000000000000;
defparam mat_r_1_I_1.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_47 (
	.DOA({out_Q_i[8], out_Q_i[5]}),
	.DOB({vec_out_i_AQ_3[8], vec_out_i_AQ_3[5]}),
	.DOC(mat_i_1_I_47_DOC[1:0]),
	.DOD(mat_i_1_I_47_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_3[8], vec_in_i_AQ_mux_3[5]}),
	.DIB({vec_in_i_AQ_mux_3[8], vec_in_i_AQ_mux_3[5]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_47.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_47.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_47.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_47.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_45 (
	.DOA({out_Q_i[41], out_Q_i[19]}),
	.DOB({vec_out_i_AQ_0[5], vec_out_i_AQ_2[7]}),
	.DOC(mat_i_1_I_45_DOC[1:0]),
	.DOD(mat_i_1_I_45_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_0_5, vec_in_i_AQ_mux_2[7]}),
	.DIB({vec_in_i_AQ_mux_0_5, vec_in_i_AQ_mux_2[7]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_45.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_45.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_45.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_45.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_43 (
	.DOA({out_Q_i[46], out_Q_i[2]}),
	.DOB({vec_out_i_AQ_0[10], vec_out_i_AQ_3[2]}),
	.DOC(mat_i_1_I_43_DOC[1:0]),
	.DOD(mat_i_1_I_43_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_0_10, vec_in_i_AQ_mux_3[2]}),
	.DIB({vec_in_i_AQ_mux_0_10, vec_in_i_AQ_mux_3[2]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_43.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_43.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_43.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_43.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_41 (
	.DOA({out_Q_i[32], out_Q_i[20]}),
	.DOB({vec_out_i_AQ_1[8], vec_out_i_AQ_2[8]}),
	.DOC(mat_i_1_I_41_DOC[1:0]),
	.DOD(mat_i_1_I_41_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_1[8], vec_in_i_AQ_mux_2[8]}),
	.DIB({vec_in_i_AQ_mux_1[8], vec_in_i_AQ_mux_2[8]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_41.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_41.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_41.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_41.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_39 (
	.DOA({out_Q_i[43], out_Q_i[21]}),
	.DOB({vec_out_i_AQ_0[7], vec_out_i_AQ_2[9]}),
	.DOC(mat_i_1_I_39_DOC[1:0]),
	.DOD(mat_i_1_I_39_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_0_7, vec_in_i_AQ_mux_2[9]}),
	.DIB({vec_in_i_AQ_mux_0_7, vec_in_i_AQ_mux_2[9]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_39.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_39.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_39.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_39.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_37 (
	.DOA({out_Q_i[26], out_Q_i[35]}),
	.DOB({vec_out_i_AQ_1[2], vec_out_i_AQ_1[11]}),
	.DOC(mat_i_1_I_37_DOC[1:0]),
	.DOD(mat_i_1_I_37_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_1[2], vec_in_i_AQ_mux_1[11]}),
	.DIB({vec_in_i_AQ_mux_1[2], vec_in_i_AQ_mux_1[11]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_37.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_37.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_37.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_37.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_35 (
	.DOA({out_Q_i[22], out_Q_i[18]}),
	.DOB({vec_out_i_AQ_2[10], vec_out_i_AQ_2[6]}),
	.DOC(mat_i_1_I_35_DOC[1:0]),
	.DOD(mat_i_1_I_35_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_2[10], vec_in_i_AQ_mux_2[6]}),
	.DIB({vec_in_i_AQ_mux_2[10], vec_in_i_AQ_mux_2[6]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_35.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_35.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_35.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_35.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_33 (
	.DOA({out_Q_i[36], out_Q_i[23]}),
	.DOB({vec_out_i_AQ_0[0], vec_out_i_AQ_2[11]}),
	.DOC(mat_i_1_I_33_DOC[1:0]),
	.DOD(mat_i_1_I_33_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_0_0, vec_in_i_AQ_mux_2[11]}),
	.DIB({vec_in_i_AQ_mux_0_0, vec_in_i_AQ_mux_2[11]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_33.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_33.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_33.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_33.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_31 (
	.DOA({out_Q_i[10], out_Q_i[37]}),
	.DOB({vec_out_i_AQ_3[10], vec_out_i_AQ_0[1]}),
	.DOC(mat_i_1_I_31_DOC[1:0]),
	.DOD(mat_i_1_I_31_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_3[10], vec_in_i_AQ_mux_0_1}),
	.DIB({vec_in_i_AQ_mux_3[10], vec_in_i_AQ_mux_0_1}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_31.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_31.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_31.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_31.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_29 (
	.DOA({out_Q_i[24], out_Q_i[11]}),
	.DOB({vec_out_i_AQ_1[0], vec_out_i_AQ_3[11]}),
	.DOC(mat_i_1_I_29_DOC[1:0]),
	.DOD(mat_i_1_I_29_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_1[0], vec_in_i_AQ_mux_3[11]}),
	.DIB({vec_in_i_AQ_mux_1[0], vec_in_i_AQ_mux_3[11]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_29.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_29.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_29.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_29.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_27 (
	.DOA({out_Q_i[38], out_Q_i[25]}),
	.DOB({vec_out_i_AQ_0[2], vec_out_i_AQ_1[1]}),
	.DOC(mat_i_1_I_27_DOC[1:0]),
	.DOD(mat_i_1_I_27_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({N_505, vec_in_i_AQ_mux_1[1]}),
	.DIB({N_505, vec_in_i_AQ_mux_1[1]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_27.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_27.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_27.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_27.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_25 (
	.DOA({out_Q_i[12], out_Q_i[39]}),
	.DOB({vec_out_i_AQ_2[0], vec_out_i_AQ_0[3]}),
	.DOC(mat_i_1_I_25_DOC[1:0]),
	.DOD(mat_i_1_I_25_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_2[0], N_506}),
	.DIB({vec_in_i_AQ_mux_2[0], N_506}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_25.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_25.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_25.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_25.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_23 (
	.DOA({out_Q_i[9], out_Q_i[13]}),
	.DOB({vec_out_i_AQ_3[9], vec_out_i_AQ_2[1]}),
	.DOC(mat_i_1_I_23_DOC[1:0]),
	.DOD(mat_i_1_I_23_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_3[9], vec_in_i_AQ_mux_2[1]}),
	.DIB({vec_in_i_AQ_mux_3[9], vec_in_i_AQ_mux_2[1]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_23.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_23.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_23.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_23.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_21 (
	.DOA({out_Q_i[40], out_Q_i[27]}),
	.DOB({vec_out_i_AQ_0[4], vec_out_i_AQ_1[3]}),
	.DOC(mat_i_1_I_21_DOC[1:0]),
	.DOD(mat_i_1_I_21_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_0_4, vec_in_i_AQ_mux_1[3]}),
	.DIB({vec_in_i_AQ_mux_0_4, vec_in_i_AQ_mux_1[3]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_21.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_21.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_21.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_21.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_19 (
	.DOA({out_Q_i[14], out_Q_i[0]}),
	.DOB({vec_out_i_AQ_2[2], vec_out_i_AQ_3[0]}),
	.DOC(mat_i_1_I_19_DOC[1:0]),
	.DOD(mat_i_1_I_19_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_2[2], vec_in_i_AQ_mux_3[0]}),
	.DIB({vec_in_i_AQ_mux_2[2], vec_in_i_AQ_mux_3[0]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_19.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_19.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_19.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_19.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_17 (
	.DOA({out_Q_i[6], out_Q_i[34]}),
	.DOB({vec_out_i_AQ_3[6], vec_out_i_AQ_1[10]}),
	.DOC(mat_i_1_I_17_DOC[1:0]),
	.DOD(mat_i_1_I_17_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_3[6], vec_in_i_AQ_mux_1[10]}),
	.DIB({vec_in_i_AQ_mux_3[6], vec_in_i_AQ_mux_1[10]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_17.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_17.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_17.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_17.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_15 (
	.DOA({out_Q_i[42], out_Q_i[1]}),
	.DOB({vec_out_i_AQ_0[6], vec_out_i_AQ_3[1]}),
	.DOC(mat_i_1_I_15_DOC[1:0]),
	.DOD(mat_i_1_I_15_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_0_6, vec_in_i_AQ_mux_3[1]}),
	.DIB({vec_in_i_AQ_mux_0_6, vec_in_i_AQ_mux_3[1]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_15.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_15.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_15.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_15.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_13 (
	.DOA({out_Q_i[7], out_Q_i[47]}),
	.DOB({vec_out_i_AQ_3[7], vec_out_i_AQ_0[11]}),
	.DOC(mat_i_1_I_13_DOC[1:0]),
	.DOD(mat_i_1_I_13_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_3[7], vec_in_i_AQ_mux_0_11}),
	.DIB({vec_in_i_AQ_mux_3[7], vec_in_i_AQ_mux_0_11}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_13.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_13.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_13.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_13.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_11 (
	.DOA({out_Q_i[30], out_Q_i[17]}),
	.DOB({vec_out_i_AQ_1[6], vec_out_i_AQ_2[5]}),
	.DOC(mat_i_1_I_11_DOC[1:0]),
	.DOD(mat_i_1_I_11_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_1[6], vec_in_i_AQ_mux_2[5]}),
	.DIB({vec_in_i_AQ_mux_1[6], vec_in_i_AQ_mux_2[5]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_11.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_11.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_11.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_11.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_9 (
	.DOA({out_Q_i[44], out_Q_i[31]}),
	.DOB({vec_out_i_AQ_0[8], vec_out_i_AQ_1[7]}),
	.DOC(mat_i_1_I_9_DOC[1:0]),
	.DOD(mat_i_1_I_9_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_0_8, vec_in_i_AQ_mux_1[7]}),
	.DIB({vec_in_i_AQ_mux_0_8, vec_in_i_AQ_mux_1[7]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_9.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_9.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_9.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_9.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_7 (
	.DOA({out_Q_i[3], out_Q_i[45]}),
	.DOB({vec_out_i_AQ_3[3], vec_out_i_AQ_0[9]}),
	.DOC(mat_i_1_I_7_DOC[1:0]),
	.DOD(mat_i_1_I_7_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_3[3], vec_in_i_AQ_mux_0_9}),
	.DIB({vec_in_i_AQ_mux_3[3], vec_in_i_AQ_mux_0_9}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_7.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_7.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_7.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_7.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_5 (
	.DOA({out_Q_i[4], out_Q_i[28]}),
	.DOB({vec_out_i_AQ_3[4], vec_out_i_AQ_1[4]}),
	.DOC(mat_i_1_I_5_DOC[1:0]),
	.DOD(mat_i_1_I_5_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_3[4], vec_in_i_AQ_mux_1[4]}),
	.DIB({vec_in_i_AQ_mux_3[4], vec_in_i_AQ_mux_1[4]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_5.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_5.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_5.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_5.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_3 (
	.DOA({out_Q_i[15], out_Q_i[33]}),
	.DOB({vec_out_i_AQ_2[3], vec_out_i_AQ_1[9]}),
	.DOC(mat_i_1_I_3_DOC[1:0]),
	.DOD(mat_i_1_I_3_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_2[3], vec_in_i_AQ_mux_1[9]}),
	.DIB({vec_in_i_AQ_mux_2[3], vec_in_i_AQ_mux_1[9]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_3.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_3.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_3.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_3.INIT_D=64'h0000000000000000;
// @22:45
  RAM32M mat_i_1_I_1 (
	.DOA({out_Q_i[29], out_Q_i[16]}),
	.DOB({vec_out_i_AQ_1[5], vec_out_i_AQ_2[4]}),
	.DOC(mat_i_1_I_1_DOC[1:0]),
	.DOD(mat_i_1_I_1_DOD[1:0]),
	.ADDRA({GND, GND, GND, col_sel_AQ2_mux_i_m3_lut6_2_O5[0], col_sel_AQ2_mux_i_m3_lut6_2_O6[0]}),
	.ADDRB({GND, GND, GND, col_sel_AQ_int[1:0]}),
	.ADDRC({GND, GND, GND, GND, GND}),
	.ADDRD({GND, GND, GND, w_col_sel_AQ_mux_i_m3_lut6_2_O5[0], w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]}),
	.DIA({vec_in_i_AQ_mux_1[5], vec_in_i_AQ_mux_2[4]}),
	.DIB({vec_in_i_AQ_mux_1[5], vec_in_i_AQ_mux_2[4]}),
	.DIC({GND, GND}),
	.DID({GND, GND}),
	.WCLK(clk),
	.WE(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam mat_i_1_I_1.INIT_A=64'h0000000000000000;
defparam mat_i_1_I_1.INIT_B=64'h0000000000000000;
defparam mat_i_1_I_1.INIT_C=64'h0000000000000000;
defparam mat_i_1_I_1.INIT_D=64'h0000000000000000;
// @22:57
  LUT6 \single_out_r2_3_i_m3[3]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_r[3]),
	.I3(out_Q_r[15]),
	.I4(out_Q_r[27]),
	.I5(out_Q_r[39]),
	.O(N_645)
);
defparam \single_out_r2_3_i_m3[3] .INIT=64'hF7D5B391E6C4A280;
// @22:57
  LUT6 \single_out_r2_3_i_m3[4]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_r[4]),
	.I3(out_Q_r[40]),
	.I4(out_Q_r[16]),
	.I5(out_Q_r[28]),
	.O(N_641)
);
defparam \single_out_r2_3_i_m3[4] .INIT=64'hF7E6D5C4B3A29180;
// @22:55
  LUT6 \single_out_r_3_i_m3[4]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_r_AQ_0[4]),
	.I3(vec_out_r_AQ_3[4]),
	.I4(vec_out_r_AQ_1[4]),
	.I5(vec_out_r_AQ_2[4]),
	.O(N_637)
);
defparam \single_out_r_3_i_m3[4] .INIT=64'hFE76BA32DC549810;
// @22:57
  LUT6 \single_out_r2_3_i_m3[11]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_r[11]),
	.I3(out_Q_r[23]),
	.I4(out_Q_r[35]),
	.I5(out_Q_r[47]),
	.O(N_632)
);
defparam \single_out_r2_3_i_m3[11] .INIT=64'hF7D5B391E6C4A280;
// @22:56
  LUT6 \single_out_i_3_i_m3[5]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_i_AQ_0[5]),
	.I3(vec_out_i_AQ_1[5]),
	.I4(vec_out_i_AQ_2[5]),
	.I5(vec_out_i_AQ_3[5]),
	.O(N_628)
);
defparam \single_out_i_3_i_m3[5] .INIT=64'hFEBADC9876325410;
// @22:55
  LUT6 \single_out_r_3_i_m3[11]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_r_AQ_0[11]),
	.I3(vec_out_r_AQ_1[11]),
	.I4(vec_out_r_AQ_2[11]),
	.I5(vec_out_r_AQ_3[11]),
	.O(N_624)
);
defparam \single_out_r_3_i_m3[11] .INIT=64'hFEBADC9876325410;
// @22:55
  LUT6 \single_out_r_3_i_m3[7]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_r_AQ_0[7]),
	.I3(vec_out_r_AQ_3[7]),
	.I4(vec_out_r_AQ_1[7]),
	.I5(vec_out_r_AQ_2[7]),
	.O(N_623)
);
defparam \single_out_r_3_i_m3[7] .INIT=64'hFE76BA32DC549810;
// @22:55
  LUT6 \single_out_r_3_i_m3[0]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_r_AQ_0[0]),
	.I3(vec_out_r_AQ_1[0]),
	.I4(vec_out_r_AQ_2[0]),
	.I5(vec_out_r_AQ_3[0]),
	.O(N_622)
);
defparam \single_out_r_3_i_m3[0] .INIT=64'hFEBADC9876325410;
// @22:58
  LUT6 \single_out_i2_3_i_m3[8]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_i[8]),
	.I3(out_Q_i[32]),
	.I4(out_Q_i[44]),
	.I5(out_Q_i[20]),
	.O(N_612)
);
defparam \single_out_i2_3_i_m3[8] .INIT=64'hF7B3E6A2D591C480;
// @22:57
  LUT6 \single_out_r2_3_i_m3[10]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_r[10]),
	.I3(out_Q_r[22]),
	.I4(out_Q_r[46]),
	.I5(out_Q_r[34]),
	.O(N_607)
);
defparam \single_out_r2_3_i_m3[10] .INIT=64'hF7D5E6C4B391A280;
// @22:57
  LUT6 \single_out_r2_3_i_m3[9]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_r[9]),
	.I3(out_Q_r[21]),
	.I4(out_Q_r[33]),
	.I5(out_Q_r[45]),
	.O(N_606)
);
defparam \single_out_r2_3_i_m3[9] .INIT=64'hF7D5B391E6C4A280;
// @22:57
  LUT6 \single_out_r2_3_i_m3[0]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_r[12]),
	.I3(out_Q_r[24]),
	.I4(out_Q_r[36]),
	.I5(out_Q_r[0]),
	.O(N_605)
);
defparam \single_out_r2_3_i_m3[0] .INIT=64'hFDB9ECA875316420;
// @22:55
  LUT6 \single_out_r_3_i_m3[10]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_r_AQ_0[10]),
	.I3(vec_out_r_AQ_2[10]),
	.I4(vec_out_r_AQ_3[10]),
	.I5(vec_out_r_AQ_1[10]),
	.O(N_597)
);
defparam \single_out_r_3_i_m3[10] .INIT=64'hFEDC7654BA983210;
// @22:55
  LUT6 \single_out_r_3_i_m3[9]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_r_AQ_3[9]),
	.I3(vec_out_r_AQ_0[9]),
	.I4(vec_out_r_AQ_1[9]),
	.I5(vec_out_r_AQ_2[9]),
	.O(N_596)
);
defparam \single_out_r_3_i_m3[9] .INIT=64'hF7E6B3A2D5C49180;
// @22:55
  LUT6 \single_out_r_3_i_m3[6]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_r_AQ_0[6]),
	.I3(vec_out_r_AQ_1[6]),
	.I4(vec_out_r_AQ_3[6]),
	.I5(vec_out_r_AQ_2[6]),
	.O(N_595)
);
defparam \single_out_r_3_i_m3[6] .INIT=64'hFEBA7632DC985410;
// @22:58
  LUT6 \single_out_i2_3_i_m3[10]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_i[10]),
	.I3(out_Q_i[22]),
	.I4(out_Q_i[46]),
	.I5(out_Q_i[34]),
	.O(N_586)
);
defparam \single_out_i2_3_i_m3[10] .INIT=64'hF7D5E6C4B391A280;
// @22:58
  LUT6 \single_out_i2_3_i_m3[9]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_i[9]),
	.I3(out_Q_i[21]),
	.I4(out_Q_i[33]),
	.I5(out_Q_i[45]),
	.O(N_585)
);
defparam \single_out_i2_3_i_m3[9] .INIT=64'hF7D5B391E6C4A280;
// @22:58
  LUT6 \single_out_i2_3_i_m3[7]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_i[7]),
	.I3(out_Q_i[43]),
	.I4(out_Q_i[19]),
	.I5(out_Q_i[31]),
	.O(N_584)
);
defparam \single_out_i2_3_i_m3[7] .INIT=64'hF7E6D5C4B3A29180;
// @22:58
  LUT6 \single_out_i2_3_i_m3[6]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_i[6]),
	.I3(out_Q_i[30]),
	.I4(out_Q_i[42]),
	.I5(out_Q_i[18]),
	.O(N_583)
);
defparam \single_out_i2_3_i_m3[6] .INIT=64'hF7B3E6A2D591C480;
// @22:58
  LUT6 \single_out_i2_3_i_m3[3]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_i[3]),
	.I3(out_Q_i[15]),
	.I4(out_Q_i[27]),
	.I5(out_Q_i[39]),
	.O(N_582)
);
defparam \single_out_i2_3_i_m3[3] .INIT=64'hF7D5B391E6C4A280;
// @22:57
  LUT6 \single_out_r2_3_i_m3[6]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_r[6]),
	.I3(out_Q_r[30]),
	.I4(out_Q_r[42]),
	.I5(out_Q_r[18]),
	.O(N_571)
);
defparam \single_out_r2_3_i_m3[6] .INIT=64'hF7B3E6A2D591C480;
// @22:56
  LUT6 \single_out_i_3_i_m3[7]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_i_AQ_0[7]),
	.I3(vec_out_i_AQ_3[7]),
	.I4(vec_out_i_AQ_1[7]),
	.I5(vec_out_i_AQ_2[7]),
	.O(N_568)
);
defparam \single_out_i_3_i_m3[7] .INIT=64'hFE76BA32DC549810;
// @22:56
  LUT6 \single_out_i_3_i_m3[6]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_i_AQ_0[6]),
	.I3(vec_out_i_AQ_1[6]),
	.I4(vec_out_i_AQ_3[6]),
	.I5(vec_out_i_AQ_2[6]),
	.O(N_567)
);
defparam \single_out_i_3_i_m3[6] .INIT=64'hFEBA7632DC985410;
// @22:56
  LUT6 \single_out_i_3_i_m3[3]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_i_AQ_2[3]),
	.I3(vec_out_i_AQ_3[3]),
	.I4(vec_out_i_AQ_0[3]),
	.I5(vec_out_i_AQ_1[3]),
	.O(N_566)
);
defparam \single_out_i_3_i_m3[3] .INIT=64'hFD75EC64B931A820;
// @22:58
  LUT6 \single_out_i2_3_i_m3[2]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_i[14]),
	.I3(out_Q_i[26]),
	.I4(out_Q_i[38]),
	.I5(out_Q_i[2]),
	.O(N_555)
);
defparam \single_out_i2_3_i_m3[2] .INIT=64'hFDB9ECA875316420;
// @22:57
  LUT6 \single_out_r2_3_i_m3[8]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_r[8]),
	.I3(out_Q_r[32]),
	.I4(out_Q_r[44]),
	.I5(out_Q_r[20]),
	.O(N_552)
);
defparam \single_out_r2_3_i_m3[8] .INIT=64'hF7B3E6A2D591C480;
// @22:56
  LUT6 \single_out_i_3_i_m3[2]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_i_AQ_0[2]),
	.I3(vec_out_i_AQ_1[2]),
	.I4(vec_out_i_AQ_2[2]),
	.I5(vec_out_i_AQ_3[2]),
	.O(N_549)
);
defparam \single_out_i_3_i_m3[2] .INIT=64'hFEBADC9876325410;
// @22:57
  LUT6 \single_out_r2_3[2]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_r[14]),
	.I3(out_Q_r[26]),
	.I4(out_Q_r[38]),
	.I5(out_Q_r[2]),
	.O(single_out_r_AQ2_1)
);
defparam \single_out_r2_3[2] .INIT=64'hFDB9ECA875316420;
// @22:55
  LUT6 \single_out_r_3[5]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_r_AQ_0[5]),
	.I3(vec_out_r_AQ_1[5]),
	.I4(vec_out_r_AQ_2[5]),
	.I5(vec_out_r_AQ_3[5]),
	.O(single_out_r_AQ_4)
);
defparam \single_out_r_3[5] .INIT=64'hFEBADC9876325410;
// @22:55
  LUT6 \single_out_r_3[3]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_r_AQ_2[3]),
	.I3(vec_out_r_AQ_3[3]),
	.I4(vec_out_r_AQ_0[3]),
	.I5(vec_out_r_AQ_1[3]),
	.O(single_out_r_AQ_2)
);
defparam \single_out_r_3[3] .INIT=64'hFD75EC64B931A820;
// @22:58
  LUT6 \single_out_i2_3[1]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_i[1]),
	.I3(out_Q_i[13]),
	.I4(out_Q_i[25]),
	.I5(out_Q_i[37]),
	.O(single_out_i_AQ2_1)
);
defparam \single_out_i2_3[1] .INIT=64'hF7D5B391E6C4A280;
// @22:56
  LUT6 \single_out_i_3[1]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_i_AQ_0[1]),
	.I3(vec_out_i_AQ_1[1]),
	.I4(vec_out_i_AQ_2[1]),
	.I5(vec_out_i_AQ_3[1]),
	.O(single_out_i_AQ_1)
);
defparam \single_out_i_3[1] .INIT=64'hFEBADC9876325410;
// @22:58
  LUT6 \single_out_i2_3[5]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_i[29]),
	.I3(out_Q_i[41]),
	.I4(out_Q_i[5]),
	.I5(out_Q_i[17]),
	.O(single_out_i_AQ2_5)
);
defparam \single_out_i2_3[5] .INIT=64'hFBEA7362D9C85140;
// @22:57
  LUT6 \single_out_r2_3[7]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_r[7]),
	.I3(out_Q_r[43]),
	.I4(out_Q_r[19]),
	.I5(out_Q_r[31]),
	.O(single_out_r_AQ2_6)
);
defparam \single_out_r2_3[7] .INIT=64'hF7E6D5C4B3A29180;
// @22:56
  LUT6 \single_out_i_3[0]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_i_AQ_0[0]),
	.I3(vec_out_i_AQ_1[0]),
	.I4(vec_out_i_AQ_2[0]),
	.I5(vec_out_i_AQ_3[0]),
	.O(single_out_i_AQ_0)
);
defparam \single_out_i_3[0] .INIT=64'hFEBADC9876325410;
// @22:58
  LUT6 \single_out_i2_3[4]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_i[4]),
	.I3(out_Q_i[40]),
	.I4(out_Q_i[16]),
	.I5(out_Q_i[28]),
	.O(single_out_i_AQ2_4)
);
defparam \single_out_i2_3[4] .INIT=64'hF7E6D5C4B3A29180;
// @22:58
  LUT6 \single_out_i2_3[0]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_i[12]),
	.I3(out_Q_i[24]),
	.I4(out_Q_i[36]),
	.I5(out_Q_i[0]),
	.O(single_out_i_AQ2_0)
);
defparam \single_out_i2_3[0] .INIT=64'hFDB9ECA875316420;
// @22:57
  LUT6 \single_out_r2_3[5]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_r[29]),
	.I3(out_Q_r[41]),
	.I4(out_Q_r[5]),
	.I5(out_Q_r[17]),
	.O(single_out_r_AQ2_4)
);
defparam \single_out_r2_3[5] .INIT=64'hFBEA7362D9C85140;
// @22:57
  LUT6 \single_out_r2_3[1]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_r[1]),
	.I3(out_Q_r[13]),
	.I4(out_Q_r[25]),
	.I5(out_Q_r[37]),
	.O(single_out_r_AQ2_0)
);
defparam \single_out_r2_3[1] .INIT=64'hF7D5B391E6C4A280;
// @22:56
  LUT6 \single_out_i_3[8]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_i_AQ_0[8]),
	.I3(vec_out_i_AQ_1[8]),
	.I4(vec_out_i_AQ_3[8]),
	.I5(vec_out_i_AQ_2[8]),
	.O(single_out_i_AQ_8)
);
defparam \single_out_i_3[8] .INIT=64'hFEBA7632DC985410;
// @22:56
  LUT6 \single_out_i_3[10]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_i_AQ_0[10]),
	.I3(vec_out_i_AQ_2[10]),
	.I4(vec_out_i_AQ_3[10]),
	.I5(vec_out_i_AQ_1[10]),
	.O(single_out_i_AQ_10)
);
defparam \single_out_i_3[10] .INIT=64'hFEDC7654BA983210;
// @22:58
  LUT6 \single_out_i2_3[11]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(out_Q_i[11]),
	.I3(out_Q_i[23]),
	.I4(out_Q_i[35]),
	.I5(out_Q_i[47]),
	.O(single_out_i_AQ2_11)
);
defparam \single_out_i2_3[11] .INIT=64'hF7D5B391E6C4A280;
// @22:56
  LUT6 \single_out_i_3[11]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_i_AQ_0[11]),
	.I3(vec_out_i_AQ_1[11]),
	.I4(vec_out_i_AQ_2[11]),
	.I5(vec_out_i_AQ_3[11]),
	.O(single_out_i_AQ_11)
);
defparam \single_out_i_3[11] .INIT=64'hFEBADC9876325410;
// @22:56
  LUT6 \single_out_i_3[9]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_i_AQ_3[9]),
	.I3(vec_out_i_AQ_0[9]),
	.I4(vec_out_i_AQ_1[9]),
	.I5(vec_out_i_AQ_2[9]),
	.O(single_out_i_AQ_9)
);
defparam \single_out_i_3[9] .INIT=64'hF7E6B3A2D5C49180;
// @22:56
  LUT6 \single_out_i_3[4]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_i_AQ_0[4]),
	.I3(vec_out_i_AQ_3[4]),
	.I4(vec_out_i_AQ_1[4]),
	.I5(vec_out_i_AQ_2[4]),
	.O(single_out_i_AQ_4)
);
defparam \single_out_i_3[4] .INIT=64'hFE76BA32DC549810;
// @22:55
  LUT6 \single_out_r_3[8]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_r_AQ_0[8]),
	.I3(vec_out_r_AQ_1[8]),
	.I4(vec_out_r_AQ_3[8]),
	.I5(vec_out_r_AQ_2[8]),
	.O(single_out_r_AQ_7)
);
defparam \single_out_r_3[8] .INIT=64'hFEBA7632DC985410;
// @22:55
  LUT6 \single_out_r_3[2]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_r_AQ_0[2]),
	.I3(vec_out_r_AQ_1[2]),
	.I4(vec_out_r_AQ_2[2]),
	.I5(vec_out_r_AQ_3[2]),
	.O(single_out_r_AQ_1)
);
defparam \single_out_r_3[2] .INIT=64'hFEBADC9876325410;
// @22:55
  LUT6 \single_out_r_3[1]  (
	.I0(row_sel_AQ[1]),
	.I1(row_sel_AQ[0]),
	.I2(vec_out_r_AQ_0[1]),
	.I3(vec_out_r_AQ_1[1]),
	.I4(vec_out_r_AQ_2[1]),
	.I5(vec_out_r_AQ_3[1]),
	.O(single_out_r_AQ_0)
);
defparam \single_out_r_3[1] .INIT=64'hFEBADC9876325410;
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
endmodule /* mat_regs */

module r_mat_regs (
  row_sel_R,
  col_sel_R_mux_i_m3_lut6_2_O6,
  col_sel_R_mux_i_m3_lut6_2_O5,
  single_in_r_R_mux,
  wr_en_AQ_sel,
  col_sel_R,
  col_sel_R_int,
  out_R_i,
  out_R_r,
  wr_en_R,
  N_28_i,
  clk,
  N_30_i,
  N_32_i,
  N_34_i,
  N_383_i,
  N_384_i,
  N_385_i,
  N_386_i,
  N_387_i,
  N_388_i,
  N_389_i,
  N_390_i,
  N_391_i,
  N_392_i,
  N_393_i,
  N_394_i,
  N_395_i,
  N_396_i,
  N_397_i,
  N_398_i,
  N_399_i,
  N_400_i,
  N_401_i
)
;
input [1:0] row_sel_R ;
input [0:0] col_sel_R_mux_i_m3_lut6_2_O6 ;
input [0:0] col_sel_R_mux_i_m3_lut6_2_O5 ;
input [11:11] single_in_r_R_mux ;
input [0:0] wr_en_AQ_sel ;
input [1:0] col_sel_R ;
input [1:0] col_sel_R_int ;
output [47:12] out_R_i ;
output [47:0] out_R_r ;
input wr_en_R ;
input N_28_i ;
input clk ;
input N_30_i ;
input N_32_i ;
input N_34_i ;
input N_383_i ;
input N_384_i ;
input N_385_i ;
input N_386_i ;
input N_387_i ;
input N_388_i ;
input N_389_i ;
input N_390_i ;
input N_391_i ;
input N_392_i ;
input N_393_i ;
input N_394_i ;
input N_395_i ;
input N_396_i ;
input N_397_i ;
input N_398_i ;
input N_399_i ;
input N_400_i ;
input N_401_i ;
wire wr_en_R ;
wire N_28_i ;
wire clk ;
wire N_30_i ;
wire N_32_i ;
wire N_34_i ;
wire N_383_i ;
wire N_384_i ;
wire N_385_i ;
wire N_386_i ;
wire N_387_i ;
wire N_388_i ;
wire N_389_i ;
wire N_390_i ;
wire N_391_i ;
wire N_392_i ;
wire N_393_i ;
wire N_394_i ;
wire N_395_i ;
wire N_396_i ;
wire N_397_i ;
wire N_398_i ;
wire N_399_i ;
wire N_400_i ;
wire N_401_i ;
wire [11:0] mat_r_reg_3_3;
wire [11:0] mat_r_reg_3_2;
wire [11:0] mat_r_reg_3_1;
wire [11:0] mat_r_reg_2_2;
wire [11:0] mat_r_reg_2_1;
wire [11:0] mat_r_reg_1_1;
wire [11:0] mat_i_reg_3_2;
wire [11:0] mat_i_reg_3_1;
wire [11:0] mat_i_reg_3_0;
wire [11:0] mat_i_reg_2_1;
wire [11:0] mat_i_reg_2_0;
wire [11:0] mat_i_reg_1_0;
wire VCC ;
wire mat_i_reg_1_0_1_sqmuxa ;
wire mat_i_reg_3_0_1_sqmuxa ;
wire mat_r_reg_1_1_1_sqmuxa ;
wire mat_i_reg_3_1_1_sqmuxa ;
wire mat_i_reg_2_0_1_sqmuxa ;
wire mat_i_reg_3_2_1_sqmuxa ;
wire mat_r_reg_2_2_1_sqmuxa ;
wire mat_r_reg_3_3_1_sqmuxa ;
wire mat_i_reg_2_1_1_sqmuxa ;
wire mat_i_reg_2_1_1_sqmuxa_lut6_2_O5 ;
wire GND ;
// @19:70
  FDE \mat_r_reg_3_3_Z[0]  (
	.Q(mat_r_reg_3_3[0]),
	.D(N_28_i),
	.C(clk),
	.CE(mat_r_reg_3_3_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_3_Z[1]  (
	.Q(mat_r_reg_3_3[1]),
	.D(N_30_i),
	.C(clk),
	.CE(mat_r_reg_3_3_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_3_Z[2]  (
	.Q(mat_r_reg_3_3[2]),
	.D(N_32_i),
	.C(clk),
	.CE(mat_r_reg_3_3_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_3_Z[3]  (
	.Q(mat_r_reg_3_3[3]),
	.D(N_34_i),
	.C(clk),
	.CE(mat_r_reg_3_3_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_3_Z[4]  (
	.Q(mat_r_reg_3_3[4]),
	.D(N_383_i),
	.C(clk),
	.CE(mat_r_reg_3_3_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_3_Z[5]  (
	.Q(mat_r_reg_3_3[5]),
	.D(N_384_i),
	.C(clk),
	.CE(mat_r_reg_3_3_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_3_Z[6]  (
	.Q(mat_r_reg_3_3[6]),
	.D(N_385_i),
	.C(clk),
	.CE(mat_r_reg_3_3_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_3_Z[7]  (
	.Q(mat_r_reg_3_3[7]),
	.D(N_386_i),
	.C(clk),
	.CE(mat_r_reg_3_3_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_3_Z[8]  (
	.Q(mat_r_reg_3_3[8]),
	.D(N_387_i),
	.C(clk),
	.CE(mat_r_reg_3_3_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_3_Z[9]  (
	.Q(mat_r_reg_3_3[9]),
	.D(N_388_i),
	.C(clk),
	.CE(mat_r_reg_3_3_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_3_Z[10]  (
	.Q(mat_r_reg_3_3[10]),
	.D(N_389_i),
	.C(clk),
	.CE(mat_r_reg_3_3_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_3_Z[11]  (
	.Q(mat_r_reg_3_3[11]),
	.D(single_in_r_R_mux[11]),
	.C(clk),
	.CE(mat_r_reg_3_3_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_2_Z[0]  (
	.Q(mat_r_reg_3_2[0]),
	.D(N_28_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_2_Z[1]  (
	.Q(mat_r_reg_3_2[1]),
	.D(N_30_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_2_Z[2]  (
	.Q(mat_r_reg_3_2[2]),
	.D(N_32_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_2_Z[3]  (
	.Q(mat_r_reg_3_2[3]),
	.D(N_34_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_2_Z[4]  (
	.Q(mat_r_reg_3_2[4]),
	.D(N_383_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_2_Z[5]  (
	.Q(mat_r_reg_3_2[5]),
	.D(N_384_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_2_Z[6]  (
	.Q(mat_r_reg_3_2[6]),
	.D(N_385_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_2_Z[7]  (
	.Q(mat_r_reg_3_2[7]),
	.D(N_386_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_2_Z[8]  (
	.Q(mat_r_reg_3_2[8]),
	.D(N_387_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_2_Z[9]  (
	.Q(mat_r_reg_3_2[9]),
	.D(N_388_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_2_Z[10]  (
	.Q(mat_r_reg_3_2[10]),
	.D(N_389_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_2_Z[11]  (
	.Q(mat_r_reg_3_2[11]),
	.D(single_in_r_R_mux[11]),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_1_Z[0]  (
	.Q(mat_r_reg_3_1[0]),
	.D(N_28_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_1_Z[1]  (
	.Q(mat_r_reg_3_1[1]),
	.D(N_30_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_1_Z[2]  (
	.Q(mat_r_reg_3_1[2]),
	.D(N_32_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_1_Z[3]  (
	.Q(mat_r_reg_3_1[3]),
	.D(N_34_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_1_Z[4]  (
	.Q(mat_r_reg_3_1[4]),
	.D(N_383_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_1_Z[5]  (
	.Q(mat_r_reg_3_1[5]),
	.D(N_384_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_1_Z[6]  (
	.Q(mat_r_reg_3_1[6]),
	.D(N_385_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_1_Z[7]  (
	.Q(mat_r_reg_3_1[7]),
	.D(N_386_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_1_Z[8]  (
	.Q(mat_r_reg_3_1[8]),
	.D(N_387_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_1_Z[9]  (
	.Q(mat_r_reg_3_1[9]),
	.D(N_388_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_1_Z[10]  (
	.Q(mat_r_reg_3_1[10]),
	.D(N_389_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_3_1_Z[11]  (
	.Q(mat_r_reg_3_1[11]),
	.D(single_in_r_R_mux[11]),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_2_Z[0]  (
	.Q(mat_r_reg_2_2[0]),
	.D(N_28_i),
	.C(clk),
	.CE(mat_r_reg_2_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_2_Z[1]  (
	.Q(mat_r_reg_2_2[1]),
	.D(N_30_i),
	.C(clk),
	.CE(mat_r_reg_2_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_2_Z[2]  (
	.Q(mat_r_reg_2_2[2]),
	.D(N_32_i),
	.C(clk),
	.CE(mat_r_reg_2_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_2_Z[3]  (
	.Q(mat_r_reg_2_2[3]),
	.D(N_34_i),
	.C(clk),
	.CE(mat_r_reg_2_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_2_Z[4]  (
	.Q(mat_r_reg_2_2[4]),
	.D(N_383_i),
	.C(clk),
	.CE(mat_r_reg_2_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_2_Z[5]  (
	.Q(mat_r_reg_2_2[5]),
	.D(N_384_i),
	.C(clk),
	.CE(mat_r_reg_2_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_2_Z[6]  (
	.Q(mat_r_reg_2_2[6]),
	.D(N_385_i),
	.C(clk),
	.CE(mat_r_reg_2_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_2_Z[7]  (
	.Q(mat_r_reg_2_2[7]),
	.D(N_386_i),
	.C(clk),
	.CE(mat_r_reg_2_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_2_Z[8]  (
	.Q(mat_r_reg_2_2[8]),
	.D(N_387_i),
	.C(clk),
	.CE(mat_r_reg_2_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_2_Z[9]  (
	.Q(mat_r_reg_2_2[9]),
	.D(N_388_i),
	.C(clk),
	.CE(mat_r_reg_2_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_2_Z[10]  (
	.Q(mat_r_reg_2_2[10]),
	.D(N_389_i),
	.C(clk),
	.CE(mat_r_reg_2_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_2_Z[11]  (
	.Q(mat_r_reg_2_2[11]),
	.D(single_in_r_R_mux[11]),
	.C(clk),
	.CE(mat_r_reg_2_2_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_1_Z[0]  (
	.Q(mat_r_reg_2_1[0]),
	.D(N_28_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_1_Z[1]  (
	.Q(mat_r_reg_2_1[1]),
	.D(N_30_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_1_Z[2]  (
	.Q(mat_r_reg_2_1[2]),
	.D(N_32_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_1_Z[3]  (
	.Q(mat_r_reg_2_1[3]),
	.D(N_34_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_1_Z[4]  (
	.Q(mat_r_reg_2_1[4]),
	.D(N_383_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_1_Z[5]  (
	.Q(mat_r_reg_2_1[5]),
	.D(N_384_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_1_Z[6]  (
	.Q(mat_r_reg_2_1[6]),
	.D(N_385_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_1_Z[7]  (
	.Q(mat_r_reg_2_1[7]),
	.D(N_386_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_1_Z[8]  (
	.Q(mat_r_reg_2_1[8]),
	.D(N_387_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_1_Z[9]  (
	.Q(mat_r_reg_2_1[9]),
	.D(N_388_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_1_Z[10]  (
	.Q(mat_r_reg_2_1[10]),
	.D(N_389_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_2_1_Z[11]  (
	.Q(mat_r_reg_2_1[11]),
	.D(single_in_r_R_mux[11]),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_1_1_Z[0]  (
	.Q(mat_r_reg_1_1[0]),
	.D(N_28_i),
	.C(clk),
	.CE(mat_r_reg_1_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_1_1_Z[1]  (
	.Q(mat_r_reg_1_1[1]),
	.D(N_30_i),
	.C(clk),
	.CE(mat_r_reg_1_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_1_1_Z[2]  (
	.Q(mat_r_reg_1_1[2]),
	.D(N_32_i),
	.C(clk),
	.CE(mat_r_reg_1_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_1_1_Z[3]  (
	.Q(mat_r_reg_1_1[3]),
	.D(N_34_i),
	.C(clk),
	.CE(mat_r_reg_1_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_1_1_Z[4]  (
	.Q(mat_r_reg_1_1[4]),
	.D(N_383_i),
	.C(clk),
	.CE(mat_r_reg_1_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_1_1_Z[5]  (
	.Q(mat_r_reg_1_1[5]),
	.D(N_384_i),
	.C(clk),
	.CE(mat_r_reg_1_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_1_1_Z[6]  (
	.Q(mat_r_reg_1_1[6]),
	.D(N_385_i),
	.C(clk),
	.CE(mat_r_reg_1_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_1_1_Z[7]  (
	.Q(mat_r_reg_1_1[7]),
	.D(N_386_i),
	.C(clk),
	.CE(mat_r_reg_1_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_1_1_Z[8]  (
	.Q(mat_r_reg_1_1[8]),
	.D(N_387_i),
	.C(clk),
	.CE(mat_r_reg_1_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_1_1_Z[9]  (
	.Q(mat_r_reg_1_1[9]),
	.D(N_388_i),
	.C(clk),
	.CE(mat_r_reg_1_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_1_1_Z[10]  (
	.Q(mat_r_reg_1_1[10]),
	.D(N_389_i),
	.C(clk),
	.CE(mat_r_reg_1_1_1_sqmuxa)
);
// @19:70
  FDE \mat_r_reg_1_1_Z[11]  (
	.Q(mat_r_reg_1_1[11]),
	.D(single_in_r_R_mux[11]),
	.C(clk),
	.CE(mat_r_reg_1_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_2_Z[0]  (
	.Q(mat_i_reg_3_2[0]),
	.D(N_390_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_2_Z[1]  (
	.Q(mat_i_reg_3_2[1]),
	.D(N_391_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_2_Z[2]  (
	.Q(mat_i_reg_3_2[2]),
	.D(N_392_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_2_Z[3]  (
	.Q(mat_i_reg_3_2[3]),
	.D(N_393_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_2_Z[4]  (
	.Q(mat_i_reg_3_2[4]),
	.D(N_394_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_2_Z[5]  (
	.Q(mat_i_reg_3_2[5]),
	.D(N_395_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_2_Z[6]  (
	.Q(mat_i_reg_3_2[6]),
	.D(N_396_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_2_Z[7]  (
	.Q(mat_i_reg_3_2[7]),
	.D(N_397_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_2_Z[8]  (
	.Q(mat_i_reg_3_2[8]),
	.D(N_398_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_2_Z[9]  (
	.Q(mat_i_reg_3_2[9]),
	.D(N_399_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_2_Z[10]  (
	.Q(mat_i_reg_3_2[10]),
	.D(N_400_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_2_Z[11]  (
	.Q(mat_i_reg_3_2[11]),
	.D(N_401_i),
	.C(clk),
	.CE(mat_i_reg_3_2_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_1_Z[0]  (
	.Q(mat_i_reg_3_1[0]),
	.D(N_390_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_1_Z[1]  (
	.Q(mat_i_reg_3_1[1]),
	.D(N_391_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_1_Z[2]  (
	.Q(mat_i_reg_3_1[2]),
	.D(N_392_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_1_Z[3]  (
	.Q(mat_i_reg_3_1[3]),
	.D(N_393_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_1_Z[4]  (
	.Q(mat_i_reg_3_1[4]),
	.D(N_394_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_1_Z[5]  (
	.Q(mat_i_reg_3_1[5]),
	.D(N_395_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_1_Z[6]  (
	.Q(mat_i_reg_3_1[6]),
	.D(N_396_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_1_Z[7]  (
	.Q(mat_i_reg_3_1[7]),
	.D(N_397_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_1_Z[8]  (
	.Q(mat_i_reg_3_1[8]),
	.D(N_398_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_1_Z[9]  (
	.Q(mat_i_reg_3_1[9]),
	.D(N_399_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_1_Z[10]  (
	.Q(mat_i_reg_3_1[10]),
	.D(N_400_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_1_Z[11]  (
	.Q(mat_i_reg_3_1[11]),
	.D(N_401_i),
	.C(clk),
	.CE(mat_i_reg_3_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_0_Z[0]  (
	.Q(mat_i_reg_3_0[0]),
	.D(N_390_i),
	.C(clk),
	.CE(mat_i_reg_3_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_0_Z[1]  (
	.Q(mat_i_reg_3_0[1]),
	.D(N_391_i),
	.C(clk),
	.CE(mat_i_reg_3_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_0_Z[2]  (
	.Q(mat_i_reg_3_0[2]),
	.D(N_392_i),
	.C(clk),
	.CE(mat_i_reg_3_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_0_Z[3]  (
	.Q(mat_i_reg_3_0[3]),
	.D(N_393_i),
	.C(clk),
	.CE(mat_i_reg_3_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_0_Z[4]  (
	.Q(mat_i_reg_3_0[4]),
	.D(N_394_i),
	.C(clk),
	.CE(mat_i_reg_3_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_0_Z[5]  (
	.Q(mat_i_reg_3_0[5]),
	.D(N_395_i),
	.C(clk),
	.CE(mat_i_reg_3_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_0_Z[6]  (
	.Q(mat_i_reg_3_0[6]),
	.D(N_396_i),
	.C(clk),
	.CE(mat_i_reg_3_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_0_Z[7]  (
	.Q(mat_i_reg_3_0[7]),
	.D(N_397_i),
	.C(clk),
	.CE(mat_i_reg_3_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_0_Z[8]  (
	.Q(mat_i_reg_3_0[8]),
	.D(N_398_i),
	.C(clk),
	.CE(mat_i_reg_3_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_0_Z[9]  (
	.Q(mat_i_reg_3_0[9]),
	.D(N_399_i),
	.C(clk),
	.CE(mat_i_reg_3_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_0_Z[10]  (
	.Q(mat_i_reg_3_0[10]),
	.D(N_400_i),
	.C(clk),
	.CE(mat_i_reg_3_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_3_0_Z[11]  (
	.Q(mat_i_reg_3_0[11]),
	.D(N_401_i),
	.C(clk),
	.CE(mat_i_reg_3_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_1_Z[0]  (
	.Q(mat_i_reg_2_1[0]),
	.D(N_390_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_1_Z[1]  (
	.Q(mat_i_reg_2_1[1]),
	.D(N_391_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_1_Z[2]  (
	.Q(mat_i_reg_2_1[2]),
	.D(N_392_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_1_Z[3]  (
	.Q(mat_i_reg_2_1[3]),
	.D(N_393_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_1_Z[4]  (
	.Q(mat_i_reg_2_1[4]),
	.D(N_394_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_1_Z[5]  (
	.Q(mat_i_reg_2_1[5]),
	.D(N_395_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_1_Z[6]  (
	.Q(mat_i_reg_2_1[6]),
	.D(N_396_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_1_Z[7]  (
	.Q(mat_i_reg_2_1[7]),
	.D(N_397_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_1_Z[8]  (
	.Q(mat_i_reg_2_1[8]),
	.D(N_398_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_1_Z[9]  (
	.Q(mat_i_reg_2_1[9]),
	.D(N_399_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_1_Z[10]  (
	.Q(mat_i_reg_2_1[10]),
	.D(N_400_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_1_Z[11]  (
	.Q(mat_i_reg_2_1[11]),
	.D(N_401_i),
	.C(clk),
	.CE(mat_i_reg_2_1_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_0_Z[0]  (
	.Q(mat_i_reg_2_0[0]),
	.D(N_390_i),
	.C(clk),
	.CE(mat_i_reg_2_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_0_Z[1]  (
	.Q(mat_i_reg_2_0[1]),
	.D(N_391_i),
	.C(clk),
	.CE(mat_i_reg_2_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_0_Z[2]  (
	.Q(mat_i_reg_2_0[2]),
	.D(N_392_i),
	.C(clk),
	.CE(mat_i_reg_2_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_0_Z[3]  (
	.Q(mat_i_reg_2_0[3]),
	.D(N_393_i),
	.C(clk),
	.CE(mat_i_reg_2_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_0_Z[4]  (
	.Q(mat_i_reg_2_0[4]),
	.D(N_394_i),
	.C(clk),
	.CE(mat_i_reg_2_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_0_Z[5]  (
	.Q(mat_i_reg_2_0[5]),
	.D(N_395_i),
	.C(clk),
	.CE(mat_i_reg_2_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_0_Z[6]  (
	.Q(mat_i_reg_2_0[6]),
	.D(N_396_i),
	.C(clk),
	.CE(mat_i_reg_2_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_0_Z[7]  (
	.Q(mat_i_reg_2_0[7]),
	.D(N_397_i),
	.C(clk),
	.CE(mat_i_reg_2_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_0_Z[8]  (
	.Q(mat_i_reg_2_0[8]),
	.D(N_398_i),
	.C(clk),
	.CE(mat_i_reg_2_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_0_Z[9]  (
	.Q(mat_i_reg_2_0[9]),
	.D(N_399_i),
	.C(clk),
	.CE(mat_i_reg_2_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_0_Z[10]  (
	.Q(mat_i_reg_2_0[10]),
	.D(N_400_i),
	.C(clk),
	.CE(mat_i_reg_2_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_2_0_Z[11]  (
	.Q(mat_i_reg_2_0[11]),
	.D(N_401_i),
	.C(clk),
	.CE(mat_i_reg_2_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_1_0_Z[0]  (
	.Q(mat_i_reg_1_0[0]),
	.D(N_390_i),
	.C(clk),
	.CE(mat_i_reg_1_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_1_0_Z[1]  (
	.Q(mat_i_reg_1_0[1]),
	.D(N_391_i),
	.C(clk),
	.CE(mat_i_reg_1_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_1_0_Z[2]  (
	.Q(mat_i_reg_1_0[2]),
	.D(N_392_i),
	.C(clk),
	.CE(mat_i_reg_1_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_1_0_Z[3]  (
	.Q(mat_i_reg_1_0[3]),
	.D(N_393_i),
	.C(clk),
	.CE(mat_i_reg_1_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_1_0_Z[4]  (
	.Q(mat_i_reg_1_0[4]),
	.D(N_394_i),
	.C(clk),
	.CE(mat_i_reg_1_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_1_0_Z[5]  (
	.Q(mat_i_reg_1_0[5]),
	.D(N_395_i),
	.C(clk),
	.CE(mat_i_reg_1_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_1_0_Z[6]  (
	.Q(mat_i_reg_1_0[6]),
	.D(N_396_i),
	.C(clk),
	.CE(mat_i_reg_1_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_1_0_Z[7]  (
	.Q(mat_i_reg_1_0[7]),
	.D(N_397_i),
	.C(clk),
	.CE(mat_i_reg_1_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_1_0_Z[8]  (
	.Q(mat_i_reg_1_0[8]),
	.D(N_398_i),
	.C(clk),
	.CE(mat_i_reg_1_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_1_0_Z[9]  (
	.Q(mat_i_reg_1_0[9]),
	.D(N_399_i),
	.C(clk),
	.CE(mat_i_reg_1_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_1_0_Z[10]  (
	.Q(mat_i_reg_1_0[10]),
	.D(N_400_i),
	.C(clk),
	.CE(mat_i_reg_1_0_1_sqmuxa)
);
// @19:70
  FDE \mat_i_reg_1_0_Z[11]  (
	.Q(mat_i_reg_1_0[11]),
	.D(N_401_i),
	.C(clk),
	.CE(mat_i_reg_1_0_1_sqmuxa)
);
// @19:65
  LUT6 \vector_out_r_1_2[35]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_r_reg_2_2[0]),
	.I3(mat_r_reg_3_2[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[12])
);
defparam \vector_out_r_1_2[35] .INIT=64'hFC300000A820A820;
// @19:66
  LUT6 \vector_out_i_1_3[12]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_i_reg_2_1[11]),
	.I3(mat_i_reg_3_1[11]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[35])
);
defparam \vector_out_i_1_3[12] .INIT=64'hFC300000A820A820;
// @19:66
  LUT6 \vector_out_i_1_3[13]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_i_reg_2_1[10]),
	.I3(mat_i_reg_3_1[10]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[34])
);
defparam \vector_out_i_1_3[13] .INIT=64'hFC300000A820A820;
// @19:66
  LUT6 \vector_out_i_1_3[14]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_i_reg_2_1[9]),
	.I3(mat_i_reg_3_1[9]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[33])
);
defparam \vector_out_i_1_3[14] .INIT=64'hFC300000A820A820;
// @19:66
  LUT6 \vector_out_i_1_3[17]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_i_reg_2_1[6]),
	.I3(mat_i_reg_3_1[6]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[30])
);
defparam \vector_out_i_1_3[17] .INIT=64'hFC300000A820A820;
// @19:66
  LUT6 \vector_out_i_1_3[18]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_i_reg_2_1[5]),
	.I3(mat_i_reg_3_1[5]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[29])
);
defparam \vector_out_i_1_3[18] .INIT=64'hFC300000A820A820;
// @19:66
  LUT6 \vector_out_i_1_3[19]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_i_reg_2_1[4]),
	.I3(mat_i_reg_3_1[4]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[28])
);
defparam \vector_out_i_1_3[19] .INIT=64'hFC300000A820A820;
// @19:66
  LUT6 \vector_out_i_1_3[20]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_i_reg_2_1[3]),
	.I3(mat_i_reg_3_1[3]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[27])
);
defparam \vector_out_i_1_3[20] .INIT=64'hFC300000A820A820;
// @19:66
  LUT6 \vector_out_i_1_3[21]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_i_reg_2_1[2]),
	.I3(mat_i_reg_3_1[2]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[26])
);
defparam \vector_out_i_1_3[21] .INIT=64'hFC300000A820A820;
// @19:66
  LUT6 \vector_out_i_1_3[22]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_i_reg_2_1[1]),
	.I3(mat_i_reg_3_1[1]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[25])
);
defparam \vector_out_i_1_3[22] .INIT=64'hFC300000A820A820;
// @19:66
  LUT6 \vector_out_i_1_3[23]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_i_reg_2_1[0]),
	.I3(mat_i_reg_3_1[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[24])
);
defparam \vector_out_i_1_3[23] .INIT=64'hFC300000A820A820;
// @19:65
  LUT6 \vector_out_r_1_2[34]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_r_reg_2_2[1]),
	.I3(mat_r_reg_3_2[1]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[13])
);
defparam \vector_out_r_1_2[34] .INIT=64'hFC300000A820A820;
// @19:65
  LUT6 \vector_out_r_1_2[32]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_r_reg_2_2[3]),
	.I3(mat_r_reg_3_2[3]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[15])
);
defparam \vector_out_r_1_2[32] .INIT=64'hFC300000A820A820;
// @19:65
  LUT6 \vector_out_r_1_2[33]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_r_reg_2_2[2]),
	.I3(mat_r_reg_3_2[2]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[14])
);
defparam \vector_out_r_1_2[33] .INIT=64'hFC300000A820A820;
// @19:65
  LUT6 \vector_out_r_1_2[30]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_r_reg_2_2[5]),
	.I3(mat_r_reg_3_2[5]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[17])
);
defparam \vector_out_r_1_2[30] .INIT=64'hFC300000A820A820;
// @19:65
  LUT6 \vector_out_r_1_2[28]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_r_reg_2_2[7]),
	.I3(mat_r_reg_3_2[7]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[19])
);
defparam \vector_out_r_1_2[28] .INIT=64'hFC300000A820A820;
// @19:65
  LUT6 \vector_out_r_1_2[29]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_r_reg_2_2[6]),
	.I3(mat_r_reg_3_2[6]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[18])
);
defparam \vector_out_r_1_2[29] .INIT=64'hFC300000A820A820;
// @19:65
  LUT6 \vector_out_r_1_2[26]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_r_reg_2_2[9]),
	.I3(mat_r_reg_3_2[9]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[21])
);
defparam \vector_out_r_1_2[26] .INIT=64'hFC300000A820A820;
// @19:65
  LUT6 \vector_out_r_1_2[27]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_r_reg_2_2[8]),
	.I3(mat_r_reg_3_2[8]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[20])
);
defparam \vector_out_r_1_2[27] .INIT=64'hFC300000A820A820;
// @19:65
  LUT6 \vector_out_r_1_2[24]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_r_reg_2_2[11]),
	.I3(mat_r_reg_3_2[11]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[23])
);
defparam \vector_out_r_1_2[24] .INIT=64'hFC300000A820A820;
// @19:65
  LUT6 \vector_out_r_1_2[25]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_r_reg_2_2[10]),
	.I3(mat_r_reg_3_2[10]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[22])
);
defparam \vector_out_r_1_2[25] .INIT=64'hFC300000A820A820;
// @19:66
  LUT6 \vector_out_i_1_3[16]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_i_reg_2_1[7]),
	.I3(mat_i_reg_3_1[7]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[31])
);
defparam \vector_out_i_1_3[16] .INIT=64'hFC300000A820A820;
// @19:65
  LUT6 \vector_out_r_1_2[31]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_r_reg_2_2[4]),
	.I3(mat_r_reg_3_2[4]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[16])
);
defparam \vector_out_r_1_2[31] .INIT=64'hFC300000A820A820;
// @19:66
  LUT6 \vector_out_i_1_3[15]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I2(mat_i_reg_2_1[8]),
	.I3(mat_i_reg_3_1[8]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[32])
);
defparam \vector_out_i_1_3[15] .INIT=64'hFC300000A820A820;
// @19:65
  LUT6 \vector_out_r_1[43]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_r_reg_3_3[4]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[4])
);
defparam \vector_out_r_1[43] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \vector_out_r_1[44]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_r_reg_3_3[3]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[3])
);
defparam \vector_out_r_1[44] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \vector_out_r_1[46]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_r_reg_3_3[1]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[1])
);
defparam \vector_out_r_1[46] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \vector_out_r_1[47]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_r_reg_3_3[0]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[0])
);
defparam \vector_out_r_1[47] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \mat_i_reg_3_2_RNILK8E1[11]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_i_reg_3_2[11]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[23])
);
defparam \mat_i_reg_3_2_RNILK8E1[11] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \mat_i_reg_3_2_RNIKJ8E1[10]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_i_reg_3_2[10]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[22])
);
defparam \mat_i_reg_3_2_RNIKJ8E1[10] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \mat_i_reg_3_2_RNIC0IC1[9]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_i_reg_3_2[9]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[21])
);
defparam \mat_i_reg_3_2_RNIC0IC1[9] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \vector_out_r_1[39]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_r_reg_3_3[8]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[8])
);
defparam \vector_out_r_1[39] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \vector_out_r_1[37]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_r_reg_3_3[10]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[10])
);
defparam \vector_out_r_1[37] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \vector_out_r_1[38]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_r_reg_3_3[9]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[9])
);
defparam \vector_out_r_1[38] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \vector_out_r_1[40]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_r_reg_3_3[7]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[7])
);
defparam \vector_out_r_1[40] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \vector_out_r_1[41]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_r_reg_3_3[6]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[6])
);
defparam \vector_out_r_1[41] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \vector_out_r_1[42]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_r_reg_3_3[5]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[5])
);
defparam \vector_out_r_1[42] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \mat_i_reg_3_2_RNI5PHC1[2]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_i_reg_3_2[2]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[14])
);
defparam \mat_i_reg_3_2_RNI5PHC1[2] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \vector_out_r_1[45]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_r_reg_3_3[2]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[2])
);
defparam \vector_out_r_1[45] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \mat_i_reg_3_2_RNIBVHC1[8]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_i_reg_3_2[8]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[20])
);
defparam \mat_i_reg_3_2_RNIBVHC1[8] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \mat_i_reg_3_2_RNIAUHC1[7]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_i_reg_3_2[7]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[19])
);
defparam \mat_i_reg_3_2_RNIAUHC1[7] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \mat_i_reg_3_2_RNI9THC1[6]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_i_reg_3_2[6]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[18])
);
defparam \mat_i_reg_3_2_RNI9THC1[6] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \mat_i_reg_3_2_RNI8SHC1[5]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_i_reg_3_2[5]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[17])
);
defparam \mat_i_reg_3_2_RNI8SHC1[5] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \mat_i_reg_3_2_RNI7RHC1[4]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_i_reg_3_2[4]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[16])
);
defparam \mat_i_reg_3_2_RNI7RHC1[4] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \mat_i_reg_3_2_RNI6QHC1[3]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_i_reg_3_2[3]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[15])
);
defparam \mat_i_reg_3_2_RNI6QHC1[3] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \mat_i_reg_3_2_RNI4OHC1[1]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_i_reg_3_2[1]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[13])
);
defparam \mat_i_reg_3_2_RNI4OHC1[1] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \mat_i_reg_3_2_RNI3NHC1[0]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_i_reg_3_2[0]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_i[12])
);
defparam \mat_i_reg_3_2_RNI3NHC1[0] .INIT=64'hF000000080808080;
// @19:65
  LUT6 \vector_out_r_1[36]  (
	.I0(col_sel_R[0]),
	.I1(col_sel_R[1]),
	.I2(mat_r_reg_3_3[11]),
	.I3(col_sel_R_int[0]),
	.I4(col_sel_R_int[1]),
	.I5(wr_en_AQ_sel[0]),
	.O(out_R_r[11])
);
defparam \vector_out_r_1[36] .INIT=64'hF000000080808080;
// @19:66
  LUT5 \vector_out_i_1_3[9]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_i_reg_1_0[2]),
	.I3(mat_i_reg_2_0[2]),
	.I4(mat_i_reg_3_0[2]),
	.O(out_R_i[38])
);
defparam \vector_out_i_1_3[9] .INIT=32'hECA86420;
// @19:66
  LUT5 \vector_out_i_1_3[10]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_i_reg_1_0[1]),
	.I3(mat_i_reg_2_0[1]),
	.I4(mat_i_reg_3_0[1]),
	.O(out_R_i[37])
);
defparam \vector_out_i_1_3[10] .INIT=32'hECA86420;
// @19:66
  LUT5 \vector_out_i_1_3[7]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_i_reg_1_0[4]),
	.I3(mat_i_reg_2_0[4]),
	.I4(mat_i_reg_3_0[4]),
	.O(out_R_i[40])
);
defparam \vector_out_i_1_3[7] .INIT=32'hECA86420;
// @19:66
  LUT5 \vector_out_i_1_3[8]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_i_reg_1_0[3]),
	.I3(mat_i_reg_2_0[3]),
	.I4(mat_i_reg_3_0[3]),
	.O(out_R_i[39])
);
defparam \vector_out_i_1_3[8] .INIT=32'hECA86420;
// @19:66
  LUT5 \vector_out_i_1_3[5]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_i_reg_1_0[6]),
	.I3(mat_i_reg_2_0[6]),
	.I4(mat_i_reg_3_0[6]),
	.O(out_R_i[42])
);
defparam \vector_out_i_1_3[5] .INIT=32'hECA86420;
// @19:66
  LUT5 \vector_out_i_1_3[6]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_i_reg_1_0[5]),
	.I3(mat_i_reg_2_0[5]),
	.I4(mat_i_reg_3_0[5]),
	.O(out_R_i[41])
);
defparam \vector_out_i_1_3[6] .INIT=32'hECA86420;
// @19:66
  LUT5 \vector_out_i_1_3[3]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_i_reg_1_0[8]),
	.I3(mat_i_reg_2_0[8]),
	.I4(mat_i_reg_3_0[8]),
	.O(out_R_i[44])
);
defparam \vector_out_i_1_3[3] .INIT=32'hECA86420;
// @19:66
  LUT5 \vector_out_i_1_3[4]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_i_reg_1_0[7]),
	.I3(mat_i_reg_2_0[7]),
	.I4(mat_i_reg_3_0[7]),
	.O(out_R_i[43])
);
defparam \vector_out_i_1_3[4] .INIT=32'hECA86420;
// @19:66
  LUT5 \vector_out_i_1_3[1]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_i_reg_1_0[10]),
	.I3(mat_i_reg_2_0[10]),
	.I4(mat_i_reg_3_0[10]),
	.O(out_R_i[46])
);
defparam \vector_out_i_1_3[1] .INIT=32'hECA86420;
// @19:66
  LUT5 \vector_out_i_1_3[2]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_i_reg_1_0[9]),
	.I3(mat_i_reg_2_0[9]),
	.I4(mat_i_reg_3_0[9]),
	.O(out_R_i[45])
);
defparam \vector_out_i_1_3[2] .INIT=32'hECA86420;
// @19:66
  LUT5 \vector_out_i_1_3[0]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_i_reg_1_0[11]),
	.I3(mat_i_reg_2_0[11]),
	.I4(mat_i_reg_3_0[11]),
	.O(out_R_i[47])
);
defparam \vector_out_i_1_3[0] .INIT=32'hECA86420;
// @19:65
  LUT5 \vector_out_r_1_3[12]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_r_reg_1_1[11]),
	.I3(mat_r_reg_2_1[11]),
	.I4(mat_r_reg_3_1[11]),
	.O(out_R_r[35])
);
defparam \vector_out_r_1_3[12] .INIT=32'hECA86420;
// @19:65
  LUT5 \vector_out_r_1_3[15]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_r_reg_1_1[8]),
	.I3(mat_r_reg_2_1[8]),
	.I4(mat_r_reg_3_1[8]),
	.O(out_R_r[32])
);
defparam \vector_out_r_1_3[15] .INIT=32'hECA86420;
// @19:65
  LUT5 \vector_out_r_1_3[14]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_r_reg_1_1[9]),
	.I3(mat_r_reg_2_1[9]),
	.I4(mat_r_reg_3_1[9]),
	.O(out_R_r[33])
);
defparam \vector_out_r_1_3[14] .INIT=32'hECA86420;
// @19:65
  LUT5 \vector_out_r_1_3[13]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_r_reg_1_1[10]),
	.I3(mat_r_reg_2_1[10]),
	.I4(mat_r_reg_3_1[10]),
	.O(out_R_r[34])
);
defparam \vector_out_r_1_3[13] .INIT=32'hECA86420;
// @19:65
  LUT5 \vector_out_r_1_3[18]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_r_reg_1_1[5]),
	.I3(mat_r_reg_2_1[5]),
	.I4(mat_r_reg_3_1[5]),
	.O(out_R_r[29])
);
defparam \vector_out_r_1_3[18] .INIT=32'hECA86420;
// @19:65
  LUT5 \vector_out_r_1_3[17]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_r_reg_1_1[6]),
	.I3(mat_r_reg_2_1[6]),
	.I4(mat_r_reg_3_1[6]),
	.O(out_R_r[30])
);
defparam \vector_out_r_1_3[17] .INIT=32'hECA86420;
// @19:65
  LUT5 \vector_out_r_1_3[16]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_r_reg_1_1[7]),
	.I3(mat_r_reg_2_1[7]),
	.I4(mat_r_reg_3_1[7]),
	.O(out_R_r[31])
);
defparam \vector_out_r_1_3[16] .INIT=32'hECA86420;
// @19:65
  LUT5 \vector_out_r_1_3[21]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_r_reg_1_1[2]),
	.I3(mat_r_reg_2_1[2]),
	.I4(mat_r_reg_3_1[2]),
	.O(out_R_r[26])
);
defparam \vector_out_r_1_3[21] .INIT=32'hECA86420;
// @19:65
  LUT5 \vector_out_r_1_3[20]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_r_reg_1_1[3]),
	.I3(mat_r_reg_2_1[3]),
	.I4(mat_r_reg_3_1[3]),
	.O(out_R_r[27])
);
defparam \vector_out_r_1_3[20] .INIT=32'hECA86420;
// @19:65
  LUT5 \vector_out_r_1_3[19]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_r_reg_1_1[4]),
	.I3(mat_r_reg_2_1[4]),
	.I4(mat_r_reg_3_1[4]),
	.O(out_R_r[28])
);
defparam \vector_out_r_1_3[19] .INIT=32'hECA86420;
// @19:66
  LUT5 \vector_out_i_1_3[11]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_i_reg_1_0[0]),
	.I3(mat_i_reg_2_0[0]),
	.I4(mat_i_reg_3_0[0]),
	.O(out_R_i[36])
);
defparam \vector_out_i_1_3[11] .INIT=32'hECA86420;
// @19:65
  LUT5 \vector_out_r_1_3[23]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_r_reg_1_1[0]),
	.I3(mat_r_reg_2_1[0]),
	.I4(mat_r_reg_3_1[0]),
	.O(out_R_r[24])
);
defparam \vector_out_r_1_3[23] .INIT=32'hECA86420;
// @19:65
  LUT5 \vector_out_r_1_3[22]  (
	.I0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.I2(mat_r_reg_1_1[1]),
	.I3(mat_r_reg_2_1[1]),
	.I4(mat_r_reg_3_1[1]),
	.O(out_R_r[25])
);
defparam \vector_out_r_1_3[22] .INIT=32'hECA86420;
// @19:70
  RAM32X1S mat_r_reg_0_mat_r_reg_0_11_0 (
	.O(out_R_r[47]),
	.A0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.A1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.A2(GND),
	.A3(GND),
	.A4(GND),
	.D(single_in_r_R_mux[11]),
	.WCLK(clk),
	.WE(mat_i_reg_2_1_1_sqmuxa_lut6_2_O5)
);
// @19:70
  RAM32X1S mat_r_reg_0_mat_r_reg_0_10_0 (
	.O(out_R_r[46]),
	.A0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.A1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.A2(GND),
	.A3(GND),
	.A4(GND),
	.D(N_389_i),
	.WCLK(clk),
	.WE(mat_i_reg_2_1_1_sqmuxa_lut6_2_O5)
);
// @19:70
  RAM32X1S mat_r_reg_0_mat_r_reg_0_9_0 (
	.O(out_R_r[45]),
	.A0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.A1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.A2(GND),
	.A3(GND),
	.A4(GND),
	.D(N_388_i),
	.WCLK(clk),
	.WE(mat_i_reg_2_1_1_sqmuxa_lut6_2_O5)
);
// @19:70
  RAM32X1S mat_r_reg_0_mat_r_reg_0_8_0 (
	.O(out_R_r[44]),
	.A0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.A1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.A2(GND),
	.A3(GND),
	.A4(GND),
	.D(N_387_i),
	.WCLK(clk),
	.WE(mat_i_reg_2_1_1_sqmuxa_lut6_2_O5)
);
// @19:70
  RAM32X1S mat_r_reg_0_mat_r_reg_0_7_0 (
	.O(out_R_r[43]),
	.A0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.A1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.A2(GND),
	.A3(GND),
	.A4(GND),
	.D(N_386_i),
	.WCLK(clk),
	.WE(mat_i_reg_2_1_1_sqmuxa_lut6_2_O5)
);
// @19:70
  RAM32X1S mat_r_reg_0_mat_r_reg_0_6_0 (
	.O(out_R_r[42]),
	.A0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.A1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.A2(GND),
	.A3(GND),
	.A4(GND),
	.D(N_385_i),
	.WCLK(clk),
	.WE(mat_i_reg_2_1_1_sqmuxa_lut6_2_O5)
);
// @19:70
  RAM32X1S mat_r_reg_0_mat_r_reg_0_5_0 (
	.O(out_R_r[41]),
	.A0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.A1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.A2(GND),
	.A3(GND),
	.A4(GND),
	.D(N_384_i),
	.WCLK(clk),
	.WE(mat_i_reg_2_1_1_sqmuxa_lut6_2_O5)
);
// @19:70
  RAM32X1S mat_r_reg_0_mat_r_reg_0_4_0 (
	.O(out_R_r[40]),
	.A0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.A1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.A2(GND),
	.A3(GND),
	.A4(GND),
	.D(N_383_i),
	.WCLK(clk),
	.WE(mat_i_reg_2_1_1_sqmuxa_lut6_2_O5)
);
// @19:70
  RAM32X1S mat_r_reg_0_mat_r_reg_0_3_0 (
	.O(out_R_r[39]),
	.A0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.A1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.A2(GND),
	.A3(GND),
	.A4(GND),
	.D(N_34_i),
	.WCLK(clk),
	.WE(mat_i_reg_2_1_1_sqmuxa_lut6_2_O5)
);
// @19:70
  RAM32X1S mat_r_reg_0_mat_r_reg_0_2_0 (
	.O(out_R_r[38]),
	.A0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.A1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.A2(GND),
	.A3(GND),
	.A4(GND),
	.D(N_32_i),
	.WCLK(clk),
	.WE(mat_i_reg_2_1_1_sqmuxa_lut6_2_O5)
);
// @19:70
  RAM32X1S mat_r_reg_0_mat_r_reg_0_1_0 (
	.O(out_R_r[37]),
	.A0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.A1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.A2(GND),
	.A3(GND),
	.A4(GND),
	.D(N_30_i),
	.WCLK(clk),
	.WE(mat_i_reg_2_1_1_sqmuxa_lut6_2_O5)
);
// @19:70
  RAM32X1S mat_r_reg_0_mat_r_reg_0_0_0 (
	.O(out_R_r[36]),
	.A0(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.A1(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.A2(GND),
	.A3(GND),
	.A4(GND),
	.D(N_28_i),
	.WCLK(clk),
	.WE(mat_i_reg_2_1_1_sqmuxa_lut6_2_O5)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
// @19:70
  LUT5 mat_i_reg_2_1_1_sqmuxa_lut6_2_o6 (
	.I0(row_sel_R[0]),
	.I1(row_sel_R[1]),
	.I2(wr_en_R),
	.I3(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I4(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.O(mat_i_reg_2_1_1_sqmuxa)
);
defparam mat_i_reg_2_1_1_sqmuxa_lut6_2_o6.INIT=32'h00200000;
// @19:70
  LUT3 mat_i_reg_2_1_1_sqmuxa_lut6_2_o5 (
	.I0(row_sel_R[0]),
	.I1(row_sel_R[1]),
	.I2(wr_en_R),
	.O(mat_i_reg_2_1_1_sqmuxa_lut6_2_O5)
);
defparam mat_i_reg_2_1_1_sqmuxa_lut6_2_o5.INIT=8'h10;
// @19:70
  LUT5 mat_r_reg_2_2_1_sqmuxa_lut6_2_o6 (
	.I0(row_sel_R[0]),
	.I1(row_sel_R[1]),
	.I2(wr_en_R),
	.I3(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I4(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.O(mat_r_reg_2_2_1_sqmuxa)
);
defparam mat_r_reg_2_2_1_sqmuxa_lut6_2_o6.INIT=32'h00400000;
// @19:70
  LUT5 mat_r_reg_2_2_1_sqmuxa_lut6_2_o5 (
	.I0(row_sel_R[0]),
	.I1(row_sel_R[1]),
	.I2(wr_en_R),
	.I3(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I4(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.O(mat_r_reg_3_3_1_sqmuxa)
);
defparam mat_r_reg_2_2_1_sqmuxa_lut6_2_o5.INIT=32'h80000000;
// @19:70
  LUT5 mat_i_reg_2_0_1_sqmuxa_lut6_2_o6 (
	.I0(row_sel_R[0]),
	.I1(row_sel_R[1]),
	.I2(wr_en_R),
	.I3(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I4(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.O(mat_i_reg_2_0_1_sqmuxa)
);
defparam mat_i_reg_2_0_1_sqmuxa_lut6_2_o6.INIT=32'h00100000;
// @19:70
  LUT5 mat_i_reg_2_0_1_sqmuxa_lut6_2_o5 (
	.I0(row_sel_R[0]),
	.I1(row_sel_R[1]),
	.I2(wr_en_R),
	.I3(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I4(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.O(mat_i_reg_3_2_1_sqmuxa)
);
defparam mat_i_reg_2_0_1_sqmuxa_lut6_2_o5.INIT=32'h40000000;
// @19:70
  LUT5 mat_r_reg_1_1_1_sqmuxa_lut6_2_o6 (
	.I0(row_sel_R[0]),
	.I1(row_sel_R[1]),
	.I2(wr_en_R),
	.I3(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I4(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.O(mat_r_reg_1_1_1_sqmuxa)
);
defparam mat_r_reg_1_1_1_sqmuxa_lut6_2_o6.INIT=32'h00002000;
// @19:70
  LUT5 mat_r_reg_1_1_1_sqmuxa_lut6_2_o5 (
	.I0(row_sel_R[0]),
	.I1(row_sel_R[1]),
	.I2(wr_en_R),
	.I3(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I4(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.O(mat_i_reg_3_1_1_sqmuxa)
);
defparam mat_r_reg_1_1_1_sqmuxa_lut6_2_o5.INIT=32'h20000000;
// @19:70
  LUT5 mat_i_reg_1_0_1_sqmuxa_lut6_2_o6 (
	.I0(row_sel_R[0]),
	.I1(row_sel_R[1]),
	.I2(wr_en_R),
	.I3(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I4(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.O(mat_i_reg_1_0_1_sqmuxa)
);
defparam mat_i_reg_1_0_1_sqmuxa_lut6_2_o6.INIT=32'h00001000;
// @19:70
  LUT5 mat_i_reg_1_0_1_sqmuxa_lut6_2_o5 (
	.I0(row_sel_R[0]),
	.I1(row_sel_R[1]),
	.I2(wr_en_R),
	.I3(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.I4(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.O(mat_i_reg_3_0_1_sqmuxa)
);
defparam mat_i_reg_1_0_1_sqmuxa_lut6_2_o5.INIT=32'h10000000;
endmodule /* r_mat_regs */

module mult_pipe (
  mult1_out,
  in_a_r_reg,
  in_b_r_reg,
  clk
)
;
output [23:23] mult1_out ;
input [11:0] in_a_r_reg ;
input [11:0] in_b_r_reg ;
input clk ;
wire clk ;
wire [29:0] ACOUT_33;
wire [17:0] BCOUT_33;
wire [3:0] CARRYOUT_33;
wire [22:0] pre_out_P_0;
wire [47:24] P_uc_33;
wire [47:0] PCOUT_33;
wire CARRYCASCOUT_33 ;
wire MULTSIGNOUT_33 ;
wire OVERFLOW_33 ;
wire PATTERNBDETECT_33 ;
wire PATTERNDETECT_33 ;
wire UNDERFLOW_33 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_33[29:0]),
	.BCOUT(BCOUT_33[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_33),
	.CARRYOUT(CARRYOUT_33[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_33),
	.OVERFLOW(OVERFLOW_33),
	.P({P_uc_33[47:24], mult1_out[23], pre_out_P_0[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_33),
	.PATTERNDETECT(PATTERNDETECT_33),
	.PCOUT(PCOUT_33[47:0]),
	.UNDERFLOW(UNDERFLOW_33),
	.A({in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(GND),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(VCC),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=0;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=0;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=0;
defparam \pre_out[23:0] .BREG=0;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MREG=1;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe */

module mult_pipe_1 (
  mult2_out_23,
  mult2_out_0,
  P_uc_34_0,
  in_a_i_reg,
  in_b_i_reg,
  clk
)
;
output mult2_out_23 ;
output [23:0] mult2_out_0 ;
output [47:24] P_uc_34_0 ;
input [11:0] in_a_i_reg ;
input [11:0] in_b_i_reg ;
input clk ;
wire mult2_out_23 ;
wire clk ;
wire [29:0] ACOUT_34;
wire [17:0] BCOUT_34;
wire [3:0] CARRYOUT_34;
wire [22:0] mult2_out;
wire [47:24] P_uc_34;
wire CARRYCASCOUT_34 ;
wire MULTSIGNOUT_34 ;
wire OVERFLOW_34 ;
wire PATTERNBDETECT_34 ;
wire PATTERNDETECT_34 ;
wire UNDERFLOW_34 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_34[29:0]),
	.BCOUT(BCOUT_34[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_34),
	.CARRYOUT(CARRYOUT_34[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_34),
	.OVERFLOW(OVERFLOW_34),
	.P({P_uc_34[47:24], mult2_out_23, mult2_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_34),
	.PATTERNDETECT(PATTERNDETECT_34),
	.PCOUT({P_uc_34_0[47:24], mult2_out_0[23:0]}),
	.UNDERFLOW(UNDERFLOW_34),
	.A({in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(GND),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(VCC),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=0;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=0;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=0;
defparam \pre_out[23:0] .BREG=0;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=1;
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_1 */

module mult_pipe_2 (
  mult3_out_23,
  mult3_out_0,
  P_uc_35_0,
  in_a_r_reg,
  in_b_i_reg,
  clk
)
;
output mult3_out_23 ;
output [23:0] mult3_out_0 ;
output [47:24] P_uc_35_0 ;
input [11:0] in_a_r_reg ;
input [11:0] in_b_i_reg ;
input clk ;
wire mult3_out_23 ;
wire clk ;
wire [29:0] ACOUT_35;
wire [17:0] BCOUT_35;
wire [3:0] CARRYOUT_35;
wire [22:0] mult3_out;
wire [47:24] P_uc_35;
wire CARRYCASCOUT_35 ;
wire MULTSIGNOUT_35 ;
wire OVERFLOW_35 ;
wire PATTERNBDETECT_35 ;
wire PATTERNDETECT_35 ;
wire UNDERFLOW_35 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_35[29:0]),
	.BCOUT(BCOUT_35[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_35),
	.CARRYOUT(CARRYOUT_35[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_35),
	.OVERFLOW(OVERFLOW_35),
	.P({P_uc_35[47:24], mult3_out_23, mult3_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_35),
	.PATTERNDETECT(PATTERNDETECT_35),
	.PCOUT({P_uc_35_0[47:24], mult3_out_0[23:0]}),
	.UNDERFLOW(UNDERFLOW_35),
	.A({in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(GND),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(VCC),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=0;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=0;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=0;
defparam \pre_out[23:0] .BREG=0;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=1;
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_2 */

module mult_pipe_3 (
  mult4_out,
  in_a_i_reg,
  in_b_r_reg,
  clk
)
;
output [23:23] mult4_out ;
input [11:0] in_a_i_reg ;
input [11:0] in_b_r_reg ;
input clk ;
wire clk ;
wire [29:0] ACOUT_36;
wire [17:0] BCOUT_36;
wire [3:0] CARRYOUT_36;
wire [22:0] pre_out_P;
wire [47:24] P_uc_36;
wire [47:0] PCOUT_36;
wire CARRYCASCOUT_36 ;
wire MULTSIGNOUT_36 ;
wire OVERFLOW_36 ;
wire PATTERNBDETECT_36 ;
wire PATTERNDETECT_36 ;
wire UNDERFLOW_36 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_36[29:0]),
	.BCOUT(BCOUT_36[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_36),
	.CARRYOUT(CARRYOUT_36[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_36),
	.OVERFLOW(OVERFLOW_36),
	.P({P_uc_36[47:24], mult4_out[23], pre_out_P[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_36),
	.PATTERNDETECT(PATTERNDETECT_36),
	.PCOUT(PCOUT_36[47:0]),
	.UNDERFLOW(UNDERFLOW_36),
	.A({in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(GND),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(VCC),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=0;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=0;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=0;
defparam \pre_out[23:0] .BREG=0;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MREG=1;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_3 */

module add_subZ1 (
  pre_out_r,
  in_a_r_reg,
  in_b_r_reg,
  mult2_out_0,
  P_uc_34_0,
  PATTERNDETECT_7,
  clk
)
;
output [23:7] pre_out_r ;
input [11:0] in_a_r_reg ;
input [11:0] in_b_r_reg ;
input [23:0] mult2_out_0 ;
input [47:24] P_uc_34_0 ;
output PATTERNDETECT_7 ;
input clk ;
wire PATTERNDETECT_7 ;
wire clk ;
wire [29:0] ACOUT_7;
wire [17:0] BCOUT_7;
wire [3:0] CARRYOUT_7;
wire [6:0] un2_pre_out;
wire [47:24] P_uc_7;
wire [47:0] PCOUT_7;
wire CARRYCASCOUT_7 ;
wire MULTSIGNOUT_7 ;
wire OVERFLOW_7 ;
wire PATTERNBDETECT_7 ;
wire UNDERFLOW_7 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \un2_pre_out[23:0]  (
	.ACOUT(ACOUT_7[29:0]),
	.BCOUT(BCOUT_7[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_7),
	.CARRYOUT(CARRYOUT_7[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_7),
	.OVERFLOW(OVERFLOW_7),
	.P({P_uc_7[47:24], pre_out_r[23:7], un2_pre_out[6:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_7),
	.PATTERNDETECT(PATTERNDETECT_7),
	.PCOUT(PCOUT_7[47:0]),
	.UNDERFLOW(UNDERFLOW_7),
	.A({in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11], in_a_r_reg[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(GND),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(VCC),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, VCC, GND, VCC, GND, VCC}),
	.PCIN({P_uc_34_0[47:24], mult2_out_0[23:0]}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un2_pre_out[23:0] .ACASCREG=0;
defparam \un2_pre_out[23:0] .ADREG=0;
defparam \un2_pre_out[23:0] .ALUMODEREG=0;
defparam \un2_pre_out[23:0] .AREG=0;
defparam \un2_pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \un2_pre_out[23:0] .A_INPUT="DIRECT";
defparam \un2_pre_out[23:0] .BCASCREG=0;
defparam \un2_pre_out[23:0] .BREG=0;
defparam \un2_pre_out[23:0] .B_INPUT="DIRECT";
defparam \un2_pre_out[23:0] .CARRYINREG=0;
defparam \un2_pre_out[23:0] .CARRYINSELREG=0;
defparam \un2_pre_out[23:0] .CREG=1;
defparam \un2_pre_out[23:0] .DREG=0;
defparam \un2_pre_out[23:0] .INMODEREG=0;
defparam \un2_pre_out[23:0] .MASK=48'b111111111111111111111111100001111111111111111111;
defparam \un2_pre_out[23:0] .MREG=1;
defparam \un2_pre_out[23:0] .OPMODEREG=0;
defparam \un2_pre_out[23:0] .PATTERN=48'b111111111111111111111111100001111111111111111111;
defparam \un2_pre_out[23:0] .PREG=0;
defparam \un2_pre_out[23:0] .SEL_MASK="MASK";
defparam \un2_pre_out[23:0] .USE_DPORT="FALSE";
defparam \un2_pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \un2_pre_out[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \un2_pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* add_subZ1 */

module add_subZ2 (
  pre_out_i,
  in_a_i_reg,
  in_b_r_reg,
  mult3_out_0,
  P_uc_35_0,
  PATTERNDETECT_8,
  clk
)
;
output [23:7] pre_out_i ;
input [11:0] in_a_i_reg ;
input [11:0] in_b_r_reg ;
input [23:0] mult3_out_0 ;
input [47:24] P_uc_35_0 ;
output PATTERNDETECT_8 ;
input clk ;
wire PATTERNDETECT_8 ;
wire clk ;
wire [29:0] ACOUT_8;
wire [17:0] BCOUT_8;
wire [3:0] CARRYOUT_8;
wire [6:0] output_Z;
wire [47:24] P_uc_8;
wire [47:0] PCOUT_8;
wire CARRYCASCOUT_8 ;
wire MULTSIGNOUT_8 ;
wire OVERFLOW_8 ;
wire PATTERNBDETECT_8 ;
wire UNDERFLOW_8 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \output[23:0]  (
	.ACOUT(ACOUT_8[29:0]),
	.BCOUT(BCOUT_8[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_8),
	.CARRYOUT(CARRYOUT_8[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_8),
	.OVERFLOW(OVERFLOW_8),
	.P({P_uc_8[47:24], pre_out_i[23:7], output_Z[6:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_8),
	.PATTERNDETECT(PATTERNDETECT_8),
	.PCOUT(PCOUT_8[47:0]),
	.UNDERFLOW(UNDERFLOW_8),
	.A({in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11], in_a_i_reg[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, VCC, VCC}),
	.B({in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11], in_b_r_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(GND),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(VCC),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, VCC, GND, VCC, GND, VCC}),
	.PCIN({P_uc_35_0[47:24], mult3_out_0[23:0]}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \output[23:0] .ACASCREG=0;
defparam \output[23:0] .ADREG=0;
defparam \output[23:0] .ALUMODEREG=0;
defparam \output[23:0] .AREG=0;
defparam \output[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \output[23:0] .A_INPUT="DIRECT";
defparam \output[23:0] .BCASCREG=0;
defparam \output[23:0] .BREG=0;
defparam \output[23:0] .B_INPUT="DIRECT";
defparam \output[23:0] .CARRYINREG=0;
defparam \output[23:0] .CARRYINSELREG=0;
defparam \output[23:0] .CREG=1;
defparam \output[23:0] .DREG=0;
defparam \output[23:0] .INMODEREG=0;
defparam \output[23:0] .MASK=48'b111111111111111111111111100001111111111111111111;
defparam \output[23:0] .MREG=1;
defparam \output[23:0] .OPMODEREG=0;
defparam \output[23:0] .PATTERN=48'b111111111111111111111111100001111111111111111111;
defparam \output[23:0] .PREG=0;
defparam \output[23:0] .SEL_MASK="MASK";
defparam \output[23:0] .USE_DPORT="FALSE";
defparam \output[23:0] .USE_MULT="MULTIPLY";
defparam \output[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \output[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* add_subZ2 */

module complex_mult_pipe_prod (
  mult_out_r,
  mult_out_i,
  in_a_r_reg,
  in_b_r_reg,
  in_a_i_reg,
  in_b_i_reg,
  clk
)
;
output [11:0] mult_out_r ;
output [11:0] mult_out_i ;
input [11:0] in_a_r_reg ;
input [11:0] in_b_r_reg ;
input [11:0] in_a_i_reg ;
input [11:0] in_b_i_reg ;
input clk ;
wire clk ;
wire [23:7] pre_out_i;
wire [23:7] pre_out_r;
wire [23:23] mult2_out;
wire [23:23] mult1_out;
wire [23:23] mult3_out;
wire [23:23] mult4_out;
wire [11:11] pos_out_r;
wire [11:11] pos_out_i;
wire [10:0] un7_rnd_out_r;
wire [10:0] pos_out_r_iv_i;
wire [10:0] un5_rnd_out_i;
wire [10:0] pos_out_i_iv_i;
wire [23:0] mult2_out_0;
wire [47:24] P_uc_34_0;
wire [23:0] mult3_out_0;
wire [47:24] P_uc_35_0;
wire un5_rnd_out_i_axb_1 ;
wire un5_rnd_out_i_axb_2 ;
wire un5_rnd_out_i_axb_3 ;
wire un5_rnd_out_i_axb_4 ;
wire un5_rnd_out_i_axb_5 ;
wire un5_rnd_out_i_axb_6 ;
wire un5_rnd_out_i_axb_7 ;
wire un5_rnd_out_i_axb_8 ;
wire un5_rnd_out_i_axb_9 ;
wire un5_rnd_out_i_axb_10 ;
wire un5_rnd_out_i_axb_11 ;
wire un7_rnd_out_r_axb_1 ;
wire un7_rnd_out_r_axb_2 ;
wire un7_rnd_out_r_axb_3 ;
wire un7_rnd_out_r_axb_4 ;
wire un7_rnd_out_r_axb_5 ;
wire un7_rnd_out_r_axb_6 ;
wire un7_rnd_out_r_axb_7 ;
wire un7_rnd_out_r_axb_8 ;
wire un7_rnd_out_r_axb_9 ;
wire un7_rnd_out_r_axb_10 ;
wire un7_rnd_out_r_axb_11 ;
wire un7_rnd_out_r_axb_12 ;
wire un5_rnd_out_i_axb_12 ;
wire un4_rnd_sat_out_i_3 ;
wire un5_rnd_sat_out_r_3 ;
wire un1_pos_out_r_3 ;
wire un1_pos_out_i_3 ;
wire PATTERNDETECT_7 ;
wire un7_rnd_out_r_s_12 ;
wire PATTERNDETECT_8 ;
wire un5_rnd_out_i_s_12 ;
wire un7_rnd_out_r_cry_11 ;
wire un7_rnd_out_r_cry_10 ;
wire GND ;
wire un7_rnd_out_r_cry_9 ;
wire un7_rnd_out_r_cry_8 ;
wire un7_rnd_out_r_cry_7 ;
wire un7_rnd_out_r_cry_6 ;
wire un7_rnd_out_r_cry_5 ;
wire un7_rnd_out_r_cry_4 ;
wire un7_rnd_out_r_cry_3 ;
wire un7_rnd_out_r_cry_2 ;
wire un7_rnd_out_r_cry_1 ;
wire un5_rnd_out_i_cry_11 ;
wire un5_rnd_out_i_cry_10 ;
wire un5_rnd_out_i_cry_9 ;
wire un5_rnd_out_i_cry_8 ;
wire un5_rnd_out_i_cry_7 ;
wire un5_rnd_out_i_cry_6 ;
wire un5_rnd_out_i_cry_5 ;
wire un5_rnd_out_i_cry_4 ;
wire un5_rnd_out_i_cry_3 ;
wire un5_rnd_out_i_cry_2 ;
wire un5_rnd_out_i_cry_1 ;
wire VCC ;
// @24:156
  LUT1 un5_rnd_out_i_axb_1_cZ (
	.I0(pre_out_i[8]),
	.O(un5_rnd_out_i_axb_1)
);
defparam un5_rnd_out_i_axb_1_cZ.INIT=2'h2;
// @24:156
  LUT1 un5_rnd_out_i_axb_2_cZ (
	.I0(pre_out_i[9]),
	.O(un5_rnd_out_i_axb_2)
);
defparam un5_rnd_out_i_axb_2_cZ.INIT=2'h2;
// @24:156
  LUT1 un5_rnd_out_i_axb_3_cZ (
	.I0(pre_out_i[10]),
	.O(un5_rnd_out_i_axb_3)
);
defparam un5_rnd_out_i_axb_3_cZ.INIT=2'h2;
// @24:156
  LUT1 un5_rnd_out_i_axb_4_cZ (
	.I0(pre_out_i[11]),
	.O(un5_rnd_out_i_axb_4)
);
defparam un5_rnd_out_i_axb_4_cZ.INIT=2'h2;
// @24:156
  LUT1 un5_rnd_out_i_axb_5_cZ (
	.I0(pre_out_i[12]),
	.O(un5_rnd_out_i_axb_5)
);
defparam un5_rnd_out_i_axb_5_cZ.INIT=2'h2;
// @24:156
  LUT1 un5_rnd_out_i_axb_6_cZ (
	.I0(pre_out_i[13]),
	.O(un5_rnd_out_i_axb_6)
);
defparam un5_rnd_out_i_axb_6_cZ.INIT=2'h2;
// @24:156
  LUT1 un5_rnd_out_i_axb_7_cZ (
	.I0(pre_out_i[14]),
	.O(un5_rnd_out_i_axb_7)
);
defparam un5_rnd_out_i_axb_7_cZ.INIT=2'h2;
// @24:156
  LUT1 un5_rnd_out_i_axb_8_cZ (
	.I0(pre_out_i[15]),
	.O(un5_rnd_out_i_axb_8)
);
defparam un5_rnd_out_i_axb_8_cZ.INIT=2'h2;
// @24:156
  LUT1 un5_rnd_out_i_axb_9_cZ (
	.I0(pre_out_i[16]),
	.O(un5_rnd_out_i_axb_9)
);
defparam un5_rnd_out_i_axb_9_cZ.INIT=2'h2;
// @24:156
  LUT1 un5_rnd_out_i_axb_10_cZ (
	.I0(pre_out_i[17]),
	.O(un5_rnd_out_i_axb_10)
);
defparam un5_rnd_out_i_axb_10_cZ.INIT=2'h2;
// @24:156
  LUT1 un5_rnd_out_i_axb_11_cZ (
	.I0(pre_out_i[18]),
	.O(un5_rnd_out_i_axb_11)
);
defparam un5_rnd_out_i_axb_11_cZ.INIT=2'h2;
// @24:142
  LUT1 un7_rnd_out_r_axb_1_cZ (
	.I0(pre_out_r[8]),
	.O(un7_rnd_out_r_axb_1)
);
defparam un7_rnd_out_r_axb_1_cZ.INIT=2'h2;
// @24:142
  LUT1 un7_rnd_out_r_axb_2_cZ (
	.I0(pre_out_r[9]),
	.O(un7_rnd_out_r_axb_2)
);
defparam un7_rnd_out_r_axb_2_cZ.INIT=2'h2;
// @24:142
  LUT1 un7_rnd_out_r_axb_3_cZ (
	.I0(pre_out_r[10]),
	.O(un7_rnd_out_r_axb_3)
);
defparam un7_rnd_out_r_axb_3_cZ.INIT=2'h2;
// @24:142
  LUT1 un7_rnd_out_r_axb_4_cZ (
	.I0(pre_out_r[11]),
	.O(un7_rnd_out_r_axb_4)
);
defparam un7_rnd_out_r_axb_4_cZ.INIT=2'h2;
// @24:142
  LUT1 un7_rnd_out_r_axb_5_cZ (
	.I0(pre_out_r[12]),
	.O(un7_rnd_out_r_axb_5)
);
defparam un7_rnd_out_r_axb_5_cZ.INIT=2'h2;
// @24:142
  LUT1 un7_rnd_out_r_axb_6_cZ (
	.I0(pre_out_r[13]),
	.O(un7_rnd_out_r_axb_6)
);
defparam un7_rnd_out_r_axb_6_cZ.INIT=2'h2;
// @24:142
  LUT1 un7_rnd_out_r_axb_7_cZ (
	.I0(pre_out_r[14]),
	.O(un7_rnd_out_r_axb_7)
);
defparam un7_rnd_out_r_axb_7_cZ.INIT=2'h2;
// @24:142
  LUT1 un7_rnd_out_r_axb_8_cZ (
	.I0(pre_out_r[15]),
	.O(un7_rnd_out_r_axb_8)
);
defparam un7_rnd_out_r_axb_8_cZ.INIT=2'h2;
// @24:142
  LUT1 un7_rnd_out_r_axb_9_cZ (
	.I0(pre_out_r[16]),
	.O(un7_rnd_out_r_axb_9)
);
defparam un7_rnd_out_r_axb_9_cZ.INIT=2'h2;
// @24:142
  LUT1 un7_rnd_out_r_axb_10_cZ (
	.I0(pre_out_r[17]),
	.O(un7_rnd_out_r_axb_10)
);
defparam un7_rnd_out_r_axb_10_cZ.INIT=2'h2;
// @24:142
  LUT1 un7_rnd_out_r_axb_11_cZ (
	.I0(pre_out_r[18]),
	.O(un7_rnd_out_r_axb_11)
);
defparam un7_rnd_out_r_axb_11_cZ.INIT=2'h2;
// @24:142
  LUT1 un7_rnd_out_r_axb_12_cZ (
	.I0(pre_out_r[19]),
	.O(un7_rnd_out_r_axb_12)
);
defparam un7_rnd_out_r_axb_12_cZ.INIT=2'h2;
// @24:156
  LUT1 un5_rnd_out_i_axb_12_cZ (
	.I0(pre_out_i[19]),
	.O(un5_rnd_out_i_axb_12)
);
defparam un5_rnd_out_i_axb_12_cZ.INIT=2'h2;
// @24:158
  LUT4 un4_rnd_sat_out_i_3_cZ (
	.I0(pre_out_i[20]),
	.I1(pre_out_i[21]),
	.I2(pre_out_i[22]),
	.I3(pre_out_i[19]),
	.O(un4_rnd_sat_out_i_3)
);
defparam un4_rnd_sat_out_i_3_cZ.INIT=16'h8000;
// @24:146
  LUT4 un5_rnd_sat_out_r_3_cZ (
	.I0(pre_out_r[20]),
	.I1(pre_out_r[21]),
	.I2(pre_out_r[22]),
	.I3(pre_out_r[19]),
	.O(un5_rnd_sat_out_r_3)
);
defparam un5_rnd_sat_out_r_3_cZ.INIT=16'h8000;
// @24:174
  LUT3 un1_pos_out_r (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.O(un1_pos_out_r_3)
);
defparam un1_pos_out_r.INIT=8'h08;
// @24:179
  LUT3 un1_pos_out_i (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.O(un1_pos_out_i_3)
);
defparam un1_pos_out_i.INIT=8'h02;
// @24:174
  LUT6_L \pos_out_r_iv[11]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_7),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un7_rnd_out_r_s_12),
	.LO(pos_out_r[11])
);
defparam \pos_out_r_iv[11] .INIT=64'hE7E0E7E00000E0E0;
// @24:179
  LUT6_L \pos_out_i_iv[11]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_8),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un5_rnd_out_i_s_12),
	.LO(pos_out_i[11])
);
defparam \pos_out_i_iv[11] .INIT=64'hBDB0BDB00000B0B0;
// @24:185
  LUT6_L \out_r_RNO[0]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(un7_rnd_out_r[0]),
	.I4(PATTERNDETECT_7),
	.I5(un5_rnd_sat_out_r_3),
	.LO(pos_out_r_iv_i[0])
);
defparam \out_r_RNO[0] .INIT=64'hFF18FF1F1F181F1F;
// @24:185
  LUT6_L \out_r_RNO[1]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_7),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un7_rnd_out_r[1]),
	.LO(pos_out_r_iv_i[1])
);
defparam \out_r_RNO[1] .INIT=64'hFFFF1F1F181F181F;
// @24:185
  LUT6_L \out_r_RNO[2]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_7),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un7_rnd_out_r[2]),
	.LO(pos_out_r_iv_i[2])
);
defparam \out_r_RNO[2] .INIT=64'hFFFF1F1F181F181F;
// @24:185
  LUT6_L \out_r_RNO[3]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_7),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un7_rnd_out_r[3]),
	.LO(pos_out_r_iv_i[3])
);
defparam \out_r_RNO[3] .INIT=64'hFFFF1F1F181F181F;
// @24:185
  LUT6_L \out_r_RNO[4]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_7),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un7_rnd_out_r[4]),
	.LO(pos_out_r_iv_i[4])
);
defparam \out_r_RNO[4] .INIT=64'hFFFF1F1F181F181F;
// @24:185
  LUT6_L \out_r_RNO[5]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_7),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un7_rnd_out_r[5]),
	.LO(pos_out_r_iv_i[5])
);
defparam \out_r_RNO[5] .INIT=64'hFFFF1F1F181F181F;
// @24:185
  LUT6_L \out_r_RNO[6]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_7),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un7_rnd_out_r[6]),
	.LO(pos_out_r_iv_i[6])
);
defparam \out_r_RNO[6] .INIT=64'hFFFF1F1F181F181F;
// @24:185
  LUT6_L \out_r_RNO[7]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_7),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un7_rnd_out_r[7]),
	.LO(pos_out_r_iv_i[7])
);
defparam \out_r_RNO[7] .INIT=64'hFFFF1F1F181F181F;
// @24:185
  LUT6_L \out_r_RNO[8]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_7),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un7_rnd_out_r[8]),
	.LO(pos_out_r_iv_i[8])
);
defparam \out_r_RNO[8] .INIT=64'hFFFF1F1F181F181F;
// @24:185
  LUT6_L \out_r_RNO[9]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_7),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un7_rnd_out_r[9]),
	.LO(pos_out_r_iv_i[9])
);
defparam \out_r_RNO[9] .INIT=64'hFFFF1F1F181F181F;
// @24:185
  LUT6_L \out_r_RNO[10]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_7),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un7_rnd_out_r[10]),
	.LO(pos_out_r_iv_i[10])
);
defparam \out_r_RNO[10] .INIT=64'hFFFF1F1F181F181F;
// @24:185
  LUT6_L \out_i_RNO[0]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(un5_rnd_out_i[0]),
	.I4(PATTERNDETECT_8),
	.I5(un4_rnd_sat_out_i_3),
	.LO(pos_out_i_iv_i[0])
);
defparam \out_i_RNO[0] .INIT=64'hFF42FF4F4F424F4F;
// @24:185
  LUT6_L \out_i_RNO[1]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_8),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un5_rnd_out_i[1]),
	.LO(pos_out_i_iv_i[1])
);
defparam \out_i_RNO[1] .INIT=64'hFFFF4F4F424F424F;
// @24:185
  LUT6_L \out_i_RNO[2]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_8),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un5_rnd_out_i[2]),
	.LO(pos_out_i_iv_i[2])
);
defparam \out_i_RNO[2] .INIT=64'hFFFF4F4F424F424F;
// @24:185
  LUT6_L \out_i_RNO[3]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_8),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un5_rnd_out_i[3]),
	.LO(pos_out_i_iv_i[3])
);
defparam \out_i_RNO[3] .INIT=64'hFFFF4F4F424F424F;
// @24:185
  LUT6_L \out_i_RNO[4]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_8),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un5_rnd_out_i[4]),
	.LO(pos_out_i_iv_i[4])
);
defparam \out_i_RNO[4] .INIT=64'hFFFF4F4F424F424F;
// @24:185
  LUT6_L \out_i_RNO[5]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_8),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un5_rnd_out_i[5]),
	.LO(pos_out_i_iv_i[5])
);
defparam \out_i_RNO[5] .INIT=64'hFFFF4F4F424F424F;
// @24:185
  LUT6_L \out_i_RNO[6]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_8),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un5_rnd_out_i[6]),
	.LO(pos_out_i_iv_i[6])
);
defparam \out_i_RNO[6] .INIT=64'hFFFF4F4F424F424F;
// @24:185
  LUT6_L \out_i_RNO[7]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_8),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un5_rnd_out_i[7]),
	.LO(pos_out_i_iv_i[7])
);
defparam \out_i_RNO[7] .INIT=64'hFFFF4F4F424F424F;
// @24:185
  LUT6_L \out_i_RNO[8]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_8),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un5_rnd_out_i[8]),
	.LO(pos_out_i_iv_i[8])
);
defparam \out_i_RNO[8] .INIT=64'hFFFF4F4F424F424F;
// @24:185
  LUT6_L \out_i_RNO[9]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_8),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un5_rnd_out_i[9]),
	.LO(pos_out_i_iv_i[9])
);
defparam \out_i_RNO[9] .INIT=64'hFFFF4F4F424F424F;
// @24:185
  LUT6_L \out_i_RNO[10]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_8),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un5_rnd_out_i[10]),
	.LO(pos_out_i_iv_i[10])
);
defparam \out_i_RNO[10] .INIT=64'hFFFF4F4F424F424F;
// @24:142
  XORCY un7_rnd_out_r_s_12_cZ (
	.LI(un7_rnd_out_r_axb_12),
	.CI(un7_rnd_out_r_cry_11),
	.O(un7_rnd_out_r_s_12)
);
// @24:142
  XORCY un7_rnd_out_r_s_11 (
	.LI(un7_rnd_out_r_axb_11),
	.CI(un7_rnd_out_r_cry_10),
	.O(un7_rnd_out_r[10])
);
// @24:142
  MUXCY_L un7_rnd_out_r_cry_11_cZ (
	.DI(GND),
	.CI(un7_rnd_out_r_cry_10),
	.S(un7_rnd_out_r_axb_11),
	.LO(un7_rnd_out_r_cry_11)
);
// @24:142
  XORCY un7_rnd_out_r_s_10 (
	.LI(un7_rnd_out_r_axb_10),
	.CI(un7_rnd_out_r_cry_9),
	.O(un7_rnd_out_r[9])
);
// @24:142
  MUXCY_L un7_rnd_out_r_cry_10_cZ (
	.DI(GND),
	.CI(un7_rnd_out_r_cry_9),
	.S(un7_rnd_out_r_axb_10),
	.LO(un7_rnd_out_r_cry_10)
);
// @24:142
  XORCY un7_rnd_out_r_s_9 (
	.LI(un7_rnd_out_r_axb_9),
	.CI(un7_rnd_out_r_cry_8),
	.O(un7_rnd_out_r[8])
);
// @24:142
  MUXCY_L un7_rnd_out_r_cry_9_cZ (
	.DI(GND),
	.CI(un7_rnd_out_r_cry_8),
	.S(un7_rnd_out_r_axb_9),
	.LO(un7_rnd_out_r_cry_9)
);
// @24:142
  XORCY un7_rnd_out_r_s_8 (
	.LI(un7_rnd_out_r_axb_8),
	.CI(un7_rnd_out_r_cry_7),
	.O(un7_rnd_out_r[7])
);
// @24:142
  MUXCY_L un7_rnd_out_r_cry_8_cZ (
	.DI(GND),
	.CI(un7_rnd_out_r_cry_7),
	.S(un7_rnd_out_r_axb_8),
	.LO(un7_rnd_out_r_cry_8)
);
// @24:142
  XORCY un7_rnd_out_r_s_7 (
	.LI(un7_rnd_out_r_axb_7),
	.CI(un7_rnd_out_r_cry_6),
	.O(un7_rnd_out_r[6])
);
// @24:142
  MUXCY_L un7_rnd_out_r_cry_7_cZ (
	.DI(GND),
	.CI(un7_rnd_out_r_cry_6),
	.S(un7_rnd_out_r_axb_7),
	.LO(un7_rnd_out_r_cry_7)
);
// @24:142
  XORCY un7_rnd_out_r_s_6 (
	.LI(un7_rnd_out_r_axb_6),
	.CI(un7_rnd_out_r_cry_5),
	.O(un7_rnd_out_r[5])
);
// @24:142
  MUXCY_L un7_rnd_out_r_cry_6_cZ (
	.DI(GND),
	.CI(un7_rnd_out_r_cry_5),
	.S(un7_rnd_out_r_axb_6),
	.LO(un7_rnd_out_r_cry_6)
);
// @24:142
  XORCY un7_rnd_out_r_s_5 (
	.LI(un7_rnd_out_r_axb_5),
	.CI(un7_rnd_out_r_cry_4),
	.O(un7_rnd_out_r[4])
);
// @24:142
  MUXCY_L un7_rnd_out_r_cry_5_cZ (
	.DI(GND),
	.CI(un7_rnd_out_r_cry_4),
	.S(un7_rnd_out_r_axb_5),
	.LO(un7_rnd_out_r_cry_5)
);
// @24:142
  XORCY un7_rnd_out_r_s_4 (
	.LI(un7_rnd_out_r_axb_4),
	.CI(un7_rnd_out_r_cry_3),
	.O(un7_rnd_out_r[3])
);
// @24:142
  MUXCY_L un7_rnd_out_r_cry_4_cZ (
	.DI(GND),
	.CI(un7_rnd_out_r_cry_3),
	.S(un7_rnd_out_r_axb_4),
	.LO(un7_rnd_out_r_cry_4)
);
// @24:142
  XORCY un7_rnd_out_r_s_3 (
	.LI(un7_rnd_out_r_axb_3),
	.CI(un7_rnd_out_r_cry_2),
	.O(un7_rnd_out_r[2])
);
// @24:142
  MUXCY_L un7_rnd_out_r_cry_3_cZ (
	.DI(GND),
	.CI(un7_rnd_out_r_cry_2),
	.S(un7_rnd_out_r_axb_3),
	.LO(un7_rnd_out_r_cry_3)
);
// @24:142
  XORCY un7_rnd_out_r_s_2 (
	.LI(un7_rnd_out_r_axb_2),
	.CI(un7_rnd_out_r_cry_1),
	.O(un7_rnd_out_r[1])
);
// @24:142
  MUXCY_L un7_rnd_out_r_cry_2_cZ (
	.DI(GND),
	.CI(un7_rnd_out_r_cry_1),
	.S(un7_rnd_out_r_axb_2),
	.LO(un7_rnd_out_r_cry_2)
);
// @24:142
  XORCY un7_rnd_out_r_s_1 (
	.LI(un7_rnd_out_r_axb_1),
	.CI(pre_out_r[7]),
	.O(un7_rnd_out_r[0])
);
// @24:142
  MUXCY_L un7_rnd_out_r_cry_1_cZ (
	.DI(GND),
	.CI(pre_out_r[7]),
	.S(un7_rnd_out_r_axb_1),
	.LO(un7_rnd_out_r_cry_1)
);
// @24:156
  XORCY un5_rnd_out_i_s_12_cZ (
	.LI(un5_rnd_out_i_axb_12),
	.CI(un5_rnd_out_i_cry_11),
	.O(un5_rnd_out_i_s_12)
);
// @24:156
  XORCY un5_rnd_out_i_s_11 (
	.LI(un5_rnd_out_i_axb_11),
	.CI(un5_rnd_out_i_cry_10),
	.O(un5_rnd_out_i[10])
);
// @24:156
  MUXCY_L un5_rnd_out_i_cry_11_cZ (
	.DI(GND),
	.CI(un5_rnd_out_i_cry_10),
	.S(un5_rnd_out_i_axb_11),
	.LO(un5_rnd_out_i_cry_11)
);
// @24:156
  XORCY un5_rnd_out_i_s_10 (
	.LI(un5_rnd_out_i_axb_10),
	.CI(un5_rnd_out_i_cry_9),
	.O(un5_rnd_out_i[9])
);
// @24:156
  MUXCY_L un5_rnd_out_i_cry_10_cZ (
	.DI(GND),
	.CI(un5_rnd_out_i_cry_9),
	.S(un5_rnd_out_i_axb_10),
	.LO(un5_rnd_out_i_cry_10)
);
// @24:156
  XORCY un5_rnd_out_i_s_9 (
	.LI(un5_rnd_out_i_axb_9),
	.CI(un5_rnd_out_i_cry_8),
	.O(un5_rnd_out_i[8])
);
// @24:156
  MUXCY_L un5_rnd_out_i_cry_9_cZ (
	.DI(GND),
	.CI(un5_rnd_out_i_cry_8),
	.S(un5_rnd_out_i_axb_9),
	.LO(un5_rnd_out_i_cry_9)
);
// @24:156
  XORCY un5_rnd_out_i_s_8 (
	.LI(un5_rnd_out_i_axb_8),
	.CI(un5_rnd_out_i_cry_7),
	.O(un5_rnd_out_i[7])
);
// @24:156
  MUXCY_L un5_rnd_out_i_cry_8_cZ (
	.DI(GND),
	.CI(un5_rnd_out_i_cry_7),
	.S(un5_rnd_out_i_axb_8),
	.LO(un5_rnd_out_i_cry_8)
);
// @24:156
  XORCY un5_rnd_out_i_s_7 (
	.LI(un5_rnd_out_i_axb_7),
	.CI(un5_rnd_out_i_cry_6),
	.O(un5_rnd_out_i[6])
);
// @24:156
  MUXCY_L un5_rnd_out_i_cry_7_cZ (
	.DI(GND),
	.CI(un5_rnd_out_i_cry_6),
	.S(un5_rnd_out_i_axb_7),
	.LO(un5_rnd_out_i_cry_7)
);
// @24:156
  XORCY un5_rnd_out_i_s_6 (
	.LI(un5_rnd_out_i_axb_6),
	.CI(un5_rnd_out_i_cry_5),
	.O(un5_rnd_out_i[5])
);
// @24:156
  MUXCY_L un5_rnd_out_i_cry_6_cZ (
	.DI(GND),
	.CI(un5_rnd_out_i_cry_5),
	.S(un5_rnd_out_i_axb_6),
	.LO(un5_rnd_out_i_cry_6)
);
// @24:156
  XORCY un5_rnd_out_i_s_5 (
	.LI(un5_rnd_out_i_axb_5),
	.CI(un5_rnd_out_i_cry_4),
	.O(un5_rnd_out_i[4])
);
// @24:156
  MUXCY_L un5_rnd_out_i_cry_5_cZ (
	.DI(GND),
	.CI(un5_rnd_out_i_cry_4),
	.S(un5_rnd_out_i_axb_5),
	.LO(un5_rnd_out_i_cry_5)
);
// @24:156
  XORCY un5_rnd_out_i_s_4 (
	.LI(un5_rnd_out_i_axb_4),
	.CI(un5_rnd_out_i_cry_3),
	.O(un5_rnd_out_i[3])
);
// @24:156
  MUXCY_L un5_rnd_out_i_cry_4_cZ (
	.DI(GND),
	.CI(un5_rnd_out_i_cry_3),
	.S(un5_rnd_out_i_axb_4),
	.LO(un5_rnd_out_i_cry_4)
);
// @24:156
  XORCY un5_rnd_out_i_s_3 (
	.LI(un5_rnd_out_i_axb_3),
	.CI(un5_rnd_out_i_cry_2),
	.O(un5_rnd_out_i[2])
);
// @24:156
  MUXCY_L un5_rnd_out_i_cry_3_cZ (
	.DI(GND),
	.CI(un5_rnd_out_i_cry_2),
	.S(un5_rnd_out_i_axb_3),
	.LO(un5_rnd_out_i_cry_3)
);
// @24:156
  XORCY un5_rnd_out_i_s_2 (
	.LI(un5_rnd_out_i_axb_2),
	.CI(un5_rnd_out_i_cry_1),
	.O(un5_rnd_out_i[1])
);
// @24:156
  MUXCY_L un5_rnd_out_i_cry_2_cZ (
	.DI(GND),
	.CI(un5_rnd_out_i_cry_1),
	.S(un5_rnd_out_i_axb_2),
	.LO(un5_rnd_out_i_cry_2)
);
// @24:156
  XORCY un5_rnd_out_i_s_1 (
	.LI(un5_rnd_out_i_axb_1),
	.CI(pre_out_i[7]),
	.O(un5_rnd_out_i[0])
);
// @24:156
  MUXCY_L un5_rnd_out_i_cry_1_cZ (
	.DI(GND),
	.CI(pre_out_i[7]),
	.S(un5_rnd_out_i_axb_1),
	.LO(un5_rnd_out_i_cry_1)
);
// @24:185
  FDR \out_r_Z[0]  (
	.Q(mult_out_r[0]),
	.D(pos_out_r_iv_i[0]),
	.C(clk),
	.R(un1_pos_out_r_3)
);
// @24:185
  FDR \out_r_Z[1]  (
	.Q(mult_out_r[1]),
	.D(pos_out_r_iv_i[1]),
	.C(clk),
	.R(un1_pos_out_r_3)
);
// @24:185
  FDR \out_r_Z[2]  (
	.Q(mult_out_r[2]),
	.D(pos_out_r_iv_i[2]),
	.C(clk),
	.R(un1_pos_out_r_3)
);
// @24:185
  FDR \out_r_Z[3]  (
	.Q(mult_out_r[3]),
	.D(pos_out_r_iv_i[3]),
	.C(clk),
	.R(un1_pos_out_r_3)
);
// @24:185
  FDR \out_r_Z[4]  (
	.Q(mult_out_r[4]),
	.D(pos_out_r_iv_i[4]),
	.C(clk),
	.R(un1_pos_out_r_3)
);
// @24:185
  FDR \out_r_Z[5]  (
	.Q(mult_out_r[5]),
	.D(pos_out_r_iv_i[5]),
	.C(clk),
	.R(un1_pos_out_r_3)
);
// @24:185
  FDR \out_r_Z[6]  (
	.Q(mult_out_r[6]),
	.D(pos_out_r_iv_i[6]),
	.C(clk),
	.R(un1_pos_out_r_3)
);
// @24:185
  FDR \out_r_Z[7]  (
	.Q(mult_out_r[7]),
	.D(pos_out_r_iv_i[7]),
	.C(clk),
	.R(un1_pos_out_r_3)
);
// @24:185
  FDR \out_r_Z[8]  (
	.Q(mult_out_r[8]),
	.D(pos_out_r_iv_i[8]),
	.C(clk),
	.R(un1_pos_out_r_3)
);
// @24:185
  FDR \out_r_Z[9]  (
	.Q(mult_out_r[9]),
	.D(pos_out_r_iv_i[9]),
	.C(clk),
	.R(un1_pos_out_r_3)
);
// @24:185
  FDR \out_r_Z[10]  (
	.Q(mult_out_r[10]),
	.D(pos_out_r_iv_i[10]),
	.C(clk),
	.R(un1_pos_out_r_3)
);
// @24:185
  FDS \out_r_Z[11]  (
	.Q(mult_out_r[11]),
	.D(pos_out_r[11]),
	.C(clk),
	.S(un1_pos_out_r_3)
);
// @24:185
  FDR \out_i_Z[0]  (
	.Q(mult_out_i[0]),
	.D(pos_out_i_iv_i[0]),
	.C(clk),
	.R(un1_pos_out_i_3)
);
// @24:185
  FDR \out_i_Z[1]  (
	.Q(mult_out_i[1]),
	.D(pos_out_i_iv_i[1]),
	.C(clk),
	.R(un1_pos_out_i_3)
);
// @24:185
  FDR \out_i_Z[2]  (
	.Q(mult_out_i[2]),
	.D(pos_out_i_iv_i[2]),
	.C(clk),
	.R(un1_pos_out_i_3)
);
// @24:185
  FDR \out_i_Z[3]  (
	.Q(mult_out_i[3]),
	.D(pos_out_i_iv_i[3]),
	.C(clk),
	.R(un1_pos_out_i_3)
);
// @24:185
  FDR \out_i_Z[4]  (
	.Q(mult_out_i[4]),
	.D(pos_out_i_iv_i[4]),
	.C(clk),
	.R(un1_pos_out_i_3)
);
// @24:185
  FDR \out_i_Z[5]  (
	.Q(mult_out_i[5]),
	.D(pos_out_i_iv_i[5]),
	.C(clk),
	.R(un1_pos_out_i_3)
);
// @24:185
  FDR \out_i_Z[6]  (
	.Q(mult_out_i[6]),
	.D(pos_out_i_iv_i[6]),
	.C(clk),
	.R(un1_pos_out_i_3)
);
// @24:185
  FDR \out_i_Z[7]  (
	.Q(mult_out_i[7]),
	.D(pos_out_i_iv_i[7]),
	.C(clk),
	.R(un1_pos_out_i_3)
);
// @24:185
  FDR \out_i_Z[8]  (
	.Q(mult_out_i[8]),
	.D(pos_out_i_iv_i[8]),
	.C(clk),
	.R(un1_pos_out_i_3)
);
// @24:185
  FDR \out_i_Z[9]  (
	.Q(mult_out_i[9]),
	.D(pos_out_i_iv_i[9]),
	.C(clk),
	.R(un1_pos_out_i_3)
);
// @24:185
  FDR \out_i_Z[10]  (
	.Q(mult_out_i[10]),
	.D(pos_out_i_iv_i[10]),
	.C(clk),
	.R(un1_pos_out_i_3)
);
// @24:185
  FDS \out_i_Z[11]  (
	.Q(mult_out_i[11]),
	.D(pos_out_i[11]),
	.C(clk),
	.S(un1_pos_out_i_3)
);
// @24:82
  mult_pipe mult1 (
	.mult1_out(mult1_out[23]),
	.in_a_r_reg(in_a_r_reg[11:0]),
	.in_b_r_reg(in_b_r_reg[11:0]),
	.clk(clk)
);
// @24:90
  mult_pipe_1 mult2 (
	.mult2_out_23(mult2_out[23]),
	.mult2_out_0(mult2_out_0[23:0]),
	.P_uc_34_0(P_uc_34_0[47:24]),
	.in_a_i_reg(in_a_i_reg[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.clk(clk)
);
// @24:98
  mult_pipe_2 mult3 (
	.mult3_out_23(mult3_out[23]),
	.mult3_out_0(mult3_out_0[23:0]),
	.P_uc_35_0(P_uc_35_0[47:24]),
	.in_a_r_reg(in_a_r_reg[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.clk(clk)
);
// @24:106
  mult_pipe_3 mult4 (
	.mult4_out(mult4_out[23]),
	.in_a_i_reg(in_a_i_reg[11:0]),
	.in_b_r_reg(in_b_r_reg[11:0]),
	.clk(clk)
);
// @24:114
  add_subZ1 add (
	.pre_out_r(pre_out_r[23:7]),
	.in_a_r_reg(in_a_r_reg[11:0]),
	.in_b_r_reg(in_b_r_reg[11:0]),
	.mult2_out_0(mult2_out_0[23:0]),
	.P_uc_34_0(P_uc_34_0[47:24]),
	.PATTERNDETECT_7(PATTERNDETECT_7),
	.clk(clk)
);
// @24:124
  add_subZ2 sub (
	.pre_out_i(pre_out_i[23:7]),
	.in_a_i_reg(in_a_i_reg[11:0]),
	.in_b_r_reg(in_b_r_reg[11:0]),
	.mult3_out_0(mult3_out_0[23:0]),
	.P_uc_35_0(P_uc_35_0[47:24]),
	.PATTERNDETECT_8(PATTERNDETECT_8),
	.clk(clk)
);
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
endmodule /* complex_mult_pipe_prod */

module add_subZ0_add_r (
  mult_out_r,
  out_inner_prod_r,
  un2_pre_out_10,
  un2_pre_out_9,
  un2_pre_out_7,
  un2_pre_out_6,
  un2_pre_out_5,
  un2_pre_out_4,
  un2_pre_out_3,
  un2_pre_out_2,
  un2_pre_out_1,
  acc_clear,
  un2_pre_out_s_11,
  N_26_i,
  N_20_i
)
;
input [11:0] mult_out_r ;
input [11:0] out_inner_prod_r ;
output un2_pre_out_10 ;
output un2_pre_out_9 ;
output un2_pre_out_7 ;
output un2_pre_out_6 ;
output un2_pre_out_5 ;
output un2_pre_out_4 ;
output un2_pre_out_3 ;
output un2_pre_out_2 ;
output un2_pre_out_1 ;
input acc_clear ;
output un2_pre_out_s_11 ;
output N_26_i ;
output N_20_i ;
wire un2_pre_out_10 ;
wire un2_pre_out_9 ;
wire un2_pre_out_7 ;
wire un2_pre_out_6 ;
wire un2_pre_out_5 ;
wire un2_pre_out_4 ;
wire un2_pre_out_3 ;
wire un2_pre_out_2 ;
wire un2_pre_out_1 ;
wire acc_clear ;
wire un2_pre_out_s_11 ;
wire N_26_i ;
wire N_20_i ;
wire [8:0] un2_pre_out;
wire VCC ;
wire un2_pre_out_axb_1 ;
wire un2_pre_out_axb_2 ;
wire un2_pre_out_axb_3 ;
wire un2_pre_out_axb_4 ;
wire un2_pre_out_axb_5 ;
wire un2_pre_out_axb_6 ;
wire un2_pre_out_axb_7 ;
wire un2_pre_out_axb_8 ;
wire un2_pre_out_axb_9 ;
wire un2_pre_out_axb_10 ;
wire un2_pre_out_axb_11 ;
wire un2_pre_out_cry_10 ;
wire un2_pre_out_cry_9 ;
wire un2_pre_out_cry_8 ;
wire un2_pre_out_cry_7 ;
wire un2_pre_out_cry_6 ;
wire un2_pre_out_cry_5 ;
wire un2_pre_out_cry_4 ;
wire un2_pre_out_cry_3 ;
wire un2_pre_out_cry_2 ;
wire un2_pre_out_cry_1 ;
wire un2_pre_out_cry_0 ;
wire GND ;
// @15:37
  LUT2 un2_pre_out_axb_0 (
	.I0(mult_out_r[0]),
	.I1(out_inner_prod_r[0]),
	.O(un2_pre_out[0])
);
defparam un2_pre_out_axb_0.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_1_cZ (
	.I0(mult_out_r[1]),
	.I1(out_inner_prod_r[1]),
	.O(un2_pre_out_axb_1)
);
defparam un2_pre_out_axb_1_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_2_cZ (
	.I0(mult_out_r[2]),
	.I1(out_inner_prod_r[2]),
	.O(un2_pre_out_axb_2)
);
defparam un2_pre_out_axb_2_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_3_cZ (
	.I0(mult_out_r[3]),
	.I1(out_inner_prod_r[3]),
	.O(un2_pre_out_axb_3)
);
defparam un2_pre_out_axb_3_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_4_cZ (
	.I0(mult_out_r[4]),
	.I1(out_inner_prod_r[4]),
	.O(un2_pre_out_axb_4)
);
defparam un2_pre_out_axb_4_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_5_cZ (
	.I0(mult_out_r[5]),
	.I1(out_inner_prod_r[5]),
	.O(un2_pre_out_axb_5)
);
defparam un2_pre_out_axb_5_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_6_cZ (
	.I0(mult_out_r[6]),
	.I1(out_inner_prod_r[6]),
	.O(un2_pre_out_axb_6)
);
defparam un2_pre_out_axb_6_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_7_cZ (
	.I0(mult_out_r[7]),
	.I1(out_inner_prod_r[7]),
	.O(un2_pre_out_axb_7)
);
defparam un2_pre_out_axb_7_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_8_cZ (
	.I0(mult_out_r[8]),
	.I1(out_inner_prod_r[8]),
	.O(un2_pre_out_axb_8)
);
defparam un2_pre_out_axb_8_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_9_cZ (
	.I0(mult_out_r[9]),
	.I1(out_inner_prod_r[9]),
	.O(un2_pre_out_axb_9)
);
defparam un2_pre_out_axb_9_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_10_cZ (
	.I0(mult_out_r[10]),
	.I1(out_inner_prod_r[10]),
	.O(un2_pre_out_axb_10)
);
defparam un2_pre_out_axb_10_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_11_cZ (
	.I0(mult_out_r[11]),
	.I1(out_inner_prod_r[11]),
	.O(un2_pre_out_axb_11)
);
defparam un2_pre_out_axb_11_cZ.INIT=4'h6;
// @15:37
  XORCY un2_pre_out_s_11_c (
	.LI(un2_pre_out_axb_11),
	.CI(un2_pre_out_cry_10),
	.O(un2_pre_out_s_11)
);
// @15:37
  XORCY un2_pre_out_s_10 (
	.LI(un2_pre_out_axb_10),
	.CI(un2_pre_out_cry_9),
	.O(un2_pre_out_10)
);
// @15:37
  MUXCY_L un2_pre_out_cry_10_cZ (
	.DI(mult_out_r[10]),
	.CI(un2_pre_out_cry_9),
	.S(un2_pre_out_axb_10),
	.LO(un2_pre_out_cry_10)
);
// @15:37
  XORCY un2_pre_out_s_9 (
	.LI(un2_pre_out_axb_9),
	.CI(un2_pre_out_cry_8),
	.O(un2_pre_out_9)
);
// @15:37
  MUXCY_L un2_pre_out_cry_9_cZ (
	.DI(mult_out_r[9]),
	.CI(un2_pre_out_cry_8),
	.S(un2_pre_out_axb_9),
	.LO(un2_pre_out_cry_9)
);
// @15:37
  XORCY un2_pre_out_s_8 (
	.LI(un2_pre_out_axb_8),
	.CI(un2_pre_out_cry_7),
	.O(un2_pre_out[8])
);
// @15:37
  MUXCY_L un2_pre_out_cry_8_cZ (
	.DI(mult_out_r[8]),
	.CI(un2_pre_out_cry_7),
	.S(un2_pre_out_axb_8),
	.LO(un2_pre_out_cry_8)
);
// @15:37
  XORCY un2_pre_out_s_7 (
	.LI(un2_pre_out_axb_7),
	.CI(un2_pre_out_cry_6),
	.O(un2_pre_out_7)
);
// @15:37
  MUXCY_L un2_pre_out_cry_7_cZ (
	.DI(mult_out_r[7]),
	.CI(un2_pre_out_cry_6),
	.S(un2_pre_out_axb_7),
	.LO(un2_pre_out_cry_7)
);
// @15:37
  XORCY un2_pre_out_s_6 (
	.LI(un2_pre_out_axb_6),
	.CI(un2_pre_out_cry_5),
	.O(un2_pre_out_6)
);
// @15:37
  MUXCY_L un2_pre_out_cry_6_cZ (
	.DI(mult_out_r[6]),
	.CI(un2_pre_out_cry_5),
	.S(un2_pre_out_axb_6),
	.LO(un2_pre_out_cry_6)
);
// @15:37
  XORCY un2_pre_out_s_5 (
	.LI(un2_pre_out_axb_5),
	.CI(un2_pre_out_cry_4),
	.O(un2_pre_out_5)
);
// @15:37
  MUXCY_L un2_pre_out_cry_5_cZ (
	.DI(mult_out_r[5]),
	.CI(un2_pre_out_cry_4),
	.S(un2_pre_out_axb_5),
	.LO(un2_pre_out_cry_5)
);
// @15:37
  XORCY un2_pre_out_s_4 (
	.LI(un2_pre_out_axb_4),
	.CI(un2_pre_out_cry_3),
	.O(un2_pre_out_4)
);
// @15:37
  MUXCY_L un2_pre_out_cry_4_cZ (
	.DI(mult_out_r[4]),
	.CI(un2_pre_out_cry_3),
	.S(un2_pre_out_axb_4),
	.LO(un2_pre_out_cry_4)
);
// @15:37
  XORCY un2_pre_out_s_3 (
	.LI(un2_pre_out_axb_3),
	.CI(un2_pre_out_cry_2),
	.O(un2_pre_out_3)
);
// @15:37
  MUXCY_L un2_pre_out_cry_3_cZ (
	.DI(mult_out_r[3]),
	.CI(un2_pre_out_cry_2),
	.S(un2_pre_out_axb_3),
	.LO(un2_pre_out_cry_3)
);
// @15:37
  XORCY un2_pre_out_s_2 (
	.LI(un2_pre_out_axb_2),
	.CI(un2_pre_out_cry_1),
	.O(un2_pre_out_2)
);
// @15:37
  MUXCY_L un2_pre_out_cry_2_cZ (
	.DI(mult_out_r[2]),
	.CI(un2_pre_out_cry_1),
	.S(un2_pre_out_axb_2),
	.LO(un2_pre_out_cry_2)
);
// @15:37
  XORCY un2_pre_out_s_1 (
	.LI(un2_pre_out_axb_1),
	.CI(un2_pre_out_cry_0),
	.O(un2_pre_out_1)
);
// @15:37
  MUXCY_L un2_pre_out_cry_1_cZ (
	.DI(mult_out_r[1]),
	.CI(un2_pre_out_cry_0),
	.S(un2_pre_out_axb_1),
	.LO(un2_pre_out_cry_1)
);
// @15:37
  MUXCY_L un2_pre_out_cry_0_cZ (
	.DI(mult_out_r[0]),
	.CI(GND),
	.S(un2_pre_out[0]),
	.LO(un2_pre_out_cry_0)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
// @25:181
  LUT4 un2_pre_out_s_8_RNIQ3111_o6 (
	.I0(mult_out_r[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_r[11]),
	.I3(un2_pre_out_s_11),
	.O(N_26_i)
);
defparam un2_pre_out_s_8_RNIQ3111_o6.INIT=16'h3220;
// @25:181
  LUT5 un2_pre_out_s_8_RNIQ3111_o5 (
	.I0(mult_out_r[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_r[11]),
	.I3(un2_pre_out[8]),
	.I4(un2_pre_out_s_11),
	.O(N_20_i)
);
defparam un2_pre_out_s_8_RNIQ3111_o5.INIT=32'h33011300;
endmodule /* add_subZ0_add_r */

module add_subZ0_add_r_1 (
  mult_out_i,
  out_inner_prod_i,
  un2_pre_out_10,
  un2_pre_out_9,
  un2_pre_out_8,
  un2_pre_out_7,
  un2_pre_out_6,
  un2_pre_out_5,
  un2_pre_out_4,
  un2_pre_out_3,
  un2_pre_out_2,
  un2_pre_out_1,
  un2_pre_out_s_11_0
)
;
input [11:0] mult_out_i ;
input [11:0] out_inner_prod_i ;
output un2_pre_out_10 ;
output un2_pre_out_9 ;
output un2_pre_out_8 ;
output un2_pre_out_7 ;
output un2_pre_out_6 ;
output un2_pre_out_5 ;
output un2_pre_out_4 ;
output un2_pre_out_3 ;
output un2_pre_out_2 ;
output un2_pre_out_1 ;
output un2_pre_out_s_11_0 ;
wire un2_pre_out_10 ;
wire un2_pre_out_9 ;
wire un2_pre_out_8 ;
wire un2_pre_out_7 ;
wire un2_pre_out_6 ;
wire un2_pre_out_5 ;
wire un2_pre_out_4 ;
wire un2_pre_out_3 ;
wire un2_pre_out_2 ;
wire un2_pre_out_1 ;
wire un2_pre_out_s_11_0 ;
wire [0:0] un2_pre_out;
wire un2_pre_out_axb_1 ;
wire un2_pre_out_axb_2 ;
wire un2_pre_out_axb_3 ;
wire un2_pre_out_axb_4 ;
wire un2_pre_out_axb_5 ;
wire un2_pre_out_axb_6 ;
wire un2_pre_out_axb_7 ;
wire un2_pre_out_axb_8 ;
wire un2_pre_out_axb_9 ;
wire un2_pre_out_axb_10 ;
wire un2_pre_out_axb_11 ;
wire un2_pre_out_cry_10 ;
wire un2_pre_out_cry_9 ;
wire un2_pre_out_cry_8 ;
wire un2_pre_out_cry_7 ;
wire un2_pre_out_cry_6 ;
wire un2_pre_out_cry_5 ;
wire un2_pre_out_cry_4 ;
wire un2_pre_out_cry_3 ;
wire un2_pre_out_cry_2 ;
wire un2_pre_out_cry_1 ;
wire un2_pre_out_cry_0 ;
wire GND ;
wire VCC ;
// @15:37
  LUT2 un2_pre_out_axb_0 (
	.I0(mult_out_i[0]),
	.I1(out_inner_prod_i[0]),
	.O(un2_pre_out[0])
);
defparam un2_pre_out_axb_0.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_1_cZ (
	.I0(mult_out_i[1]),
	.I1(out_inner_prod_i[1]),
	.O(un2_pre_out_axb_1)
);
defparam un2_pre_out_axb_1_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_2_cZ (
	.I0(mult_out_i[2]),
	.I1(out_inner_prod_i[2]),
	.O(un2_pre_out_axb_2)
);
defparam un2_pre_out_axb_2_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_3_cZ (
	.I0(mult_out_i[3]),
	.I1(out_inner_prod_i[3]),
	.O(un2_pre_out_axb_3)
);
defparam un2_pre_out_axb_3_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_4_cZ (
	.I0(mult_out_i[4]),
	.I1(out_inner_prod_i[4]),
	.O(un2_pre_out_axb_4)
);
defparam un2_pre_out_axb_4_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_5_cZ (
	.I0(mult_out_i[5]),
	.I1(out_inner_prod_i[5]),
	.O(un2_pre_out_axb_5)
);
defparam un2_pre_out_axb_5_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_6_cZ (
	.I0(mult_out_i[6]),
	.I1(out_inner_prod_i[6]),
	.O(un2_pre_out_axb_6)
);
defparam un2_pre_out_axb_6_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_7_cZ (
	.I0(mult_out_i[7]),
	.I1(out_inner_prod_i[7]),
	.O(un2_pre_out_axb_7)
);
defparam un2_pre_out_axb_7_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_8_cZ (
	.I0(mult_out_i[8]),
	.I1(out_inner_prod_i[8]),
	.O(un2_pre_out_axb_8)
);
defparam un2_pre_out_axb_8_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_9_cZ (
	.I0(mult_out_i[9]),
	.I1(out_inner_prod_i[9]),
	.O(un2_pre_out_axb_9)
);
defparam un2_pre_out_axb_9_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_10_cZ (
	.I0(mult_out_i[10]),
	.I1(out_inner_prod_i[10]),
	.O(un2_pre_out_axb_10)
);
defparam un2_pre_out_axb_10_cZ.INIT=4'h6;
// @15:37
  LUT2 un2_pre_out_axb_11_cZ (
	.I0(mult_out_i[11]),
	.I1(out_inner_prod_i[11]),
	.O(un2_pre_out_axb_11)
);
defparam un2_pre_out_axb_11_cZ.INIT=4'h6;
// @15:37
  XORCY un2_pre_out_s_11 (
	.LI(un2_pre_out_axb_11),
	.CI(un2_pre_out_cry_10),
	.O(un2_pre_out_s_11_0)
);
// @15:37
  XORCY un2_pre_out_s_10 (
	.LI(un2_pre_out_axb_10),
	.CI(un2_pre_out_cry_9),
	.O(un2_pre_out_10)
);
// @15:37
  MUXCY_L un2_pre_out_cry_10_cZ (
	.DI(mult_out_i[10]),
	.CI(un2_pre_out_cry_9),
	.S(un2_pre_out_axb_10),
	.LO(un2_pre_out_cry_10)
);
// @15:37
  XORCY un2_pre_out_s_9 (
	.LI(un2_pre_out_axb_9),
	.CI(un2_pre_out_cry_8),
	.O(un2_pre_out_9)
);
// @15:37
  MUXCY_L un2_pre_out_cry_9_cZ (
	.DI(mult_out_i[9]),
	.CI(un2_pre_out_cry_8),
	.S(un2_pre_out_axb_9),
	.LO(un2_pre_out_cry_9)
);
// @15:37
  XORCY un2_pre_out_s_8 (
	.LI(un2_pre_out_axb_8),
	.CI(un2_pre_out_cry_7),
	.O(un2_pre_out_8)
);
// @15:37
  MUXCY_L un2_pre_out_cry_8_cZ (
	.DI(mult_out_i[8]),
	.CI(un2_pre_out_cry_7),
	.S(un2_pre_out_axb_8),
	.LO(un2_pre_out_cry_8)
);
// @15:37
  XORCY un2_pre_out_s_7 (
	.LI(un2_pre_out_axb_7),
	.CI(un2_pre_out_cry_6),
	.O(un2_pre_out_7)
);
// @15:37
  MUXCY_L un2_pre_out_cry_7_cZ (
	.DI(mult_out_i[7]),
	.CI(un2_pre_out_cry_6),
	.S(un2_pre_out_axb_7),
	.LO(un2_pre_out_cry_7)
);
// @15:37
  XORCY un2_pre_out_s_6 (
	.LI(un2_pre_out_axb_6),
	.CI(un2_pre_out_cry_5),
	.O(un2_pre_out_6)
);
// @15:37
  MUXCY_L un2_pre_out_cry_6_cZ (
	.DI(mult_out_i[6]),
	.CI(un2_pre_out_cry_5),
	.S(un2_pre_out_axb_6),
	.LO(un2_pre_out_cry_6)
);
// @15:37
  XORCY un2_pre_out_s_5 (
	.LI(un2_pre_out_axb_5),
	.CI(un2_pre_out_cry_4),
	.O(un2_pre_out_5)
);
// @15:37
  MUXCY_L un2_pre_out_cry_5_cZ (
	.DI(mult_out_i[5]),
	.CI(un2_pre_out_cry_4),
	.S(un2_pre_out_axb_5),
	.LO(un2_pre_out_cry_5)
);
// @15:37
  XORCY un2_pre_out_s_4 (
	.LI(un2_pre_out_axb_4),
	.CI(un2_pre_out_cry_3),
	.O(un2_pre_out_4)
);
// @15:37
  MUXCY_L un2_pre_out_cry_4_cZ (
	.DI(mult_out_i[4]),
	.CI(un2_pre_out_cry_3),
	.S(un2_pre_out_axb_4),
	.LO(un2_pre_out_cry_4)
);
// @15:37
  XORCY un2_pre_out_s_3 (
	.LI(un2_pre_out_axb_3),
	.CI(un2_pre_out_cry_2),
	.O(un2_pre_out_3)
);
// @15:37
  MUXCY_L un2_pre_out_cry_3_cZ (
	.DI(mult_out_i[3]),
	.CI(un2_pre_out_cry_2),
	.S(un2_pre_out_axb_3),
	.LO(un2_pre_out_cry_3)
);
// @15:37
  XORCY un2_pre_out_s_2 (
	.LI(un2_pre_out_axb_2),
	.CI(un2_pre_out_cry_1),
	.O(un2_pre_out_2)
);
// @15:37
  MUXCY_L un2_pre_out_cry_2_cZ (
	.DI(mult_out_i[2]),
	.CI(un2_pre_out_cry_1),
	.S(un2_pre_out_axb_2),
	.LO(un2_pre_out_cry_2)
);
// @15:37
  XORCY un2_pre_out_s_1 (
	.LI(un2_pre_out_axb_1),
	.CI(un2_pre_out_cry_0),
	.O(un2_pre_out_1)
);
// @15:37
  MUXCY_L un2_pre_out_cry_1_cZ (
	.DI(mult_out_i[1]),
	.CI(un2_pre_out_cry_0),
	.S(un2_pre_out_axb_1),
	.LO(un2_pre_out_cry_1)
);
// @15:37
  MUXCY_L un2_pre_out_cry_0_cZ (
	.DI(mult_out_i[0]),
	.CI(GND),
	.S(un2_pre_out[0]),
	.LO(un2_pre_out_cry_0)
);
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
endmodule /* add_subZ0_add_r_1 */

module inner_prod (
  out_inner_prod_i,
  out_inner_prod_r,
  in_a_inner_prod_sel,
  single_out_r_AQ_7,
  single_out_r_AQ_0,
  single_out_r_AQ_1,
  single_out_r_AQ_4,
  single_out_r_AQ_2,
  in_b_inner_prod_sel,
  vec_in_r_AQ_mux_0_6,
  vec_in_r_AQ_mux_0_7,
  vec_in_r_AQ_mux_0_0,
  vec_in_r_AQ_mux_0_9,
  vec_in_r_AQ_mux_0_1,
  vec_in_r_AQ_mux_0_8,
  vec_in_r_AQ_mux_0_4,
  vec_in_r_AQ_mux_0_3,
  vec_in_r_AQ_mux_0_2,
  vec_in_r_AQ_mux_0_10,
  vec_in_i_AQ_mux_0_7,
  vec_in_i_AQ_mux_0_1,
  vec_in_i_AQ_mux_0_0,
  vec_in_i_AQ_mux_0_6,
  vec_in_i_AQ_mux_0_8,
  vec_in_i_AQ_mux_0_10,
  vec_in_i_AQ_mux_0_5,
  vec_in_i_AQ_mux_0_9,
  vec_in_i_AQ_mux_0_4,
  vec_in_i_AQ_mux_0_11,
  single_out_i_AQ_1,
  single_out_i_AQ_0,
  single_out_i_AQ_8,
  single_out_i_AQ_10,
  single_out_i_AQ_9,
  single_out_i_AQ_4,
  single_out_i_AQ_11,
  output_iv,
  single_out_r_AQ2_4,
  single_out_r_AQ2_0,
  single_out_r_AQ2_1,
  single_out_r_AQ2_6,
  output_iv_0_4,
  output_iv_0_7,
  output_iv_0_0,
  output_iv_0_9,
  output_iv_0_1,
  output_iv_0_6,
  output_iv_0_3,
  output_iv_0_2,
  output_iv_0_8,
  out_r_vec_sub_0,
  out_i_vec_sub_0,
  single_out_i_AQ2_0,
  single_out_i_AQ2_5,
  single_out_i_AQ2_4,
  single_out_i_AQ2_1,
  single_out_i_AQ2_11,
  start_inner_prod,
  red_mat_reg,
  clk,
  rst,
  done_inner_prod,
  N_623,
  N_568,
  N_622,
  N_507,
  N_549,
  N_505,
  N_597,
  N_567,
  N_596,
  N_628,
  N_637,
  N_566,
  N_506,
  N_585,
  N_584,
  N_612,
  N_583,
  N_595,
  N_508,
  N_501,
  N_605,
  N_624,
  N_607,
  N_552,
  N_555,
  N_586,
  N_645,
  N_641,
  N_582,
  N_606,
  N_632,
  N_500,
  N_571
)
;
output [11:0] out_inner_prod_i ;
output [11:0] out_inner_prod_r ;
input [0:0] in_a_inner_prod_sel ;
input single_out_r_AQ_7 ;
input single_out_r_AQ_0 ;
input single_out_r_AQ_1 ;
input single_out_r_AQ_4 ;
input single_out_r_AQ_2 ;
input [0:0] in_b_inner_prod_sel ;
input vec_in_r_AQ_mux_0_6 ;
input vec_in_r_AQ_mux_0_7 ;
input vec_in_r_AQ_mux_0_0 ;
input vec_in_r_AQ_mux_0_9 ;
input vec_in_r_AQ_mux_0_1 ;
input vec_in_r_AQ_mux_0_8 ;
input vec_in_r_AQ_mux_0_4 ;
input vec_in_r_AQ_mux_0_3 ;
input vec_in_r_AQ_mux_0_2 ;
input vec_in_r_AQ_mux_0_10 ;
input vec_in_i_AQ_mux_0_7 ;
input vec_in_i_AQ_mux_0_1 ;
input vec_in_i_AQ_mux_0_0 ;
input vec_in_i_AQ_mux_0_6 ;
input vec_in_i_AQ_mux_0_8 ;
input vec_in_i_AQ_mux_0_10 ;
input vec_in_i_AQ_mux_0_5 ;
input vec_in_i_AQ_mux_0_9 ;
input vec_in_i_AQ_mux_0_4 ;
input vec_in_i_AQ_mux_0_11 ;
input single_out_i_AQ_1 ;
input single_out_i_AQ_0 ;
input single_out_i_AQ_8 ;
input single_out_i_AQ_10 ;
input single_out_i_AQ_9 ;
input single_out_i_AQ_4 ;
input single_out_i_AQ_11 ;
input [10:0] output_iv ;
input single_out_r_AQ2_4 ;
input single_out_r_AQ2_0 ;
input single_out_r_AQ2_1 ;
input single_out_r_AQ2_6 ;
input output_iv_0_4 ;
input output_iv_0_7 ;
input output_iv_0_0 ;
input output_iv_0_9 ;
input output_iv_0_1 ;
input output_iv_0_6 ;
input output_iv_0_3 ;
input output_iv_0_2 ;
input output_iv_0_8 ;
input [11:11] out_r_vec_sub_0 ;
input [11:11] out_i_vec_sub_0 ;
input single_out_i_AQ2_0 ;
input single_out_i_AQ2_5 ;
input single_out_i_AQ2_4 ;
input single_out_i_AQ2_1 ;
input single_out_i_AQ2_11 ;
input start_inner_prod ;
input red_mat_reg ;
input clk ;
input rst ;
output done_inner_prod ;
input N_623 ;
input N_568 ;
input N_622 ;
input N_507 ;
input N_549 ;
input N_505 ;
input N_597 ;
input N_567 ;
input N_596 ;
input N_628 ;
input N_637 ;
input N_566 ;
input N_506 ;
input N_585 ;
input N_584 ;
input N_612 ;
input N_583 ;
input N_595 ;
input N_508 ;
input N_501 ;
input N_605 ;
input N_624 ;
input N_607 ;
input N_552 ;
input N_555 ;
input N_586 ;
input N_645 ;
input N_641 ;
input N_582 ;
input N_606 ;
input N_632 ;
input N_500 ;
input N_571 ;
wire single_out_r_AQ_7 ;
wire single_out_r_AQ_0 ;
wire single_out_r_AQ_1 ;
wire single_out_r_AQ_4 ;
wire single_out_r_AQ_2 ;
wire vec_in_r_AQ_mux_0_6 ;
wire vec_in_r_AQ_mux_0_7 ;
wire vec_in_r_AQ_mux_0_0 ;
wire vec_in_r_AQ_mux_0_9 ;
wire vec_in_r_AQ_mux_0_1 ;
wire vec_in_r_AQ_mux_0_8 ;
wire vec_in_r_AQ_mux_0_4 ;
wire vec_in_r_AQ_mux_0_3 ;
wire vec_in_r_AQ_mux_0_2 ;
wire vec_in_r_AQ_mux_0_10 ;
wire vec_in_i_AQ_mux_0_7 ;
wire vec_in_i_AQ_mux_0_1 ;
wire vec_in_i_AQ_mux_0_0 ;
wire vec_in_i_AQ_mux_0_6 ;
wire vec_in_i_AQ_mux_0_8 ;
wire vec_in_i_AQ_mux_0_10 ;
wire vec_in_i_AQ_mux_0_5 ;
wire vec_in_i_AQ_mux_0_9 ;
wire vec_in_i_AQ_mux_0_4 ;
wire vec_in_i_AQ_mux_0_11 ;
wire single_out_i_AQ_1 ;
wire single_out_i_AQ_0 ;
wire single_out_i_AQ_8 ;
wire single_out_i_AQ_10 ;
wire single_out_i_AQ_9 ;
wire single_out_i_AQ_4 ;
wire single_out_i_AQ_11 ;
wire single_out_r_AQ2_4 ;
wire single_out_r_AQ2_0 ;
wire single_out_r_AQ2_1 ;
wire single_out_r_AQ2_6 ;
wire output_iv_0_4 ;
wire output_iv_0_7 ;
wire output_iv_0_0 ;
wire output_iv_0_9 ;
wire output_iv_0_1 ;
wire output_iv_0_6 ;
wire output_iv_0_3 ;
wire output_iv_0_2 ;
wire output_iv_0_8 ;
wire single_out_i_AQ2_0 ;
wire single_out_i_AQ2_5 ;
wire single_out_i_AQ2_4 ;
wire single_out_i_AQ2_1 ;
wire single_out_i_AQ2_11 ;
wire start_inner_prod ;
wire red_mat_reg ;
wire clk ;
wire rst ;
wire done_inner_prod ;
wire N_623 ;
wire N_568 ;
wire N_622 ;
wire N_507 ;
wire N_549 ;
wire N_505 ;
wire N_597 ;
wire N_567 ;
wire N_596 ;
wire N_628 ;
wire N_637 ;
wire N_566 ;
wire N_506 ;
wire N_585 ;
wire N_584 ;
wire N_612 ;
wire N_583 ;
wire N_595 ;
wire N_508 ;
wire N_501 ;
wire N_605 ;
wire N_624 ;
wire N_607 ;
wire N_552 ;
wire N_555 ;
wire N_586 ;
wire N_645 ;
wire N_641 ;
wire N_582 ;
wire N_606 ;
wire N_632 ;
wire N_500 ;
wire N_571 ;
wire [11:0] mult_out_i;
wire [10:1] un2_pre_out;
wire [11:0] acc_i_2;
wire [2:0] pipe_counter;
wire [1:0] state;
wire [2:0] in_counter;
wire [2:1] pipe_counter_4_0_a2;
wire [0:0] state_i_0;
wire [11:0] in_a_i_reg;
wire [11:0] in_a_i_reg_2;
wire [11:0] in_a_r_reg;
wire [8:1] in_a_r_reg_3;
wire [1:0] state_ns;
wire [11:0] in_b_i_reg;
wire [11:0] in_b_i_reg_2;
wire [11:0] in_b_r_reg;
wire [11:1] in_b_r_reg_2;
wire [11:0] mult_out_r;
wire [10:1] un2_pre_out_0;
wire acc_clear ;
wire un2_pre_out_s_11_0 ;
wire VCC ;
wire acc_enable ;
wire un1_state_4_0_0_lut6_2_O6 ;
wire acc_enable_0 ;
wire in_reg_enable_fsm_0_sqmuxa ;
wire un1_state_8_0_0_a2_lut6_2_O5 ;
wire un7_acc_enable_lut6_2_O6 ;
wire acc_clear_0 ;
wire in_counter_5_43_i_i_a2 ;
wire N_113_i_0 ;
wire in_reg_enable_fsm ;
wire in_reg_enable_fsm_0 ;
wire done ;
wire N_516_i_0 ;
wire N_518_i ;
wire N_519_i_0 ;
wire N_520_i ;
wire N_523_i ;
wire N_193_i ;
wire N_524_i ;
wire N_183_i ;
wire N_195_i ;
wire N_191_i ;
wire N_26_i ;
wire N_24_i ;
wire N_22_i ;
wire N_20_i ;
wire N_18_i ;
wire N_16_i ;
wire N_14_i ;
wire N_12_i ;
wire N_10_i ;
wire N_8_i ;
wire N_6_i ;
wire N_4_i ;
wire N_521_i ;
wire N_517_i_0 ;
wire N_522_i ;
wire N_185_i ;
wire un2_pre_out_s_11 ;
wire N_27 ;
wire N_26 ;
wire N_25 ;
wire GND ;
// @25:108
  FDC \in_counter_Z[2]  (
	.Q(in_counter[2]),
	.D(in_counter_5_43_i_i_a2),
	.C(clk),
	.CLR(rst)
);
// @25:108
  FDC \in_counter_Z[1]  (
	.Q(in_counter[1]),
	.D(N_113_i_0),
	.C(clk),
	.CLR(rst)
);
// @25:108
  FDC \in_counter_Z[0]  (
	.Q(in_counter[0]),
	.D(state_i_0[0]),
	.C(clk),
	.CLR(rst)
);
// @25:108
  FDC \pipe_counter_Z[2]  (
	.Q(pipe_counter[2]),
	.D(pipe_counter_4_0_a2[2]),
	.C(clk),
	.CLR(rst)
);
// @25:108
  FDC \pipe_counter_Z[1]  (
	.Q(pipe_counter[1]),
	.D(pipe_counter_4_0_a2[1]),
	.C(clk),
	.CLR(rst)
);
// @25:108
  LUT4 \in_counter_RNO[1]  (
	.I0(in_counter[0]),
	.I1(state[0]),
	.I2(in_counter[1]),
	.I3(un1_state_4_0_0_lut6_2_O6),
	.O(N_113_i_0)
);
defparam \in_counter_RNO[1] .INIT=16'h88F0;
// @25:108
  FDCE \pipe_counter_Z[0]  (
	.Q(pipe_counter[0]),
	.D(in_reg_enable_fsm_0_sqmuxa),
	.C(clk),
	.CLR(rst),
	.CE(un1_state_8_0_0_a2_lut6_2_O5)
);
// @25:108
  FDC in_reg_enable_fsm_Z (
	.Q(in_reg_enable_fsm),
	.D(in_reg_enable_fsm_0),
	.C(clk),
	.CLR(rst)
);
// @25:108
  FDC done_Z (
	.Q(done_inner_prod),
	.D(done),
	.C(clk),
	.CLR(rst)
);
// @25:108
  FDC acc_enable_Z (
	.Q(acc_enable),
	.D(acc_enable_0),
	.C(clk),
	.CLR(rst)
);
// @25:108
  FDP acc_clear_Z (
	.Q(acc_clear),
	.D(acc_clear_0),
	.C(clk),
	.PRE(rst)
);
// @25:158
  FDC \in_a_i_reg_Z[0]  (
	.Q(in_a_i_reg[0]),
	.D(in_a_i_reg_2[0]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_i_reg_Z[1]  (
	.Q(in_a_i_reg[1]),
	.D(in_a_i_reg_2[1]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_i_reg_Z[2]  (
	.Q(in_a_i_reg[2]),
	.D(N_516_i_0),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_i_reg_Z[3]  (
	.Q(in_a_i_reg[3]),
	.D(N_518_i),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_i_reg_Z[4]  (
	.Q(in_a_i_reg[4]),
	.D(in_a_i_reg_2[4]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_i_reg_Z[5]  (
	.Q(in_a_i_reg[5]),
	.D(in_a_i_reg_2[5]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_i_reg_Z[6]  (
	.Q(in_a_i_reg[6]),
	.D(N_519_i_0),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_i_reg_Z[7]  (
	.Q(in_a_i_reg[7]),
	.D(N_520_i),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_i_reg_Z[8]  (
	.Q(in_a_i_reg[8]),
	.D(in_a_i_reg_2[8]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_i_reg_Z[9]  (
	.Q(in_a_i_reg[9]),
	.D(in_a_i_reg_2[9]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_i_reg_Z[10]  (
	.Q(in_a_i_reg[10]),
	.D(in_a_i_reg_2[10]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_i_reg_Z[11]  (
	.Q(in_a_i_reg[11]),
	.D(in_a_i_reg_2[11]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_r_reg_Z[3]  (
	.Q(in_a_r_reg[3]),
	.D(in_a_r_reg_3[3]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_r_reg_Z[4]  (
	.Q(in_a_r_reg[4]),
	.D(in_a_r_reg_3[4]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_r_reg_Z[5]  (
	.Q(in_a_r_reg[5]),
	.D(in_a_r_reg_3[5]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_r_reg_Z[6]  (
	.Q(in_a_r_reg[6]),
	.D(N_523_i),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_r_reg_Z[7]  (
	.Q(in_a_r_reg[7]),
	.D(N_193_i),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_r_reg_Z[8]  (
	.Q(in_a_r_reg[8]),
	.D(in_a_r_reg_3[8]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_r_reg_Z[9]  (
	.Q(in_a_r_reg[9]),
	.D(N_524_i),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_r_reg_Z[10]  (
	.Q(in_a_r_reg[10]),
	.D(N_183_i),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_r_reg_Z[11]  (
	.Q(in_a_r_reg[11]),
	.D(N_195_i),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_r_reg_Z[0]  (
	.Q(in_a_r_reg[0]),
	.D(N_191_i),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_r_reg_Z[1]  (
	.Q(in_a_r_reg[1]),
	.D(in_a_r_reg_3[1]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_a_r_reg_Z[2]  (
	.Q(in_a_r_reg[2]),
	.D(in_a_r_reg_3[2]),
	.C(clk),
	.CLR(rst)
);
// @25:108
  FDC \state_Z[0]  (
	.Q(state[0]),
	.D(state_ns[0]),
	.C(clk),
	.CLR(rst)
);
// @25:108
  FDC \state_Z[1]  (
	.Q(state[1]),
	.D(state_ns[1]),
	.C(clk),
	.CLR(rst)
);
// @25:181
  FDCE \acc_i_Z[11]  (
	.Q(out_inner_prod_i[11]),
	.D(acc_i_2[11]),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_i_Z[10]  (
	.Q(out_inner_prod_i[10]),
	.D(acc_i_2[10]),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_i_Z[9]  (
	.Q(out_inner_prod_i[9]),
	.D(acc_i_2[9]),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_i_Z[8]  (
	.Q(out_inner_prod_i[8]),
	.D(acc_i_2[8]),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_i_Z[7]  (
	.Q(out_inner_prod_i[7]),
	.D(acc_i_2[7]),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_i_Z[6]  (
	.Q(out_inner_prod_i[6]),
	.D(acc_i_2[6]),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_i_Z[5]  (
	.Q(out_inner_prod_i[5]),
	.D(acc_i_2[5]),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_i_Z[4]  (
	.Q(out_inner_prod_i[4]),
	.D(acc_i_2[4]),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_i_Z[3]  (
	.Q(out_inner_prod_i[3]),
	.D(acc_i_2[3]),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_i_Z[2]  (
	.Q(out_inner_prod_i[2]),
	.D(acc_i_2[2]),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_i_Z[1]  (
	.Q(out_inner_prod_i[1]),
	.D(acc_i_2[1]),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_i_Z[0]  (
	.Q(out_inner_prod_i[0]),
	.D(acc_i_2[0]),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_r_Z[11]  (
	.Q(out_inner_prod_r[11]),
	.D(N_26_i),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_r_Z[10]  (
	.Q(out_inner_prod_r[10]),
	.D(N_24_i),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_r_Z[9]  (
	.Q(out_inner_prod_r[9]),
	.D(N_22_i),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_r_Z[8]  (
	.Q(out_inner_prod_r[8]),
	.D(N_20_i),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_r_Z[7]  (
	.Q(out_inner_prod_r[7]),
	.D(N_18_i),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_r_Z[6]  (
	.Q(out_inner_prod_r[6]),
	.D(N_16_i),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_r_Z[5]  (
	.Q(out_inner_prod_r[5]),
	.D(N_14_i),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_r_Z[4]  (
	.Q(out_inner_prod_r[4]),
	.D(N_12_i),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_r_Z[3]  (
	.Q(out_inner_prod_r[3]),
	.D(N_10_i),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_r_Z[2]  (
	.Q(out_inner_prod_r[2]),
	.D(N_8_i),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_r_Z[1]  (
	.Q(out_inner_prod_r[1]),
	.D(N_6_i),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:181
  FDCE \acc_r_Z[0]  (
	.Q(out_inner_prod_r[0]),
	.D(N_4_i),
	.C(clk),
	.CLR(rst),
	.CE(un7_acc_enable_lut6_2_O6)
);
// @25:158
  FDC \in_b_i_reg_Z[11]  (
	.Q(in_b_i_reg[11]),
	.D(in_b_i_reg_2[11]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_i_reg_Z[10]  (
	.Q(in_b_i_reg[10]),
	.D(in_b_i_reg_2[10]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_i_reg_Z[9]  (
	.Q(in_b_i_reg[9]),
	.D(in_b_i_reg_2[9]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_i_reg_Z[8]  (
	.Q(in_b_i_reg[8]),
	.D(in_b_i_reg_2[8]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_i_reg_Z[7]  (
	.Q(in_b_i_reg[7]),
	.D(in_b_i_reg_2[7]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_i_reg_Z[6]  (
	.Q(in_b_i_reg[6]),
	.D(in_b_i_reg_2[6]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_i_reg_Z[5]  (
	.Q(in_b_i_reg[5]),
	.D(in_b_i_reg_2[5]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_i_reg_Z[4]  (
	.Q(in_b_i_reg[4]),
	.D(in_b_i_reg_2[4]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_i_reg_Z[3]  (
	.Q(in_b_i_reg[3]),
	.D(N_521_i),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_i_reg_Z[2]  (
	.Q(in_b_i_reg[2]),
	.D(N_517_i_0),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_i_reg_Z[1]  (
	.Q(in_b_i_reg[1]),
	.D(in_b_i_reg_2[1]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_i_reg_Z[0]  (
	.Q(in_b_i_reg[0]),
	.D(in_b_i_reg_2[0]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_r_reg_Z[11]  (
	.Q(in_b_r_reg[11]),
	.D(in_b_r_reg_2[11]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_r_reg_Z[10]  (
	.Q(in_b_r_reg[10]),
	.D(in_b_r_reg_2[10]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_r_reg_Z[9]  (
	.Q(in_b_r_reg[9]),
	.D(in_b_r_reg_2[9]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_r_reg_Z[8]  (
	.Q(in_b_r_reg[8]),
	.D(in_b_r_reg_2[8]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_r_reg_Z[7]  (
	.Q(in_b_r_reg[7]),
	.D(in_b_r_reg_2[7]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_r_reg_Z[6]  (
	.Q(in_b_r_reg[6]),
	.D(N_522_i),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_r_reg_Z[5]  (
	.Q(in_b_r_reg[5]),
	.D(in_b_r_reg_2[5]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_r_reg_Z[4]  (
	.Q(in_b_r_reg[4]),
	.D(in_b_r_reg_2[4]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_r_reg_Z[3]  (
	.Q(in_b_r_reg[3]),
	.D(in_b_r_reg_2[3]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_r_reg_Z[2]  (
	.Q(in_b_r_reg[2]),
	.D(in_b_r_reg_2[2]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_r_reg_Z[1]  (
	.Q(in_b_r_reg[1]),
	.D(in_b_r_reg_2[1]),
	.C(clk),
	.CLR(rst)
);
// @25:158
  FDC \in_b_r_reg_Z[0]  (
	.Q(in_b_r_reg[0]),
	.D(N_185_i),
	.C(clk),
	.CLR(rst)
);
// @25:158
  LUT5_L \in_a_r_reg_RNO[7]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(N_623),
	.I4(vec_in_r_AQ_mux_0_6),
	.LO(N_193_i)
);
defparam \in_a_r_reg_RNO[7] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_a_r_reg_3_cZ[8]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(single_out_r_AQ_7),
	.I4(vec_in_r_AQ_mux_0_7),
	.LO(in_a_r_reg_3[8])
);
defparam \in_a_r_reg_3_cZ[8] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_a_r_reg_3_cZ[1]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(single_out_r_AQ_0),
	.I4(vec_in_r_AQ_mux_0_0),
	.LO(in_a_r_reg_3[1])
);
defparam \in_a_r_reg_3_cZ[1] .INIT=32'hFC54A800;
// @25:158
  LUT5_L \in_a_i_reg_RNO[7]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(N_568),
	.I4(vec_in_i_AQ_mux_0_7),
	.LO(N_520_i)
);
defparam \in_a_i_reg_RNO[7] .INIT=32'hFC54A800;
// @25:158
  LUT5_L \in_a_r_reg_RNO[0]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(N_622),
	.I4(N_507),
	.LO(N_191_i)
);
defparam \in_a_r_reg_RNO[0] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_a_i_reg_2_cZ[1]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(single_out_i_AQ_1),
	.I4(vec_in_i_AQ_mux_0_1),
	.LO(in_a_i_reg_2[1])
);
defparam \in_a_i_reg_2_cZ[1] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_a_i_reg_2_cZ[0]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(single_out_i_AQ_0),
	.I4(vec_in_i_AQ_mux_0_0),
	.LO(in_a_i_reg_2[0])
);
defparam \in_a_i_reg_2_cZ[0] .INIT=32'hFC54A800;
// @25:158
  LUT5_L \in_a_i_reg_RNO[2]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(N_549),
	.I4(N_505),
	.LO(N_516_i_0)
);
defparam \in_a_i_reg_RNO[2] .INIT=32'hFC54A800;
// @25:158
  LUT5_L \in_a_r_reg_RNO[10]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(N_597),
	.I4(vec_in_r_AQ_mux_0_9),
	.LO(N_183_i)
);
defparam \in_a_r_reg_RNO[10] .INIT=32'hFC54A800;
// @25:158
  LUT5_L \in_a_i_reg_RNO[6]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(N_567),
	.I4(vec_in_i_AQ_mux_0_6),
	.LO(N_519_i_0)
);
defparam \in_a_i_reg_RNO[6] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_a_r_reg_3_cZ[2]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(single_out_r_AQ_1),
	.I4(vec_in_r_AQ_mux_0_1),
	.LO(in_a_r_reg_3[2])
);
defparam \in_a_r_reg_3_cZ[2] .INIT=32'hFC54A800;
// @25:158
  LUT5_L \in_a_r_reg_RNO[9]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(N_596),
	.I4(vec_in_r_AQ_mux_0_8),
	.LO(N_524_i)
);
defparam \in_a_r_reg_RNO[9] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_a_i_reg_2_cZ[8]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(single_out_i_AQ_8),
	.I4(vec_in_i_AQ_mux_0_8),
	.LO(in_a_i_reg_2[8])
);
defparam \in_a_i_reg_2_cZ[8] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_a_i_reg_2_cZ[10]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(single_out_i_AQ_10),
	.I4(vec_in_i_AQ_mux_0_10),
	.LO(in_a_i_reg_2[10])
);
defparam \in_a_i_reg_2_cZ[10] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_a_i_reg_2_cZ[5]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(N_628),
	.I4(vec_in_i_AQ_mux_0_5),
	.LO(in_a_i_reg_2[5])
);
defparam \in_a_i_reg_2_cZ[5] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_a_r_reg_3_cZ[5]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(single_out_r_AQ_4),
	.I4(vec_in_r_AQ_mux_0_4),
	.LO(in_a_r_reg_3[5])
);
defparam \in_a_r_reg_3_cZ[5] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_a_r_reg_3_cZ[4]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(N_637),
	.I4(vec_in_r_AQ_mux_0_3),
	.LO(in_a_r_reg_3[4])
);
defparam \in_a_r_reg_3_cZ[4] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_a_i_reg_2_cZ[9]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(single_out_i_AQ_9),
	.I4(vec_in_i_AQ_mux_0_9),
	.LO(in_a_i_reg_2[9])
);
defparam \in_a_i_reg_2_cZ[9] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_a_i_reg_2_cZ[4]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(single_out_i_AQ_4),
	.I4(vec_in_i_AQ_mux_0_4),
	.LO(in_a_i_reg_2[4])
);
defparam \in_a_i_reg_2_cZ[4] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_a_r_reg_3_cZ[3]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(single_out_r_AQ_2),
	.I4(vec_in_r_AQ_mux_0_2),
	.LO(in_a_r_reg_3[3])
);
defparam \in_a_r_reg_3_cZ[3] .INIT=32'hFC54A800;
// @25:158
  LUT5_L \in_a_i_reg_RNO[3]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(N_566),
	.I4(N_506),
	.LO(N_518_i)
);
defparam \in_a_i_reg_RNO[3] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_b_i_reg_2_cZ[9]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv[9]),
	.I4(N_585),
	.LO(in_b_i_reg_2[9])
);
defparam \in_b_i_reg_2_cZ[9] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_r_reg_2_cZ[5]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv[5]),
	.I4(single_out_r_AQ2_4),
	.LO(in_b_r_reg_2[5])
);
defparam \in_b_r_reg_2_cZ[5] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_i_reg_2_cZ[7]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv[7]),
	.I4(N_584),
	.LO(in_b_i_reg_2[7])
);
defparam \in_b_i_reg_2_cZ[7] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_i_reg_2_cZ[8]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv[8]),
	.I4(N_612),
	.LO(in_b_i_reg_2[8])
);
defparam \in_b_i_reg_2_cZ[8] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_i_reg_2_cZ[6]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv[6]),
	.I4(N_583),
	.LO(in_b_i_reg_2[6])
);
defparam \in_b_i_reg_2_cZ[6] .INIT=32'hA8FC0054;
// @25:158
  LUT5_L \in_a_r_reg_RNO[6]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(N_595),
	.I4(N_508),
	.LO(N_523_i)
);
defparam \in_a_r_reg_RNO[6] .INIT=32'hFC54A800;
// @25:164
  LUT5_L \in_b_r_reg_2_cZ[1]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv[1]),
	.I4(single_out_r_AQ2_0),
	.LO(in_b_r_reg_2[1])
);
defparam \in_b_r_reg_2_cZ[1] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_i_reg_2_cZ[0]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv[0]),
	.I4(single_out_i_AQ2_0),
	.LO(in_b_i_reg_2[0])
);
defparam \in_b_i_reg_2_cZ[0] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_i_reg_2_cZ[5]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv_0_4),
	.I4(single_out_i_AQ2_5),
	.LO(in_b_i_reg_2[5])
);
defparam \in_b_i_reg_2_cZ[5] .INIT=32'hA8FC0054;
// @25:158
  LUT5_L \in_b_r_reg_RNO[0]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(N_501),
	.I4(N_605),
	.LO(N_185_i)
);
defparam \in_b_r_reg_RNO[0] .INIT=32'hA8FC0054;
// @25:158
  LUT5_L \in_a_r_reg_RNO[11]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(vec_in_r_AQ_mux_0_10),
	.I4(N_624),
	.LO(N_195_i)
);
defparam \in_a_r_reg_RNO[11] .INIT=32'hFCA85400;
// @25:164
  LUT5_L \in_b_i_reg_2_cZ[4]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv[4]),
	.I4(single_out_i_AQ2_4),
	.LO(in_b_i_reg_2[4])
);
defparam \in_b_i_reg_2_cZ[4] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_r_reg_2_cZ[10]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv[10]),
	.I4(N_607),
	.LO(in_b_r_reg_2[10])
);
defparam \in_b_r_reg_2_cZ[10] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_a_i_reg_2_cZ[11]  (
	.I0(in_a_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(vec_in_i_AQ_mux_0_11),
	.I4(single_out_i_AQ_11),
	.LO(in_a_i_reg_2[11])
);
defparam \in_a_i_reg_2_cZ[11] .INIT=32'hFCA85400;
// @25:164
  LUT5_L \in_b_r_reg_2_cZ[8]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv_0_7),
	.I4(N_552),
	.LO(in_b_r_reg_2[8])
);
defparam \in_b_r_reg_2_cZ[8] .INIT=32'hA8FC0054;
// @25:158
  LUT5_L \in_b_i_reg_RNO[2]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv[2]),
	.I4(N_555),
	.LO(N_517_i_0)
);
defparam \in_b_i_reg_RNO[2] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_i_reg_2_cZ[1]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv_0_0),
	.I4(single_out_i_AQ2_1),
	.LO(in_b_i_reg_2[1])
);
defparam \in_b_i_reg_2_cZ[1] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_i_reg_2_cZ[10]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv_0_9),
	.I4(N_586),
	.LO(in_b_i_reg_2[10])
);
defparam \in_b_i_reg_2_cZ[10] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_r_reg_2_cZ[3]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv[3]),
	.I4(N_645),
	.LO(in_b_r_reg_2[3])
);
defparam \in_b_r_reg_2_cZ[3] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_r_reg_2_cZ[2]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv_0_1),
	.I4(single_out_r_AQ2_1),
	.LO(in_b_r_reg_2[2])
);
defparam \in_b_r_reg_2_cZ[2] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_r_reg_2_cZ[7]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv_0_6),
	.I4(single_out_r_AQ2_6),
	.LO(in_b_r_reg_2[7])
);
defparam \in_b_r_reg_2_cZ[7] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_r_reg_2_cZ[4]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv_0_3),
	.I4(N_641),
	.LO(in_b_r_reg_2[4])
);
defparam \in_b_r_reg_2_cZ[4] .INIT=32'hA8FC0054;
// @25:158
  LUT5_L \in_b_i_reg_RNO[3]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv_0_2),
	.I4(N_582),
	.LO(N_521_i)
);
defparam \in_b_i_reg_RNO[3] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_r_reg_2_cZ[9]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(output_iv_0_8),
	.I4(N_606),
	.LO(in_b_r_reg_2[9])
);
defparam \in_b_r_reg_2_cZ[9] .INIT=32'hA8FC0054;
// @25:164
  LUT5_L \in_b_r_reg_2_cZ[11]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(out_r_vec_sub_0[11]),
	.I4(N_632),
	.LO(in_b_r_reg_2[11])
);
defparam \in_b_r_reg_2_cZ[11] .INIT=32'hFCA85400;
// @25:164
  LUT5_L \in_b_i_reg_2_cZ[11]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(out_i_vec_sub_0[11]),
	.I4(single_out_i_AQ2_11),
	.LO(in_b_i_reg_2[11])
);
defparam \in_b_i_reg_2_cZ[11] .INIT=32'hFCA85400;
// @25:158
  LUT5_L \in_b_r_reg_RNO[6]  (
	.I0(in_b_inner_prod_sel[0]),
	.I1(in_reg_enable_fsm),
	.I2(start_inner_prod),
	.I3(N_500),
	.I4(N_571),
	.LO(N_522_i)
);
defparam \in_b_r_reg_RNO[6] .INIT=32'hA8FC0054;
// @25:181
  LUT5_L \acc_r_RNO[7]  (
	.I0(mult_out_r[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_r[11]),
	.I3(un2_pre_out[7]),
	.I4(un2_pre_out_s_11),
	.LO(N_18_i)
);
defparam \acc_r_RNO[7] .INIT=32'h33011300;
// @25:181
  LUT5_L \acc_r_RNO[6]  (
	.I0(mult_out_r[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_r[11]),
	.I3(un2_pre_out[6]),
	.I4(un2_pre_out_s_11),
	.LO(N_16_i)
);
defparam \acc_r_RNO[6] .INIT=32'h33011300;
// @25:181
  LUT5_L \acc_r_RNO[5]  (
	.I0(mult_out_r[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_r[11]),
	.I3(un2_pre_out[5]),
	.I4(un2_pre_out_s_11),
	.LO(N_14_i)
);
defparam \acc_r_RNO[5] .INIT=32'h33011300;
// @25:181
  LUT5_L \acc_r_RNO[4]  (
	.I0(mult_out_r[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_r[11]),
	.I3(un2_pre_out[4]),
	.I4(un2_pre_out_s_11),
	.LO(N_12_i)
);
defparam \acc_r_RNO[4] .INIT=32'h33011300;
// @25:181
  LUT6_L \acc_r_RNO[0]  (
	.I0(mult_out_r[0]),
	.I1(mult_out_r[11]),
	.I2(out_inner_prod_r[0]),
	.I3(acc_clear),
	.I4(out_inner_prod_r[11]),
	.I5(un2_pre_out_s_11),
	.LO(N_4_i)
);
defparam \acc_r_RNO[0] .INIT=64'h005A007B0012005A;
// @25:181
  LUT5_L \acc_r_RNO[9]  (
	.I0(mult_out_r[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_r[11]),
	.I3(un2_pre_out[9]),
	.I4(un2_pre_out_s_11),
	.LO(N_22_i)
);
defparam \acc_r_RNO[9] .INIT=32'h33011300;
// @25:181
  LUT5_L \acc_r_RNO[3]  (
	.I0(mult_out_r[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_r[11]),
	.I3(un2_pre_out[3]),
	.I4(un2_pre_out_s_11),
	.LO(N_10_i)
);
defparam \acc_r_RNO[3] .INIT=32'h33011300;
// @25:181
  LUT5_L \acc_r_RNO[2]  (
	.I0(mult_out_r[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_r[11]),
	.I3(un2_pre_out[2]),
	.I4(un2_pre_out_s_11),
	.LO(N_8_i)
);
defparam \acc_r_RNO[2] .INIT=32'h33011300;
// @25:181
  LUT5_L \acc_r_RNO[1]  (
	.I0(mult_out_r[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_r[11]),
	.I3(un2_pre_out[1]),
	.I4(un2_pre_out_s_11),
	.LO(N_6_i)
);
defparam \acc_r_RNO[1] .INIT=32'h33011300;
// @25:181
  LUT5_L \acc_r_RNO[10]  (
	.I0(mult_out_r[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_r[11]),
	.I3(un2_pre_out_0[10]),
	.I4(un2_pre_out_s_11),
	.LO(N_24_i)
);
defparam \acc_r_RNO[10] .INIT=32'h33011300;
// @25:185
  LUT6_L \acc_i_2_cZ[0]  (
	.I0(mult_out_i[0]),
	.I1(out_inner_prod_i[0]),
	.I2(mult_out_i[11]),
	.I3(acc_clear),
	.I4(out_inner_prod_i[11]),
	.I5(un2_pre_out_s_11_0),
	.LO(acc_i_2[0])
);
defparam \acc_i_2_cZ[0] .INIT=64'h0066006F00060066;
// @25:108
  LUT6_L \state_ns_0_0[1]  (
	.I0(pipe_counter[2]),
	.I1(in_counter[2]),
	.I2(in_counter[0]),
	.I3(state[1]),
	.I4(state[0]),
	.I5(red_mat_reg),
	.LO(state_ns[1])
);
defparam \state_ns_0_0[1] .INIT=64'hF0F05500CCCC5500;
// @25:108
  LUT4_L done_e (
	.I0(pipe_counter[2]),
	.I1(state[1]),
	.I2(done_inner_prod),
	.I3(state[0]),
	.LO(done)
);
defparam done_e.INIT=16'hF0C8;
// @25:108
  LUT6_L \state_ns_0_0[0]  (
	.I0(in_counter[2]),
	.I1(in_counter[0]),
	.I2(state[1]),
	.I3(state[0]),
	.I4(red_mat_reg),
	.I5(start_inner_prod),
	.LO(state_ns[0])
);
defparam \state_ns_0_0[0] .INIT=64'h330F550F33005500;
// @25:108
  LUT5_L in_reg_enable_fsm_e (
	.I0(state[1]),
	.I1(state[0]),
	.I2(in_reg_enable_fsm),
	.I3(start_inner_prod),
	.I4(in_reg_enable_fsm_0_sqmuxa),
	.LO(in_reg_enable_fsm_0)
);
defparam in_reg_enable_fsm_e.INIT=32'h3333F1F0;
// @25:185
  LUT5_L \acc_i_2_cZ[8]  (
	.I0(mult_out_i[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_i[11]),
	.I3(un2_pre_out[8]),
	.I4(un2_pre_out_s_11_0),
	.LO(acc_i_2[8])
);
defparam \acc_i_2_cZ[8] .INIT=32'h33011300;
// @25:185
  LUT5_L \acc_i_2_cZ[4]  (
	.I0(mult_out_i[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_i[11]),
	.I3(un2_pre_out_0[4]),
	.I4(un2_pre_out_s_11_0),
	.LO(acc_i_2[4])
);
defparam \acc_i_2_cZ[4] .INIT=32'h33011300;
// @25:185
  LUT5_L \acc_i_2_cZ[7]  (
	.I0(mult_out_i[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_i[11]),
	.I3(un2_pre_out_0[7]),
	.I4(un2_pre_out_s_11_0),
	.LO(acc_i_2[7])
);
defparam \acc_i_2_cZ[7] .INIT=32'h33011300;
// @25:185
  LUT5_L \acc_i_2_cZ[3]  (
	.I0(mult_out_i[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_i[11]),
	.I3(un2_pre_out_0[3]),
	.I4(un2_pre_out_s_11_0),
	.LO(acc_i_2[3])
);
defparam \acc_i_2_cZ[3] .INIT=32'h33011300;
// @25:185
  LUT5_L \acc_i_2_cZ[5]  (
	.I0(mult_out_i[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_i[11]),
	.I3(un2_pre_out_0[5]),
	.I4(un2_pre_out_s_11_0),
	.LO(acc_i_2[5])
);
defparam \acc_i_2_cZ[5] .INIT=32'h33011300;
// @25:185
  LUT5_L \acc_i_2_cZ[1]  (
	.I0(mult_out_i[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_i[11]),
	.I3(un2_pre_out_0[1]),
	.I4(un2_pre_out_s_11_0),
	.LO(acc_i_2[1])
);
defparam \acc_i_2_cZ[1] .INIT=32'h33011300;
// @25:185
  LUT5_L \acc_i_2_cZ[2]  (
	.I0(mult_out_i[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_i[11]),
	.I3(un2_pre_out_0[2]),
	.I4(un2_pre_out_s_11_0),
	.LO(acc_i_2[2])
);
defparam \acc_i_2_cZ[2] .INIT=32'h33011300;
// @25:185
  LUT5_L \acc_i_2_cZ[9]  (
	.I0(mult_out_i[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_i[11]),
	.I3(un2_pre_out_0[9]),
	.I4(un2_pre_out_s_11_0),
	.LO(acc_i_2[9])
);
defparam \acc_i_2_cZ[9] .INIT=32'h33011300;
// @25:185
  LUT5_L \acc_i_2_cZ[6]  (
	.I0(mult_out_i[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_i[11]),
	.I3(un2_pre_out_0[6]),
	.I4(un2_pre_out_s_11_0),
	.LO(acc_i_2[6])
);
defparam \acc_i_2_cZ[6] .INIT=32'h33011300;
//@25:108
// @25:195
  complex_mult_pipe_prod cp_mult (
	.mult_out_r(mult_out_r[11:0]),
	.mult_out_i(mult_out_i[11:0]),
	.in_a_r_reg(in_a_r_reg[11:0]),
	.in_b_r_reg(in_b_r_reg[11:0]),
	.in_a_i_reg(in_a_i_reg[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.clk(clk)
);
// @25:207
  add_subZ0_add_r add_r (
	.mult_out_r(mult_out_r[11:0]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.un2_pre_out_10(un2_pre_out_0[10]),
	.un2_pre_out_9(un2_pre_out[9]),
	.un2_pre_out_7(un2_pre_out[7]),
	.un2_pre_out_6(un2_pre_out[6]),
	.un2_pre_out_5(un2_pre_out[5]),
	.un2_pre_out_4(un2_pre_out[4]),
	.un2_pre_out_3(un2_pre_out[3]),
	.un2_pre_out_2(un2_pre_out[2]),
	.un2_pre_out_1(un2_pre_out[1]),
	.acc_clear(acc_clear),
	.un2_pre_out_s_11(un2_pre_out_s_11),
	.N_26_i(N_26_i),
	.N_20_i(N_20_i)
);
// @25:215
  add_subZ0_add_r_1 add_i (
	.mult_out_i(mult_out_i[11:0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.un2_pre_out_10(un2_pre_out[10]),
	.un2_pre_out_9(un2_pre_out_0[9]),
	.un2_pre_out_8(un2_pre_out[8]),
	.un2_pre_out_7(un2_pre_out_0[7]),
	.un2_pre_out_6(un2_pre_out_0[6]),
	.un2_pre_out_5(un2_pre_out_0[5]),
	.un2_pre_out_4(un2_pre_out_0[4]),
	.un2_pre_out_3(un2_pre_out_0[3]),
	.un2_pre_out_2(un2_pre_out_0[2]),
	.un2_pre_out_1(un2_pre_out_0[1]),
	.un2_pre_out_s_11_0(un2_pre_out_s_11_0)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
// @26:363
  LUT4 \in_counter_RNICR971_o6[1]  (
	.I0(in_counter[1]),
	.I1(in_counter[2]),
	.I2(state[0]),
	.I3(un1_state_4_0_0_lut6_2_O6),
	.O(in_counter_5_43_i_i_a2)
);
defparam \in_counter_RNICR971_o6[1] .INIT=16'hA0CC;
// @26:363
  LUT3 \in_counter_RNICR971_o5[1]  (
	.I0(in_counter[0]),
	.I1(state[0]),
	.I2(un1_state_4_0_0_lut6_2_O6),
	.O(state_i_0[0])
);
defparam \in_counter_RNICR971_o5[1] .INIT=8'h3A;
// @25:117
  LUT4 \pipe_counter_4_0_a2_lut6_2_o6[2]  (
	.I0(pipe_counter[1]),
	.I1(pipe_counter[2]),
	.I2(state[0]),
	.I3(un1_state_8_0_0_a2_lut6_2_O5),
	.O(pipe_counter_4_0_a2[2])
);
defparam \pipe_counter_4_0_a2_lut6_2_o6[2] .INIT=16'h0ACC;
// @25:117
  LUT4 \pipe_counter_4_0_a2_lut6_2_o5[2]  (
	.I0(pipe_counter[0]),
	.I1(pipe_counter[1]),
	.I2(state[0]),
	.I3(un1_state_8_0_0_a2_lut6_2_O5),
	.O(pipe_counter_4_0_a2[1])
);
defparam \pipe_counter_4_0_a2_lut6_2_o5[2] .INIT=16'h0ACC;
// @25:188
  LUT2 un7_acc_enable_lut6_2_o6 (
	.I0(acc_enable),
	.I1(acc_clear),
	.O(un7_acc_enable_lut6_2_O6)
);
defparam un7_acc_enable_lut6_2_o6.INIT=4'hE;
// @25:188
  LUT4 un7_acc_enable_lut6_2_o5 (
	.I0(state[1]),
	.I1(state[0]),
	.I2(acc_clear),
	.I3(start_inner_prod),
	.O(acc_clear_0)
);
defparam un7_acc_enable_lut6_2_o5.INIT=16'hB1A0;
// @25:117
  LUT4 un1_state_8_0_0_a2_lut6_2_o6 (
	.I0(in_counter[2]),
	.I1(in_counter[0]),
	.I2(state[0]),
	.I3(red_mat_reg),
	.O(in_reg_enable_fsm_0_sqmuxa)
);
defparam un1_state_8_0_0_a2_lut6_2_o6.INIT=16'hC0A0;
// @25:117
  LUT5 un1_state_8_0_0_a2_lut6_2_o5 (
	.I0(in_counter[2]),
	.I1(in_counter[0]),
	.I2(state[1]),
	.I3(state[0]),
	.I4(red_mat_reg),
	.O(un1_state_8_0_0_a2_lut6_2_O5)
);
defparam un1_state_8_0_0_a2_lut6_2_o5.INIT=32'hFCF0FAF0;
// @25:117
  LUT3 un1_state_4_0_0_lut6_2_o6 (
	.I0(state[1]),
	.I1(state[0]),
	.I2(start_inner_prod),
	.O(un1_state_4_0_0_lut6_2_O6)
);
defparam un1_state_4_0_0_lut6_2_o6.INIT=8'hDC;
// @25:117
  LUT4 un1_state_4_0_0_lut6_2_o5 (
	.I0(acc_enable),
	.I1(pipe_counter[2]),
	.I2(state[1]),
	.I3(state[0]),
	.O(acc_enable_0)
);
defparam un1_state_4_0_0_lut6_2_o5.INIT=16'hFF2A;
// @25:185
  LUT4 \acc_i_2_lut6_2_o6[11]  (
	.I0(mult_out_i[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_i[11]),
	.I3(un2_pre_out_s_11_0),
	.O(acc_i_2[11])
);
defparam \acc_i_2_lut6_2_o6[11] .INIT=16'h3220;
// @25:185
  LUT5 \acc_i_2_lut6_2_o5[11]  (
	.I0(mult_out_i[11]),
	.I1(acc_clear),
	.I2(out_inner_prod_i[11]),
	.I3(un2_pre_out[10]),
	.I4(un2_pre_out_s_11_0),
	.O(acc_i_2[10])
);
defparam \acc_i_2_lut6_2_o5[11] .INIT=32'h33011300;
endmodule /* inner_prod */

module mult_pipe_4 (
  mult1_out_23,
  mult1_out_0,
  P_uc_24_0,
  out_inner_prod_r,
  vec_out_r_AQ_2,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  in_b_vec_mult_sel,
  clk,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i
)
;
output mult1_out_23 ;
output [23:0] mult1_out_0 ;
output [47:24] P_uc_24_0 ;
input [11:0] out_inner_prod_r ;
input [11:0] vec_out_r_AQ_2 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
wire mult1_out_23 ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire clk ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire [29:0] ACOUT_24;
wire [17:0] BCOUT_24;
wire [3:0] CARRYOUT_24;
wire [22:0] mult1_out;
wire [47:24] P_uc_24;
wire CARRYCASCOUT_24 ;
wire MULTSIGNOUT_24 ;
wire OVERFLOW_24 ;
wire PATTERNBDETECT_24 ;
wire PATTERNDETECT_24 ;
wire UNDERFLOW_24 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_24[29:0]),
	.BCOUT(BCOUT_24[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_24),
	.CARRYOUT(CARRYOUT_24[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_24),
	.OVERFLOW(OVERFLOW_24),
	.P({P_uc_24[47:24], mult1_out_23, mult1_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_24),
	.PATTERNDETECT(PATTERNDETECT_24),
	.PCOUT({P_uc_24_0[47:24], mult1_out_0[23:0]}),
	.UNDERFLOW(UNDERFLOW_24),
	.A({out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(VCC),
	.CEALUMODE(GND),
	.CEB1(VCC),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(VCC),
	.CEINMODE(VCC),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_10, out_inv_sqrt_9, out_inv_sqrt_8, out_inv_sqrt_7, N_434_i, N_431_i, N_428_i, N_425_i, out_inv_sqrt_2, out_inv_sqrt_1, out_inv_sqrt_0}),
	.INMODE({GND, GND, in_b_vec_mult_sel[0], in_b_vec_mult_sel[0], GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=1;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=2;
defparam \pre_out[23:0] .BREG=2;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=1;
defparam \pre_out[23:0] .INMODEREG=1;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .USE_DPORT="TRUE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_4 */

module mult_pipe_5 (
  mult2_out_23,
  vec_out_i_AQ_2,
  out_inner_prod_i,
  in_b_vec_mult_sel,
  clk
)
;
output mult2_out_23 ;
input [11:0] vec_out_i_AQ_2 ;
input [11:0] out_inner_prod_i ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
wire mult2_out_23 ;
wire clk ;
wire [29:0] ACOUT_25;
wire [17:0] BCOUT_25;
wire [3:0] CARRYOUT_25;
wire [22:0] mult2_out;
wire [47:24] P_uc_25;
wire [47:0] PCOUT_25;
wire CARRYCASCOUT_25 ;
wire MULTSIGNOUT_25 ;
wire OVERFLOW_25 ;
wire PATTERNBDETECT_25 ;
wire PATTERNDETECT_25 ;
wire UNDERFLOW_25 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_25[29:0]),
	.BCOUT(BCOUT_25[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_25),
	.CARRYOUT(CARRYOUT_25[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_25),
	.OVERFLOW(OVERFLOW_25),
	.P({P_uc_25[47:24], mult2_out_23, mult2_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_25),
	.PATTERNDETECT(PATTERNDETECT_25),
	.PCOUT(PCOUT_25[47:0]),
	.UNDERFLOW(UNDERFLOW_25),
	.A({vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(VCC),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(in_b_vec_mult_sel[0]),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=1;
defparam \pre_out[23:0] .BREG=1;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=1;
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_5 */

module mult_pipe_6 (
  mult3_out_23,
  vec_out_r_AQ_2,
  out_inner_prod_i,
  in_b_vec_mult_sel,
  clk
)
;
output mult3_out_23 ;
input [11:0] vec_out_r_AQ_2 ;
input [11:0] out_inner_prod_i ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
wire mult3_out_23 ;
wire clk ;
wire [29:0] ACOUT_26;
wire [17:0] BCOUT_26;
wire [3:0] CARRYOUT_26;
wire [22:0] mult3_out;
wire [47:24] P_uc_26;
wire [47:0] PCOUT_26;
wire CARRYCASCOUT_26 ;
wire MULTSIGNOUT_26 ;
wire OVERFLOW_26 ;
wire PATTERNBDETECT_26 ;
wire PATTERNDETECT_26 ;
wire UNDERFLOW_26 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_26[29:0]),
	.BCOUT(BCOUT_26[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_26),
	.CARRYOUT(CARRYOUT_26[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_26),
	.OVERFLOW(OVERFLOW_26),
	.P({P_uc_26[47:24], mult3_out_23, mult3_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_26),
	.PATTERNDETECT(PATTERNDETECT_26),
	.PCOUT(PCOUT_26[47:0]),
	.UNDERFLOW(UNDERFLOW_26),
	.A({vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(VCC),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(in_b_vec_mult_sel[0]),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=1;
defparam \pre_out[23:0] .BREG=1;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=1;
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_6 */

module mult_pipe_7 (
  mult4_out_23,
  mult4_out_0,
  P_uc_27_0,
  out_inner_prod_r,
  vec_out_i_AQ_2,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  in_b_vec_mult_sel,
  clk,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i
)
;
output mult4_out_23 ;
output [23:0] mult4_out_0 ;
output [47:24] P_uc_27_0 ;
input [11:0] out_inner_prod_r ;
input [11:0] vec_out_i_AQ_2 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
wire mult4_out_23 ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire clk ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire [29:0] ACOUT_27;
wire [17:0] BCOUT_27;
wire [3:0] CARRYOUT_27;
wire [22:0] mult4_out;
wire [47:24] P_uc_27;
wire CARRYCASCOUT_27 ;
wire MULTSIGNOUT_27 ;
wire OVERFLOW_27 ;
wire PATTERNBDETECT_27 ;
wire PATTERNDETECT_27 ;
wire UNDERFLOW_27 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_27[29:0]),
	.BCOUT(BCOUT_27[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_27),
	.CARRYOUT(CARRYOUT_27[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_27),
	.OVERFLOW(OVERFLOW_27),
	.P({P_uc_27[47:24], mult4_out_23, mult4_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_27),
	.PATTERNDETECT(PATTERNDETECT_27),
	.PCOUT({P_uc_27_0[47:24], mult4_out_0[23:0]}),
	.UNDERFLOW(UNDERFLOW_27),
	.A({out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(VCC),
	.CEALUMODE(GND),
	.CEB1(VCC),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(VCC),
	.CEINMODE(VCC),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_10, out_inv_sqrt_9, out_inv_sqrt_8, out_inv_sqrt_7, N_434_i, N_431_i, N_428_i, N_425_i, out_inv_sqrt_2, out_inv_sqrt_1, out_inv_sqrt_0}),
	.INMODE({GND, GND, in_b_vec_mult_sel[0], in_b_vec_mult_sel[0], GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=1;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=2;
defparam \pre_out[23:0] .BREG=2;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=1;
defparam \pre_out[23:0] .INMODEREG=1;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .USE_DPORT="TRUE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_7 */

module add_subZ2_1 (
  pre_out_r,
  vec_out_i_AQ_2,
  in_b_i_reg,
  mult1_out_0,
  P_uc_24_0,
  PATTERNDETECT_4,
  clk
)
;
output [23:7] pre_out_r ;
input [11:0] vec_out_i_AQ_2 ;
input [11:0] in_b_i_reg ;
input [23:0] mult1_out_0 ;
input [47:24] P_uc_24_0 ;
output PATTERNDETECT_4 ;
input clk ;
wire PATTERNDETECT_4 ;
wire clk ;
wire [29:0] ACOUT_4;
wire [17:0] BCOUT_4;
wire [3:0] CARRYOUT_4;
wire [6:0] output_Z;
wire [47:24] P_uc_4;
wire [47:0] PCOUT_4;
wire CARRYCASCOUT_4 ;
wire MULTSIGNOUT_4 ;
wire OVERFLOW_4 ;
wire PATTERNBDETECT_4 ;
wire UNDERFLOW_4 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \output[23:0]  (
	.ACOUT(ACOUT_4[29:0]),
	.BCOUT(BCOUT_4[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_4),
	.CARRYOUT(CARRYOUT_4[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_4),
	.OVERFLOW(OVERFLOW_4),
	.P({P_uc_4[47:24], pre_out_r[23:7], output_Z[6:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_4),
	.PATTERNDETECT(PATTERNDETECT_4),
	.PCOUT(PCOUT_4[47:0]),
	.UNDERFLOW(UNDERFLOW_4),
	.A({vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11], vec_out_i_AQ_2[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, VCC, VCC}),
	.B({in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(VCC),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, VCC, GND, VCC, GND, VCC}),
	.PCIN({P_uc_24_0[47:24], mult1_out_0[23:0]}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \output[23:0] .ACASCREG=2;
defparam \output[23:0] .ADREG=0;
defparam \output[23:0] .ALUMODEREG=0;
defparam \output[23:0] .AREG=2;
defparam \output[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \output[23:0] .A_INPUT="DIRECT";
defparam \output[23:0] .BCASCREG=1;
defparam \output[23:0] .BREG=1;
defparam \output[23:0] .B_INPUT="DIRECT";
defparam \output[23:0] .CARRYINREG=0;
defparam \output[23:0] .CARRYINSELREG=0;
defparam \output[23:0] .CREG=1;
defparam \output[23:0] .DREG=0;
defparam \output[23:0] .INMODEREG=0;
defparam \output[23:0] .MASK=48'b111111111111111111111111100001111111111111111111;
defparam \output[23:0] .MREG=0;
defparam \output[23:0] .OPMODEREG=0;
defparam \output[23:0] .PATTERN=48'b111111111111111111111111100001111111111111111111;
defparam \output[23:0] .PREG=0;
defparam \output[23:0] .SEL_MASK="MASK";
defparam \output[23:0] .USE_DPORT="FALSE";
defparam \output[23:0] .USE_MULT="MULTIPLY";
defparam \output[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \output[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* add_subZ2_1 */

module add_subZ1_1 (
  pre_out_i,
  vec_out_r_AQ_2,
  in_b_i_reg,
  mult4_out_0,
  P_uc_27_0,
  PATTERNDETECT_3,
  clk
)
;
output [23:7] pre_out_i ;
input [11:0] vec_out_r_AQ_2 ;
input [11:0] in_b_i_reg ;
input [23:0] mult4_out_0 ;
input [47:24] P_uc_27_0 ;
output PATTERNDETECT_3 ;
input clk ;
wire PATTERNDETECT_3 ;
wire clk ;
wire [29:0] ACOUT_3;
wire [17:0] BCOUT_3;
wire [3:0] CARRYOUT_3;
wire [6:0] un2_pre_out;
wire [47:24] P_uc_3;
wire [47:0] PCOUT_3;
wire CARRYCASCOUT_3 ;
wire MULTSIGNOUT_3 ;
wire OVERFLOW_3 ;
wire PATTERNBDETECT_3 ;
wire UNDERFLOW_3 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \un2_pre_out[23:0]  (
	.ACOUT(ACOUT_3[29:0]),
	.BCOUT(BCOUT_3[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_3),
	.CARRYOUT(CARRYOUT_3[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_3),
	.OVERFLOW(OVERFLOW_3),
	.P({P_uc_3[47:24], pre_out_i[23:7], un2_pre_out[6:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_3),
	.PATTERNDETECT(PATTERNDETECT_3),
	.PCOUT(PCOUT_3[47:0]),
	.UNDERFLOW(UNDERFLOW_3),
	.A({vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11], vec_out_r_AQ_2[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(VCC),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, VCC, GND, VCC, GND, VCC}),
	.PCIN({P_uc_27_0[47:24], mult4_out_0[23:0]}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un2_pre_out[23:0] .ACASCREG=2;
defparam \un2_pre_out[23:0] .ADREG=0;
defparam \un2_pre_out[23:0] .ALUMODEREG=0;
defparam \un2_pre_out[23:0] .AREG=2;
defparam \un2_pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \un2_pre_out[23:0] .A_INPUT="DIRECT";
defparam \un2_pre_out[23:0] .BCASCREG=1;
defparam \un2_pre_out[23:0] .BREG=1;
defparam \un2_pre_out[23:0] .B_INPUT="DIRECT";
defparam \un2_pre_out[23:0] .CARRYINREG=0;
defparam \un2_pre_out[23:0] .CARRYINSELREG=0;
defparam \un2_pre_out[23:0] .CREG=1;
defparam \un2_pre_out[23:0] .DREG=0;
defparam \un2_pre_out[23:0] .INMODEREG=0;
defparam \un2_pre_out[23:0] .MASK=48'b111111111111111111111111100001111111111111111111;
defparam \un2_pre_out[23:0] .MREG=0;
defparam \un2_pre_out[23:0] .OPMODEREG=0;
defparam \un2_pre_out[23:0] .PATTERN=48'b111111111111111111111111100001111111111111111111;
defparam \un2_pre_out[23:0] .PREG=0;
defparam \un2_pre_out[23:0] .SEL_MASK="MASK";
defparam \un2_pre_out[23:0] .USE_DPORT="FALSE";
defparam \un2_pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \un2_pre_out[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \un2_pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* add_subZ1_1 */

module \complex_mult_pipe_vec_mult_inst_gen_mults.2.mult  (
  out_i_vec_mult_2,
  out_r_vec_mult_2,
  out_inner_prod_r,
  vec_out_r_AQ_2,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  in_b_vec_mult_sel,
  vec_out_i_AQ_2,
  out_inner_prod_i,
  in_b_i_reg,
  clk,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i
)
;
output [11:0] out_i_vec_mult_2 ;
output [11:0] out_r_vec_mult_2 ;
input [11:0] out_inner_prod_r ;
input [11:0] vec_out_r_AQ_2 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [0:0] in_b_vec_mult_sel ;
input [11:0] vec_out_i_AQ_2 ;
input [11:0] out_inner_prod_i ;
input [11:0] in_b_i_reg ;
input clk ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire clk ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire [23:7] pre_out_r;
wire [23:7] pre_out_i;
wire [23:23] mult2_out;
wire [23:23] mult1_out;
wire [23:23] mult3_out;
wire [23:23] mult4_out;
wire [11:11] pos_out_r;
wire [11:11] pos_out_i;
wire [10:0] un1_rnd_out_i;
wire [10:0] pos_out_i_iv_i;
wire [10:0] un2_rnd_out_r;
wire [10:0] pos_out_r_iv_i;
wire [23:0] mult1_out_0;
wire [47:24] P_uc_24_0;
wire [23:0] mult4_out_0;
wire [47:24] P_uc_27_0;
wire un2_rnd_out_r_axb_1 ;
wire un2_rnd_out_r_axb_2 ;
wire un2_rnd_out_r_axb_3 ;
wire un2_rnd_out_r_axb_4 ;
wire un2_rnd_out_r_axb_5 ;
wire un2_rnd_out_r_axb_6 ;
wire un2_rnd_out_r_axb_7 ;
wire un2_rnd_out_r_axb_8 ;
wire un2_rnd_out_r_axb_9 ;
wire un2_rnd_out_r_axb_10 ;
wire un2_rnd_out_r_axb_11 ;
wire un1_rnd_out_i_axb_1 ;
wire un1_rnd_out_i_axb_2 ;
wire un1_rnd_out_i_axb_3 ;
wire un1_rnd_out_i_axb_4 ;
wire un1_rnd_out_i_axb_5 ;
wire un1_rnd_out_i_axb_6 ;
wire un1_rnd_out_i_axb_7 ;
wire un1_rnd_out_i_axb_8 ;
wire un1_rnd_out_i_axb_9 ;
wire un1_rnd_out_i_axb_10 ;
wire un1_rnd_out_i_axb_11 ;
wire un1_rnd_out_i_axb_12 ;
wire un2_rnd_out_r_axb_12 ;
wire un5_rnd_sat_out_r_3 ;
wire un4_rnd_sat_out_i_3 ;
wire un1_pos_out_r ;
wire un1_pos_out_i ;
wire PATTERNDETECT_4 ;
wire un2_rnd_out_r_s_12 ;
wire PATTERNDETECT_3 ;
wire un1_rnd_out_i_s_12 ;
wire un1_rnd_out_i_cry_11 ;
wire un1_rnd_out_i_cry_10 ;
wire GND ;
wire un1_rnd_out_i_cry_9 ;
wire un1_rnd_out_i_cry_8 ;
wire un1_rnd_out_i_cry_7 ;
wire un1_rnd_out_i_cry_6 ;
wire un1_rnd_out_i_cry_5 ;
wire un1_rnd_out_i_cry_4 ;
wire un1_rnd_out_i_cry_3 ;
wire un1_rnd_out_i_cry_2 ;
wire un1_rnd_out_i_cry_1 ;
wire un2_rnd_out_r_cry_11 ;
wire un2_rnd_out_r_cry_10 ;
wire un2_rnd_out_r_cry_9 ;
wire un2_rnd_out_r_cry_8 ;
wire un2_rnd_out_r_cry_7 ;
wire un2_rnd_out_r_cry_6 ;
wire un2_rnd_out_r_cry_5 ;
wire un2_rnd_out_r_cry_4 ;
wire un2_rnd_out_r_cry_3 ;
wire un2_rnd_out_r_cry_2 ;
wire un2_rnd_out_r_cry_1 ;
wire VCC ;
// @17:140
  LUT1 un2_rnd_out_r_axb_1_cZ (
	.I0(pre_out_r[8]),
	.O(un2_rnd_out_r_axb_1)
);
defparam un2_rnd_out_r_axb_1_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_2_cZ (
	.I0(pre_out_r[9]),
	.O(un2_rnd_out_r_axb_2)
);
defparam un2_rnd_out_r_axb_2_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_3_cZ (
	.I0(pre_out_r[10]),
	.O(un2_rnd_out_r_axb_3)
);
defparam un2_rnd_out_r_axb_3_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_4_cZ (
	.I0(pre_out_r[11]),
	.O(un2_rnd_out_r_axb_4)
);
defparam un2_rnd_out_r_axb_4_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_5_cZ (
	.I0(pre_out_r[12]),
	.O(un2_rnd_out_r_axb_5)
);
defparam un2_rnd_out_r_axb_5_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_6_cZ (
	.I0(pre_out_r[13]),
	.O(un2_rnd_out_r_axb_6)
);
defparam un2_rnd_out_r_axb_6_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_7_cZ (
	.I0(pre_out_r[14]),
	.O(un2_rnd_out_r_axb_7)
);
defparam un2_rnd_out_r_axb_7_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_8_cZ (
	.I0(pre_out_r[15]),
	.O(un2_rnd_out_r_axb_8)
);
defparam un2_rnd_out_r_axb_8_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_9_cZ (
	.I0(pre_out_r[16]),
	.O(un2_rnd_out_r_axb_9)
);
defparam un2_rnd_out_r_axb_9_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_10_cZ (
	.I0(pre_out_r[17]),
	.O(un2_rnd_out_r_axb_10)
);
defparam un2_rnd_out_r_axb_10_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_11_cZ (
	.I0(pre_out_r[18]),
	.O(un2_rnd_out_r_axb_11)
);
defparam un2_rnd_out_r_axb_11_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_1_cZ (
	.I0(pre_out_i[8]),
	.O(un1_rnd_out_i_axb_1)
);
defparam un1_rnd_out_i_axb_1_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_2_cZ (
	.I0(pre_out_i[9]),
	.O(un1_rnd_out_i_axb_2)
);
defparam un1_rnd_out_i_axb_2_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_3_cZ (
	.I0(pre_out_i[10]),
	.O(un1_rnd_out_i_axb_3)
);
defparam un1_rnd_out_i_axb_3_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_4_cZ (
	.I0(pre_out_i[11]),
	.O(un1_rnd_out_i_axb_4)
);
defparam un1_rnd_out_i_axb_4_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_5_cZ (
	.I0(pre_out_i[12]),
	.O(un1_rnd_out_i_axb_5)
);
defparam un1_rnd_out_i_axb_5_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_6_cZ (
	.I0(pre_out_i[13]),
	.O(un1_rnd_out_i_axb_6)
);
defparam un1_rnd_out_i_axb_6_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_7_cZ (
	.I0(pre_out_i[14]),
	.O(un1_rnd_out_i_axb_7)
);
defparam un1_rnd_out_i_axb_7_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_8_cZ (
	.I0(pre_out_i[15]),
	.O(un1_rnd_out_i_axb_8)
);
defparam un1_rnd_out_i_axb_8_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_9_cZ (
	.I0(pre_out_i[16]),
	.O(un1_rnd_out_i_axb_9)
);
defparam un1_rnd_out_i_axb_9_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_10_cZ (
	.I0(pre_out_i[17]),
	.O(un1_rnd_out_i_axb_10)
);
defparam un1_rnd_out_i_axb_10_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_11_cZ (
	.I0(pre_out_i[18]),
	.O(un1_rnd_out_i_axb_11)
);
defparam un1_rnd_out_i_axb_11_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_12_cZ (
	.I0(pre_out_i[19]),
	.O(un1_rnd_out_i_axb_12)
);
defparam un1_rnd_out_i_axb_12_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_12_cZ (
	.I0(pre_out_r[19]),
	.O(un2_rnd_out_r_axb_12)
);
defparam un2_rnd_out_r_axb_12_cZ.INIT=2'h2;
// @17:144
  LUT4 un5_rnd_sat_out_r_3_cZ (
	.I0(pre_out_r[20]),
	.I1(pre_out_r[21]),
	.I2(pre_out_r[22]),
	.I3(pre_out_r[19]),
	.O(un5_rnd_sat_out_r_3)
);
defparam un5_rnd_sat_out_r_3_cZ.INIT=16'h8000;
// @17:156
  LUT4 un4_rnd_sat_out_i_3_cZ (
	.I0(pre_out_i[20]),
	.I1(pre_out_i[21]),
	.I2(pre_out_i[22]),
	.I3(pre_out_i[19]),
	.O(un4_rnd_sat_out_i_3)
);
defparam un4_rnd_sat_out_i_3_cZ.INIT=16'h8000;
// @17:172
  LUT3 un1_pos_out_r_cZ (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.O(un1_pos_out_r)
);
defparam un1_pos_out_r_cZ.INIT=8'h04;
// @17:177
  LUT3 un1_pos_out_i_cZ (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.O(un1_pos_out_i)
);
defparam un1_pos_out_i_cZ.INIT=8'h08;
// @17:172
  LUT6_L \pos_out_r_iv[11]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_4),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r_s_12),
	.LO(pos_out_r[11])
);
defparam \pos_out_r_iv[11] .INIT=64'hDBD0DBD00000D0D0;
// @17:177
  LUT6_L \pos_out_i_iv[11]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_3),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i_s_12),
	.LO(pos_out_i[11])
);
defparam \pos_out_i_iv[11] .INIT=64'hE7E0E7E00000E0E0;
// @17:183
  LUT6_L \out_i_RNO[10]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_3),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[10]),
	.LO(pos_out_i_iv_i[10])
);
defparam \out_i_RNO[10] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[9]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_3),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[9]),
	.LO(pos_out_i_iv_i[9])
);
defparam \out_i_RNO[9] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[8]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_3),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[8]),
	.LO(pos_out_i_iv_i[8])
);
defparam \out_i_RNO[8] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[7]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_3),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[7]),
	.LO(pos_out_i_iv_i[7])
);
defparam \out_i_RNO[7] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[6]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_3),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[6]),
	.LO(pos_out_i_iv_i[6])
);
defparam \out_i_RNO[6] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[5]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_3),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[5]),
	.LO(pos_out_i_iv_i[5])
);
defparam \out_i_RNO[5] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[4]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_3),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[4]),
	.LO(pos_out_i_iv_i[4])
);
defparam \out_i_RNO[4] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[3]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_3),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[3]),
	.LO(pos_out_i_iv_i[3])
);
defparam \out_i_RNO[3] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[2]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_3),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[2]),
	.LO(pos_out_i_iv_i[2])
);
defparam \out_i_RNO[2] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[1]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_3),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[1]),
	.LO(pos_out_i_iv_i[1])
);
defparam \out_i_RNO[1] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[0]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(un1_rnd_out_i[0]),
	.I4(PATTERNDETECT_3),
	.I5(un4_rnd_sat_out_i_3),
	.LO(pos_out_i_iv_i[0])
);
defparam \out_i_RNO[0] .INIT=64'hFF18FF1F1F181F1F;
// @17:183
  LUT6_L \out_r_RNO[10]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_4),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[10]),
	.LO(pos_out_r_iv_i[10])
);
defparam \out_r_RNO[10] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[9]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_4),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[9]),
	.LO(pos_out_r_iv_i[9])
);
defparam \out_r_RNO[9] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[8]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_4),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[8]),
	.LO(pos_out_r_iv_i[8])
);
defparam \out_r_RNO[8] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[7]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_4),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[7]),
	.LO(pos_out_r_iv_i[7])
);
defparam \out_r_RNO[7] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[6]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_4),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[6]),
	.LO(pos_out_r_iv_i[6])
);
defparam \out_r_RNO[6] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[5]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_4),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[5]),
	.LO(pos_out_r_iv_i[5])
);
defparam \out_r_RNO[5] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[4]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_4),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[4]),
	.LO(pos_out_r_iv_i[4])
);
defparam \out_r_RNO[4] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[3]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_4),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[3]),
	.LO(pos_out_r_iv_i[3])
);
defparam \out_r_RNO[3] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[2]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_4),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[2]),
	.LO(pos_out_r_iv_i[2])
);
defparam \out_r_RNO[2] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[1]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_4),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[1]),
	.LO(pos_out_r_iv_i[1])
);
defparam \out_r_RNO[1] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[0]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(un2_rnd_out_r[0]),
	.I4(PATTERNDETECT_4),
	.I5(un5_rnd_sat_out_r_3),
	.LO(pos_out_r_iv_i[0])
);
defparam \out_r_RNO[0] .INIT=64'hFF24FF2F2F242F2F;
// @17:154
  XORCY un1_rnd_out_i_s_12_cZ (
	.LI(un1_rnd_out_i_axb_12),
	.CI(un1_rnd_out_i_cry_11),
	.O(un1_rnd_out_i_s_12)
);
// @17:154
  XORCY un1_rnd_out_i_s_11 (
	.LI(un1_rnd_out_i_axb_11),
	.CI(un1_rnd_out_i_cry_10),
	.O(un1_rnd_out_i[10])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_11_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_10),
	.S(un1_rnd_out_i_axb_11),
	.LO(un1_rnd_out_i_cry_11)
);
// @17:154
  XORCY un1_rnd_out_i_s_10 (
	.LI(un1_rnd_out_i_axb_10),
	.CI(un1_rnd_out_i_cry_9),
	.O(un1_rnd_out_i[9])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_10_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_9),
	.S(un1_rnd_out_i_axb_10),
	.LO(un1_rnd_out_i_cry_10)
);
// @17:154
  XORCY un1_rnd_out_i_s_9 (
	.LI(un1_rnd_out_i_axb_9),
	.CI(un1_rnd_out_i_cry_8),
	.O(un1_rnd_out_i[8])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_9_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_8),
	.S(un1_rnd_out_i_axb_9),
	.LO(un1_rnd_out_i_cry_9)
);
// @17:154
  XORCY un1_rnd_out_i_s_8 (
	.LI(un1_rnd_out_i_axb_8),
	.CI(un1_rnd_out_i_cry_7),
	.O(un1_rnd_out_i[7])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_8_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_7),
	.S(un1_rnd_out_i_axb_8),
	.LO(un1_rnd_out_i_cry_8)
);
// @17:154
  XORCY un1_rnd_out_i_s_7 (
	.LI(un1_rnd_out_i_axb_7),
	.CI(un1_rnd_out_i_cry_6),
	.O(un1_rnd_out_i[6])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_7_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_6),
	.S(un1_rnd_out_i_axb_7),
	.LO(un1_rnd_out_i_cry_7)
);
// @17:154
  XORCY un1_rnd_out_i_s_6 (
	.LI(un1_rnd_out_i_axb_6),
	.CI(un1_rnd_out_i_cry_5),
	.O(un1_rnd_out_i[5])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_6_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_5),
	.S(un1_rnd_out_i_axb_6),
	.LO(un1_rnd_out_i_cry_6)
);
// @17:154
  XORCY un1_rnd_out_i_s_5 (
	.LI(un1_rnd_out_i_axb_5),
	.CI(un1_rnd_out_i_cry_4),
	.O(un1_rnd_out_i[4])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_5_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_4),
	.S(un1_rnd_out_i_axb_5),
	.LO(un1_rnd_out_i_cry_5)
);
// @17:154
  XORCY un1_rnd_out_i_s_4 (
	.LI(un1_rnd_out_i_axb_4),
	.CI(un1_rnd_out_i_cry_3),
	.O(un1_rnd_out_i[3])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_4_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_3),
	.S(un1_rnd_out_i_axb_4),
	.LO(un1_rnd_out_i_cry_4)
);
// @17:154
  XORCY un1_rnd_out_i_s_3 (
	.LI(un1_rnd_out_i_axb_3),
	.CI(un1_rnd_out_i_cry_2),
	.O(un1_rnd_out_i[2])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_3_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_2),
	.S(un1_rnd_out_i_axb_3),
	.LO(un1_rnd_out_i_cry_3)
);
// @17:154
  XORCY un1_rnd_out_i_s_2 (
	.LI(un1_rnd_out_i_axb_2),
	.CI(un1_rnd_out_i_cry_1),
	.O(un1_rnd_out_i[1])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_2_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_1),
	.S(un1_rnd_out_i_axb_2),
	.LO(un1_rnd_out_i_cry_2)
);
// @17:154
  XORCY un1_rnd_out_i_s_1 (
	.LI(un1_rnd_out_i_axb_1),
	.CI(pre_out_i[7]),
	.O(un1_rnd_out_i[0])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_1_cZ (
	.DI(GND),
	.CI(pre_out_i[7]),
	.S(un1_rnd_out_i_axb_1),
	.LO(un1_rnd_out_i_cry_1)
);
// @17:140
  XORCY un2_rnd_out_r_s_12_cZ (
	.LI(un2_rnd_out_r_axb_12),
	.CI(un2_rnd_out_r_cry_11),
	.O(un2_rnd_out_r_s_12)
);
// @17:140
  XORCY un2_rnd_out_r_s_11 (
	.LI(un2_rnd_out_r_axb_11),
	.CI(un2_rnd_out_r_cry_10),
	.O(un2_rnd_out_r[10])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_11_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_10),
	.S(un2_rnd_out_r_axb_11),
	.LO(un2_rnd_out_r_cry_11)
);
// @17:140
  XORCY un2_rnd_out_r_s_10 (
	.LI(un2_rnd_out_r_axb_10),
	.CI(un2_rnd_out_r_cry_9),
	.O(un2_rnd_out_r[9])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_10_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_9),
	.S(un2_rnd_out_r_axb_10),
	.LO(un2_rnd_out_r_cry_10)
);
// @17:140
  XORCY un2_rnd_out_r_s_9 (
	.LI(un2_rnd_out_r_axb_9),
	.CI(un2_rnd_out_r_cry_8),
	.O(un2_rnd_out_r[8])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_9_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_8),
	.S(un2_rnd_out_r_axb_9),
	.LO(un2_rnd_out_r_cry_9)
);
// @17:140
  XORCY un2_rnd_out_r_s_8 (
	.LI(un2_rnd_out_r_axb_8),
	.CI(un2_rnd_out_r_cry_7),
	.O(un2_rnd_out_r[7])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_8_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_7),
	.S(un2_rnd_out_r_axb_8),
	.LO(un2_rnd_out_r_cry_8)
);
// @17:140
  XORCY un2_rnd_out_r_s_7 (
	.LI(un2_rnd_out_r_axb_7),
	.CI(un2_rnd_out_r_cry_6),
	.O(un2_rnd_out_r[6])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_7_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_6),
	.S(un2_rnd_out_r_axb_7),
	.LO(un2_rnd_out_r_cry_7)
);
// @17:140
  XORCY un2_rnd_out_r_s_6 (
	.LI(un2_rnd_out_r_axb_6),
	.CI(un2_rnd_out_r_cry_5),
	.O(un2_rnd_out_r[5])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_6_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_5),
	.S(un2_rnd_out_r_axb_6),
	.LO(un2_rnd_out_r_cry_6)
);
// @17:140
  XORCY un2_rnd_out_r_s_5 (
	.LI(un2_rnd_out_r_axb_5),
	.CI(un2_rnd_out_r_cry_4),
	.O(un2_rnd_out_r[4])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_5_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_4),
	.S(un2_rnd_out_r_axb_5),
	.LO(un2_rnd_out_r_cry_5)
);
// @17:140
  XORCY un2_rnd_out_r_s_4 (
	.LI(un2_rnd_out_r_axb_4),
	.CI(un2_rnd_out_r_cry_3),
	.O(un2_rnd_out_r[3])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_4_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_3),
	.S(un2_rnd_out_r_axb_4),
	.LO(un2_rnd_out_r_cry_4)
);
// @17:140
  XORCY un2_rnd_out_r_s_3 (
	.LI(un2_rnd_out_r_axb_3),
	.CI(un2_rnd_out_r_cry_2),
	.O(un2_rnd_out_r[2])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_3_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_2),
	.S(un2_rnd_out_r_axb_3),
	.LO(un2_rnd_out_r_cry_3)
);
// @17:140
  XORCY un2_rnd_out_r_s_2 (
	.LI(un2_rnd_out_r_axb_2),
	.CI(un2_rnd_out_r_cry_1),
	.O(un2_rnd_out_r[1])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_2_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_1),
	.S(un2_rnd_out_r_axb_2),
	.LO(un2_rnd_out_r_cry_2)
);
// @17:140
  XORCY un2_rnd_out_r_s_1 (
	.LI(un2_rnd_out_r_axb_1),
	.CI(pre_out_r[7]),
	.O(un2_rnd_out_r[0])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_1_cZ (
	.DI(GND),
	.CI(pre_out_r[7]),
	.S(un2_rnd_out_r_axb_1),
	.LO(un2_rnd_out_r_cry_1)
);
// @17:183
  FDS \out_i_Z[11]  (
	.Q(out_i_vec_mult_2[11]),
	.D(pos_out_i[11]),
	.C(clk),
	.S(un1_pos_out_i)
);
// @17:183
  FDR \out_i_Z[10]  (
	.Q(out_i_vec_mult_2[10]),
	.D(pos_out_i_iv_i[10]),
	.C(clk),
	.R(un1_pos_out_i)
);
// @17:183
  FDR \out_i_Z[9]  (
	.Q(out_i_vec_mult_2[9]),
	.D(pos_out_i_iv_i[9]),
	.C(clk),
	.R(un1_pos_out_i)
);
// @17:183
  FDR \out_i_Z[8]  (
	.Q(out_i_vec_mult_2[8]),
	.D(pos_out_i_iv_i[8]),
	.C(clk),
	.R(un1_pos_out_i)
);
// @17:183
  FDR \out_i_Z[7]  (
	.Q(out_i_vec_mult_2[7]),
	.D(pos_out_i_iv_i[7]),
	.C(clk),
	.R(un1_pos_out_i)
);
// @17:183
  FDR \out_i_Z[6]  (
	.Q(out_i_vec_mult_2[6]),
	.D(pos_out_i_iv_i[6]),
	.C(clk),
	.R(un1_pos_out_i)
);
// @17:183
  FDR \out_i_Z[5]  (
	.Q(out_i_vec_mult_2[5]),
	.D(pos_out_i_iv_i[5]),
	.C(clk),
	.R(un1_pos_out_i)
);
// @17:183
  FDR \out_i_Z[4]  (
	.Q(out_i_vec_mult_2[4]),
	.D(pos_out_i_iv_i[4]),
	.C(clk),
	.R(un1_pos_out_i)
);
// @17:183
  FDR \out_i_Z[3]  (
	.Q(out_i_vec_mult_2[3]),
	.D(pos_out_i_iv_i[3]),
	.C(clk),
	.R(un1_pos_out_i)
);
// @17:183
  FDR \out_i_Z[2]  (
	.Q(out_i_vec_mult_2[2]),
	.D(pos_out_i_iv_i[2]),
	.C(clk),
	.R(un1_pos_out_i)
);
// @17:183
  FDR \out_i_Z[1]  (
	.Q(out_i_vec_mult_2[1]),
	.D(pos_out_i_iv_i[1]),
	.C(clk),
	.R(un1_pos_out_i)
);
// @17:183
  FDR \out_i_Z[0]  (
	.Q(out_i_vec_mult_2[0]),
	.D(pos_out_i_iv_i[0]),
	.C(clk),
	.R(un1_pos_out_i)
);
// @17:183
  FDS \out_r_Z[11]  (
	.Q(out_r_vec_mult_2[11]),
	.D(pos_out_r[11]),
	.C(clk),
	.S(un1_pos_out_r)
);
// @17:183
  FDR \out_r_Z[10]  (
	.Q(out_r_vec_mult_2[10]),
	.D(pos_out_r_iv_i[10]),
	.C(clk),
	.R(un1_pos_out_r)
);
// @17:183
  FDR \out_r_Z[9]  (
	.Q(out_r_vec_mult_2[9]),
	.D(pos_out_r_iv_i[9]),
	.C(clk),
	.R(un1_pos_out_r)
);
// @17:183
  FDR \out_r_Z[8]  (
	.Q(out_r_vec_mult_2[8]),
	.D(pos_out_r_iv_i[8]),
	.C(clk),
	.R(un1_pos_out_r)
);
// @17:183
  FDR \out_r_Z[7]  (
	.Q(out_r_vec_mult_2[7]),
	.D(pos_out_r_iv_i[7]),
	.C(clk),
	.R(un1_pos_out_r)
);
// @17:183
  FDR \out_r_Z[6]  (
	.Q(out_r_vec_mult_2[6]),
	.D(pos_out_r_iv_i[6]),
	.C(clk),
	.R(un1_pos_out_r)
);
// @17:183
  FDR \out_r_Z[5]  (
	.Q(out_r_vec_mult_2[5]),
	.D(pos_out_r_iv_i[5]),
	.C(clk),
	.R(un1_pos_out_r)
);
// @17:183
  FDR \out_r_Z[4]  (
	.Q(out_r_vec_mult_2[4]),
	.D(pos_out_r_iv_i[4]),
	.C(clk),
	.R(un1_pos_out_r)
);
// @17:183
  FDR \out_r_Z[3]  (
	.Q(out_r_vec_mult_2[3]),
	.D(pos_out_r_iv_i[3]),
	.C(clk),
	.R(un1_pos_out_r)
);
// @17:183
  FDR \out_r_Z[2]  (
	.Q(out_r_vec_mult_2[2]),
	.D(pos_out_r_iv_i[2]),
	.C(clk),
	.R(un1_pos_out_r)
);
// @17:183
  FDR \out_r_Z[1]  (
	.Q(out_r_vec_mult_2[1]),
	.D(pos_out_r_iv_i[1]),
	.C(clk),
	.R(un1_pos_out_r)
);
// @17:183
  FDR \out_r_Z[0]  (
	.Q(out_r_vec_mult_2[0]),
	.D(pos_out_r_iv_i[0]),
	.C(clk),
	.R(un1_pos_out_r)
);
// @17:80
  mult_pipe_4 mult1 (
	.mult1_out_23(mult1_out[23]),
	.mult1_out_0(mult1_out_0[23:0]),
	.P_uc_24_0(P_uc_24_0[47:24]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.vec_out_r_AQ_2(vec_out_r_AQ_2[11:0]),
	.out_inv_sqrt_0(out_inv_sqrt_0),
	.out_inv_sqrt_1(out_inv_sqrt_1),
	.out_inv_sqrt_2(out_inv_sqrt_2),
	.out_inv_sqrt_7(out_inv_sqrt_7),
	.out_inv_sqrt_8(out_inv_sqrt_8),
	.out_inv_sqrt_9(out_inv_sqrt_9),
	.out_inv_sqrt_10(out_inv_sqrt_10),
	.out_inv_sqrt_11(out_inv_sqrt_11),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i)
);
// @17:88
  mult_pipe_5 mult2 (
	.mult2_out_23(mult2_out[23]),
	.vec_out_i_AQ_2(vec_out_i_AQ_2[11:0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk)
);
// @17:96
  mult_pipe_6 mult3 (
	.mult3_out_23(mult3_out[23]),
	.vec_out_r_AQ_2(vec_out_r_AQ_2[11:0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk)
);
// @17:104
  mult_pipe_7 mult4 (
	.mult4_out_23(mult4_out[23]),
	.mult4_out_0(mult4_out_0[23:0]),
	.P_uc_27_0(P_uc_27_0[47:24]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.vec_out_i_AQ_2(vec_out_i_AQ_2[11:0]),
	.out_inv_sqrt_0(out_inv_sqrt_0),
	.out_inv_sqrt_1(out_inv_sqrt_1),
	.out_inv_sqrt_2(out_inv_sqrt_2),
	.out_inv_sqrt_7(out_inv_sqrt_7),
	.out_inv_sqrt_8(out_inv_sqrt_8),
	.out_inv_sqrt_9(out_inv_sqrt_9),
	.out_inv_sqrt_10(out_inv_sqrt_10),
	.out_inv_sqrt_11(out_inv_sqrt_11),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i)
);
// @17:112
  add_subZ2_1 sub (
	.pre_out_r(pre_out_r[23:7]),
	.vec_out_i_AQ_2(vec_out_i_AQ_2[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.mult1_out_0(mult1_out_0[23:0]),
	.P_uc_24_0(P_uc_24_0[47:24]),
	.PATTERNDETECT_4(PATTERNDETECT_4),
	.clk(clk)
);
// @17:122
  add_subZ1_1 add (
	.pre_out_i(pre_out_i[23:7]),
	.vec_out_r_AQ_2(vec_out_r_AQ_2[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.mult4_out_0(mult4_out_0[23:0]),
	.P_uc_27_0(P_uc_27_0[47:24]),
	.PATTERNDETECT_3(PATTERNDETECT_3),
	.clk(clk)
);
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
endmodule /* \complex_mult_pipe_vec_mult_inst_gen_mults.2.mult  */

module mult_pipe_8 (
  mult1_out_23,
  mult1_out_0,
  P_uc_20_0,
  out_inner_prod_r,
  vec_out_r_AQ_1,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  in_b_vec_mult_sel,
  clk,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i
)
;
output mult1_out_23 ;
output [23:0] mult1_out_0 ;
output [47:24] P_uc_20_0 ;
input [11:0] out_inner_prod_r ;
input [11:0] vec_out_r_AQ_1 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
wire mult1_out_23 ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire clk ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire [29:0] ACOUT_20;
wire [17:0] BCOUT_20;
wire [3:0] CARRYOUT_20;
wire [22:0] mult1_out;
wire [47:24] P_uc_20;
wire CARRYCASCOUT_20 ;
wire MULTSIGNOUT_20 ;
wire OVERFLOW_20 ;
wire PATTERNBDETECT_20 ;
wire PATTERNDETECT_20 ;
wire UNDERFLOW_20 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_20[29:0]),
	.BCOUT(BCOUT_20[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_20),
	.CARRYOUT(CARRYOUT_20[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_20),
	.OVERFLOW(OVERFLOW_20),
	.P({P_uc_20[47:24], mult1_out_23, mult1_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_20),
	.PATTERNDETECT(PATTERNDETECT_20),
	.PCOUT({P_uc_20_0[47:24], mult1_out_0[23:0]}),
	.UNDERFLOW(UNDERFLOW_20),
	.A({out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(VCC),
	.CEALUMODE(GND),
	.CEB1(VCC),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(VCC),
	.CEINMODE(VCC),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_10, out_inv_sqrt_9, out_inv_sqrt_8, out_inv_sqrt_7, N_434_i, N_431_i, N_428_i, N_425_i, out_inv_sqrt_2, out_inv_sqrt_1, out_inv_sqrt_0}),
	.INMODE({GND, GND, in_b_vec_mult_sel[0], in_b_vec_mult_sel[0], GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=1;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=2;
defparam \pre_out[23:0] .BREG=2;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=1;
defparam \pre_out[23:0] .INMODEREG=1;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .USE_DPORT="TRUE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_8 */

module mult_pipe_9 (
  mult2_out_23,
  vec_out_i_AQ_1,
  out_inner_prod_i,
  in_b_vec_mult_sel,
  clk
)
;
output mult2_out_23 ;
input [11:0] vec_out_i_AQ_1 ;
input [11:0] out_inner_prod_i ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
wire mult2_out_23 ;
wire clk ;
wire [29:0] ACOUT_21;
wire [17:0] BCOUT_21;
wire [3:0] CARRYOUT_21;
wire [22:0] mult2_out;
wire [47:24] P_uc_21;
wire [47:0] PCOUT_21;
wire CARRYCASCOUT_21 ;
wire MULTSIGNOUT_21 ;
wire OVERFLOW_21 ;
wire PATTERNBDETECT_21 ;
wire PATTERNDETECT_21 ;
wire UNDERFLOW_21 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_21[29:0]),
	.BCOUT(BCOUT_21[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_21),
	.CARRYOUT(CARRYOUT_21[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_21),
	.OVERFLOW(OVERFLOW_21),
	.P({P_uc_21[47:24], mult2_out_23, mult2_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_21),
	.PATTERNDETECT(PATTERNDETECT_21),
	.PCOUT(PCOUT_21[47:0]),
	.UNDERFLOW(UNDERFLOW_21),
	.A({vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(VCC),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(in_b_vec_mult_sel[0]),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=1;
defparam \pre_out[23:0] .BREG=1;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=1;
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_9 */

module mult_pipe_10 (
  mult3_out_23,
  vec_out_r_AQ_1,
  out_inner_prod_i,
  in_b_vec_mult_sel,
  clk
)
;
output mult3_out_23 ;
input [11:0] vec_out_r_AQ_1 ;
input [11:0] out_inner_prod_i ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
wire mult3_out_23 ;
wire clk ;
wire [29:0] ACOUT_22;
wire [17:0] BCOUT_22;
wire [3:0] CARRYOUT_22;
wire [22:0] mult3_out;
wire [47:24] P_uc_22;
wire [47:0] PCOUT_22;
wire CARRYCASCOUT_22 ;
wire MULTSIGNOUT_22 ;
wire OVERFLOW_22 ;
wire PATTERNBDETECT_22 ;
wire PATTERNDETECT_22 ;
wire UNDERFLOW_22 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_22[29:0]),
	.BCOUT(BCOUT_22[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_22),
	.CARRYOUT(CARRYOUT_22[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_22),
	.OVERFLOW(OVERFLOW_22),
	.P({P_uc_22[47:24], mult3_out_23, mult3_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_22),
	.PATTERNDETECT(PATTERNDETECT_22),
	.PCOUT(PCOUT_22[47:0]),
	.UNDERFLOW(UNDERFLOW_22),
	.A({vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(VCC),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(in_b_vec_mult_sel[0]),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=1;
defparam \pre_out[23:0] .BREG=1;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=1;
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_10 */

module mult_pipe_11 (
  mult4_out_23,
  mult4_out_0,
  P_uc_23_0,
  out_inner_prod_r,
  vec_out_i_AQ_1,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  in_b_vec_mult_sel,
  clk,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i
)
;
output mult4_out_23 ;
output [23:0] mult4_out_0 ;
output [47:24] P_uc_23_0 ;
input [11:0] out_inner_prod_r ;
input [11:0] vec_out_i_AQ_1 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
wire mult4_out_23 ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire clk ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire [29:0] ACOUT_23;
wire [17:0] BCOUT_23;
wire [3:0] CARRYOUT_23;
wire [22:0] mult4_out;
wire [47:24] P_uc_23;
wire CARRYCASCOUT_23 ;
wire MULTSIGNOUT_23 ;
wire OVERFLOW_23 ;
wire PATTERNBDETECT_23 ;
wire PATTERNDETECT_23 ;
wire UNDERFLOW_23 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_23[29:0]),
	.BCOUT(BCOUT_23[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_23),
	.CARRYOUT(CARRYOUT_23[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_23),
	.OVERFLOW(OVERFLOW_23),
	.P({P_uc_23[47:24], mult4_out_23, mult4_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_23),
	.PATTERNDETECT(PATTERNDETECT_23),
	.PCOUT({P_uc_23_0[47:24], mult4_out_0[23:0]}),
	.UNDERFLOW(UNDERFLOW_23),
	.A({out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(VCC),
	.CEALUMODE(GND),
	.CEB1(VCC),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(VCC),
	.CEINMODE(VCC),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_10, out_inv_sqrt_9, out_inv_sqrt_8, out_inv_sqrt_7, N_434_i, N_431_i, N_428_i, N_425_i, out_inv_sqrt_2, out_inv_sqrt_1, out_inv_sqrt_0}),
	.INMODE({GND, GND, in_b_vec_mult_sel[0], in_b_vec_mult_sel[0], GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=1;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=2;
defparam \pre_out[23:0] .BREG=2;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=1;
defparam \pre_out[23:0] .INMODEREG=1;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .USE_DPORT="TRUE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_11 */

module add_subZ2_2 (
  pre_out_r,
  vec_out_i_AQ_1,
  in_b_i_reg,
  mult1_out_0,
  P_uc_20_0,
  PATTERNDETECT_2,
  clk
)
;
output [23:7] pre_out_r ;
input [11:0] vec_out_i_AQ_1 ;
input [11:0] in_b_i_reg ;
input [23:0] mult1_out_0 ;
input [47:24] P_uc_20_0 ;
output PATTERNDETECT_2 ;
input clk ;
wire PATTERNDETECT_2 ;
wire clk ;
wire [29:0] ACOUT_2;
wire [17:0] BCOUT_2;
wire [3:0] CARRYOUT_2;
wire [6:0] output_Z;
wire [47:24] P_uc_2;
wire [47:0] PCOUT_2;
wire CARRYCASCOUT_2 ;
wire MULTSIGNOUT_2 ;
wire OVERFLOW_2 ;
wire PATTERNBDETECT_2 ;
wire UNDERFLOW_2 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \output[23:0]  (
	.ACOUT(ACOUT_2[29:0]),
	.BCOUT(BCOUT_2[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_2),
	.CARRYOUT(CARRYOUT_2[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_2),
	.OVERFLOW(OVERFLOW_2),
	.P({P_uc_2[47:24], pre_out_r[23:7], output_Z[6:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_2),
	.PATTERNDETECT(PATTERNDETECT_2),
	.PCOUT(PCOUT_2[47:0]),
	.UNDERFLOW(UNDERFLOW_2),
	.A({vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11], vec_out_i_AQ_1[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, VCC, VCC}),
	.B({in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(VCC),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, VCC, GND, VCC, GND, VCC}),
	.PCIN({P_uc_20_0[47:24], mult1_out_0[23:0]}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \output[23:0] .ACASCREG=2;
defparam \output[23:0] .ADREG=0;
defparam \output[23:0] .ALUMODEREG=0;
defparam \output[23:0] .AREG=2;
defparam \output[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \output[23:0] .A_INPUT="DIRECT";
defparam \output[23:0] .BCASCREG=1;
defparam \output[23:0] .BREG=1;
defparam \output[23:0] .B_INPUT="DIRECT";
defparam \output[23:0] .CARRYINREG=0;
defparam \output[23:0] .CARRYINSELREG=0;
defparam \output[23:0] .CREG=1;
defparam \output[23:0] .DREG=0;
defparam \output[23:0] .INMODEREG=0;
defparam \output[23:0] .MASK=48'b111111111111111111111111100001111111111111111111;
defparam \output[23:0] .MREG=0;
defparam \output[23:0] .OPMODEREG=0;
defparam \output[23:0] .PATTERN=48'b111111111111111111111111100001111111111111111111;
defparam \output[23:0] .PREG=0;
defparam \output[23:0] .SEL_MASK="MASK";
defparam \output[23:0] .USE_DPORT="FALSE";
defparam \output[23:0] .USE_MULT="MULTIPLY";
defparam \output[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \output[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* add_subZ2_2 */

module add_subZ1_2 (
  pre_out_i,
  vec_out_r_AQ_1,
  in_b_i_reg,
  mult4_out_0,
  P_uc_23_0,
  PATTERNDETECT_1,
  clk
)
;
output [23:7] pre_out_i ;
input [11:0] vec_out_r_AQ_1 ;
input [11:0] in_b_i_reg ;
input [23:0] mult4_out_0 ;
input [47:24] P_uc_23_0 ;
output PATTERNDETECT_1 ;
input clk ;
wire PATTERNDETECT_1 ;
wire clk ;
wire [29:0] ACOUT_1;
wire [17:0] BCOUT_1;
wire [3:0] CARRYOUT_1;
wire [6:0] un2_pre_out;
wire [47:24] P_uc_1;
wire [47:0] PCOUT_1;
wire CARRYCASCOUT_1 ;
wire MULTSIGNOUT_1 ;
wire OVERFLOW_1 ;
wire PATTERNBDETECT_1 ;
wire UNDERFLOW_1 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \un2_pre_out[23:0]  (
	.ACOUT(ACOUT_1[29:0]),
	.BCOUT(BCOUT_1[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_1),
	.CARRYOUT(CARRYOUT_1[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_1),
	.OVERFLOW(OVERFLOW_1),
	.P({P_uc_1[47:24], pre_out_i[23:7], un2_pre_out[6:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_1),
	.PATTERNDETECT(PATTERNDETECT_1),
	.PCOUT(PCOUT_1[47:0]),
	.UNDERFLOW(UNDERFLOW_1),
	.A({vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11], vec_out_r_AQ_1[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(VCC),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, VCC, GND, VCC, GND, VCC}),
	.PCIN({P_uc_23_0[47:24], mult4_out_0[23:0]}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un2_pre_out[23:0] .ACASCREG=2;
defparam \un2_pre_out[23:0] .ADREG=0;
defparam \un2_pre_out[23:0] .ALUMODEREG=0;
defparam \un2_pre_out[23:0] .AREG=2;
defparam \un2_pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \un2_pre_out[23:0] .A_INPUT="DIRECT";
defparam \un2_pre_out[23:0] .BCASCREG=1;
defparam \un2_pre_out[23:0] .BREG=1;
defparam \un2_pre_out[23:0] .B_INPUT="DIRECT";
defparam \un2_pre_out[23:0] .CARRYINREG=0;
defparam \un2_pre_out[23:0] .CARRYINSELREG=0;
defparam \un2_pre_out[23:0] .CREG=1;
defparam \un2_pre_out[23:0] .DREG=0;
defparam \un2_pre_out[23:0] .INMODEREG=0;
defparam \un2_pre_out[23:0] .MASK=48'b111111111111111111111111100001111111111111111111;
defparam \un2_pre_out[23:0] .MREG=0;
defparam \un2_pre_out[23:0] .OPMODEREG=0;
defparam \un2_pre_out[23:0] .PATTERN=48'b111111111111111111111111100001111111111111111111;
defparam \un2_pre_out[23:0] .PREG=0;
defparam \un2_pre_out[23:0] .SEL_MASK="MASK";
defparam \un2_pre_out[23:0] .USE_DPORT="FALSE";
defparam \un2_pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \un2_pre_out[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \un2_pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* add_subZ1_2 */

module \complex_mult_pipe_vec_mult_inst_gen_mults.2.mult_1  (
  out_i_vec_mult_1,
  out_r_vec_mult_1,
  out_inner_prod_r,
  vec_out_r_AQ_1,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  in_b_vec_mult_sel,
  vec_out_i_AQ_1,
  out_inner_prod_i,
  in_b_i_reg,
  clk,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i
)
;
output [11:0] out_i_vec_mult_1 ;
output [11:0] out_r_vec_mult_1 ;
input [11:0] out_inner_prod_r ;
input [11:0] vec_out_r_AQ_1 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [0:0] in_b_vec_mult_sel ;
input [11:0] vec_out_i_AQ_1 ;
input [11:0] out_inner_prod_i ;
input [11:0] in_b_i_reg ;
input clk ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire clk ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire [23:7] pre_out_r;
wire [23:7] pre_out_i;
wire [23:23] mult2_out;
wire [23:23] mult1_out;
wire [23:23] mult3_out;
wire [23:23] mult4_out;
wire [11:11] pos_out_r;
wire [11:11] pos_out_i;
wire [10:0] un1_rnd_out_i;
wire [10:0] pos_out_i_iv_i;
wire [10:0] un2_rnd_out_r;
wire [10:0] pos_out_r_iv_i;
wire [23:0] mult1_out_0;
wire [47:24] P_uc_20_0;
wire [23:0] mult4_out_0;
wire [47:24] P_uc_23_0;
wire un2_rnd_out_r_axb_1 ;
wire un2_rnd_out_r_axb_2 ;
wire un2_rnd_out_r_axb_3 ;
wire un2_rnd_out_r_axb_4 ;
wire un2_rnd_out_r_axb_5 ;
wire un2_rnd_out_r_axb_6 ;
wire un2_rnd_out_r_axb_7 ;
wire un2_rnd_out_r_axb_8 ;
wire un2_rnd_out_r_axb_9 ;
wire un2_rnd_out_r_axb_10 ;
wire un2_rnd_out_r_axb_11 ;
wire un1_rnd_out_i_axb_1 ;
wire un1_rnd_out_i_axb_2 ;
wire un1_rnd_out_i_axb_3 ;
wire un1_rnd_out_i_axb_4 ;
wire un1_rnd_out_i_axb_5 ;
wire un1_rnd_out_i_axb_6 ;
wire un1_rnd_out_i_axb_7 ;
wire un1_rnd_out_i_axb_8 ;
wire un1_rnd_out_i_axb_9 ;
wire un1_rnd_out_i_axb_10 ;
wire un1_rnd_out_i_axb_11 ;
wire un1_rnd_out_i_axb_12 ;
wire un2_rnd_out_r_axb_12 ;
wire un4_rnd_sat_out_i_3 ;
wire un5_rnd_sat_out_r_3 ;
wire un1_pos_out_r_0 ;
wire un1_pos_out_i_0 ;
wire PATTERNDETECT_2 ;
wire un2_rnd_out_r_s_12_2 ;
wire PATTERNDETECT_1 ;
wire un1_rnd_out_i_s_12_2 ;
wire un1_rnd_out_i_cry_11 ;
wire un1_rnd_out_i_cry_10 ;
wire GND ;
wire un1_rnd_out_i_cry_9 ;
wire un1_rnd_out_i_cry_8 ;
wire un1_rnd_out_i_cry_7 ;
wire un1_rnd_out_i_cry_6 ;
wire un1_rnd_out_i_cry_5 ;
wire un1_rnd_out_i_cry_4 ;
wire un1_rnd_out_i_cry_3 ;
wire un1_rnd_out_i_cry_2 ;
wire un1_rnd_out_i_cry_1 ;
wire un2_rnd_out_r_cry_11 ;
wire un2_rnd_out_r_cry_10 ;
wire un2_rnd_out_r_cry_9 ;
wire un2_rnd_out_r_cry_8 ;
wire un2_rnd_out_r_cry_7 ;
wire un2_rnd_out_r_cry_6 ;
wire un2_rnd_out_r_cry_5 ;
wire un2_rnd_out_r_cry_4 ;
wire un2_rnd_out_r_cry_3 ;
wire un2_rnd_out_r_cry_2 ;
wire un2_rnd_out_r_cry_1 ;
wire VCC ;
// @17:140
  LUT1 un2_rnd_out_r_axb_1_cZ (
	.I0(pre_out_r[8]),
	.O(un2_rnd_out_r_axb_1)
);
defparam un2_rnd_out_r_axb_1_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_2_cZ (
	.I0(pre_out_r[9]),
	.O(un2_rnd_out_r_axb_2)
);
defparam un2_rnd_out_r_axb_2_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_3_cZ (
	.I0(pre_out_r[10]),
	.O(un2_rnd_out_r_axb_3)
);
defparam un2_rnd_out_r_axb_3_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_4_cZ (
	.I0(pre_out_r[11]),
	.O(un2_rnd_out_r_axb_4)
);
defparam un2_rnd_out_r_axb_4_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_5_cZ (
	.I0(pre_out_r[12]),
	.O(un2_rnd_out_r_axb_5)
);
defparam un2_rnd_out_r_axb_5_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_6_cZ (
	.I0(pre_out_r[13]),
	.O(un2_rnd_out_r_axb_6)
);
defparam un2_rnd_out_r_axb_6_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_7_cZ (
	.I0(pre_out_r[14]),
	.O(un2_rnd_out_r_axb_7)
);
defparam un2_rnd_out_r_axb_7_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_8_cZ (
	.I0(pre_out_r[15]),
	.O(un2_rnd_out_r_axb_8)
);
defparam un2_rnd_out_r_axb_8_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_9_cZ (
	.I0(pre_out_r[16]),
	.O(un2_rnd_out_r_axb_9)
);
defparam un2_rnd_out_r_axb_9_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_10_cZ (
	.I0(pre_out_r[17]),
	.O(un2_rnd_out_r_axb_10)
);
defparam un2_rnd_out_r_axb_10_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_11_cZ (
	.I0(pre_out_r[18]),
	.O(un2_rnd_out_r_axb_11)
);
defparam un2_rnd_out_r_axb_11_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_1_cZ (
	.I0(pre_out_i[8]),
	.O(un1_rnd_out_i_axb_1)
);
defparam un1_rnd_out_i_axb_1_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_2_cZ (
	.I0(pre_out_i[9]),
	.O(un1_rnd_out_i_axb_2)
);
defparam un1_rnd_out_i_axb_2_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_3_cZ (
	.I0(pre_out_i[10]),
	.O(un1_rnd_out_i_axb_3)
);
defparam un1_rnd_out_i_axb_3_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_4_cZ (
	.I0(pre_out_i[11]),
	.O(un1_rnd_out_i_axb_4)
);
defparam un1_rnd_out_i_axb_4_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_5_cZ (
	.I0(pre_out_i[12]),
	.O(un1_rnd_out_i_axb_5)
);
defparam un1_rnd_out_i_axb_5_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_6_cZ (
	.I0(pre_out_i[13]),
	.O(un1_rnd_out_i_axb_6)
);
defparam un1_rnd_out_i_axb_6_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_7_cZ (
	.I0(pre_out_i[14]),
	.O(un1_rnd_out_i_axb_7)
);
defparam un1_rnd_out_i_axb_7_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_8_cZ (
	.I0(pre_out_i[15]),
	.O(un1_rnd_out_i_axb_8)
);
defparam un1_rnd_out_i_axb_8_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_9_cZ (
	.I0(pre_out_i[16]),
	.O(un1_rnd_out_i_axb_9)
);
defparam un1_rnd_out_i_axb_9_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_10_cZ (
	.I0(pre_out_i[17]),
	.O(un1_rnd_out_i_axb_10)
);
defparam un1_rnd_out_i_axb_10_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_11_cZ (
	.I0(pre_out_i[18]),
	.O(un1_rnd_out_i_axb_11)
);
defparam un1_rnd_out_i_axb_11_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_12_cZ (
	.I0(pre_out_i[19]),
	.O(un1_rnd_out_i_axb_12)
);
defparam un1_rnd_out_i_axb_12_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_12_cZ (
	.I0(pre_out_r[19]),
	.O(un2_rnd_out_r_axb_12)
);
defparam un2_rnd_out_r_axb_12_cZ.INIT=2'h2;
// @17:156
  LUT4 un4_rnd_sat_out_i_3_cZ (
	.I0(pre_out_i[20]),
	.I1(pre_out_i[21]),
	.I2(pre_out_i[22]),
	.I3(pre_out_i[19]),
	.O(un4_rnd_sat_out_i_3)
);
defparam un4_rnd_sat_out_i_3_cZ.INIT=16'h8000;
// @17:144
  LUT4 un5_rnd_sat_out_r_3_cZ (
	.I0(pre_out_r[20]),
	.I1(pre_out_r[21]),
	.I2(pre_out_r[22]),
	.I3(pre_out_r[19]),
	.O(un5_rnd_sat_out_r_3)
);
defparam un5_rnd_sat_out_r_3_cZ.INIT=16'h8000;
// @17:172
  LUT3 un1_pos_out_r (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.O(un1_pos_out_r_0)
);
defparam un1_pos_out_r.INIT=8'h04;
// @17:177
  LUT3 un1_pos_out_i (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.O(un1_pos_out_i_0)
);
defparam un1_pos_out_i.INIT=8'h08;
// @17:172
  LUT6_L \pos_out_r_iv[11]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_2),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r_s_12_2),
	.LO(pos_out_r[11])
);
defparam \pos_out_r_iv[11] .INIT=64'hDBD0DBD00000D0D0;
// @17:177
  LUT6_L \pos_out_i_iv[11]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_1),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i_s_12_2),
	.LO(pos_out_i[11])
);
defparam \pos_out_i_iv[11] .INIT=64'hE7E0E7E00000E0E0;
// @17:183
  LUT6_L \out_i_RNO[10]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_1),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[10]),
	.LO(pos_out_i_iv_i[10])
);
defparam \out_i_RNO[10] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[9]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_1),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[9]),
	.LO(pos_out_i_iv_i[9])
);
defparam \out_i_RNO[9] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[8]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_1),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[8]),
	.LO(pos_out_i_iv_i[8])
);
defparam \out_i_RNO[8] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[7]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_1),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[7]),
	.LO(pos_out_i_iv_i[7])
);
defparam \out_i_RNO[7] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[6]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_1),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[6]),
	.LO(pos_out_i_iv_i[6])
);
defparam \out_i_RNO[6] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[5]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_1),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[5]),
	.LO(pos_out_i_iv_i[5])
);
defparam \out_i_RNO[5] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[4]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_1),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[4]),
	.LO(pos_out_i_iv_i[4])
);
defparam \out_i_RNO[4] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[3]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_1),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[3]),
	.LO(pos_out_i_iv_i[3])
);
defparam \out_i_RNO[3] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[2]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_1),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[2]),
	.LO(pos_out_i_iv_i[2])
);
defparam \out_i_RNO[2] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[1]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_1),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[1]),
	.LO(pos_out_i_iv_i[1])
);
defparam \out_i_RNO[1] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[0]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(un1_rnd_out_i[0]),
	.I4(PATTERNDETECT_1),
	.I5(un4_rnd_sat_out_i_3),
	.LO(pos_out_i_iv_i[0])
);
defparam \out_i_RNO[0] .INIT=64'hFF18FF1F1F181F1F;
// @17:183
  LUT6_L \out_r_RNO[10]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_2),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[10]),
	.LO(pos_out_r_iv_i[10])
);
defparam \out_r_RNO[10] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[9]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_2),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[9]),
	.LO(pos_out_r_iv_i[9])
);
defparam \out_r_RNO[9] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[8]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_2),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[8]),
	.LO(pos_out_r_iv_i[8])
);
defparam \out_r_RNO[8] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[7]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_2),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[7]),
	.LO(pos_out_r_iv_i[7])
);
defparam \out_r_RNO[7] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[6]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_2),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[6]),
	.LO(pos_out_r_iv_i[6])
);
defparam \out_r_RNO[6] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[5]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_2),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[5]),
	.LO(pos_out_r_iv_i[5])
);
defparam \out_r_RNO[5] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[4]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_2),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[4]),
	.LO(pos_out_r_iv_i[4])
);
defparam \out_r_RNO[4] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[3]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_2),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[3]),
	.LO(pos_out_r_iv_i[3])
);
defparam \out_r_RNO[3] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[2]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_2),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[2]),
	.LO(pos_out_r_iv_i[2])
);
defparam \out_r_RNO[2] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[1]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_2),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[1]),
	.LO(pos_out_r_iv_i[1])
);
defparam \out_r_RNO[1] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[0]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(un2_rnd_out_r[0]),
	.I4(PATTERNDETECT_2),
	.I5(un5_rnd_sat_out_r_3),
	.LO(pos_out_r_iv_i[0])
);
defparam \out_r_RNO[0] .INIT=64'hFF24FF2F2F242F2F;
// @17:154
  XORCY un1_rnd_out_i_s_12 (
	.LI(un1_rnd_out_i_axb_12),
	.CI(un1_rnd_out_i_cry_11),
	.O(un1_rnd_out_i_s_12_2)
);
// @17:154
  XORCY un1_rnd_out_i_s_11 (
	.LI(un1_rnd_out_i_axb_11),
	.CI(un1_rnd_out_i_cry_10),
	.O(un1_rnd_out_i[10])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_11_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_10),
	.S(un1_rnd_out_i_axb_11),
	.LO(un1_rnd_out_i_cry_11)
);
// @17:154
  XORCY un1_rnd_out_i_s_10 (
	.LI(un1_rnd_out_i_axb_10),
	.CI(un1_rnd_out_i_cry_9),
	.O(un1_rnd_out_i[9])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_10_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_9),
	.S(un1_rnd_out_i_axb_10),
	.LO(un1_rnd_out_i_cry_10)
);
// @17:154
  XORCY un1_rnd_out_i_s_9 (
	.LI(un1_rnd_out_i_axb_9),
	.CI(un1_rnd_out_i_cry_8),
	.O(un1_rnd_out_i[8])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_9_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_8),
	.S(un1_rnd_out_i_axb_9),
	.LO(un1_rnd_out_i_cry_9)
);
// @17:154
  XORCY un1_rnd_out_i_s_8 (
	.LI(un1_rnd_out_i_axb_8),
	.CI(un1_rnd_out_i_cry_7),
	.O(un1_rnd_out_i[7])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_8_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_7),
	.S(un1_rnd_out_i_axb_8),
	.LO(un1_rnd_out_i_cry_8)
);
// @17:154
  XORCY un1_rnd_out_i_s_7 (
	.LI(un1_rnd_out_i_axb_7),
	.CI(un1_rnd_out_i_cry_6),
	.O(un1_rnd_out_i[6])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_7_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_6),
	.S(un1_rnd_out_i_axb_7),
	.LO(un1_rnd_out_i_cry_7)
);
// @17:154
  XORCY un1_rnd_out_i_s_6 (
	.LI(un1_rnd_out_i_axb_6),
	.CI(un1_rnd_out_i_cry_5),
	.O(un1_rnd_out_i[5])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_6_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_5),
	.S(un1_rnd_out_i_axb_6),
	.LO(un1_rnd_out_i_cry_6)
);
// @17:154
  XORCY un1_rnd_out_i_s_5 (
	.LI(un1_rnd_out_i_axb_5),
	.CI(un1_rnd_out_i_cry_4),
	.O(un1_rnd_out_i[4])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_5_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_4),
	.S(un1_rnd_out_i_axb_5),
	.LO(un1_rnd_out_i_cry_5)
);
// @17:154
  XORCY un1_rnd_out_i_s_4 (
	.LI(un1_rnd_out_i_axb_4),
	.CI(un1_rnd_out_i_cry_3),
	.O(un1_rnd_out_i[3])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_4_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_3),
	.S(un1_rnd_out_i_axb_4),
	.LO(un1_rnd_out_i_cry_4)
);
// @17:154
  XORCY un1_rnd_out_i_s_3 (
	.LI(un1_rnd_out_i_axb_3),
	.CI(un1_rnd_out_i_cry_2),
	.O(un1_rnd_out_i[2])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_3_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_2),
	.S(un1_rnd_out_i_axb_3),
	.LO(un1_rnd_out_i_cry_3)
);
// @17:154
  XORCY un1_rnd_out_i_s_2 (
	.LI(un1_rnd_out_i_axb_2),
	.CI(un1_rnd_out_i_cry_1),
	.O(un1_rnd_out_i[1])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_2_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_1),
	.S(un1_rnd_out_i_axb_2),
	.LO(un1_rnd_out_i_cry_2)
);
// @17:154
  XORCY un1_rnd_out_i_s_1 (
	.LI(un1_rnd_out_i_axb_1),
	.CI(pre_out_i[7]),
	.O(un1_rnd_out_i[0])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_1_cZ (
	.DI(GND),
	.CI(pre_out_i[7]),
	.S(un1_rnd_out_i_axb_1),
	.LO(un1_rnd_out_i_cry_1)
);
// @17:140
  XORCY un2_rnd_out_r_s_12 (
	.LI(un2_rnd_out_r_axb_12),
	.CI(un2_rnd_out_r_cry_11),
	.O(un2_rnd_out_r_s_12_2)
);
// @17:140
  XORCY un2_rnd_out_r_s_11 (
	.LI(un2_rnd_out_r_axb_11),
	.CI(un2_rnd_out_r_cry_10),
	.O(un2_rnd_out_r[10])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_11_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_10),
	.S(un2_rnd_out_r_axb_11),
	.LO(un2_rnd_out_r_cry_11)
);
// @17:140
  XORCY un2_rnd_out_r_s_10 (
	.LI(un2_rnd_out_r_axb_10),
	.CI(un2_rnd_out_r_cry_9),
	.O(un2_rnd_out_r[9])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_10_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_9),
	.S(un2_rnd_out_r_axb_10),
	.LO(un2_rnd_out_r_cry_10)
);
// @17:140
  XORCY un2_rnd_out_r_s_9 (
	.LI(un2_rnd_out_r_axb_9),
	.CI(un2_rnd_out_r_cry_8),
	.O(un2_rnd_out_r[8])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_9_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_8),
	.S(un2_rnd_out_r_axb_9),
	.LO(un2_rnd_out_r_cry_9)
);
// @17:140
  XORCY un2_rnd_out_r_s_8 (
	.LI(un2_rnd_out_r_axb_8),
	.CI(un2_rnd_out_r_cry_7),
	.O(un2_rnd_out_r[7])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_8_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_7),
	.S(un2_rnd_out_r_axb_8),
	.LO(un2_rnd_out_r_cry_8)
);
// @17:140
  XORCY un2_rnd_out_r_s_7 (
	.LI(un2_rnd_out_r_axb_7),
	.CI(un2_rnd_out_r_cry_6),
	.O(un2_rnd_out_r[6])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_7_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_6),
	.S(un2_rnd_out_r_axb_7),
	.LO(un2_rnd_out_r_cry_7)
);
// @17:140
  XORCY un2_rnd_out_r_s_6 (
	.LI(un2_rnd_out_r_axb_6),
	.CI(un2_rnd_out_r_cry_5),
	.O(un2_rnd_out_r[5])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_6_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_5),
	.S(un2_rnd_out_r_axb_6),
	.LO(un2_rnd_out_r_cry_6)
);
// @17:140
  XORCY un2_rnd_out_r_s_5 (
	.LI(un2_rnd_out_r_axb_5),
	.CI(un2_rnd_out_r_cry_4),
	.O(un2_rnd_out_r[4])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_5_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_4),
	.S(un2_rnd_out_r_axb_5),
	.LO(un2_rnd_out_r_cry_5)
);
// @17:140
  XORCY un2_rnd_out_r_s_4 (
	.LI(un2_rnd_out_r_axb_4),
	.CI(un2_rnd_out_r_cry_3),
	.O(un2_rnd_out_r[3])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_4_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_3),
	.S(un2_rnd_out_r_axb_4),
	.LO(un2_rnd_out_r_cry_4)
);
// @17:140
  XORCY un2_rnd_out_r_s_3 (
	.LI(un2_rnd_out_r_axb_3),
	.CI(un2_rnd_out_r_cry_2),
	.O(un2_rnd_out_r[2])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_3_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_2),
	.S(un2_rnd_out_r_axb_3),
	.LO(un2_rnd_out_r_cry_3)
);
// @17:140
  XORCY un2_rnd_out_r_s_2 (
	.LI(un2_rnd_out_r_axb_2),
	.CI(un2_rnd_out_r_cry_1),
	.O(un2_rnd_out_r[1])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_2_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_1),
	.S(un2_rnd_out_r_axb_2),
	.LO(un2_rnd_out_r_cry_2)
);
// @17:140
  XORCY un2_rnd_out_r_s_1 (
	.LI(un2_rnd_out_r_axb_1),
	.CI(pre_out_r[7]),
	.O(un2_rnd_out_r[0])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_1_cZ (
	.DI(GND),
	.CI(pre_out_r[7]),
	.S(un2_rnd_out_r_axb_1),
	.LO(un2_rnd_out_r_cry_1)
);
// @17:183
  FDS \out_i_Z[11]  (
	.Q(out_i_vec_mult_1[11]),
	.D(pos_out_i[11]),
	.C(clk),
	.S(un1_pos_out_i_0)
);
// @17:183
  FDR \out_i_Z[10]  (
	.Q(out_i_vec_mult_1[10]),
	.D(pos_out_i_iv_i[10]),
	.C(clk),
	.R(un1_pos_out_i_0)
);
// @17:183
  FDR \out_i_Z[9]  (
	.Q(out_i_vec_mult_1[9]),
	.D(pos_out_i_iv_i[9]),
	.C(clk),
	.R(un1_pos_out_i_0)
);
// @17:183
  FDR \out_i_Z[8]  (
	.Q(out_i_vec_mult_1[8]),
	.D(pos_out_i_iv_i[8]),
	.C(clk),
	.R(un1_pos_out_i_0)
);
// @17:183
  FDR \out_i_Z[7]  (
	.Q(out_i_vec_mult_1[7]),
	.D(pos_out_i_iv_i[7]),
	.C(clk),
	.R(un1_pos_out_i_0)
);
// @17:183
  FDR \out_i_Z[6]  (
	.Q(out_i_vec_mult_1[6]),
	.D(pos_out_i_iv_i[6]),
	.C(clk),
	.R(un1_pos_out_i_0)
);
// @17:183
  FDR \out_i_Z[5]  (
	.Q(out_i_vec_mult_1[5]),
	.D(pos_out_i_iv_i[5]),
	.C(clk),
	.R(un1_pos_out_i_0)
);
// @17:183
  FDR \out_i_Z[4]  (
	.Q(out_i_vec_mult_1[4]),
	.D(pos_out_i_iv_i[4]),
	.C(clk),
	.R(un1_pos_out_i_0)
);
// @17:183
  FDR \out_i_Z[3]  (
	.Q(out_i_vec_mult_1[3]),
	.D(pos_out_i_iv_i[3]),
	.C(clk),
	.R(un1_pos_out_i_0)
);
// @17:183
  FDR \out_i_Z[2]  (
	.Q(out_i_vec_mult_1[2]),
	.D(pos_out_i_iv_i[2]),
	.C(clk),
	.R(un1_pos_out_i_0)
);
// @17:183
  FDR \out_i_Z[1]  (
	.Q(out_i_vec_mult_1[1]),
	.D(pos_out_i_iv_i[1]),
	.C(clk),
	.R(un1_pos_out_i_0)
);
// @17:183
  FDR \out_i_Z[0]  (
	.Q(out_i_vec_mult_1[0]),
	.D(pos_out_i_iv_i[0]),
	.C(clk),
	.R(un1_pos_out_i_0)
);
// @17:183
  FDS \out_r_Z[11]  (
	.Q(out_r_vec_mult_1[11]),
	.D(pos_out_r[11]),
	.C(clk),
	.S(un1_pos_out_r_0)
);
// @17:183
  FDR \out_r_Z[10]  (
	.Q(out_r_vec_mult_1[10]),
	.D(pos_out_r_iv_i[10]),
	.C(clk),
	.R(un1_pos_out_r_0)
);
// @17:183
  FDR \out_r_Z[9]  (
	.Q(out_r_vec_mult_1[9]),
	.D(pos_out_r_iv_i[9]),
	.C(clk),
	.R(un1_pos_out_r_0)
);
// @17:183
  FDR \out_r_Z[8]  (
	.Q(out_r_vec_mult_1[8]),
	.D(pos_out_r_iv_i[8]),
	.C(clk),
	.R(un1_pos_out_r_0)
);
// @17:183
  FDR \out_r_Z[7]  (
	.Q(out_r_vec_mult_1[7]),
	.D(pos_out_r_iv_i[7]),
	.C(clk),
	.R(un1_pos_out_r_0)
);
// @17:183
  FDR \out_r_Z[6]  (
	.Q(out_r_vec_mult_1[6]),
	.D(pos_out_r_iv_i[6]),
	.C(clk),
	.R(un1_pos_out_r_0)
);
// @17:183
  FDR \out_r_Z[5]  (
	.Q(out_r_vec_mult_1[5]),
	.D(pos_out_r_iv_i[5]),
	.C(clk),
	.R(un1_pos_out_r_0)
);
// @17:183
  FDR \out_r_Z[4]  (
	.Q(out_r_vec_mult_1[4]),
	.D(pos_out_r_iv_i[4]),
	.C(clk),
	.R(un1_pos_out_r_0)
);
// @17:183
  FDR \out_r_Z[3]  (
	.Q(out_r_vec_mult_1[3]),
	.D(pos_out_r_iv_i[3]),
	.C(clk),
	.R(un1_pos_out_r_0)
);
// @17:183
  FDR \out_r_Z[2]  (
	.Q(out_r_vec_mult_1[2]),
	.D(pos_out_r_iv_i[2]),
	.C(clk),
	.R(un1_pos_out_r_0)
);
// @17:183
  FDR \out_r_Z[1]  (
	.Q(out_r_vec_mult_1[1]),
	.D(pos_out_r_iv_i[1]),
	.C(clk),
	.R(un1_pos_out_r_0)
);
// @17:183
  FDR \out_r_Z[0]  (
	.Q(out_r_vec_mult_1[0]),
	.D(pos_out_r_iv_i[0]),
	.C(clk),
	.R(un1_pos_out_r_0)
);
// @17:80
  mult_pipe_8 mult1 (
	.mult1_out_23(mult1_out[23]),
	.mult1_out_0(mult1_out_0[23:0]),
	.P_uc_20_0(P_uc_20_0[47:24]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.vec_out_r_AQ_1(vec_out_r_AQ_1[11:0]),
	.out_inv_sqrt_0(out_inv_sqrt_0),
	.out_inv_sqrt_1(out_inv_sqrt_1),
	.out_inv_sqrt_2(out_inv_sqrt_2),
	.out_inv_sqrt_7(out_inv_sqrt_7),
	.out_inv_sqrt_8(out_inv_sqrt_8),
	.out_inv_sqrt_9(out_inv_sqrt_9),
	.out_inv_sqrt_10(out_inv_sqrt_10),
	.out_inv_sqrt_11(out_inv_sqrt_11),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i)
);
// @17:88
  mult_pipe_9 mult2 (
	.mult2_out_23(mult2_out[23]),
	.vec_out_i_AQ_1(vec_out_i_AQ_1[11:0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk)
);
// @17:96
  mult_pipe_10 mult3 (
	.mult3_out_23(mult3_out[23]),
	.vec_out_r_AQ_1(vec_out_r_AQ_1[11:0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk)
);
// @17:104
  mult_pipe_11 mult4 (
	.mult4_out_23(mult4_out[23]),
	.mult4_out_0(mult4_out_0[23:0]),
	.P_uc_23_0(P_uc_23_0[47:24]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.vec_out_i_AQ_1(vec_out_i_AQ_1[11:0]),
	.out_inv_sqrt_0(out_inv_sqrt_0),
	.out_inv_sqrt_1(out_inv_sqrt_1),
	.out_inv_sqrt_2(out_inv_sqrt_2),
	.out_inv_sqrt_7(out_inv_sqrt_7),
	.out_inv_sqrt_8(out_inv_sqrt_8),
	.out_inv_sqrt_9(out_inv_sqrt_9),
	.out_inv_sqrt_10(out_inv_sqrt_10),
	.out_inv_sqrt_11(out_inv_sqrt_11),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i)
);
// @17:112
  add_subZ2_2 sub (
	.pre_out_r(pre_out_r[23:7]),
	.vec_out_i_AQ_1(vec_out_i_AQ_1[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.mult1_out_0(mult1_out_0[23:0]),
	.P_uc_20_0(P_uc_20_0[47:24]),
	.PATTERNDETECT_2(PATTERNDETECT_2),
	.clk(clk)
);
// @17:122
  add_subZ1_2 add (
	.pre_out_i(pre_out_i[23:7]),
	.vec_out_r_AQ_1(vec_out_r_AQ_1[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.mult4_out_0(mult4_out_0[23:0]),
	.P_uc_23_0(P_uc_23_0[47:24]),
	.PATTERNDETECT_1(PATTERNDETECT_1),
	.clk(clk)
);
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
endmodule /* \complex_mult_pipe_vec_mult_inst_gen_mults.2.mult_1  */

module mult_pipe_12 (
  mult1_out_23,
  mult1_out_0,
  P_uc_16_0,
  out_inner_prod_r,
  vec_out_r_AQ_0,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  in_b_vec_mult_sel,
  clk,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i
)
;
output mult1_out_23 ;
output [23:0] mult1_out_0 ;
output [47:24] P_uc_16_0 ;
input [11:0] out_inner_prod_r ;
input [11:0] vec_out_r_AQ_0 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
wire mult1_out_23 ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire clk ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire [29:0] ACOUT_16;
wire [17:0] BCOUT_16;
wire [3:0] CARRYOUT_16;
wire [22:0] mult1_out;
wire [47:24] P_uc_16;
wire CARRYCASCOUT_16 ;
wire MULTSIGNOUT_16 ;
wire OVERFLOW_16 ;
wire PATTERNBDETECT_16 ;
wire PATTERNDETECT_16 ;
wire UNDERFLOW_16 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_16[29:0]),
	.BCOUT(BCOUT_16[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_16),
	.CARRYOUT(CARRYOUT_16[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_16),
	.OVERFLOW(OVERFLOW_16),
	.P({P_uc_16[47:24], mult1_out_23, mult1_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_16),
	.PATTERNDETECT(PATTERNDETECT_16),
	.PCOUT({P_uc_16_0[47:24], mult1_out_0[23:0]}),
	.UNDERFLOW(UNDERFLOW_16),
	.A({out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(VCC),
	.CEALUMODE(GND),
	.CEB1(VCC),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(VCC),
	.CEINMODE(VCC),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_10, out_inv_sqrt_9, out_inv_sqrt_8, out_inv_sqrt_7, N_434_i, N_431_i, N_428_i, N_425_i, out_inv_sqrt_2, out_inv_sqrt_1, out_inv_sqrt_0}),
	.INMODE({GND, GND, in_b_vec_mult_sel[0], in_b_vec_mult_sel[0], GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=1;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=2;
defparam \pre_out[23:0] .BREG=2;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=1;
defparam \pre_out[23:0] .INMODEREG=1;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .USE_DPORT="TRUE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_12 */

module mult_pipe_13 (
  mult2_out_23,
  vec_out_i_AQ_0,
  out_inner_prod_i,
  in_b_vec_mult_sel,
  clk
)
;
output mult2_out_23 ;
input [11:0] vec_out_i_AQ_0 ;
input [11:0] out_inner_prod_i ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
wire mult2_out_23 ;
wire clk ;
wire [29:0] ACOUT_17;
wire [17:0] BCOUT_17;
wire [3:0] CARRYOUT_17;
wire [22:0] mult2_out;
wire [47:24] P_uc_17;
wire [47:0] PCOUT_17;
wire CARRYCASCOUT_17 ;
wire MULTSIGNOUT_17 ;
wire OVERFLOW_17 ;
wire PATTERNBDETECT_17 ;
wire PATTERNDETECT_17 ;
wire UNDERFLOW_17 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_17[29:0]),
	.BCOUT(BCOUT_17[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_17),
	.CARRYOUT(CARRYOUT_17[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_17),
	.OVERFLOW(OVERFLOW_17),
	.P({P_uc_17[47:24], mult2_out_23, mult2_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_17),
	.PATTERNDETECT(PATTERNDETECT_17),
	.PCOUT(PCOUT_17[47:0]),
	.UNDERFLOW(UNDERFLOW_17),
	.A({vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(VCC),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(in_b_vec_mult_sel[0]),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=1;
defparam \pre_out[23:0] .BREG=1;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=1;
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_13 */

module mult_pipe_14 (
  mult3_out_23,
  vec_out_r_AQ_0,
  out_inner_prod_i,
  in_b_vec_mult_sel,
  clk
)
;
output mult3_out_23 ;
input [11:0] vec_out_r_AQ_0 ;
input [11:0] out_inner_prod_i ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
wire mult3_out_23 ;
wire clk ;
wire [29:0] ACOUT_18;
wire [17:0] BCOUT_18;
wire [3:0] CARRYOUT_18;
wire [22:0] mult3_out;
wire [47:24] P_uc_18;
wire [47:0] PCOUT_18;
wire CARRYCASCOUT_18 ;
wire MULTSIGNOUT_18 ;
wire OVERFLOW_18 ;
wire PATTERNBDETECT_18 ;
wire PATTERNDETECT_18 ;
wire UNDERFLOW_18 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_18[29:0]),
	.BCOUT(BCOUT_18[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_18),
	.CARRYOUT(CARRYOUT_18[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_18),
	.OVERFLOW(OVERFLOW_18),
	.P({P_uc_18[47:24], mult3_out_23, mult3_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_18),
	.PATTERNDETECT(PATTERNDETECT_18),
	.PCOUT(PCOUT_18[47:0]),
	.UNDERFLOW(UNDERFLOW_18),
	.A({vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(VCC),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(in_b_vec_mult_sel[0]),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=1;
defparam \pre_out[23:0] .BREG=1;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=1;
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_14 */

module mult_pipe_15 (
  mult4_out_23,
  mult4_out_0,
  P_uc_19_0,
  out_inner_prod_r,
  vec_out_i_AQ_0,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  in_b_vec_mult_sel,
  clk,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i
)
;
output mult4_out_23 ;
output [23:0] mult4_out_0 ;
output [47:24] P_uc_19_0 ;
input [11:0] out_inner_prod_r ;
input [11:0] vec_out_i_AQ_0 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
wire mult4_out_23 ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire clk ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire [29:0] ACOUT_19;
wire [17:0] BCOUT_19;
wire [3:0] CARRYOUT_19;
wire [22:0] mult4_out;
wire [47:24] P_uc_19;
wire CARRYCASCOUT_19 ;
wire MULTSIGNOUT_19 ;
wire OVERFLOW_19 ;
wire PATTERNBDETECT_19 ;
wire PATTERNDETECT_19 ;
wire UNDERFLOW_19 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_19[29:0]),
	.BCOUT(BCOUT_19[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_19),
	.CARRYOUT(CARRYOUT_19[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_19),
	.OVERFLOW(OVERFLOW_19),
	.P({P_uc_19[47:24], mult4_out_23, mult4_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_19),
	.PATTERNDETECT(PATTERNDETECT_19),
	.PCOUT({P_uc_19_0[47:24], mult4_out_0[23:0]}),
	.UNDERFLOW(UNDERFLOW_19),
	.A({out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(VCC),
	.CEALUMODE(GND),
	.CEB1(VCC),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(VCC),
	.CEINMODE(VCC),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_10, out_inv_sqrt_9, out_inv_sqrt_8, out_inv_sqrt_7, N_434_i, N_431_i, N_428_i, N_425_i, out_inv_sqrt_2, out_inv_sqrt_1, out_inv_sqrt_0}),
	.INMODE({GND, GND, in_b_vec_mult_sel[0], in_b_vec_mult_sel[0], GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=1;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=2;
defparam \pre_out[23:0] .BREG=2;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=1;
defparam \pre_out[23:0] .INMODEREG=1;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .USE_DPORT="TRUE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_15 */

module add_subZ2_3 (
  pre_out_r,
  vec_out_i_AQ_0,
  in_b_i_reg,
  mult1_out_0,
  P_uc_16_0,
  PATTERNDETECT_0,
  clk
)
;
output [23:7] pre_out_r ;
input [11:0] vec_out_i_AQ_0 ;
input [11:0] in_b_i_reg ;
input [23:0] mult1_out_0 ;
input [47:24] P_uc_16_0 ;
output PATTERNDETECT_0 ;
input clk ;
wire PATTERNDETECT_0 ;
wire clk ;
wire [29:0] ACOUT_0;
wire [17:0] BCOUT_0;
wire [3:0] CARRYOUT_0;
wire [6:0] output_Z;
wire [47:24] P_uc_0;
wire [47:0] PCOUT_0;
wire CARRYCASCOUT_0 ;
wire MULTSIGNOUT_0 ;
wire OVERFLOW_0 ;
wire PATTERNBDETECT_0 ;
wire UNDERFLOW_0 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \output[23:0]  (
	.ACOUT(ACOUT_0[29:0]),
	.BCOUT(BCOUT_0[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_0),
	.CARRYOUT(CARRYOUT_0[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_0),
	.OVERFLOW(OVERFLOW_0),
	.P({P_uc_0[47:24], pre_out_r[23:7], output_Z[6:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_0),
	.PATTERNDETECT(PATTERNDETECT_0),
	.PCOUT(PCOUT_0[47:0]),
	.UNDERFLOW(UNDERFLOW_0),
	.A({vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11], vec_out_i_AQ_0[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, VCC, VCC}),
	.B({in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(VCC),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, VCC, GND, VCC, GND, VCC}),
	.PCIN({P_uc_16_0[47:24], mult1_out_0[23:0]}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \output[23:0] .ACASCREG=2;
defparam \output[23:0] .ADREG=0;
defparam \output[23:0] .ALUMODEREG=0;
defparam \output[23:0] .AREG=2;
defparam \output[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \output[23:0] .A_INPUT="DIRECT";
defparam \output[23:0] .BCASCREG=1;
defparam \output[23:0] .BREG=1;
defparam \output[23:0] .B_INPUT="DIRECT";
defparam \output[23:0] .CARRYINREG=0;
defparam \output[23:0] .CARRYINSELREG=0;
defparam \output[23:0] .CREG=1;
defparam \output[23:0] .DREG=0;
defparam \output[23:0] .INMODEREG=0;
defparam \output[23:0] .MASK=48'b111111111111111111111111100001111111111111111111;
defparam \output[23:0] .MREG=0;
defparam \output[23:0] .OPMODEREG=0;
defparam \output[23:0] .PATTERN=48'b111111111111111111111111100001111111111111111111;
defparam \output[23:0] .PREG=0;
defparam \output[23:0] .SEL_MASK="MASK";
defparam \output[23:0] .USE_DPORT="FALSE";
defparam \output[23:0] .USE_MULT="MULTIPLY";
defparam \output[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \output[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* add_subZ2_3 */

module add_subZ1_3 (
  pre_out_i,
  vec_out_r_AQ_0,
  in_b_i_reg,
  mult4_out_0,
  P_uc_19_0,
  PATTERNDETECT,
  clk
)
;
output [23:7] pre_out_i ;
input [11:0] vec_out_r_AQ_0 ;
input [11:0] in_b_i_reg ;
input [23:0] mult4_out_0 ;
input [47:24] P_uc_19_0 ;
output PATTERNDETECT ;
input clk ;
wire PATTERNDETECT ;
wire clk ;
wire [29:0] ACOUT;
wire [17:0] BCOUT;
wire [3:0] CARRYOUT;
wire [6:0] un2_pre_out;
wire [47:24] P_uc;
wire [47:0] PCOUT;
wire CARRYCASCOUT ;
wire MULTSIGNOUT ;
wire OVERFLOW ;
wire PATTERNBDETECT ;
wire UNDERFLOW ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \un2_pre_out[23:0]  (
	.ACOUT(ACOUT[29:0]),
	.BCOUT(BCOUT[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT),
	.CARRYOUT(CARRYOUT[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT),
	.OVERFLOW(OVERFLOW),
	.P({P_uc[47:24], pre_out_i[23:7], un2_pre_out[6:0]}),
	.PATTERNBDETECT(PATTERNBDETECT),
	.PATTERNDETECT(PATTERNDETECT),
	.PCOUT(PCOUT[47:0]),
	.UNDERFLOW(UNDERFLOW),
	.A({vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11], vec_out_r_AQ_0[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(VCC),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, VCC, GND, VCC, GND, VCC}),
	.PCIN({P_uc_19_0[47:24], mult4_out_0[23:0]}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un2_pre_out[23:0] .ACASCREG=2;
defparam \un2_pre_out[23:0] .ADREG=0;
defparam \un2_pre_out[23:0] .ALUMODEREG=0;
defparam \un2_pre_out[23:0] .AREG=2;
defparam \un2_pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \un2_pre_out[23:0] .A_INPUT="DIRECT";
defparam \un2_pre_out[23:0] .BCASCREG=1;
defparam \un2_pre_out[23:0] .BREG=1;
defparam \un2_pre_out[23:0] .B_INPUT="DIRECT";
defparam \un2_pre_out[23:0] .CARRYINREG=0;
defparam \un2_pre_out[23:0] .CARRYINSELREG=0;
defparam \un2_pre_out[23:0] .CREG=1;
defparam \un2_pre_out[23:0] .DREG=0;
defparam \un2_pre_out[23:0] .INMODEREG=0;
defparam \un2_pre_out[23:0] .MASK=48'b111111111111111111111111100001111111111111111111;
defparam \un2_pre_out[23:0] .MREG=0;
defparam \un2_pre_out[23:0] .OPMODEREG=0;
defparam \un2_pre_out[23:0] .PATTERN=48'b111111111111111111111111100001111111111111111111;
defparam \un2_pre_out[23:0] .PREG=0;
defparam \un2_pre_out[23:0] .SEL_MASK="MASK";
defparam \un2_pre_out[23:0] .USE_DPORT="FALSE";
defparam \un2_pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \un2_pre_out[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \un2_pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* add_subZ1_3 */

module \complex_mult_pipe_vec_mult_inst_gen_mults.2.mult_2  (
  out_i_vec_mult_0,
  out_r_vec_mult_0,
  out_inner_prod_r,
  vec_out_r_AQ_0,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  in_b_vec_mult_sel,
  vec_out_i_AQ_0,
  out_inner_prod_i,
  in_b_i_reg,
  clk,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i
)
;
output [11:0] out_i_vec_mult_0 ;
output [11:0] out_r_vec_mult_0 ;
input [11:0] out_inner_prod_r ;
input [11:0] vec_out_r_AQ_0 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [0:0] in_b_vec_mult_sel ;
input [11:0] vec_out_i_AQ_0 ;
input [11:0] out_inner_prod_i ;
input [11:0] in_b_i_reg ;
input clk ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire clk ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire [23:7] pre_out_r;
wire [23:7] pre_out_i;
wire [23:23] mult2_out;
wire [23:23] mult1_out;
wire [23:23] mult3_out;
wire [23:23] mult4_out;
wire [11:11] pos_out_r;
wire [11:11] pos_out_i;
wire [10:0] un1_rnd_out_i;
wire [10:0] pos_out_i_iv_i;
wire [10:0] un2_rnd_out_r;
wire [10:0] pos_out_r_iv_i;
wire [23:0] mult1_out_0;
wire [47:24] P_uc_16_0;
wire [23:0] mult4_out_0;
wire [47:24] P_uc_19_0;
wire un2_rnd_out_r_axb_1 ;
wire un2_rnd_out_r_axb_2 ;
wire un2_rnd_out_r_axb_3 ;
wire un2_rnd_out_r_axb_4 ;
wire un2_rnd_out_r_axb_5 ;
wire un2_rnd_out_r_axb_6 ;
wire un2_rnd_out_r_axb_7 ;
wire un2_rnd_out_r_axb_8 ;
wire un2_rnd_out_r_axb_9 ;
wire un2_rnd_out_r_axb_10 ;
wire un2_rnd_out_r_axb_11 ;
wire un1_rnd_out_i_axb_1 ;
wire un1_rnd_out_i_axb_2 ;
wire un1_rnd_out_i_axb_3 ;
wire un1_rnd_out_i_axb_4 ;
wire un1_rnd_out_i_axb_5 ;
wire un1_rnd_out_i_axb_6 ;
wire un1_rnd_out_i_axb_7 ;
wire un1_rnd_out_i_axb_8 ;
wire un1_rnd_out_i_axb_9 ;
wire un1_rnd_out_i_axb_10 ;
wire un1_rnd_out_i_axb_11 ;
wire un1_rnd_out_i_axb_12 ;
wire un2_rnd_out_r_axb_12 ;
wire un4_rnd_sat_out_i_3 ;
wire un5_rnd_sat_out_r_3 ;
wire un1_pos_out_r_1 ;
wire un1_pos_out_i_1 ;
wire PATTERNDETECT_0 ;
wire un2_rnd_out_r_s_12_0 ;
wire PATTERNDETECT ;
wire un1_rnd_out_i_s_12_0 ;
wire un1_rnd_out_i_cry_11 ;
wire un1_rnd_out_i_cry_10 ;
wire GND ;
wire un1_rnd_out_i_cry_9 ;
wire un1_rnd_out_i_cry_8 ;
wire un1_rnd_out_i_cry_7 ;
wire un1_rnd_out_i_cry_6 ;
wire un1_rnd_out_i_cry_5 ;
wire un1_rnd_out_i_cry_4 ;
wire un1_rnd_out_i_cry_3 ;
wire un1_rnd_out_i_cry_2 ;
wire un1_rnd_out_i_cry_1 ;
wire un2_rnd_out_r_cry_11 ;
wire un2_rnd_out_r_cry_10 ;
wire un2_rnd_out_r_cry_9 ;
wire un2_rnd_out_r_cry_8 ;
wire un2_rnd_out_r_cry_7 ;
wire un2_rnd_out_r_cry_6 ;
wire un2_rnd_out_r_cry_5 ;
wire un2_rnd_out_r_cry_4 ;
wire un2_rnd_out_r_cry_3 ;
wire un2_rnd_out_r_cry_2 ;
wire un2_rnd_out_r_cry_1 ;
wire VCC ;
// @17:140
  LUT1 un2_rnd_out_r_axb_1_cZ (
	.I0(pre_out_r[8]),
	.O(un2_rnd_out_r_axb_1)
);
defparam un2_rnd_out_r_axb_1_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_2_cZ (
	.I0(pre_out_r[9]),
	.O(un2_rnd_out_r_axb_2)
);
defparam un2_rnd_out_r_axb_2_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_3_cZ (
	.I0(pre_out_r[10]),
	.O(un2_rnd_out_r_axb_3)
);
defparam un2_rnd_out_r_axb_3_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_4_cZ (
	.I0(pre_out_r[11]),
	.O(un2_rnd_out_r_axb_4)
);
defparam un2_rnd_out_r_axb_4_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_5_cZ (
	.I0(pre_out_r[12]),
	.O(un2_rnd_out_r_axb_5)
);
defparam un2_rnd_out_r_axb_5_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_6_cZ (
	.I0(pre_out_r[13]),
	.O(un2_rnd_out_r_axb_6)
);
defparam un2_rnd_out_r_axb_6_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_7_cZ (
	.I0(pre_out_r[14]),
	.O(un2_rnd_out_r_axb_7)
);
defparam un2_rnd_out_r_axb_7_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_8_cZ (
	.I0(pre_out_r[15]),
	.O(un2_rnd_out_r_axb_8)
);
defparam un2_rnd_out_r_axb_8_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_9_cZ (
	.I0(pre_out_r[16]),
	.O(un2_rnd_out_r_axb_9)
);
defparam un2_rnd_out_r_axb_9_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_10_cZ (
	.I0(pre_out_r[17]),
	.O(un2_rnd_out_r_axb_10)
);
defparam un2_rnd_out_r_axb_10_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_11_cZ (
	.I0(pre_out_r[18]),
	.O(un2_rnd_out_r_axb_11)
);
defparam un2_rnd_out_r_axb_11_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_1_cZ (
	.I0(pre_out_i[8]),
	.O(un1_rnd_out_i_axb_1)
);
defparam un1_rnd_out_i_axb_1_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_2_cZ (
	.I0(pre_out_i[9]),
	.O(un1_rnd_out_i_axb_2)
);
defparam un1_rnd_out_i_axb_2_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_3_cZ (
	.I0(pre_out_i[10]),
	.O(un1_rnd_out_i_axb_3)
);
defparam un1_rnd_out_i_axb_3_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_4_cZ (
	.I0(pre_out_i[11]),
	.O(un1_rnd_out_i_axb_4)
);
defparam un1_rnd_out_i_axb_4_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_5_cZ (
	.I0(pre_out_i[12]),
	.O(un1_rnd_out_i_axb_5)
);
defparam un1_rnd_out_i_axb_5_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_6_cZ (
	.I0(pre_out_i[13]),
	.O(un1_rnd_out_i_axb_6)
);
defparam un1_rnd_out_i_axb_6_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_7_cZ (
	.I0(pre_out_i[14]),
	.O(un1_rnd_out_i_axb_7)
);
defparam un1_rnd_out_i_axb_7_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_8_cZ (
	.I0(pre_out_i[15]),
	.O(un1_rnd_out_i_axb_8)
);
defparam un1_rnd_out_i_axb_8_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_9_cZ (
	.I0(pre_out_i[16]),
	.O(un1_rnd_out_i_axb_9)
);
defparam un1_rnd_out_i_axb_9_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_10_cZ (
	.I0(pre_out_i[17]),
	.O(un1_rnd_out_i_axb_10)
);
defparam un1_rnd_out_i_axb_10_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_11_cZ (
	.I0(pre_out_i[18]),
	.O(un1_rnd_out_i_axb_11)
);
defparam un1_rnd_out_i_axb_11_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_12_cZ (
	.I0(pre_out_i[19]),
	.O(un1_rnd_out_i_axb_12)
);
defparam un1_rnd_out_i_axb_12_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_12_cZ (
	.I0(pre_out_r[19]),
	.O(un2_rnd_out_r_axb_12)
);
defparam un2_rnd_out_r_axb_12_cZ.INIT=2'h2;
// @17:156
  LUT4 un4_rnd_sat_out_i_3_cZ (
	.I0(pre_out_i[20]),
	.I1(pre_out_i[21]),
	.I2(pre_out_i[22]),
	.I3(pre_out_i[19]),
	.O(un4_rnd_sat_out_i_3)
);
defparam un4_rnd_sat_out_i_3_cZ.INIT=16'h8000;
// @17:144
  LUT4 un5_rnd_sat_out_r_3_cZ (
	.I0(pre_out_r[20]),
	.I1(pre_out_r[21]),
	.I2(pre_out_r[22]),
	.I3(pre_out_r[19]),
	.O(un5_rnd_sat_out_r_3)
);
defparam un5_rnd_sat_out_r_3_cZ.INIT=16'h8000;
// @17:172
  LUT3 un1_pos_out_r (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.O(un1_pos_out_r_1)
);
defparam un1_pos_out_r.INIT=8'h04;
// @17:177
  LUT3 un1_pos_out_i (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.O(un1_pos_out_i_1)
);
defparam un1_pos_out_i.INIT=8'h08;
// @17:172
  LUT6_L \pos_out_r_iv[11]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_0),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r_s_12_0),
	.LO(pos_out_r[11])
);
defparam \pos_out_r_iv[11] .INIT=64'hDBD0DBD00000D0D0;
// @17:177
  LUT6_L \pos_out_i_iv[11]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i_s_12_0),
	.LO(pos_out_i[11])
);
defparam \pos_out_i_iv[11] .INIT=64'hE7E0E7E00000E0E0;
// @17:183
  LUT6_L \out_i_RNO[10]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[10]),
	.LO(pos_out_i_iv_i[10])
);
defparam \out_i_RNO[10] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[9]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[9]),
	.LO(pos_out_i_iv_i[9])
);
defparam \out_i_RNO[9] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[8]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[8]),
	.LO(pos_out_i_iv_i[8])
);
defparam \out_i_RNO[8] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[7]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[7]),
	.LO(pos_out_i_iv_i[7])
);
defparam \out_i_RNO[7] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[6]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[6]),
	.LO(pos_out_i_iv_i[6])
);
defparam \out_i_RNO[6] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[5]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[5]),
	.LO(pos_out_i_iv_i[5])
);
defparam \out_i_RNO[5] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[4]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[4]),
	.LO(pos_out_i_iv_i[4])
);
defparam \out_i_RNO[4] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[3]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[3]),
	.LO(pos_out_i_iv_i[3])
);
defparam \out_i_RNO[3] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[2]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[2]),
	.LO(pos_out_i_iv_i[2])
);
defparam \out_i_RNO[2] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[1]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[1]),
	.LO(pos_out_i_iv_i[1])
);
defparam \out_i_RNO[1] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[0]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(un1_rnd_out_i[0]),
	.I4(PATTERNDETECT),
	.I5(un4_rnd_sat_out_i_3),
	.LO(pos_out_i_iv_i[0])
);
defparam \out_i_RNO[0] .INIT=64'hFF18FF1F1F181F1F;
// @17:183
  LUT6_L \out_r_RNO[10]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_0),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[10]),
	.LO(pos_out_r_iv_i[10])
);
defparam \out_r_RNO[10] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[9]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_0),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[9]),
	.LO(pos_out_r_iv_i[9])
);
defparam \out_r_RNO[9] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[8]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_0),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[8]),
	.LO(pos_out_r_iv_i[8])
);
defparam \out_r_RNO[8] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[7]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_0),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[7]),
	.LO(pos_out_r_iv_i[7])
);
defparam \out_r_RNO[7] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[6]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_0),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[6]),
	.LO(pos_out_r_iv_i[6])
);
defparam \out_r_RNO[6] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[5]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_0),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[5]),
	.LO(pos_out_r_iv_i[5])
);
defparam \out_r_RNO[5] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[4]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_0),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[4]),
	.LO(pos_out_r_iv_i[4])
);
defparam \out_r_RNO[4] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[3]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_0),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[3]),
	.LO(pos_out_r_iv_i[3])
);
defparam \out_r_RNO[3] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[2]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_0),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[2]),
	.LO(pos_out_r_iv_i[2])
);
defparam \out_r_RNO[2] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[1]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_0),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[1]),
	.LO(pos_out_r_iv_i[1])
);
defparam \out_r_RNO[1] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[0]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(un2_rnd_out_r[0]),
	.I4(PATTERNDETECT_0),
	.I5(un5_rnd_sat_out_r_3),
	.LO(pos_out_r_iv_i[0])
);
defparam \out_r_RNO[0] .INIT=64'hFF24FF2F2F242F2F;
// @17:154
  XORCY un1_rnd_out_i_s_12 (
	.LI(un1_rnd_out_i_axb_12),
	.CI(un1_rnd_out_i_cry_11),
	.O(un1_rnd_out_i_s_12_0)
);
// @17:154
  XORCY un1_rnd_out_i_s_11 (
	.LI(un1_rnd_out_i_axb_11),
	.CI(un1_rnd_out_i_cry_10),
	.O(un1_rnd_out_i[10])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_11_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_10),
	.S(un1_rnd_out_i_axb_11),
	.LO(un1_rnd_out_i_cry_11)
);
// @17:154
  XORCY un1_rnd_out_i_s_10 (
	.LI(un1_rnd_out_i_axb_10),
	.CI(un1_rnd_out_i_cry_9),
	.O(un1_rnd_out_i[9])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_10_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_9),
	.S(un1_rnd_out_i_axb_10),
	.LO(un1_rnd_out_i_cry_10)
);
// @17:154
  XORCY un1_rnd_out_i_s_9 (
	.LI(un1_rnd_out_i_axb_9),
	.CI(un1_rnd_out_i_cry_8),
	.O(un1_rnd_out_i[8])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_9_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_8),
	.S(un1_rnd_out_i_axb_9),
	.LO(un1_rnd_out_i_cry_9)
);
// @17:154
  XORCY un1_rnd_out_i_s_8 (
	.LI(un1_rnd_out_i_axb_8),
	.CI(un1_rnd_out_i_cry_7),
	.O(un1_rnd_out_i[7])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_8_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_7),
	.S(un1_rnd_out_i_axb_8),
	.LO(un1_rnd_out_i_cry_8)
);
// @17:154
  XORCY un1_rnd_out_i_s_7 (
	.LI(un1_rnd_out_i_axb_7),
	.CI(un1_rnd_out_i_cry_6),
	.O(un1_rnd_out_i[6])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_7_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_6),
	.S(un1_rnd_out_i_axb_7),
	.LO(un1_rnd_out_i_cry_7)
);
// @17:154
  XORCY un1_rnd_out_i_s_6 (
	.LI(un1_rnd_out_i_axb_6),
	.CI(un1_rnd_out_i_cry_5),
	.O(un1_rnd_out_i[5])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_6_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_5),
	.S(un1_rnd_out_i_axb_6),
	.LO(un1_rnd_out_i_cry_6)
);
// @17:154
  XORCY un1_rnd_out_i_s_5 (
	.LI(un1_rnd_out_i_axb_5),
	.CI(un1_rnd_out_i_cry_4),
	.O(un1_rnd_out_i[4])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_5_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_4),
	.S(un1_rnd_out_i_axb_5),
	.LO(un1_rnd_out_i_cry_5)
);
// @17:154
  XORCY un1_rnd_out_i_s_4 (
	.LI(un1_rnd_out_i_axb_4),
	.CI(un1_rnd_out_i_cry_3),
	.O(un1_rnd_out_i[3])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_4_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_3),
	.S(un1_rnd_out_i_axb_4),
	.LO(un1_rnd_out_i_cry_4)
);
// @17:154
  XORCY un1_rnd_out_i_s_3 (
	.LI(un1_rnd_out_i_axb_3),
	.CI(un1_rnd_out_i_cry_2),
	.O(un1_rnd_out_i[2])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_3_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_2),
	.S(un1_rnd_out_i_axb_3),
	.LO(un1_rnd_out_i_cry_3)
);
// @17:154
  XORCY un1_rnd_out_i_s_2 (
	.LI(un1_rnd_out_i_axb_2),
	.CI(un1_rnd_out_i_cry_1),
	.O(un1_rnd_out_i[1])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_2_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_1),
	.S(un1_rnd_out_i_axb_2),
	.LO(un1_rnd_out_i_cry_2)
);
// @17:154
  XORCY un1_rnd_out_i_s_1 (
	.LI(un1_rnd_out_i_axb_1),
	.CI(pre_out_i[7]),
	.O(un1_rnd_out_i[0])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_1_cZ (
	.DI(GND),
	.CI(pre_out_i[7]),
	.S(un1_rnd_out_i_axb_1),
	.LO(un1_rnd_out_i_cry_1)
);
// @17:140
  XORCY un2_rnd_out_r_s_12 (
	.LI(un2_rnd_out_r_axb_12),
	.CI(un2_rnd_out_r_cry_11),
	.O(un2_rnd_out_r_s_12_0)
);
// @17:140
  XORCY un2_rnd_out_r_s_11 (
	.LI(un2_rnd_out_r_axb_11),
	.CI(un2_rnd_out_r_cry_10),
	.O(un2_rnd_out_r[10])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_11_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_10),
	.S(un2_rnd_out_r_axb_11),
	.LO(un2_rnd_out_r_cry_11)
);
// @17:140
  XORCY un2_rnd_out_r_s_10 (
	.LI(un2_rnd_out_r_axb_10),
	.CI(un2_rnd_out_r_cry_9),
	.O(un2_rnd_out_r[9])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_10_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_9),
	.S(un2_rnd_out_r_axb_10),
	.LO(un2_rnd_out_r_cry_10)
);
// @17:140
  XORCY un2_rnd_out_r_s_9 (
	.LI(un2_rnd_out_r_axb_9),
	.CI(un2_rnd_out_r_cry_8),
	.O(un2_rnd_out_r[8])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_9_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_8),
	.S(un2_rnd_out_r_axb_9),
	.LO(un2_rnd_out_r_cry_9)
);
// @17:140
  XORCY un2_rnd_out_r_s_8 (
	.LI(un2_rnd_out_r_axb_8),
	.CI(un2_rnd_out_r_cry_7),
	.O(un2_rnd_out_r[7])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_8_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_7),
	.S(un2_rnd_out_r_axb_8),
	.LO(un2_rnd_out_r_cry_8)
);
// @17:140
  XORCY un2_rnd_out_r_s_7 (
	.LI(un2_rnd_out_r_axb_7),
	.CI(un2_rnd_out_r_cry_6),
	.O(un2_rnd_out_r[6])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_7_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_6),
	.S(un2_rnd_out_r_axb_7),
	.LO(un2_rnd_out_r_cry_7)
);
// @17:140
  XORCY un2_rnd_out_r_s_6 (
	.LI(un2_rnd_out_r_axb_6),
	.CI(un2_rnd_out_r_cry_5),
	.O(un2_rnd_out_r[5])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_6_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_5),
	.S(un2_rnd_out_r_axb_6),
	.LO(un2_rnd_out_r_cry_6)
);
// @17:140
  XORCY un2_rnd_out_r_s_5 (
	.LI(un2_rnd_out_r_axb_5),
	.CI(un2_rnd_out_r_cry_4),
	.O(un2_rnd_out_r[4])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_5_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_4),
	.S(un2_rnd_out_r_axb_5),
	.LO(un2_rnd_out_r_cry_5)
);
// @17:140
  XORCY un2_rnd_out_r_s_4 (
	.LI(un2_rnd_out_r_axb_4),
	.CI(un2_rnd_out_r_cry_3),
	.O(un2_rnd_out_r[3])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_4_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_3),
	.S(un2_rnd_out_r_axb_4),
	.LO(un2_rnd_out_r_cry_4)
);
// @17:140
  XORCY un2_rnd_out_r_s_3 (
	.LI(un2_rnd_out_r_axb_3),
	.CI(un2_rnd_out_r_cry_2),
	.O(un2_rnd_out_r[2])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_3_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_2),
	.S(un2_rnd_out_r_axb_3),
	.LO(un2_rnd_out_r_cry_3)
);
// @17:140
  XORCY un2_rnd_out_r_s_2 (
	.LI(un2_rnd_out_r_axb_2),
	.CI(un2_rnd_out_r_cry_1),
	.O(un2_rnd_out_r[1])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_2_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_1),
	.S(un2_rnd_out_r_axb_2),
	.LO(un2_rnd_out_r_cry_2)
);
// @17:140
  XORCY un2_rnd_out_r_s_1 (
	.LI(un2_rnd_out_r_axb_1),
	.CI(pre_out_r[7]),
	.O(un2_rnd_out_r[0])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_1_cZ (
	.DI(GND),
	.CI(pre_out_r[7]),
	.S(un2_rnd_out_r_axb_1),
	.LO(un2_rnd_out_r_cry_1)
);
// @17:183
  FDS \out_i_Z[11]  (
	.Q(out_i_vec_mult_0[11]),
	.D(pos_out_i[11]),
	.C(clk),
	.S(un1_pos_out_i_1)
);
// @17:183
  FDR \out_i_Z[10]  (
	.Q(out_i_vec_mult_0[10]),
	.D(pos_out_i_iv_i[10]),
	.C(clk),
	.R(un1_pos_out_i_1)
);
// @17:183
  FDR \out_i_Z[9]  (
	.Q(out_i_vec_mult_0[9]),
	.D(pos_out_i_iv_i[9]),
	.C(clk),
	.R(un1_pos_out_i_1)
);
// @17:183
  FDR \out_i_Z[8]  (
	.Q(out_i_vec_mult_0[8]),
	.D(pos_out_i_iv_i[8]),
	.C(clk),
	.R(un1_pos_out_i_1)
);
// @17:183
  FDR \out_i_Z[7]  (
	.Q(out_i_vec_mult_0[7]),
	.D(pos_out_i_iv_i[7]),
	.C(clk),
	.R(un1_pos_out_i_1)
);
// @17:183
  FDR \out_i_Z[6]  (
	.Q(out_i_vec_mult_0[6]),
	.D(pos_out_i_iv_i[6]),
	.C(clk),
	.R(un1_pos_out_i_1)
);
// @17:183
  FDR \out_i_Z[5]  (
	.Q(out_i_vec_mult_0[5]),
	.D(pos_out_i_iv_i[5]),
	.C(clk),
	.R(un1_pos_out_i_1)
);
// @17:183
  FDR \out_i_Z[4]  (
	.Q(out_i_vec_mult_0[4]),
	.D(pos_out_i_iv_i[4]),
	.C(clk),
	.R(un1_pos_out_i_1)
);
// @17:183
  FDR \out_i_Z[3]  (
	.Q(out_i_vec_mult_0[3]),
	.D(pos_out_i_iv_i[3]),
	.C(clk),
	.R(un1_pos_out_i_1)
);
// @17:183
  FDR \out_i_Z[2]  (
	.Q(out_i_vec_mult_0[2]),
	.D(pos_out_i_iv_i[2]),
	.C(clk),
	.R(un1_pos_out_i_1)
);
// @17:183
  FDR \out_i_Z[1]  (
	.Q(out_i_vec_mult_0[1]),
	.D(pos_out_i_iv_i[1]),
	.C(clk),
	.R(un1_pos_out_i_1)
);
// @17:183
  FDR \out_i_Z[0]  (
	.Q(out_i_vec_mult_0[0]),
	.D(pos_out_i_iv_i[0]),
	.C(clk),
	.R(un1_pos_out_i_1)
);
// @17:183
  FDS \out_r_Z[11]  (
	.Q(out_r_vec_mult_0[11]),
	.D(pos_out_r[11]),
	.C(clk),
	.S(un1_pos_out_r_1)
);
// @17:183
  FDR \out_r_Z[10]  (
	.Q(out_r_vec_mult_0[10]),
	.D(pos_out_r_iv_i[10]),
	.C(clk),
	.R(un1_pos_out_r_1)
);
// @17:183
  FDR \out_r_Z[9]  (
	.Q(out_r_vec_mult_0[9]),
	.D(pos_out_r_iv_i[9]),
	.C(clk),
	.R(un1_pos_out_r_1)
);
// @17:183
  FDR \out_r_Z[8]  (
	.Q(out_r_vec_mult_0[8]),
	.D(pos_out_r_iv_i[8]),
	.C(clk),
	.R(un1_pos_out_r_1)
);
// @17:183
  FDR \out_r_Z[7]  (
	.Q(out_r_vec_mult_0[7]),
	.D(pos_out_r_iv_i[7]),
	.C(clk),
	.R(un1_pos_out_r_1)
);
// @17:183
  FDR \out_r_Z[6]  (
	.Q(out_r_vec_mult_0[6]),
	.D(pos_out_r_iv_i[6]),
	.C(clk),
	.R(un1_pos_out_r_1)
);
// @17:183
  FDR \out_r_Z[5]  (
	.Q(out_r_vec_mult_0[5]),
	.D(pos_out_r_iv_i[5]),
	.C(clk),
	.R(un1_pos_out_r_1)
);
// @17:183
  FDR \out_r_Z[4]  (
	.Q(out_r_vec_mult_0[4]),
	.D(pos_out_r_iv_i[4]),
	.C(clk),
	.R(un1_pos_out_r_1)
);
// @17:183
  FDR \out_r_Z[3]  (
	.Q(out_r_vec_mult_0[3]),
	.D(pos_out_r_iv_i[3]),
	.C(clk),
	.R(un1_pos_out_r_1)
);
// @17:183
  FDR \out_r_Z[2]  (
	.Q(out_r_vec_mult_0[2]),
	.D(pos_out_r_iv_i[2]),
	.C(clk),
	.R(un1_pos_out_r_1)
);
// @17:183
  FDR \out_r_Z[1]  (
	.Q(out_r_vec_mult_0[1]),
	.D(pos_out_r_iv_i[1]),
	.C(clk),
	.R(un1_pos_out_r_1)
);
// @17:183
  FDR \out_r_Z[0]  (
	.Q(out_r_vec_mult_0[0]),
	.D(pos_out_r_iv_i[0]),
	.C(clk),
	.R(un1_pos_out_r_1)
);
// @17:80
  mult_pipe_12 mult1 (
	.mult1_out_23(mult1_out[23]),
	.mult1_out_0(mult1_out_0[23:0]),
	.P_uc_16_0(P_uc_16_0[47:24]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.vec_out_r_AQ_0(vec_out_r_AQ_0[11:0]),
	.out_inv_sqrt_0(out_inv_sqrt_0),
	.out_inv_sqrt_1(out_inv_sqrt_1),
	.out_inv_sqrt_2(out_inv_sqrt_2),
	.out_inv_sqrt_7(out_inv_sqrt_7),
	.out_inv_sqrt_8(out_inv_sqrt_8),
	.out_inv_sqrt_9(out_inv_sqrt_9),
	.out_inv_sqrt_10(out_inv_sqrt_10),
	.out_inv_sqrt_11(out_inv_sqrt_11),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i)
);
// @17:88
  mult_pipe_13 mult2 (
	.mult2_out_23(mult2_out[23]),
	.vec_out_i_AQ_0(vec_out_i_AQ_0[11:0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk)
);
// @17:96
  mult_pipe_14 mult3 (
	.mult3_out_23(mult3_out[23]),
	.vec_out_r_AQ_0(vec_out_r_AQ_0[11:0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk)
);
// @17:104
  mult_pipe_15 mult4 (
	.mult4_out_23(mult4_out[23]),
	.mult4_out_0(mult4_out_0[23:0]),
	.P_uc_19_0(P_uc_19_0[47:24]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.vec_out_i_AQ_0(vec_out_i_AQ_0[11:0]),
	.out_inv_sqrt_0(out_inv_sqrt_0),
	.out_inv_sqrt_1(out_inv_sqrt_1),
	.out_inv_sqrt_2(out_inv_sqrt_2),
	.out_inv_sqrt_7(out_inv_sqrt_7),
	.out_inv_sqrt_8(out_inv_sqrt_8),
	.out_inv_sqrt_9(out_inv_sqrt_9),
	.out_inv_sqrt_10(out_inv_sqrt_10),
	.out_inv_sqrt_11(out_inv_sqrt_11),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i)
);
// @17:112
  add_subZ2_3 sub (
	.pre_out_r(pre_out_r[23:7]),
	.vec_out_i_AQ_0(vec_out_i_AQ_0[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.mult1_out_0(mult1_out_0[23:0]),
	.P_uc_16_0(P_uc_16_0[47:24]),
	.PATTERNDETECT_0(PATTERNDETECT_0),
	.clk(clk)
);
// @17:122
  add_subZ1_3 add (
	.pre_out_i(pre_out_i[23:7]),
	.vec_out_r_AQ_0(vec_out_r_AQ_0[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.mult4_out_0(mult4_out_0[23:0]),
	.P_uc_19_0(P_uc_19_0[47:24]),
	.PATTERNDETECT(PATTERNDETECT),
	.clk(clk)
);
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
endmodule /* \complex_mult_pipe_vec_mult_inst_gen_mults.2.mult_2  */

module mult_pipe_16 (
  mult1_out_23,
  mult1_out_0,
  P_uc_28_0,
  out_inner_prod_r,
  vec_out_r_AQ_3,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  in_b_vec_mult_sel,
  clk,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i
)
;
output mult1_out_23 ;
output [23:0] mult1_out_0 ;
output [47:24] P_uc_28_0 ;
input [11:0] out_inner_prod_r ;
input [11:0] vec_out_r_AQ_3 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
wire mult1_out_23 ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire clk ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire [29:0] ACOUT_28;
wire [17:0] BCOUT_28;
wire [3:0] CARRYOUT_28;
wire [22:0] mult1_out;
wire [47:24] P_uc_28;
wire CARRYCASCOUT_28 ;
wire MULTSIGNOUT_28 ;
wire OVERFLOW_28 ;
wire PATTERNBDETECT_28 ;
wire PATTERNDETECT_28 ;
wire UNDERFLOW_28 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_28[29:0]),
	.BCOUT(BCOUT_28[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_28),
	.CARRYOUT(CARRYOUT_28[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_28),
	.OVERFLOW(OVERFLOW_28),
	.P({P_uc_28[47:24], mult1_out_23, mult1_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_28),
	.PATTERNDETECT(PATTERNDETECT_28),
	.PCOUT({P_uc_28_0[47:24], mult1_out_0[23:0]}),
	.UNDERFLOW(UNDERFLOW_28),
	.A({out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(VCC),
	.CEALUMODE(GND),
	.CEB1(VCC),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(VCC),
	.CEINMODE(VCC),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_10, out_inv_sqrt_9, out_inv_sqrt_8, out_inv_sqrt_7, N_434_i, N_431_i, N_428_i, N_425_i, out_inv_sqrt_2, out_inv_sqrt_1, out_inv_sqrt_0}),
	.INMODE({GND, GND, in_b_vec_mult_sel[0], in_b_vec_mult_sel[0], GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=1;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=2;
defparam \pre_out[23:0] .BREG=2;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=1;
defparam \pre_out[23:0] .INMODEREG=1;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .USE_DPORT="TRUE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_16 */

module mult_pipe_17 (
  mult2_out_23,
  vec_out_i_AQ_3,
  out_inner_prod_i,
  in_b_vec_mult_sel,
  clk
)
;
output mult2_out_23 ;
input [11:0] vec_out_i_AQ_3 ;
input [11:0] out_inner_prod_i ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
wire mult2_out_23 ;
wire clk ;
wire [29:0] ACOUT_29;
wire [17:0] BCOUT_29;
wire [3:0] CARRYOUT_29;
wire [22:0] mult2_out;
wire [47:24] P_uc_29;
wire [47:0] PCOUT_29;
wire CARRYCASCOUT_29 ;
wire MULTSIGNOUT_29 ;
wire OVERFLOW_29 ;
wire PATTERNBDETECT_29 ;
wire PATTERNDETECT_29 ;
wire UNDERFLOW_29 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_29[29:0]),
	.BCOUT(BCOUT_29[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_29),
	.CARRYOUT(CARRYOUT_29[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_29),
	.OVERFLOW(OVERFLOW_29),
	.P({P_uc_29[47:24], mult2_out_23, mult2_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_29),
	.PATTERNDETECT(PATTERNDETECT_29),
	.PCOUT(PCOUT_29[47:0]),
	.UNDERFLOW(UNDERFLOW_29),
	.A({vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(VCC),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(in_b_vec_mult_sel[0]),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=1;
defparam \pre_out[23:0] .BREG=1;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=1;
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_17 */

module mult_pipe_18 (
  mult3_out_23,
  vec_out_r_AQ_3,
  out_inner_prod_i,
  in_b_vec_mult_sel,
  clk
)
;
output mult3_out_23 ;
input [11:0] vec_out_r_AQ_3 ;
input [11:0] out_inner_prod_i ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
wire mult3_out_23 ;
wire clk ;
wire [29:0] ACOUT_30;
wire [17:0] BCOUT_30;
wire [3:0] CARRYOUT_30;
wire [22:0] mult3_out;
wire [47:24] P_uc_30;
wire [47:0] PCOUT_30;
wire CARRYCASCOUT_30 ;
wire MULTSIGNOUT_30 ;
wire OVERFLOW_30 ;
wire PATTERNBDETECT_30 ;
wire PATTERNDETECT_30 ;
wire UNDERFLOW_30 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_30[29:0]),
	.BCOUT(BCOUT_30[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_30),
	.CARRYOUT(CARRYOUT_30[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_30),
	.OVERFLOW(OVERFLOW_30),
	.P({P_uc_30[47:24], mult3_out_23, mult3_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_30),
	.PATTERNDETECT(PATTERNDETECT_30),
	.PCOUT(PCOUT_30[47:0]),
	.UNDERFLOW(UNDERFLOW_30),
	.A({vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11], out_inner_prod_i[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(VCC),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(in_b_vec_mult_sel[0]),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=1;
defparam \pre_out[23:0] .BREG=1;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=1;
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_18 */

module mult_pipe_19 (
  mult4_out_23,
  mult4_out_0,
  P_uc_31_0,
  out_inner_prod_r,
  vec_out_i_AQ_3,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  in_b_vec_mult_sel,
  clk,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i
)
;
output mult4_out_23 ;
output [23:0] mult4_out_0 ;
output [47:24] P_uc_31_0 ;
input [11:0] out_inner_prod_r ;
input [11:0] vec_out_i_AQ_3 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [0:0] in_b_vec_mult_sel ;
input clk ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
wire mult4_out_23 ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire clk ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire [29:0] ACOUT_31;
wire [17:0] BCOUT_31;
wire [3:0] CARRYOUT_31;
wire [22:0] mult4_out;
wire [47:24] P_uc_31;
wire CARRYCASCOUT_31 ;
wire MULTSIGNOUT_31 ;
wire OVERFLOW_31 ;
wire PATTERNBDETECT_31 ;
wire PATTERNDETECT_31 ;
wire UNDERFLOW_31 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_31[29:0]),
	.BCOUT(BCOUT_31[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_31),
	.CARRYOUT(CARRYOUT_31[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_31),
	.OVERFLOW(OVERFLOW_31),
	.P({P_uc_31[47:24], mult4_out_23, mult4_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_31),
	.PATTERNDETECT(PATTERNDETECT_31),
	.PCOUT({P_uc_31_0[47:24], mult4_out_0[23:0]}),
	.UNDERFLOW(UNDERFLOW_31),
	.A({out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(VCC),
	.CEAD(VCC),
	.CEALUMODE(GND),
	.CEB1(VCC),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(VCC),
	.CEINMODE(VCC),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_10, out_inv_sqrt_9, out_inv_sqrt_8, out_inv_sqrt_7, N_434_i, N_431_i, N_428_i, N_425_i, out_inv_sqrt_2, out_inv_sqrt_1, out_inv_sqrt_0}),
	.INMODE({GND, GND, in_b_vec_mult_sel[0], in_b_vec_mult_sel[0], GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=1;
defparam \pre_out[23:0] .ADREG=1;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=1;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=2;
defparam \pre_out[23:0] .BREG=2;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=1;
defparam \pre_out[23:0] .INMODEREG=1;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .USE_DPORT="TRUE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_pipe_19 */

module add_subZ2_4 (
  pre_out_r,
  vec_out_i_AQ_3,
  in_b_i_reg,
  mult1_out_0,
  P_uc_28_0,
  PATTERNDETECT_6,
  clk
)
;
output [23:7] pre_out_r ;
input [11:0] vec_out_i_AQ_3 ;
input [11:0] in_b_i_reg ;
input [23:0] mult1_out_0 ;
input [47:24] P_uc_28_0 ;
output PATTERNDETECT_6 ;
input clk ;
wire PATTERNDETECT_6 ;
wire clk ;
wire [29:0] ACOUT_6;
wire [17:0] BCOUT_6;
wire [3:0] CARRYOUT_6;
wire [6:0] output_Z;
wire [47:24] P_uc_6;
wire [47:0] PCOUT_6;
wire CARRYCASCOUT_6 ;
wire MULTSIGNOUT_6 ;
wire OVERFLOW_6 ;
wire PATTERNBDETECT_6 ;
wire UNDERFLOW_6 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \output[23:0]  (
	.ACOUT(ACOUT_6[29:0]),
	.BCOUT(BCOUT_6[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_6),
	.CARRYOUT(CARRYOUT_6[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_6),
	.OVERFLOW(OVERFLOW_6),
	.P({P_uc_6[47:24], pre_out_r[23:7], output_Z[6:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_6),
	.PATTERNDETECT(PATTERNDETECT_6),
	.PCOUT(PCOUT_6[47:0]),
	.UNDERFLOW(UNDERFLOW_6),
	.A({vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11], vec_out_i_AQ_3[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, VCC, VCC}),
	.B({in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(VCC),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, VCC, GND, VCC, GND, VCC}),
	.PCIN({P_uc_28_0[47:24], mult1_out_0[23:0]}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \output[23:0] .ACASCREG=2;
defparam \output[23:0] .ADREG=0;
defparam \output[23:0] .ALUMODEREG=0;
defparam \output[23:0] .AREG=2;
defparam \output[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \output[23:0] .A_INPUT="DIRECT";
defparam \output[23:0] .BCASCREG=1;
defparam \output[23:0] .BREG=1;
defparam \output[23:0] .B_INPUT="DIRECT";
defparam \output[23:0] .CARRYINREG=0;
defparam \output[23:0] .CARRYINSELREG=0;
defparam \output[23:0] .CREG=1;
defparam \output[23:0] .DREG=0;
defparam \output[23:0] .INMODEREG=0;
defparam \output[23:0] .MASK=48'b111111111111111111111111100001111111111111111111;
defparam \output[23:0] .MREG=0;
defparam \output[23:0] .OPMODEREG=0;
defparam \output[23:0] .PATTERN=48'b111111111111111111111111100001111111111111111111;
defparam \output[23:0] .PREG=0;
defparam \output[23:0] .SEL_MASK="MASK";
defparam \output[23:0] .USE_DPORT="FALSE";
defparam \output[23:0] .USE_MULT="MULTIPLY";
defparam \output[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \output[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* add_subZ2_4 */

module add_subZ1_4 (
  pre_out_i,
  vec_out_r_AQ_3,
  in_b_i_reg,
  mult4_out_0,
  P_uc_31_0,
  PATTERNDETECT_5,
  clk
)
;
output [23:7] pre_out_i ;
input [11:0] vec_out_r_AQ_3 ;
input [11:0] in_b_i_reg ;
input [23:0] mult4_out_0 ;
input [47:24] P_uc_31_0 ;
output PATTERNDETECT_5 ;
input clk ;
wire PATTERNDETECT_5 ;
wire clk ;
wire [29:0] ACOUT_5;
wire [17:0] BCOUT_5;
wire [3:0] CARRYOUT_5;
wire [6:0] un2_pre_out;
wire [47:24] P_uc_5;
wire [47:0] PCOUT_5;
wire CARRYCASCOUT_5 ;
wire MULTSIGNOUT_5 ;
wire OVERFLOW_5 ;
wire PATTERNBDETECT_5 ;
wire UNDERFLOW_5 ;
wire VCC ;
wire GND ;
// @14:30
  DSP48E1 \un2_pre_out[23:0]  (
	.ACOUT(ACOUT_5[29:0]),
	.BCOUT(BCOUT_5[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_5),
	.CARRYOUT(CARRYOUT_5[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_5),
	.OVERFLOW(OVERFLOW_5),
	.P({P_uc_5[47:24], pre_out_i[23:7], un2_pre_out[6:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_5),
	.PATTERNDETECT(PATTERNDETECT_5),
	.PCOUT(PCOUT_5[47:0]),
	.UNDERFLOW(UNDERFLOW_5),
	.A({vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11], vec_out_r_AQ_3[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11], in_b_i_reg[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(VCC),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, VCC, GND, VCC, GND, VCC}),
	.PCIN({P_uc_31_0[47:24], mult4_out_0[23:0]}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un2_pre_out[23:0] .ACASCREG=2;
defparam \un2_pre_out[23:0] .ADREG=0;
defparam \un2_pre_out[23:0] .ALUMODEREG=0;
defparam \un2_pre_out[23:0] .AREG=2;
defparam \un2_pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \un2_pre_out[23:0] .A_INPUT="DIRECT";
defparam \un2_pre_out[23:0] .BCASCREG=1;
defparam \un2_pre_out[23:0] .BREG=1;
defparam \un2_pre_out[23:0] .B_INPUT="DIRECT";
defparam \un2_pre_out[23:0] .CARRYINREG=0;
defparam \un2_pre_out[23:0] .CARRYINSELREG=0;
defparam \un2_pre_out[23:0] .CREG=1;
defparam \un2_pre_out[23:0] .DREG=0;
defparam \un2_pre_out[23:0] .INMODEREG=0;
defparam \un2_pre_out[23:0] .MASK=48'b111111111111111111111111100001111111111111111111;
defparam \un2_pre_out[23:0] .MREG=0;
defparam \un2_pre_out[23:0] .OPMODEREG=0;
defparam \un2_pre_out[23:0] .PATTERN=48'b111111111111111111111111100001111111111111111111;
defparam \un2_pre_out[23:0] .PREG=0;
defparam \un2_pre_out[23:0] .SEL_MASK="MASK";
defparam \un2_pre_out[23:0] .USE_DPORT="FALSE";
defparam \un2_pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \un2_pre_out[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \un2_pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* add_subZ1_4 */

module \complex_mult_pipe_vec_mult_inst_gen_mults.2.mult_3  (
  out_i_vec_mult_3,
  out_r_vec_mult_3,
  out_inner_prod_r,
  vec_out_r_AQ_3,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  in_b_vec_mult_sel,
  vec_out_i_AQ_3,
  out_inner_prod_i,
  in_b_i_reg,
  clk,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i
)
;
output [11:0] out_i_vec_mult_3 ;
output [11:0] out_r_vec_mult_3 ;
input [11:0] out_inner_prod_r ;
input [11:0] vec_out_r_AQ_3 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [0:0] in_b_vec_mult_sel ;
input [11:0] vec_out_i_AQ_3 ;
input [11:0] out_inner_prod_i ;
input [11:0] in_b_i_reg ;
input clk ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire clk ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire [23:7] pre_out_r;
wire [23:7] pre_out_i;
wire [23:23] mult2_out;
wire [23:23] mult1_out;
wire [23:23] mult3_out;
wire [23:23] mult4_out;
wire [11:11] pos_out_r;
wire [11:11] pos_out_i;
wire [10:0] un1_rnd_out_i;
wire [10:0] pos_out_i_iv_i;
wire [10:0] un2_rnd_out_r;
wire [10:0] pos_out_r_iv_i;
wire [23:0] mult1_out_0;
wire [47:24] P_uc_28_0;
wire [23:0] mult4_out_0;
wire [47:24] P_uc_31_0;
wire un2_rnd_out_r_axb_1 ;
wire un2_rnd_out_r_axb_2 ;
wire un2_rnd_out_r_axb_3 ;
wire un2_rnd_out_r_axb_4 ;
wire un2_rnd_out_r_axb_5 ;
wire un2_rnd_out_r_axb_6 ;
wire un2_rnd_out_r_axb_7 ;
wire un2_rnd_out_r_axb_8 ;
wire un2_rnd_out_r_axb_9 ;
wire un2_rnd_out_r_axb_10 ;
wire un2_rnd_out_r_axb_11 ;
wire un1_rnd_out_i_axb_1 ;
wire un1_rnd_out_i_axb_2 ;
wire un1_rnd_out_i_axb_3 ;
wire un1_rnd_out_i_axb_4 ;
wire un1_rnd_out_i_axb_5 ;
wire un1_rnd_out_i_axb_6 ;
wire un1_rnd_out_i_axb_7 ;
wire un1_rnd_out_i_axb_8 ;
wire un1_rnd_out_i_axb_9 ;
wire un1_rnd_out_i_axb_10 ;
wire un1_rnd_out_i_axb_11 ;
wire un1_rnd_out_i_axb_12 ;
wire un2_rnd_out_r_axb_12 ;
wire un4_rnd_sat_out_i_3 ;
wire un5_rnd_sat_out_r_3 ;
wire un1_pos_out_r_2 ;
wire un1_pos_out_i_2 ;
wire PATTERNDETECT_6 ;
wire un2_rnd_out_r_s_12_1 ;
wire PATTERNDETECT_5 ;
wire un1_rnd_out_i_s_12_1 ;
wire un1_rnd_out_i_cry_11 ;
wire un1_rnd_out_i_cry_10 ;
wire GND ;
wire un1_rnd_out_i_cry_9 ;
wire un1_rnd_out_i_cry_8 ;
wire un1_rnd_out_i_cry_7 ;
wire un1_rnd_out_i_cry_6 ;
wire un1_rnd_out_i_cry_5 ;
wire un1_rnd_out_i_cry_4 ;
wire un1_rnd_out_i_cry_3 ;
wire un1_rnd_out_i_cry_2 ;
wire un1_rnd_out_i_cry_1 ;
wire un2_rnd_out_r_cry_11 ;
wire un2_rnd_out_r_cry_10 ;
wire un2_rnd_out_r_cry_9 ;
wire un2_rnd_out_r_cry_8 ;
wire un2_rnd_out_r_cry_7 ;
wire un2_rnd_out_r_cry_6 ;
wire un2_rnd_out_r_cry_5 ;
wire un2_rnd_out_r_cry_4 ;
wire un2_rnd_out_r_cry_3 ;
wire un2_rnd_out_r_cry_2 ;
wire un2_rnd_out_r_cry_1 ;
wire VCC ;
// @17:140
  LUT1 un2_rnd_out_r_axb_1_cZ (
	.I0(pre_out_r[8]),
	.O(un2_rnd_out_r_axb_1)
);
defparam un2_rnd_out_r_axb_1_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_2_cZ (
	.I0(pre_out_r[9]),
	.O(un2_rnd_out_r_axb_2)
);
defparam un2_rnd_out_r_axb_2_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_3_cZ (
	.I0(pre_out_r[10]),
	.O(un2_rnd_out_r_axb_3)
);
defparam un2_rnd_out_r_axb_3_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_4_cZ (
	.I0(pre_out_r[11]),
	.O(un2_rnd_out_r_axb_4)
);
defparam un2_rnd_out_r_axb_4_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_5_cZ (
	.I0(pre_out_r[12]),
	.O(un2_rnd_out_r_axb_5)
);
defparam un2_rnd_out_r_axb_5_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_6_cZ (
	.I0(pre_out_r[13]),
	.O(un2_rnd_out_r_axb_6)
);
defparam un2_rnd_out_r_axb_6_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_7_cZ (
	.I0(pre_out_r[14]),
	.O(un2_rnd_out_r_axb_7)
);
defparam un2_rnd_out_r_axb_7_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_8_cZ (
	.I0(pre_out_r[15]),
	.O(un2_rnd_out_r_axb_8)
);
defparam un2_rnd_out_r_axb_8_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_9_cZ (
	.I0(pre_out_r[16]),
	.O(un2_rnd_out_r_axb_9)
);
defparam un2_rnd_out_r_axb_9_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_10_cZ (
	.I0(pre_out_r[17]),
	.O(un2_rnd_out_r_axb_10)
);
defparam un2_rnd_out_r_axb_10_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_11_cZ (
	.I0(pre_out_r[18]),
	.O(un2_rnd_out_r_axb_11)
);
defparam un2_rnd_out_r_axb_11_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_1_cZ (
	.I0(pre_out_i[8]),
	.O(un1_rnd_out_i_axb_1)
);
defparam un1_rnd_out_i_axb_1_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_2_cZ (
	.I0(pre_out_i[9]),
	.O(un1_rnd_out_i_axb_2)
);
defparam un1_rnd_out_i_axb_2_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_3_cZ (
	.I0(pre_out_i[10]),
	.O(un1_rnd_out_i_axb_3)
);
defparam un1_rnd_out_i_axb_3_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_4_cZ (
	.I0(pre_out_i[11]),
	.O(un1_rnd_out_i_axb_4)
);
defparam un1_rnd_out_i_axb_4_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_5_cZ (
	.I0(pre_out_i[12]),
	.O(un1_rnd_out_i_axb_5)
);
defparam un1_rnd_out_i_axb_5_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_6_cZ (
	.I0(pre_out_i[13]),
	.O(un1_rnd_out_i_axb_6)
);
defparam un1_rnd_out_i_axb_6_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_7_cZ (
	.I0(pre_out_i[14]),
	.O(un1_rnd_out_i_axb_7)
);
defparam un1_rnd_out_i_axb_7_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_8_cZ (
	.I0(pre_out_i[15]),
	.O(un1_rnd_out_i_axb_8)
);
defparam un1_rnd_out_i_axb_8_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_9_cZ (
	.I0(pre_out_i[16]),
	.O(un1_rnd_out_i_axb_9)
);
defparam un1_rnd_out_i_axb_9_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_10_cZ (
	.I0(pre_out_i[17]),
	.O(un1_rnd_out_i_axb_10)
);
defparam un1_rnd_out_i_axb_10_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_11_cZ (
	.I0(pre_out_i[18]),
	.O(un1_rnd_out_i_axb_11)
);
defparam un1_rnd_out_i_axb_11_cZ.INIT=2'h2;
// @17:154
  LUT1 un1_rnd_out_i_axb_12_cZ (
	.I0(pre_out_i[19]),
	.O(un1_rnd_out_i_axb_12)
);
defparam un1_rnd_out_i_axb_12_cZ.INIT=2'h2;
// @17:140
  LUT1 un2_rnd_out_r_axb_12_cZ (
	.I0(pre_out_r[19]),
	.O(un2_rnd_out_r_axb_12)
);
defparam un2_rnd_out_r_axb_12_cZ.INIT=2'h2;
// @17:156
  LUT4 un4_rnd_sat_out_i_3_cZ (
	.I0(pre_out_i[20]),
	.I1(pre_out_i[21]),
	.I2(pre_out_i[22]),
	.I3(pre_out_i[19]),
	.O(un4_rnd_sat_out_i_3)
);
defparam un4_rnd_sat_out_i_3_cZ.INIT=16'h8000;
// @17:144
  LUT4 un5_rnd_sat_out_r_3_cZ (
	.I0(pre_out_r[20]),
	.I1(pre_out_r[21]),
	.I2(pre_out_r[22]),
	.I3(pre_out_r[19]),
	.O(un5_rnd_sat_out_r_3)
);
defparam un5_rnd_sat_out_r_3_cZ.INIT=16'h8000;
// @17:172
  LUT3 un1_pos_out_r (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.O(un1_pos_out_r_2)
);
defparam un1_pos_out_r.INIT=8'h04;
// @17:177
  LUT3 un1_pos_out_i (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.O(un1_pos_out_i_2)
);
defparam un1_pos_out_i.INIT=8'h08;
// @17:172
  LUT6_L \pos_out_r_iv[11]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_6),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r_s_12_1),
	.LO(pos_out_r[11])
);
defparam \pos_out_r_iv[11] .INIT=64'hDBD0DBD00000D0D0;
// @17:177
  LUT6_L \pos_out_i_iv[11]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_5),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i_s_12_1),
	.LO(pos_out_i[11])
);
defparam \pos_out_i_iv[11] .INIT=64'hE7E0E7E00000E0E0;
// @17:183
  LUT6_L \out_i_RNO[10]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_5),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[10]),
	.LO(pos_out_i_iv_i[10])
);
defparam \out_i_RNO[10] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[9]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_5),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[9]),
	.LO(pos_out_i_iv_i[9])
);
defparam \out_i_RNO[9] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[8]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_5),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[8]),
	.LO(pos_out_i_iv_i[8])
);
defparam \out_i_RNO[8] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[7]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_5),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[7]),
	.LO(pos_out_i_iv_i[7])
);
defparam \out_i_RNO[7] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[6]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_5),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[6]),
	.LO(pos_out_i_iv_i[6])
);
defparam \out_i_RNO[6] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[5]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_5),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[5]),
	.LO(pos_out_i_iv_i[5])
);
defparam \out_i_RNO[5] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[4]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_5),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[4]),
	.LO(pos_out_i_iv_i[4])
);
defparam \out_i_RNO[4] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[3]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_5),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[3]),
	.LO(pos_out_i_iv_i[3])
);
defparam \out_i_RNO[3] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[2]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_5),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[2]),
	.LO(pos_out_i_iv_i[2])
);
defparam \out_i_RNO[2] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[1]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(PATTERNDETECT_5),
	.I4(un4_rnd_sat_out_i_3),
	.I5(un1_rnd_out_i[1]),
	.LO(pos_out_i_iv_i[1])
);
defparam \out_i_RNO[1] .INIT=64'hFFFF1F1F181F181F;
// @17:183
  LUT6_L \out_i_RNO[0]  (
	.I0(mult3_out[23]),
	.I1(mult4_out[23]),
	.I2(pre_out_i[23]),
	.I3(un1_rnd_out_i[0]),
	.I4(PATTERNDETECT_5),
	.I5(un4_rnd_sat_out_i_3),
	.LO(pos_out_i_iv_i[0])
);
defparam \out_i_RNO[0] .INIT=64'hFF18FF1F1F181F1F;
// @17:183
  LUT6_L \out_r_RNO[10]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_6),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[10]),
	.LO(pos_out_r_iv_i[10])
);
defparam \out_r_RNO[10] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[9]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_6),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[9]),
	.LO(pos_out_r_iv_i[9])
);
defparam \out_r_RNO[9] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[8]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_6),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[8]),
	.LO(pos_out_r_iv_i[8])
);
defparam \out_r_RNO[8] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[7]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_6),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[7]),
	.LO(pos_out_r_iv_i[7])
);
defparam \out_r_RNO[7] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[6]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_6),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[6]),
	.LO(pos_out_r_iv_i[6])
);
defparam \out_r_RNO[6] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[5]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_6),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[5]),
	.LO(pos_out_r_iv_i[5])
);
defparam \out_r_RNO[5] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[4]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_6),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[4]),
	.LO(pos_out_r_iv_i[4])
);
defparam \out_r_RNO[4] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[3]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_6),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[3]),
	.LO(pos_out_r_iv_i[3])
);
defparam \out_r_RNO[3] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[2]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_6),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[2]),
	.LO(pos_out_r_iv_i[2])
);
defparam \out_r_RNO[2] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[1]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(PATTERNDETECT_6),
	.I4(un5_rnd_sat_out_r_3),
	.I5(un2_rnd_out_r[1]),
	.LO(pos_out_r_iv_i[1])
);
defparam \out_r_RNO[1] .INIT=64'hFFFF2F2F242F242F;
// @17:183
  LUT6_L \out_r_RNO[0]  (
	.I0(mult2_out[23]),
	.I1(mult1_out[23]),
	.I2(pre_out_r[23]),
	.I3(un2_rnd_out_r[0]),
	.I4(PATTERNDETECT_6),
	.I5(un5_rnd_sat_out_r_3),
	.LO(pos_out_r_iv_i[0])
);
defparam \out_r_RNO[0] .INIT=64'hFF24FF2F2F242F2F;
// @17:154
  XORCY un1_rnd_out_i_s_12 (
	.LI(un1_rnd_out_i_axb_12),
	.CI(un1_rnd_out_i_cry_11),
	.O(un1_rnd_out_i_s_12_1)
);
// @17:154
  XORCY un1_rnd_out_i_s_11 (
	.LI(un1_rnd_out_i_axb_11),
	.CI(un1_rnd_out_i_cry_10),
	.O(un1_rnd_out_i[10])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_11_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_10),
	.S(un1_rnd_out_i_axb_11),
	.LO(un1_rnd_out_i_cry_11)
);
// @17:154
  XORCY un1_rnd_out_i_s_10 (
	.LI(un1_rnd_out_i_axb_10),
	.CI(un1_rnd_out_i_cry_9),
	.O(un1_rnd_out_i[9])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_10_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_9),
	.S(un1_rnd_out_i_axb_10),
	.LO(un1_rnd_out_i_cry_10)
);
// @17:154
  XORCY un1_rnd_out_i_s_9 (
	.LI(un1_rnd_out_i_axb_9),
	.CI(un1_rnd_out_i_cry_8),
	.O(un1_rnd_out_i[8])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_9_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_8),
	.S(un1_rnd_out_i_axb_9),
	.LO(un1_rnd_out_i_cry_9)
);
// @17:154
  XORCY un1_rnd_out_i_s_8 (
	.LI(un1_rnd_out_i_axb_8),
	.CI(un1_rnd_out_i_cry_7),
	.O(un1_rnd_out_i[7])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_8_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_7),
	.S(un1_rnd_out_i_axb_8),
	.LO(un1_rnd_out_i_cry_8)
);
// @17:154
  XORCY un1_rnd_out_i_s_7 (
	.LI(un1_rnd_out_i_axb_7),
	.CI(un1_rnd_out_i_cry_6),
	.O(un1_rnd_out_i[6])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_7_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_6),
	.S(un1_rnd_out_i_axb_7),
	.LO(un1_rnd_out_i_cry_7)
);
// @17:154
  XORCY un1_rnd_out_i_s_6 (
	.LI(un1_rnd_out_i_axb_6),
	.CI(un1_rnd_out_i_cry_5),
	.O(un1_rnd_out_i[5])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_6_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_5),
	.S(un1_rnd_out_i_axb_6),
	.LO(un1_rnd_out_i_cry_6)
);
// @17:154
  XORCY un1_rnd_out_i_s_5 (
	.LI(un1_rnd_out_i_axb_5),
	.CI(un1_rnd_out_i_cry_4),
	.O(un1_rnd_out_i[4])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_5_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_4),
	.S(un1_rnd_out_i_axb_5),
	.LO(un1_rnd_out_i_cry_5)
);
// @17:154
  XORCY un1_rnd_out_i_s_4 (
	.LI(un1_rnd_out_i_axb_4),
	.CI(un1_rnd_out_i_cry_3),
	.O(un1_rnd_out_i[3])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_4_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_3),
	.S(un1_rnd_out_i_axb_4),
	.LO(un1_rnd_out_i_cry_4)
);
// @17:154
  XORCY un1_rnd_out_i_s_3 (
	.LI(un1_rnd_out_i_axb_3),
	.CI(un1_rnd_out_i_cry_2),
	.O(un1_rnd_out_i[2])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_3_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_2),
	.S(un1_rnd_out_i_axb_3),
	.LO(un1_rnd_out_i_cry_3)
);
// @17:154
  XORCY un1_rnd_out_i_s_2 (
	.LI(un1_rnd_out_i_axb_2),
	.CI(un1_rnd_out_i_cry_1),
	.O(un1_rnd_out_i[1])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_2_cZ (
	.DI(GND),
	.CI(un1_rnd_out_i_cry_1),
	.S(un1_rnd_out_i_axb_2),
	.LO(un1_rnd_out_i_cry_2)
);
// @17:154
  XORCY un1_rnd_out_i_s_1 (
	.LI(un1_rnd_out_i_axb_1),
	.CI(pre_out_i[7]),
	.O(un1_rnd_out_i[0])
);
// @17:154
  MUXCY_L un1_rnd_out_i_cry_1_cZ (
	.DI(GND),
	.CI(pre_out_i[7]),
	.S(un1_rnd_out_i_axb_1),
	.LO(un1_rnd_out_i_cry_1)
);
// @17:140
  XORCY un2_rnd_out_r_s_12 (
	.LI(un2_rnd_out_r_axb_12),
	.CI(un2_rnd_out_r_cry_11),
	.O(un2_rnd_out_r_s_12_1)
);
// @17:140
  XORCY un2_rnd_out_r_s_11 (
	.LI(un2_rnd_out_r_axb_11),
	.CI(un2_rnd_out_r_cry_10),
	.O(un2_rnd_out_r[10])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_11_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_10),
	.S(un2_rnd_out_r_axb_11),
	.LO(un2_rnd_out_r_cry_11)
);
// @17:140
  XORCY un2_rnd_out_r_s_10 (
	.LI(un2_rnd_out_r_axb_10),
	.CI(un2_rnd_out_r_cry_9),
	.O(un2_rnd_out_r[9])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_10_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_9),
	.S(un2_rnd_out_r_axb_10),
	.LO(un2_rnd_out_r_cry_10)
);
// @17:140
  XORCY un2_rnd_out_r_s_9 (
	.LI(un2_rnd_out_r_axb_9),
	.CI(un2_rnd_out_r_cry_8),
	.O(un2_rnd_out_r[8])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_9_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_8),
	.S(un2_rnd_out_r_axb_9),
	.LO(un2_rnd_out_r_cry_9)
);
// @17:140
  XORCY un2_rnd_out_r_s_8 (
	.LI(un2_rnd_out_r_axb_8),
	.CI(un2_rnd_out_r_cry_7),
	.O(un2_rnd_out_r[7])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_8_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_7),
	.S(un2_rnd_out_r_axb_8),
	.LO(un2_rnd_out_r_cry_8)
);
// @17:140
  XORCY un2_rnd_out_r_s_7 (
	.LI(un2_rnd_out_r_axb_7),
	.CI(un2_rnd_out_r_cry_6),
	.O(un2_rnd_out_r[6])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_7_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_6),
	.S(un2_rnd_out_r_axb_7),
	.LO(un2_rnd_out_r_cry_7)
);
// @17:140
  XORCY un2_rnd_out_r_s_6 (
	.LI(un2_rnd_out_r_axb_6),
	.CI(un2_rnd_out_r_cry_5),
	.O(un2_rnd_out_r[5])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_6_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_5),
	.S(un2_rnd_out_r_axb_6),
	.LO(un2_rnd_out_r_cry_6)
);
// @17:140
  XORCY un2_rnd_out_r_s_5 (
	.LI(un2_rnd_out_r_axb_5),
	.CI(un2_rnd_out_r_cry_4),
	.O(un2_rnd_out_r[4])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_5_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_4),
	.S(un2_rnd_out_r_axb_5),
	.LO(un2_rnd_out_r_cry_5)
);
// @17:140
  XORCY un2_rnd_out_r_s_4 (
	.LI(un2_rnd_out_r_axb_4),
	.CI(un2_rnd_out_r_cry_3),
	.O(un2_rnd_out_r[3])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_4_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_3),
	.S(un2_rnd_out_r_axb_4),
	.LO(un2_rnd_out_r_cry_4)
);
// @17:140
  XORCY un2_rnd_out_r_s_3 (
	.LI(un2_rnd_out_r_axb_3),
	.CI(un2_rnd_out_r_cry_2),
	.O(un2_rnd_out_r[2])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_3_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_2),
	.S(un2_rnd_out_r_axb_3),
	.LO(un2_rnd_out_r_cry_3)
);
// @17:140
  XORCY un2_rnd_out_r_s_2 (
	.LI(un2_rnd_out_r_axb_2),
	.CI(un2_rnd_out_r_cry_1),
	.O(un2_rnd_out_r[1])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_2_cZ (
	.DI(GND),
	.CI(un2_rnd_out_r_cry_1),
	.S(un2_rnd_out_r_axb_2),
	.LO(un2_rnd_out_r_cry_2)
);
// @17:140
  XORCY un2_rnd_out_r_s_1 (
	.LI(un2_rnd_out_r_axb_1),
	.CI(pre_out_r[7]),
	.O(un2_rnd_out_r[0])
);
// @17:140
  MUXCY_L un2_rnd_out_r_cry_1_cZ (
	.DI(GND),
	.CI(pre_out_r[7]),
	.S(un2_rnd_out_r_axb_1),
	.LO(un2_rnd_out_r_cry_1)
);
// @17:183
  FDS \out_i_Z[11]  (
	.Q(out_i_vec_mult_3[11]),
	.D(pos_out_i[11]),
	.C(clk),
	.S(un1_pos_out_i_2)
);
// @17:183
  FDR \out_i_Z[10]  (
	.Q(out_i_vec_mult_3[10]),
	.D(pos_out_i_iv_i[10]),
	.C(clk),
	.R(un1_pos_out_i_2)
);
// @17:183
  FDR \out_i_Z[9]  (
	.Q(out_i_vec_mult_3[9]),
	.D(pos_out_i_iv_i[9]),
	.C(clk),
	.R(un1_pos_out_i_2)
);
// @17:183
  FDR \out_i_Z[8]  (
	.Q(out_i_vec_mult_3[8]),
	.D(pos_out_i_iv_i[8]),
	.C(clk),
	.R(un1_pos_out_i_2)
);
// @17:183
  FDR \out_i_Z[7]  (
	.Q(out_i_vec_mult_3[7]),
	.D(pos_out_i_iv_i[7]),
	.C(clk),
	.R(un1_pos_out_i_2)
);
// @17:183
  FDR \out_i_Z[6]  (
	.Q(out_i_vec_mult_3[6]),
	.D(pos_out_i_iv_i[6]),
	.C(clk),
	.R(un1_pos_out_i_2)
);
// @17:183
  FDR \out_i_Z[5]  (
	.Q(out_i_vec_mult_3[5]),
	.D(pos_out_i_iv_i[5]),
	.C(clk),
	.R(un1_pos_out_i_2)
);
// @17:183
  FDR \out_i_Z[4]  (
	.Q(out_i_vec_mult_3[4]),
	.D(pos_out_i_iv_i[4]),
	.C(clk),
	.R(un1_pos_out_i_2)
);
// @17:183
  FDR \out_i_Z[3]  (
	.Q(out_i_vec_mult_3[3]),
	.D(pos_out_i_iv_i[3]),
	.C(clk),
	.R(un1_pos_out_i_2)
);
// @17:183
  FDR \out_i_Z[2]  (
	.Q(out_i_vec_mult_3[2]),
	.D(pos_out_i_iv_i[2]),
	.C(clk),
	.R(un1_pos_out_i_2)
);
// @17:183
  FDR \out_i_Z[1]  (
	.Q(out_i_vec_mult_3[1]),
	.D(pos_out_i_iv_i[1]),
	.C(clk),
	.R(un1_pos_out_i_2)
);
// @17:183
  FDR \out_i_Z[0]  (
	.Q(out_i_vec_mult_3[0]),
	.D(pos_out_i_iv_i[0]),
	.C(clk),
	.R(un1_pos_out_i_2)
);
// @17:183
  FDS \out_r_Z[11]  (
	.Q(out_r_vec_mult_3[11]),
	.D(pos_out_r[11]),
	.C(clk),
	.S(un1_pos_out_r_2)
);
// @17:183
  FDR \out_r_Z[10]  (
	.Q(out_r_vec_mult_3[10]),
	.D(pos_out_r_iv_i[10]),
	.C(clk),
	.R(un1_pos_out_r_2)
);
// @17:183
  FDR \out_r_Z[9]  (
	.Q(out_r_vec_mult_3[9]),
	.D(pos_out_r_iv_i[9]),
	.C(clk),
	.R(un1_pos_out_r_2)
);
// @17:183
  FDR \out_r_Z[8]  (
	.Q(out_r_vec_mult_3[8]),
	.D(pos_out_r_iv_i[8]),
	.C(clk),
	.R(un1_pos_out_r_2)
);
// @17:183
  FDR \out_r_Z[7]  (
	.Q(out_r_vec_mult_3[7]),
	.D(pos_out_r_iv_i[7]),
	.C(clk),
	.R(un1_pos_out_r_2)
);
// @17:183
  FDR \out_r_Z[6]  (
	.Q(out_r_vec_mult_3[6]),
	.D(pos_out_r_iv_i[6]),
	.C(clk),
	.R(un1_pos_out_r_2)
);
// @17:183
  FDR \out_r_Z[5]  (
	.Q(out_r_vec_mult_3[5]),
	.D(pos_out_r_iv_i[5]),
	.C(clk),
	.R(un1_pos_out_r_2)
);
// @17:183
  FDR \out_r_Z[4]  (
	.Q(out_r_vec_mult_3[4]),
	.D(pos_out_r_iv_i[4]),
	.C(clk),
	.R(un1_pos_out_r_2)
);
// @17:183
  FDR \out_r_Z[3]  (
	.Q(out_r_vec_mult_3[3]),
	.D(pos_out_r_iv_i[3]),
	.C(clk),
	.R(un1_pos_out_r_2)
);
// @17:183
  FDR \out_r_Z[2]  (
	.Q(out_r_vec_mult_3[2]),
	.D(pos_out_r_iv_i[2]),
	.C(clk),
	.R(un1_pos_out_r_2)
);
// @17:183
  FDR \out_r_Z[1]  (
	.Q(out_r_vec_mult_3[1]),
	.D(pos_out_r_iv_i[1]),
	.C(clk),
	.R(un1_pos_out_r_2)
);
// @17:183
  FDR \out_r_Z[0]  (
	.Q(out_r_vec_mult_3[0]),
	.D(pos_out_r_iv_i[0]),
	.C(clk),
	.R(un1_pos_out_r_2)
);
// @17:80
  mult_pipe_16 mult1 (
	.mult1_out_23(mult1_out[23]),
	.mult1_out_0(mult1_out_0[23:0]),
	.P_uc_28_0(P_uc_28_0[47:24]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.vec_out_r_AQ_3(vec_out_r_AQ_3[11:0]),
	.out_inv_sqrt_0(out_inv_sqrt_0),
	.out_inv_sqrt_1(out_inv_sqrt_1),
	.out_inv_sqrt_2(out_inv_sqrt_2),
	.out_inv_sqrt_7(out_inv_sqrt_7),
	.out_inv_sqrt_8(out_inv_sqrt_8),
	.out_inv_sqrt_9(out_inv_sqrt_9),
	.out_inv_sqrt_10(out_inv_sqrt_10),
	.out_inv_sqrt_11(out_inv_sqrt_11),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i)
);
// @17:88
  mult_pipe_17 mult2 (
	.mult2_out_23(mult2_out[23]),
	.vec_out_i_AQ_3(vec_out_i_AQ_3[11:0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk)
);
// @17:96
  mult_pipe_18 mult3 (
	.mult3_out_23(mult3_out[23]),
	.vec_out_r_AQ_3(vec_out_r_AQ_3[11:0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk)
);
// @17:104
  mult_pipe_19 mult4 (
	.mult4_out_23(mult4_out[23]),
	.mult4_out_0(mult4_out_0[23:0]),
	.P_uc_31_0(P_uc_31_0[47:24]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.vec_out_i_AQ_3(vec_out_i_AQ_3[11:0]),
	.out_inv_sqrt_0(out_inv_sqrt_0),
	.out_inv_sqrt_1(out_inv_sqrt_1),
	.out_inv_sqrt_2(out_inv_sqrt_2),
	.out_inv_sqrt_7(out_inv_sqrt_7),
	.out_inv_sqrt_8(out_inv_sqrt_8),
	.out_inv_sqrt_9(out_inv_sqrt_9),
	.out_inv_sqrt_10(out_inv_sqrt_10),
	.out_inv_sqrt_11(out_inv_sqrt_11),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.clk(clk),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i)
);
// @17:112
  add_subZ2_4 sub (
	.pre_out_r(pre_out_r[23:7]),
	.vec_out_i_AQ_3(vec_out_i_AQ_3[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.mult1_out_0(mult1_out_0[23:0]),
	.P_uc_28_0(P_uc_28_0[47:24]),
	.PATTERNDETECT_6(PATTERNDETECT_6),
	.clk(clk)
);
// @17:122
  add_subZ1_4 add (
	.pre_out_i(pre_out_i[23:7]),
	.vec_out_r_AQ_3(vec_out_r_AQ_3[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.mult4_out_0(mult4_out_0[23:0]),
	.P_uc_31_0(P_uc_31_0[47:24]),
	.PATTERNDETECT_5(PATTERNDETECT_5),
	.clk(clk)
);
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
endmodule /* \complex_mult_pipe_vec_mult_inst_gen_mults.2.mult_3  */

module vec_mult (
  in_b_vec_mult_sel,
  out_inner_prod_i,
  out_i_vec_mult_2,
  out_r_vec_mult_2,
  out_inner_prod_r,
  vec_out_r_AQ_2,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  vec_out_i_AQ_2,
  out_i_vec_mult_1,
  out_r_vec_mult_1,
  vec_out_r_AQ_1,
  vec_out_i_AQ_1,
  out_i_vec_mult_0,
  out_r_vec_mult_0,
  vec_out_r_AQ_0,
  vec_out_i_AQ_0,
  out_i_vec_mult_3,
  out_r_vec_mult_3,
  vec_out_r_AQ_3,
  vec_out_i_AQ_3,
  clk,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i
)
;
input [0:0] in_b_vec_mult_sel ;
input [11:0] out_inner_prod_i ;
output [11:0] out_i_vec_mult_2 ;
output [11:0] out_r_vec_mult_2 ;
input [11:0] out_inner_prod_r ;
input [11:0] vec_out_r_AQ_2 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [11:0] vec_out_i_AQ_2 ;
output [11:0] out_i_vec_mult_1 ;
output [11:0] out_r_vec_mult_1 ;
input [11:0] vec_out_r_AQ_1 ;
input [11:0] vec_out_i_AQ_1 ;
output [11:0] out_i_vec_mult_0 ;
output [11:0] out_r_vec_mult_0 ;
input [11:0] vec_out_r_AQ_0 ;
input [11:0] vec_out_i_AQ_0 ;
output [11:0] out_i_vec_mult_3 ;
output [11:0] out_r_vec_mult_3 ;
input [11:0] vec_out_r_AQ_3 ;
input [11:0] vec_out_i_AQ_3 ;
input clk ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire clk ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire [11:0] in_b_i_reg;
wire GND ;
wire VCC ;
// @18:54
  FDR \in_b_i_reg_Z[11]  (
	.Q(in_b_i_reg[11]),
	.D(out_inner_prod_i[11]),
	.C(clk),
	.R(in_b_vec_mult_sel[0])
);
// @18:54
  FDR \in_b_i_reg_Z[10]  (
	.Q(in_b_i_reg[10]),
	.D(out_inner_prod_i[10]),
	.C(clk),
	.R(in_b_vec_mult_sel[0])
);
// @18:54
  FDR \in_b_i_reg_Z[9]  (
	.Q(in_b_i_reg[9]),
	.D(out_inner_prod_i[9]),
	.C(clk),
	.R(in_b_vec_mult_sel[0])
);
// @18:54
  FDR \in_b_i_reg_Z[8]  (
	.Q(in_b_i_reg[8]),
	.D(out_inner_prod_i[8]),
	.C(clk),
	.R(in_b_vec_mult_sel[0])
);
// @18:54
  FDR \in_b_i_reg_Z[7]  (
	.Q(in_b_i_reg[7]),
	.D(out_inner_prod_i[7]),
	.C(clk),
	.R(in_b_vec_mult_sel[0])
);
// @18:54
  FDR \in_b_i_reg_Z[6]  (
	.Q(in_b_i_reg[6]),
	.D(out_inner_prod_i[6]),
	.C(clk),
	.R(in_b_vec_mult_sel[0])
);
// @18:54
  FDR \in_b_i_reg_Z[5]  (
	.Q(in_b_i_reg[5]),
	.D(out_inner_prod_i[5]),
	.C(clk),
	.R(in_b_vec_mult_sel[0])
);
// @18:54
  FDR \in_b_i_reg_Z[4]  (
	.Q(in_b_i_reg[4]),
	.D(out_inner_prod_i[4]),
	.C(clk),
	.R(in_b_vec_mult_sel[0])
);
// @18:54
  FDR \in_b_i_reg_Z[3]  (
	.Q(in_b_i_reg[3]),
	.D(out_inner_prod_i[3]),
	.C(clk),
	.R(in_b_vec_mult_sel[0])
);
// @18:54
  FDR \in_b_i_reg_Z[2]  (
	.Q(in_b_i_reg[2]),
	.D(out_inner_prod_i[2]),
	.C(clk),
	.R(in_b_vec_mult_sel[0])
);
// @18:54
  FDR \in_b_i_reg_Z[1]  (
	.Q(in_b_i_reg[1]),
	.D(out_inner_prod_i[1]),
	.C(clk),
	.R(in_b_vec_mult_sel[0])
);
// @18:54
  FDR \in_b_i_reg_Z[0]  (
	.Q(in_b_i_reg[0]),
	.D(out_inner_prod_i[0]),
	.C(clk),
	.R(in_b_vec_mult_sel[0])
);
// @18:63
  \complex_mult_pipe_vec_mult_inst_gen_mults.2.mult  \gen_mults.2.mult  (
	.out_i_vec_mult_2(out_i_vec_mult_2[11:0]),
	.out_r_vec_mult_2(out_r_vec_mult_2[11:0]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.vec_out_r_AQ_2(vec_out_r_AQ_2[11:0]),
	.out_inv_sqrt_0(out_inv_sqrt_0),
	.out_inv_sqrt_1(out_inv_sqrt_1),
	.out_inv_sqrt_2(out_inv_sqrt_2),
	.out_inv_sqrt_7(out_inv_sqrt_7),
	.out_inv_sqrt_8(out_inv_sqrt_8),
	.out_inv_sqrt_9(out_inv_sqrt_9),
	.out_inv_sqrt_10(out_inv_sqrt_10),
	.out_inv_sqrt_11(out_inv_sqrt_11),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.vec_out_i_AQ_2(vec_out_i_AQ_2[11:0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.clk(clk),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i)
);
// @18:63
  \complex_mult_pipe_vec_mult_inst_gen_mults.2.mult_1  \gen_mults.1.mult  (
	.out_i_vec_mult_1(out_i_vec_mult_1[11:0]),
	.out_r_vec_mult_1(out_r_vec_mult_1[11:0]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.vec_out_r_AQ_1(vec_out_r_AQ_1[11:0]),
	.out_inv_sqrt_0(out_inv_sqrt_0),
	.out_inv_sqrt_1(out_inv_sqrt_1),
	.out_inv_sqrt_2(out_inv_sqrt_2),
	.out_inv_sqrt_7(out_inv_sqrt_7),
	.out_inv_sqrt_8(out_inv_sqrt_8),
	.out_inv_sqrt_9(out_inv_sqrt_9),
	.out_inv_sqrt_10(out_inv_sqrt_10),
	.out_inv_sqrt_11(out_inv_sqrt_11),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.vec_out_i_AQ_1(vec_out_i_AQ_1[11:0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.clk(clk),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i)
);
// @18:63
  \complex_mult_pipe_vec_mult_inst_gen_mults.2.mult_2  \gen_mults.0.mult  (
	.out_i_vec_mult_0(out_i_vec_mult_0[11:0]),
	.out_r_vec_mult_0(out_r_vec_mult_0[11:0]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.vec_out_r_AQ_0(vec_out_r_AQ_0[11:0]),
	.out_inv_sqrt_0(out_inv_sqrt_0),
	.out_inv_sqrt_1(out_inv_sqrt_1),
	.out_inv_sqrt_2(out_inv_sqrt_2),
	.out_inv_sqrt_7(out_inv_sqrt_7),
	.out_inv_sqrt_8(out_inv_sqrt_8),
	.out_inv_sqrt_9(out_inv_sqrt_9),
	.out_inv_sqrt_10(out_inv_sqrt_10),
	.out_inv_sqrt_11(out_inv_sqrt_11),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.vec_out_i_AQ_0(vec_out_i_AQ_0[11:0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.clk(clk),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i)
);
// @18:63
  \complex_mult_pipe_vec_mult_inst_gen_mults.2.mult_3  \gen_mults.3.mult  (
	.out_i_vec_mult_3(out_i_vec_mult_3[11:0]),
	.out_r_vec_mult_3(out_r_vec_mult_3[11:0]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.vec_out_r_AQ_3(vec_out_r_AQ_3[11:0]),
	.out_inv_sqrt_0(out_inv_sqrt_0),
	.out_inv_sqrt_1(out_inv_sqrt_1),
	.out_inv_sqrt_2(out_inv_sqrt_2),
	.out_inv_sqrt_7(out_inv_sqrt_7),
	.out_inv_sqrt_8(out_inv_sqrt_8),
	.out_inv_sqrt_9(out_inv_sqrt_9),
	.out_inv_sqrt_10(out_inv_sqrt_10),
	.out_inv_sqrt_11(out_inv_sqrt_11),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.vec_out_i_AQ_3(vec_out_i_AQ_3[11:0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.in_b_i_reg(in_b_i_reg[11:0]),
	.clk(clk),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* vec_mult */

module add_subZ3 (
  pre_out_10,
  output_iv_0,
  output_iv_1,
  output_iv_9,
  output_iv_8,
  output_iv_6,
  output_iv_7,
  output_iv_2,
  output_iv_3,
  output_iv_4,
  out_r_vec_mult_0,
  in_a_r_reg_0,
  N_500
)
;
output pre_out_10 ;
output output_iv_0 ;
output output_iv_1 ;
output output_iv_9 ;
output output_iv_8 ;
output output_iv_6 ;
output output_iv_7 ;
output output_iv_2 ;
output output_iv_3 ;
output output_iv_4 ;
input [11:0] out_r_vec_mult_0 ;
input [11:0] in_a_r_reg_0 ;
output N_500 ;
wire pre_out_10 ;
wire output_iv_0 ;
wire output_iv_1 ;
wire output_iv_9 ;
wire output_iv_8 ;
wire output_iv_6 ;
wire output_iv_7 ;
wire output_iv_2 ;
wire output_iv_3 ;
wire output_iv_4 ;
wire N_500 ;
wire [10:1] pre_out;
wire [0:0] pre_out_i;
wire VCC ;
wire pre_out_axb_1 ;
wire pre_out_axb_2 ;
wire pre_out_axb_3 ;
wire pre_out_axb_4 ;
wire pre_out_axb_5 ;
wire pre_out_axb_6 ;
wire pre_out_axb_7 ;
wire pre_out_axb_8 ;
wire pre_out_axb_9 ;
wire pre_out_axb_10 ;
wire pre_out_axb_11 ;
wire pre_out_cry_10 ;
wire pre_out_cry_9 ;
wire pre_out_cry_8 ;
wire pre_out_cry_7 ;
wire pre_out_cry_6 ;
wire pre_out_cry_5 ;
wire pre_out_cry_4 ;
wire pre_out_cry_3 ;
wire pre_out_cry_2 ;
wire pre_out_cry_1 ;
wire pre_out_cry_0 ;
wire GND ;
// @15:57
  LUT2 pre_out_axb_0 (
	.I0(out_r_vec_mult_0[0]),
	.I1(in_a_r_reg_0[0]),
	.O(pre_out_i[0])
);
defparam pre_out_axb_0.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_1_cZ (
	.I0(out_r_vec_mult_0[1]),
	.I1(in_a_r_reg_0[1]),
	.O(pre_out_axb_1)
);
defparam pre_out_axb_1_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_2_cZ (
	.I0(out_r_vec_mult_0[2]),
	.I1(in_a_r_reg_0[2]),
	.O(pre_out_axb_2)
);
defparam pre_out_axb_2_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_3_cZ (
	.I0(out_r_vec_mult_0[3]),
	.I1(in_a_r_reg_0[3]),
	.O(pre_out_axb_3)
);
defparam pre_out_axb_3_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_4_cZ (
	.I0(out_r_vec_mult_0[4]),
	.I1(in_a_r_reg_0[4]),
	.O(pre_out_axb_4)
);
defparam pre_out_axb_4_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_5_cZ (
	.I0(out_r_vec_mult_0[5]),
	.I1(in_a_r_reg_0[5]),
	.O(pre_out_axb_5)
);
defparam pre_out_axb_5_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_6_cZ (
	.I0(out_r_vec_mult_0[6]),
	.I1(in_a_r_reg_0[6]),
	.O(pre_out_axb_6)
);
defparam pre_out_axb_6_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_7_cZ (
	.I0(out_r_vec_mult_0[7]),
	.I1(in_a_r_reg_0[7]),
	.O(pre_out_axb_7)
);
defparam pre_out_axb_7_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_8_cZ (
	.I0(out_r_vec_mult_0[8]),
	.I1(in_a_r_reg_0[8]),
	.O(pre_out_axb_8)
);
defparam pre_out_axb_8_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_9_cZ (
	.I0(out_r_vec_mult_0[9]),
	.I1(in_a_r_reg_0[9]),
	.O(pre_out_axb_9)
);
defparam pre_out_axb_9_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_10_cZ (
	.I0(out_r_vec_mult_0[10]),
	.I1(in_a_r_reg_0[10]),
	.O(pre_out_axb_10)
);
defparam pre_out_axb_10_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_11_cZ (
	.I0(out_r_vec_mult_0[11]),
	.I1(in_a_r_reg_0[11]),
	.O(pre_out_axb_11)
);
defparam pre_out_axb_11_cZ.INIT=4'h9;
// @15:57
  XORCY pre_out_s_11 (
	.LI(pre_out_axb_11),
	.CI(pre_out_cry_10),
	.O(pre_out_10)
);
// @15:57
  XORCY pre_out_s_10 (
	.LI(pre_out_axb_10),
	.CI(pre_out_cry_9),
	.O(pre_out[10])
);
// @15:57
  MUXCY_L pre_out_cry_10_cZ (
	.DI(in_a_r_reg_0[10]),
	.CI(pre_out_cry_9),
	.S(pre_out_axb_10),
	.LO(pre_out_cry_10)
);
// @15:57
  XORCY pre_out_s_9 (
	.LI(pre_out_axb_9),
	.CI(pre_out_cry_8),
	.O(pre_out[9])
);
// @15:57
  MUXCY_L pre_out_cry_9_cZ (
	.DI(in_a_r_reg_0[9]),
	.CI(pre_out_cry_8),
	.S(pre_out_axb_9),
	.LO(pre_out_cry_9)
);
// @15:57
  XORCY pre_out_s_8 (
	.LI(pre_out_axb_8),
	.CI(pre_out_cry_7),
	.O(pre_out[8])
);
// @15:57
  MUXCY_L pre_out_cry_8_cZ (
	.DI(in_a_r_reg_0[8]),
	.CI(pre_out_cry_7),
	.S(pre_out_axb_8),
	.LO(pre_out_cry_8)
);
// @15:57
  XORCY pre_out_s_7 (
	.LI(pre_out_axb_7),
	.CI(pre_out_cry_6),
	.O(pre_out[7])
);
// @15:57
  MUXCY_L pre_out_cry_7_cZ (
	.DI(in_a_r_reg_0[7]),
	.CI(pre_out_cry_6),
	.S(pre_out_axb_7),
	.LO(pre_out_cry_7)
);
// @15:57
  XORCY pre_out_s_6 (
	.LI(pre_out_axb_6),
	.CI(pre_out_cry_5),
	.O(pre_out[6])
);
// @15:57
  MUXCY_L pre_out_cry_6_cZ (
	.DI(in_a_r_reg_0[6]),
	.CI(pre_out_cry_5),
	.S(pre_out_axb_6),
	.LO(pre_out_cry_6)
);
// @15:57
  XORCY pre_out_s_5 (
	.LI(pre_out_axb_5),
	.CI(pre_out_cry_4),
	.O(pre_out[5])
);
// @15:57
  MUXCY_L pre_out_cry_5_cZ (
	.DI(in_a_r_reg_0[5]),
	.CI(pre_out_cry_4),
	.S(pre_out_axb_5),
	.LO(pre_out_cry_5)
);
// @15:57
  XORCY pre_out_s_4 (
	.LI(pre_out_axb_4),
	.CI(pre_out_cry_3),
	.O(pre_out[4])
);
// @15:57
  MUXCY_L pre_out_cry_4_cZ (
	.DI(in_a_r_reg_0[4]),
	.CI(pre_out_cry_3),
	.S(pre_out_axb_4),
	.LO(pre_out_cry_4)
);
// @15:57
  XORCY pre_out_s_3 (
	.LI(pre_out_axb_3),
	.CI(pre_out_cry_2),
	.O(pre_out[3])
);
// @15:57
  MUXCY_L pre_out_cry_3_cZ (
	.DI(in_a_r_reg_0[3]),
	.CI(pre_out_cry_2),
	.S(pre_out_axb_3),
	.LO(pre_out_cry_3)
);
// @15:57
  XORCY pre_out_s_2 (
	.LI(pre_out_axb_2),
	.CI(pre_out_cry_1),
	.O(pre_out[2])
);
// @15:57
  MUXCY_L pre_out_cry_2_cZ (
	.DI(in_a_r_reg_0[2]),
	.CI(pre_out_cry_1),
	.S(pre_out_axb_2),
	.LO(pre_out_cry_2)
);
// @15:57
  XORCY pre_out_s_1 (
	.LI(pre_out_axb_1),
	.CI(pre_out_cry_0),
	.O(pre_out[1])
);
// @15:57
  MUXCY_L pre_out_cry_1_cZ (
	.DI(in_a_r_reg_0[1]),
	.CI(pre_out_cry_0),
	.S(pre_out_axb_1),
	.LO(pre_out_cry_1)
);
// @15:57
  MUXCY_L pre_out_cry_0_cZ (
	.DI(in_a_r_reg_0[0]),
	.CI(VCC),
	.S(pre_out_i[0]),
	.LO(pre_out_cry_0)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
// @15:65
  LUT4 \output_iv_lut6_2_o6[5]  (
	.I0(out_r_vec_mult_0[11]),
	.I1(in_a_r_reg_0[11]),
	.I2(pre_out[5]),
	.I3(pre_out_10),
	.O(output_iv_4)
);
defparam \output_iv_lut6_2_o6[5] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o5[5]  (
	.I0(out_r_vec_mult_0[11]),
	.I1(in_a_r_reg_0[11]),
	.I2(pre_out[6]),
	.I3(pre_out_10),
	.O(N_500)
);
defparam \output_iv_lut6_2_o5[5] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o6[3]  (
	.I0(out_r_vec_mult_0[11]),
	.I1(in_a_r_reg_0[11]),
	.I2(pre_out[3]),
	.I3(pre_out_10),
	.O(output_iv_2)
);
defparam \output_iv_lut6_2_o6[3] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o5[3]  (
	.I0(out_r_vec_mult_0[11]),
	.I1(in_a_r_reg_0[11]),
	.I2(pre_out[4]),
	.I3(pre_out_10),
	.O(output_iv_3)
);
defparam \output_iv_lut6_2_o5[3] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o6[7]  (
	.I0(out_r_vec_mult_0[11]),
	.I1(in_a_r_reg_0[11]),
	.I2(pre_out[7]),
	.I3(pre_out_10),
	.O(output_iv_6)
);
defparam \output_iv_lut6_2_o6[7] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o5[7]  (
	.I0(out_r_vec_mult_0[11]),
	.I1(in_a_r_reg_0[11]),
	.I2(pre_out[8]),
	.I3(pre_out_10),
	.O(output_iv_7)
);
defparam \output_iv_lut6_2_o5[7] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o6[10]  (
	.I0(out_r_vec_mult_0[11]),
	.I1(in_a_r_reg_0[11]),
	.I2(pre_out[10]),
	.I3(pre_out_10),
	.O(output_iv_9)
);
defparam \output_iv_lut6_2_o6[10] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o5[10]  (
	.I0(out_r_vec_mult_0[11]),
	.I1(in_a_r_reg_0[11]),
	.I2(pre_out[9]),
	.I3(pre_out_10),
	.O(output_iv_8)
);
defparam \output_iv_lut6_2_o5[10] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o6[1]  (
	.I0(out_r_vec_mult_0[11]),
	.I1(in_a_r_reg_0[11]),
	.I2(pre_out[1]),
	.I3(pre_out_10),
	.O(output_iv_0)
);
defparam \output_iv_lut6_2_o6[1] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o5[1]  (
	.I0(out_r_vec_mult_0[11]),
	.I1(in_a_r_reg_0[11]),
	.I2(pre_out[2]),
	.I3(pre_out_10),
	.O(output_iv_1)
);
defparam \output_iv_lut6_2_o5[1] .INIT=16'h0D4F;
endmodule /* add_subZ3 */

module add_subZ3_1 (
  pre_out_i_m_8,
  pre_out_i_m_4,
  pre_out_i_m_0,
  out_r_vec_mult_1,
  in_a_r_reg_1,
  pre_out_10,
  pre_out_9,
  pre_out_8,
  pre_out_6,
  pre_out_5,
  pre_out_4,
  pre_out_2,
  pre_out_1,
  pre_out_0,
  un5_output
)
;
output pre_out_i_m_8 ;
output pre_out_i_m_4 ;
output pre_out_i_m_0 ;
input [11:0] out_r_vec_mult_1 ;
input [11:0] in_a_r_reg_1 ;
output pre_out_10 ;
output pre_out_9 ;
output pre_out_8 ;
output pre_out_6 ;
output pre_out_5 ;
output pre_out_4 ;
output pre_out_2 ;
output pre_out_1 ;
output pre_out_0 ;
output un5_output ;
wire pre_out_i_m_8 ;
wire pre_out_i_m_4 ;
wire pre_out_i_m_0 ;
wire pre_out_10 ;
wire pre_out_9 ;
wire pre_out_8 ;
wire pre_out_6 ;
wire pre_out_5 ;
wire pre_out_4 ;
wire pre_out_2 ;
wire pre_out_1 ;
wire pre_out_0 ;
wire un5_output ;
wire [8:4] pre_out;
wire [0:0] pre_out_i;
wire VCC ;
wire pre_out_axb_1 ;
wire pre_out_axb_2 ;
wire pre_out_axb_3 ;
wire pre_out_axb_4 ;
wire pre_out_axb_5 ;
wire pre_out_axb_6 ;
wire pre_out_axb_7 ;
wire pre_out_axb_8 ;
wire pre_out_axb_9 ;
wire pre_out_axb_10 ;
wire pre_out_axb_11 ;
wire pre_out_cry_10 ;
wire pre_out_cry_9 ;
wire pre_out_cry_8 ;
wire pre_out_cry_7 ;
wire pre_out_cry_6 ;
wire pre_out_cry_5 ;
wire pre_out_cry_4 ;
wire pre_out_cry_3 ;
wire pre_out_cry_2 ;
wire pre_out_cry_1 ;
wire pre_out_cry_0 ;
wire GND ;
// @15:57
  LUT2 pre_out_axb_0 (
	.I0(out_r_vec_mult_1[0]),
	.I1(in_a_r_reg_1[0]),
	.O(pre_out_i[0])
);
defparam pre_out_axb_0.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_1_cZ (
	.I0(out_r_vec_mult_1[1]),
	.I1(in_a_r_reg_1[1]),
	.O(pre_out_axb_1)
);
defparam pre_out_axb_1_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_2_cZ (
	.I0(out_r_vec_mult_1[2]),
	.I1(in_a_r_reg_1[2]),
	.O(pre_out_axb_2)
);
defparam pre_out_axb_2_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_3_cZ (
	.I0(out_r_vec_mult_1[3]),
	.I1(in_a_r_reg_1[3]),
	.O(pre_out_axb_3)
);
defparam pre_out_axb_3_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_4_cZ (
	.I0(out_r_vec_mult_1[4]),
	.I1(in_a_r_reg_1[4]),
	.O(pre_out_axb_4)
);
defparam pre_out_axb_4_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_5_cZ (
	.I0(out_r_vec_mult_1[5]),
	.I1(in_a_r_reg_1[5]),
	.O(pre_out_axb_5)
);
defparam pre_out_axb_5_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_6_cZ (
	.I0(out_r_vec_mult_1[6]),
	.I1(in_a_r_reg_1[6]),
	.O(pre_out_axb_6)
);
defparam pre_out_axb_6_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_7_cZ (
	.I0(out_r_vec_mult_1[7]),
	.I1(in_a_r_reg_1[7]),
	.O(pre_out_axb_7)
);
defparam pre_out_axb_7_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_8_cZ (
	.I0(out_r_vec_mult_1[8]),
	.I1(in_a_r_reg_1[8]),
	.O(pre_out_axb_8)
);
defparam pre_out_axb_8_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_9_cZ (
	.I0(out_r_vec_mult_1[9]),
	.I1(in_a_r_reg_1[9]),
	.O(pre_out_axb_9)
);
defparam pre_out_axb_9_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_10_cZ (
	.I0(out_r_vec_mult_1[10]),
	.I1(in_a_r_reg_1[10]),
	.O(pre_out_axb_10)
);
defparam pre_out_axb_10_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_11_cZ (
	.I0(out_r_vec_mult_1[11]),
	.I1(in_a_r_reg_1[11]),
	.O(pre_out_axb_11)
);
defparam pre_out_axb_11_cZ.INIT=4'h9;
// @15:57
  XORCY pre_out_s_11 (
	.LI(pre_out_axb_11),
	.CI(pre_out_cry_10),
	.O(pre_out_10)
);
// @15:57
  XORCY pre_out_s_10 (
	.LI(pre_out_axb_10),
	.CI(pre_out_cry_9),
	.O(pre_out_9)
);
// @15:57
  MUXCY_L pre_out_cry_10_cZ (
	.DI(in_a_r_reg_1[10]),
	.CI(pre_out_cry_9),
	.S(pre_out_axb_10),
	.LO(pre_out_cry_10)
);
// @15:57
  XORCY pre_out_s_9 (
	.LI(pre_out_axb_9),
	.CI(pre_out_cry_8),
	.O(pre_out_8)
);
// @15:57
  MUXCY_L pre_out_cry_9_cZ (
	.DI(in_a_r_reg_1[9]),
	.CI(pre_out_cry_8),
	.S(pre_out_axb_9),
	.LO(pre_out_cry_9)
);
// @15:57
  XORCY pre_out_s_8 (
	.LI(pre_out_axb_8),
	.CI(pre_out_cry_7),
	.O(pre_out[8])
);
// @15:57
  MUXCY_L pre_out_cry_8_cZ (
	.DI(in_a_r_reg_1[8]),
	.CI(pre_out_cry_7),
	.S(pre_out_axb_8),
	.LO(pre_out_cry_8)
);
// @15:57
  XORCY pre_out_s_7 (
	.LI(pre_out_axb_7),
	.CI(pre_out_cry_6),
	.O(pre_out_6)
);
// @15:57
  MUXCY_L pre_out_cry_7_cZ (
	.DI(in_a_r_reg_1[7]),
	.CI(pre_out_cry_6),
	.S(pre_out_axb_7),
	.LO(pre_out_cry_7)
);
// @15:57
  XORCY pre_out_s_6 (
	.LI(pre_out_axb_6),
	.CI(pre_out_cry_5),
	.O(pre_out_5)
);
// @15:57
  MUXCY_L pre_out_cry_6_cZ (
	.DI(in_a_r_reg_1[6]),
	.CI(pre_out_cry_5),
	.S(pre_out_axb_6),
	.LO(pre_out_cry_6)
);
// @15:57
  XORCY pre_out_s_5 (
	.LI(pre_out_axb_5),
	.CI(pre_out_cry_4),
	.O(pre_out_4)
);
// @15:57
  MUXCY_L pre_out_cry_5_cZ (
	.DI(in_a_r_reg_1[5]),
	.CI(pre_out_cry_4),
	.S(pre_out_axb_5),
	.LO(pre_out_cry_5)
);
// @15:57
  XORCY pre_out_s_4 (
	.LI(pre_out_axb_4),
	.CI(pre_out_cry_3),
	.O(pre_out[4])
);
// @15:57
  MUXCY_L pre_out_cry_4_cZ (
	.DI(in_a_r_reg_1[4]),
	.CI(pre_out_cry_3),
	.S(pre_out_axb_4),
	.LO(pre_out_cry_4)
);
// @15:57
  XORCY pre_out_s_3 (
	.LI(pre_out_axb_3),
	.CI(pre_out_cry_2),
	.O(pre_out_2)
);
// @15:57
  MUXCY_L pre_out_cry_3_cZ (
	.DI(in_a_r_reg_1[3]),
	.CI(pre_out_cry_2),
	.S(pre_out_axb_3),
	.LO(pre_out_cry_3)
);
// @15:57
  XORCY pre_out_s_2 (
	.LI(pre_out_axb_2),
	.CI(pre_out_cry_1),
	.O(pre_out_1)
);
// @15:57
  MUXCY_L pre_out_cry_2_cZ (
	.DI(in_a_r_reg_1[2]),
	.CI(pre_out_cry_1),
	.S(pre_out_axb_2),
	.LO(pre_out_cry_2)
);
// @15:57
  XORCY pre_out_s_1 (
	.LI(pre_out_axb_1),
	.CI(pre_out_cry_0),
	.O(pre_out_0)
);
// @15:57
  MUXCY_L pre_out_cry_1_cZ (
	.DI(in_a_r_reg_1[1]),
	.CI(pre_out_cry_0),
	.S(pre_out_axb_1),
	.LO(pre_out_cry_1)
);
// @15:57
  MUXCY_L pre_out_cry_0_cZ (
	.DI(in_a_r_reg_1[0]),
	.CI(VCC),
	.S(pre_out_i[0]),
	.LO(pre_out_cry_0)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
// @15:66
  LUT3 \gen_sub.gen_sat_sub.un5_output_lut6_2_o6  (
	.I0(out_r_vec_mult_1[11]),
	.I1(in_a_r_reg_1[11]),
	.I2(pre_out_10),
	.O(un5_output)
);
defparam \gen_sub.gen_sat_sub.un5_output_lut6_2_o6 .INIT=8'hFB;
// @15:66
  LUT5 \gen_sub.gen_sat_sub.un5_output_lut6_2_o5  (
	.I0(out_r_vec_mult_1[0]),
	.I1(in_a_r_reg_1[0]),
	.I2(out_r_vec_mult_1[11]),
	.I3(in_a_r_reg_1[11]),
	.I4(pre_out_10),
	.O(pre_out_i_m_0)
);
defparam \gen_sub.gen_sat_sub.un5_output_lut6_2_o5 .INIT=32'h99099099;
// @15:65
  LUT4 pre_out_s_4_RNIDBUP_o6 (
	.I0(out_r_vec_mult_1[11]),
	.I1(in_a_r_reg_1[11]),
	.I2(pre_out[8]),
	.I3(pre_out_10),
	.O(pre_out_i_m_8)
);
defparam pre_out_s_4_RNIDBUP_o6.INIT=16'h0D0B;
// @15:65
  LUT4 pre_out_s_4_RNIDBUP_o5 (
	.I0(out_r_vec_mult_1[11]),
	.I1(in_a_r_reg_1[11]),
	.I2(pre_out[4]),
	.I3(pre_out_10),
	.O(pre_out_i_m_4)
);
defparam pre_out_s_4_RNIDBUP_o5.INIT=16'h0D0B;
endmodule /* add_subZ3_1 */

module add_subZ3_2 (
  out_r_vec_mult_2,
  in_a_r_reg_2,
  pre_out_i_m_6,
  pre_out_i_m_0,
  pre_out_10,
  pre_out_9,
  pre_out_8,
  pre_out_7,
  pre_out_6,
  pre_out_4,
  pre_out_3,
  pre_out_2,
  pre_out_1,
  pre_out_0,
  un5_output
)
;
input [11:0] out_r_vec_mult_2 ;
input [11:0] in_a_r_reg_2 ;
output pre_out_i_m_6 ;
output pre_out_i_m_0 ;
output pre_out_10 ;
output pre_out_9 ;
output pre_out_8 ;
output pre_out_7 ;
output pre_out_6 ;
output pre_out_4 ;
output pre_out_3 ;
output pre_out_2 ;
output pre_out_1 ;
output pre_out_0 ;
output un5_output ;
wire pre_out_i_m_6 ;
wire pre_out_i_m_0 ;
wire pre_out_10 ;
wire pre_out_9 ;
wire pre_out_8 ;
wire pre_out_7 ;
wire pre_out_6 ;
wire pre_out_4 ;
wire pre_out_3 ;
wire pre_out_2 ;
wire pre_out_1 ;
wire pre_out_0 ;
wire un5_output ;
wire [6:6] pre_out;
wire [0:0] pre_out_i;
wire GND ;
wire VCC ;
wire pre_out_axb_1 ;
wire pre_out_axb_2 ;
wire pre_out_axb_3 ;
wire pre_out_axb_4 ;
wire pre_out_axb_5 ;
wire pre_out_axb_6 ;
wire pre_out_axb_7 ;
wire pre_out_axb_8 ;
wire pre_out_axb_9 ;
wire pre_out_axb_10 ;
wire pre_out_axb_11 ;
wire pre_out_cry_10 ;
wire pre_out_cry_9 ;
wire pre_out_cry_8 ;
wire pre_out_cry_7 ;
wire pre_out_cry_6 ;
wire pre_out_cry_5 ;
wire pre_out_cry_4 ;
wire pre_out_cry_3 ;
wire pre_out_cry_2 ;
wire pre_out_cry_1 ;
wire pre_out_cry_0 ;
// @15:57
  LUT2 pre_out_axb_0 (
	.I0(out_r_vec_mult_2[0]),
	.I1(in_a_r_reg_2[0]),
	.O(pre_out_i[0])
);
defparam pre_out_axb_0.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_1_cZ (
	.I0(out_r_vec_mult_2[1]),
	.I1(in_a_r_reg_2[1]),
	.O(pre_out_axb_1)
);
defparam pre_out_axb_1_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_2_cZ (
	.I0(out_r_vec_mult_2[2]),
	.I1(in_a_r_reg_2[2]),
	.O(pre_out_axb_2)
);
defparam pre_out_axb_2_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_3_cZ (
	.I0(out_r_vec_mult_2[3]),
	.I1(in_a_r_reg_2[3]),
	.O(pre_out_axb_3)
);
defparam pre_out_axb_3_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_4_cZ (
	.I0(out_r_vec_mult_2[4]),
	.I1(in_a_r_reg_2[4]),
	.O(pre_out_axb_4)
);
defparam pre_out_axb_4_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_5_cZ (
	.I0(out_r_vec_mult_2[5]),
	.I1(in_a_r_reg_2[5]),
	.O(pre_out_axb_5)
);
defparam pre_out_axb_5_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_6_cZ (
	.I0(out_r_vec_mult_2[6]),
	.I1(in_a_r_reg_2[6]),
	.O(pre_out_axb_6)
);
defparam pre_out_axb_6_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_7_cZ (
	.I0(out_r_vec_mult_2[7]),
	.I1(in_a_r_reg_2[7]),
	.O(pre_out_axb_7)
);
defparam pre_out_axb_7_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_8_cZ (
	.I0(out_r_vec_mult_2[8]),
	.I1(in_a_r_reg_2[8]),
	.O(pre_out_axb_8)
);
defparam pre_out_axb_8_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_9_cZ (
	.I0(out_r_vec_mult_2[9]),
	.I1(in_a_r_reg_2[9]),
	.O(pre_out_axb_9)
);
defparam pre_out_axb_9_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_10_cZ (
	.I0(out_r_vec_mult_2[10]),
	.I1(in_a_r_reg_2[10]),
	.O(pre_out_axb_10)
);
defparam pre_out_axb_10_cZ.INIT=4'h9;
// @15:65
  LUT5 pre_out_s_11_RNI16U11 (
	.I0(out_r_vec_mult_2[0]),
	.I1(in_a_r_reg_2[0]),
	.I2(out_r_vec_mult_2[11]),
	.I3(in_a_r_reg_2[11]),
	.I4(pre_out_10),
	.O(pre_out_i_m_0)
);
defparam pre_out_s_11_RNI16U11.INIT=32'h99099099;
// @15:57
  LUT2 pre_out_axb_11_cZ (
	.I0(out_r_vec_mult_2[11]),
	.I1(in_a_r_reg_2[11]),
	.O(pre_out_axb_11)
);
defparam pre_out_axb_11_cZ.INIT=4'h9;
// @15:57
  XORCY pre_out_s_11 (
	.LI(pre_out_axb_11),
	.CI(pre_out_cry_10),
	.O(pre_out_10)
);
// @15:57
  XORCY pre_out_s_10 (
	.LI(pre_out_axb_10),
	.CI(pre_out_cry_9),
	.O(pre_out_9)
);
// @15:57
  MUXCY_L pre_out_cry_10_cZ (
	.DI(in_a_r_reg_2[10]),
	.CI(pre_out_cry_9),
	.S(pre_out_axb_10),
	.LO(pre_out_cry_10)
);
// @15:57
  XORCY pre_out_s_9 (
	.LI(pre_out_axb_9),
	.CI(pre_out_cry_8),
	.O(pre_out_8)
);
// @15:57
  MUXCY_L pre_out_cry_9_cZ (
	.DI(in_a_r_reg_2[9]),
	.CI(pre_out_cry_8),
	.S(pre_out_axb_9),
	.LO(pre_out_cry_9)
);
// @15:57
  XORCY pre_out_s_8 (
	.LI(pre_out_axb_8),
	.CI(pre_out_cry_7),
	.O(pre_out_7)
);
// @15:57
  MUXCY_L pre_out_cry_8_cZ (
	.DI(in_a_r_reg_2[8]),
	.CI(pre_out_cry_7),
	.S(pre_out_axb_8),
	.LO(pre_out_cry_8)
);
// @15:57
  XORCY pre_out_s_7 (
	.LI(pre_out_axb_7),
	.CI(pre_out_cry_6),
	.O(pre_out_6)
);
// @15:57
  MUXCY_L pre_out_cry_7_cZ (
	.DI(in_a_r_reg_2[7]),
	.CI(pre_out_cry_6),
	.S(pre_out_axb_7),
	.LO(pre_out_cry_7)
);
// @15:57
  XORCY pre_out_s_6 (
	.LI(pre_out_axb_6),
	.CI(pre_out_cry_5),
	.O(pre_out[6])
);
// @15:57
  MUXCY_L pre_out_cry_6_cZ (
	.DI(in_a_r_reg_2[6]),
	.CI(pre_out_cry_5),
	.S(pre_out_axb_6),
	.LO(pre_out_cry_6)
);
// @15:57
  XORCY pre_out_s_5 (
	.LI(pre_out_axb_5),
	.CI(pre_out_cry_4),
	.O(pre_out_4)
);
// @15:57
  MUXCY_L pre_out_cry_5_cZ (
	.DI(in_a_r_reg_2[5]),
	.CI(pre_out_cry_4),
	.S(pre_out_axb_5),
	.LO(pre_out_cry_5)
);
// @15:57
  XORCY pre_out_s_4 (
	.LI(pre_out_axb_4),
	.CI(pre_out_cry_3),
	.O(pre_out_3)
);
// @15:57
  MUXCY_L pre_out_cry_4_cZ (
	.DI(in_a_r_reg_2[4]),
	.CI(pre_out_cry_3),
	.S(pre_out_axb_4),
	.LO(pre_out_cry_4)
);
// @15:57
  XORCY pre_out_s_3 (
	.LI(pre_out_axb_3),
	.CI(pre_out_cry_2),
	.O(pre_out_2)
);
// @15:57
  MUXCY_L pre_out_cry_3_cZ (
	.DI(in_a_r_reg_2[3]),
	.CI(pre_out_cry_2),
	.S(pre_out_axb_3),
	.LO(pre_out_cry_3)
);
// @15:57
  XORCY pre_out_s_2 (
	.LI(pre_out_axb_2),
	.CI(pre_out_cry_1),
	.O(pre_out_1)
);
// @15:57
  MUXCY_L pre_out_cry_2_cZ (
	.DI(in_a_r_reg_2[2]),
	.CI(pre_out_cry_1),
	.S(pre_out_axb_2),
	.LO(pre_out_cry_2)
);
// @15:57
  XORCY pre_out_s_1 (
	.LI(pre_out_axb_1),
	.CI(pre_out_cry_0),
	.O(pre_out_0)
);
// @15:57
  MUXCY_L pre_out_cry_1_cZ (
	.DI(in_a_r_reg_2[1]),
	.CI(pre_out_cry_0),
	.S(pre_out_axb_1),
	.LO(pre_out_cry_1)
);
// @15:57
  MUXCY_L pre_out_cry_0_cZ (
	.DI(in_a_r_reg_2[0]),
	.CI(VCC),
	.S(pre_out_i[0]),
	.LO(pre_out_cry_0)
);
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
// @15:65
  LUT4 pre_out_s_6_RNIRQ081_o6 (
	.I0(out_r_vec_mult_2[11]),
	.I1(in_a_r_reg_2[11]),
	.I2(pre_out[6]),
	.I3(pre_out_10),
	.O(pre_out_i_m_6)
);
defparam pre_out_s_6_RNIRQ081_o6.INIT=16'h0D0B;
// @15:65
  LUT3 pre_out_s_6_RNIRQ081_o5 (
	.I0(out_r_vec_mult_2[11]),
	.I1(in_a_r_reg_2[11]),
	.I2(pre_out_10),
	.O(un5_output)
);
defparam pre_out_s_6_RNIRQ081_o5.INIT=8'hFB;
endmodule /* add_subZ3_2 */

module add_subZ3_3 (
  out_r_vec_mult_3,
  in_a_r_reg_3,
  pre_out_i_m,
  pre_out_10,
  pre_out_9,
  pre_out_8,
  pre_out_7,
  pre_out_6,
  pre_out_5,
  pre_out_4,
  pre_out_3,
  pre_out_2,
  pre_out_1,
  un5_output
)
;
input [11:0] out_r_vec_mult_3 ;
input [11:0] in_a_r_reg_3 ;
output [1:0] pre_out_i_m ;
output pre_out_10 ;
output pre_out_9 ;
output pre_out_8 ;
output pre_out_7 ;
output pre_out_6 ;
output pre_out_5 ;
output pre_out_4 ;
output pre_out_3 ;
output pre_out_2 ;
output pre_out_1 ;
output un5_output ;
wire pre_out_10 ;
wire pre_out_9 ;
wire pre_out_8 ;
wire pre_out_7 ;
wire pre_out_6 ;
wire pre_out_5 ;
wire pre_out_4 ;
wire pre_out_3 ;
wire pre_out_2 ;
wire pre_out_1 ;
wire un5_output ;
wire [1:1] pre_out;
wire [0:0] pre_out_i;
wire GND ;
wire VCC ;
wire pre_out_axb_1 ;
wire pre_out_axb_2 ;
wire pre_out_axb_3 ;
wire pre_out_axb_4 ;
wire pre_out_axb_5 ;
wire pre_out_axb_6 ;
wire pre_out_axb_7 ;
wire pre_out_axb_8 ;
wire pre_out_axb_9 ;
wire pre_out_axb_10 ;
wire pre_out_axb_11 ;
wire pre_out_cry_10 ;
wire pre_out_cry_9 ;
wire pre_out_cry_8 ;
wire pre_out_cry_7 ;
wire pre_out_cry_6 ;
wire pre_out_cry_5 ;
wire pre_out_cry_4 ;
wire pre_out_cry_3 ;
wire pre_out_cry_2 ;
wire pre_out_cry_1 ;
wire pre_out_cry_0 ;
// @15:57
  LUT2 pre_out_axb_0 (
	.I0(out_r_vec_mult_3[0]),
	.I1(in_a_r_reg_3[0]),
	.O(pre_out_i[0])
);
defparam pre_out_axb_0.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_1_cZ (
	.I0(out_r_vec_mult_3[1]),
	.I1(in_a_r_reg_3[1]),
	.O(pre_out_axb_1)
);
defparam pre_out_axb_1_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_2_cZ (
	.I0(out_r_vec_mult_3[2]),
	.I1(in_a_r_reg_3[2]),
	.O(pre_out_axb_2)
);
defparam pre_out_axb_2_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_3_cZ (
	.I0(out_r_vec_mult_3[3]),
	.I1(in_a_r_reg_3[3]),
	.O(pre_out_axb_3)
);
defparam pre_out_axb_3_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_4_cZ (
	.I0(out_r_vec_mult_3[4]),
	.I1(in_a_r_reg_3[4]),
	.O(pre_out_axb_4)
);
defparam pre_out_axb_4_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_5_cZ (
	.I0(out_r_vec_mult_3[5]),
	.I1(in_a_r_reg_3[5]),
	.O(pre_out_axb_5)
);
defparam pre_out_axb_5_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_6_cZ (
	.I0(out_r_vec_mult_3[6]),
	.I1(in_a_r_reg_3[6]),
	.O(pre_out_axb_6)
);
defparam pre_out_axb_6_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_7_cZ (
	.I0(out_r_vec_mult_3[7]),
	.I1(in_a_r_reg_3[7]),
	.O(pre_out_axb_7)
);
defparam pre_out_axb_7_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_8_cZ (
	.I0(out_r_vec_mult_3[8]),
	.I1(in_a_r_reg_3[8]),
	.O(pre_out_axb_8)
);
defparam pre_out_axb_8_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_9_cZ (
	.I0(out_r_vec_mult_3[9]),
	.I1(in_a_r_reg_3[9]),
	.O(pre_out_axb_9)
);
defparam pre_out_axb_9_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_10_cZ (
	.I0(out_r_vec_mult_3[10]),
	.I1(in_a_r_reg_3[10]),
	.O(pre_out_axb_10)
);
defparam pre_out_axb_10_cZ.INIT=4'h9;
// @15:65
  LUT5 pre_out_s_11_RNI6TNU (
	.I0(out_r_vec_mult_3[0]),
	.I1(in_a_r_reg_3[0]),
	.I2(out_r_vec_mult_3[11]),
	.I3(in_a_r_reg_3[11]),
	.I4(pre_out_10),
	.O(pre_out_i_m[0])
);
defparam pre_out_s_11_RNI6TNU.INIT=32'h99099099;
// @15:57
  LUT2 pre_out_axb_11_cZ (
	.I0(out_r_vec_mult_3[11]),
	.I1(in_a_r_reg_3[11]),
	.O(pre_out_axb_11)
);
defparam pre_out_axb_11_cZ.INIT=4'h9;
// @15:57
  XORCY pre_out_s_11 (
	.LI(pre_out_axb_11),
	.CI(pre_out_cry_10),
	.O(pre_out_10)
);
// @15:57
  XORCY pre_out_s_10 (
	.LI(pre_out_axb_10),
	.CI(pre_out_cry_9),
	.O(pre_out_9)
);
// @15:57
  MUXCY_L pre_out_cry_10_cZ (
	.DI(in_a_r_reg_3[10]),
	.CI(pre_out_cry_9),
	.S(pre_out_axb_10),
	.LO(pre_out_cry_10)
);
// @15:57
  XORCY pre_out_s_9 (
	.LI(pre_out_axb_9),
	.CI(pre_out_cry_8),
	.O(pre_out_8)
);
// @15:57
  MUXCY_L pre_out_cry_9_cZ (
	.DI(in_a_r_reg_3[9]),
	.CI(pre_out_cry_8),
	.S(pre_out_axb_9),
	.LO(pre_out_cry_9)
);
// @15:57
  XORCY pre_out_s_8 (
	.LI(pre_out_axb_8),
	.CI(pre_out_cry_7),
	.O(pre_out_7)
);
// @15:57
  MUXCY_L pre_out_cry_8_cZ (
	.DI(in_a_r_reg_3[8]),
	.CI(pre_out_cry_7),
	.S(pre_out_axb_8),
	.LO(pre_out_cry_8)
);
// @15:57
  XORCY pre_out_s_7 (
	.LI(pre_out_axb_7),
	.CI(pre_out_cry_6),
	.O(pre_out_6)
);
// @15:57
  MUXCY_L pre_out_cry_7_cZ (
	.DI(in_a_r_reg_3[7]),
	.CI(pre_out_cry_6),
	.S(pre_out_axb_7),
	.LO(pre_out_cry_7)
);
// @15:57
  XORCY pre_out_s_6 (
	.LI(pre_out_axb_6),
	.CI(pre_out_cry_5),
	.O(pre_out_5)
);
// @15:57
  MUXCY_L pre_out_cry_6_cZ (
	.DI(in_a_r_reg_3[6]),
	.CI(pre_out_cry_5),
	.S(pre_out_axb_6),
	.LO(pre_out_cry_6)
);
// @15:57
  XORCY pre_out_s_5 (
	.LI(pre_out_axb_5),
	.CI(pre_out_cry_4),
	.O(pre_out_4)
);
// @15:57
  MUXCY_L pre_out_cry_5_cZ (
	.DI(in_a_r_reg_3[5]),
	.CI(pre_out_cry_4),
	.S(pre_out_axb_5),
	.LO(pre_out_cry_5)
);
// @15:57
  XORCY pre_out_s_4 (
	.LI(pre_out_axb_4),
	.CI(pre_out_cry_3),
	.O(pre_out_3)
);
// @15:57
  MUXCY_L pre_out_cry_4_cZ (
	.DI(in_a_r_reg_3[4]),
	.CI(pre_out_cry_3),
	.S(pre_out_axb_4),
	.LO(pre_out_cry_4)
);
// @15:57
  XORCY pre_out_s_3 (
	.LI(pre_out_axb_3),
	.CI(pre_out_cry_2),
	.O(pre_out_2)
);
// @15:57
  MUXCY_L pre_out_cry_3_cZ (
	.DI(in_a_r_reg_3[3]),
	.CI(pre_out_cry_2),
	.S(pre_out_axb_3),
	.LO(pre_out_cry_3)
);
// @15:57
  XORCY pre_out_s_2 (
	.LI(pre_out_axb_2),
	.CI(pre_out_cry_1),
	.O(pre_out_1)
);
// @15:57
  MUXCY_L pre_out_cry_2_cZ (
	.DI(in_a_r_reg_3[2]),
	.CI(pre_out_cry_1),
	.S(pre_out_axb_2),
	.LO(pre_out_cry_2)
);
// @15:57
  XORCY pre_out_s_1 (
	.LI(pre_out_axb_1),
	.CI(pre_out_cry_0),
	.O(pre_out[1])
);
// @15:57
  MUXCY_L pre_out_cry_1_cZ (
	.DI(in_a_r_reg_3[1]),
	.CI(pre_out_cry_0),
	.S(pre_out_axb_1),
	.LO(pre_out_cry_1)
);
// @15:57
  MUXCY_L pre_out_cry_0_cZ (
	.DI(in_a_r_reg_3[0]),
	.CI(VCC),
	.S(pre_out_i[0]),
	.LO(pre_out_cry_0)
);
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
// @15:65
  LUT4 pre_out_s_1_RNIQIL91_o6 (
	.I0(out_r_vec_mult_3[11]),
	.I1(in_a_r_reg_3[11]),
	.I2(pre_out[1]),
	.I3(pre_out_10),
	.O(pre_out_i_m[1])
);
defparam pre_out_s_1_RNIQIL91_o6.INIT=16'h0D0B;
// @15:65
  LUT3 pre_out_s_1_RNIQIL91_o5 (
	.I0(out_r_vec_mult_3[11]),
	.I1(in_a_r_reg_3[11]),
	.I2(pre_out_10),
	.O(un5_output)
);
defparam pre_out_s_1_RNIQIL91_o5.INIT=8'hFB;
endmodule /* add_subZ3_3 */

module add_subZ3_4 (
  pre_out_10,
  output_iv,
  out_i_vec_sub_0,
  out_i_vec_mult_0,
  in_a_i_reg_0
)
;
output pre_out_10 ;
output [10:0] output_iv ;
output [11:11] out_i_vec_sub_0 ;
input [11:0] out_i_vec_mult_0 ;
input [11:0] in_a_i_reg_0 ;
wire pre_out_10 ;
wire [10:1] pre_out;
wire [0:0] pre_out_i;
wire VCC ;
wire pre_out_axb_1 ;
wire pre_out_axb_2 ;
wire pre_out_axb_3 ;
wire pre_out_axb_4 ;
wire pre_out_axb_5 ;
wire pre_out_axb_6 ;
wire pre_out_axb_7 ;
wire pre_out_axb_8 ;
wire pre_out_axb_9 ;
wire pre_out_axb_10 ;
wire pre_out_axb_11 ;
wire pre_out_cry_10 ;
wire pre_out_cry_9 ;
wire pre_out_cry_8 ;
wire pre_out_cry_7 ;
wire pre_out_cry_6 ;
wire pre_out_cry_5 ;
wire pre_out_cry_4 ;
wire pre_out_cry_3 ;
wire pre_out_cry_2 ;
wire pre_out_cry_1 ;
wire pre_out_cry_0 ;
wire GND ;
// @15:57
  LUT2 pre_out_axb_0 (
	.I0(out_i_vec_mult_0[0]),
	.I1(in_a_i_reg_0[0]),
	.O(pre_out_i[0])
);
defparam pre_out_axb_0.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_1_cZ (
	.I0(out_i_vec_mult_0[1]),
	.I1(in_a_i_reg_0[1]),
	.O(pre_out_axb_1)
);
defparam pre_out_axb_1_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_2_cZ (
	.I0(out_i_vec_mult_0[2]),
	.I1(in_a_i_reg_0[2]),
	.O(pre_out_axb_2)
);
defparam pre_out_axb_2_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_3_cZ (
	.I0(out_i_vec_mult_0[3]),
	.I1(in_a_i_reg_0[3]),
	.O(pre_out_axb_3)
);
defparam pre_out_axb_3_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_4_cZ (
	.I0(out_i_vec_mult_0[4]),
	.I1(in_a_i_reg_0[4]),
	.O(pre_out_axb_4)
);
defparam pre_out_axb_4_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_5_cZ (
	.I0(out_i_vec_mult_0[5]),
	.I1(in_a_i_reg_0[5]),
	.O(pre_out_axb_5)
);
defparam pre_out_axb_5_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_6_cZ (
	.I0(out_i_vec_mult_0[6]),
	.I1(in_a_i_reg_0[6]),
	.O(pre_out_axb_6)
);
defparam pre_out_axb_6_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_7_cZ (
	.I0(out_i_vec_mult_0[7]),
	.I1(in_a_i_reg_0[7]),
	.O(pre_out_axb_7)
);
defparam pre_out_axb_7_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_8_cZ (
	.I0(out_i_vec_mult_0[8]),
	.I1(in_a_i_reg_0[8]),
	.O(pre_out_axb_8)
);
defparam pre_out_axb_8_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_9_cZ (
	.I0(out_i_vec_mult_0[9]),
	.I1(in_a_i_reg_0[9]),
	.O(pre_out_axb_9)
);
defparam pre_out_axb_9_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_10_cZ (
	.I0(out_i_vec_mult_0[10]),
	.I1(in_a_i_reg_0[10]),
	.O(pre_out_axb_10)
);
defparam pre_out_axb_10_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_11_cZ (
	.I0(out_i_vec_mult_0[11]),
	.I1(in_a_i_reg_0[11]),
	.O(pre_out_axb_11)
);
defparam pre_out_axb_11_cZ.INIT=4'h9;
// @15:57
  XORCY pre_out_s_11 (
	.LI(pre_out_axb_11),
	.CI(pre_out_cry_10),
	.O(pre_out_10)
);
// @15:57
  XORCY pre_out_s_10 (
	.LI(pre_out_axb_10),
	.CI(pre_out_cry_9),
	.O(pre_out[10])
);
// @15:57
  MUXCY_L pre_out_cry_10_cZ (
	.DI(in_a_i_reg_0[10]),
	.CI(pre_out_cry_9),
	.S(pre_out_axb_10),
	.LO(pre_out_cry_10)
);
// @15:57
  XORCY pre_out_s_9 (
	.LI(pre_out_axb_9),
	.CI(pre_out_cry_8),
	.O(pre_out[9])
);
// @15:57
  MUXCY_L pre_out_cry_9_cZ (
	.DI(in_a_i_reg_0[9]),
	.CI(pre_out_cry_8),
	.S(pre_out_axb_9),
	.LO(pre_out_cry_9)
);
// @15:57
  XORCY pre_out_s_8 (
	.LI(pre_out_axb_8),
	.CI(pre_out_cry_7),
	.O(pre_out[8])
);
// @15:57
  MUXCY_L pre_out_cry_8_cZ (
	.DI(in_a_i_reg_0[8]),
	.CI(pre_out_cry_7),
	.S(pre_out_axb_8),
	.LO(pre_out_cry_8)
);
// @15:57
  XORCY pre_out_s_7 (
	.LI(pre_out_axb_7),
	.CI(pre_out_cry_6),
	.O(pre_out[7])
);
// @15:57
  MUXCY_L pre_out_cry_7_cZ (
	.DI(in_a_i_reg_0[7]),
	.CI(pre_out_cry_6),
	.S(pre_out_axb_7),
	.LO(pre_out_cry_7)
);
// @15:57
  XORCY pre_out_s_6 (
	.LI(pre_out_axb_6),
	.CI(pre_out_cry_5),
	.O(pre_out[6])
);
// @15:57
  MUXCY_L pre_out_cry_6_cZ (
	.DI(in_a_i_reg_0[6]),
	.CI(pre_out_cry_5),
	.S(pre_out_axb_6),
	.LO(pre_out_cry_6)
);
// @15:57
  XORCY pre_out_s_5 (
	.LI(pre_out_axb_5),
	.CI(pre_out_cry_4),
	.O(pre_out[5])
);
// @15:57
  MUXCY_L pre_out_cry_5_cZ (
	.DI(in_a_i_reg_0[5]),
	.CI(pre_out_cry_4),
	.S(pre_out_axb_5),
	.LO(pre_out_cry_5)
);
// @15:57
  XORCY pre_out_s_4 (
	.LI(pre_out_axb_4),
	.CI(pre_out_cry_3),
	.O(pre_out[4])
);
// @15:57
  MUXCY_L pre_out_cry_4_cZ (
	.DI(in_a_i_reg_0[4]),
	.CI(pre_out_cry_3),
	.S(pre_out_axb_4),
	.LO(pre_out_cry_4)
);
// @15:57
  XORCY pre_out_s_3 (
	.LI(pre_out_axb_3),
	.CI(pre_out_cry_2),
	.O(pre_out[3])
);
// @15:57
  MUXCY_L pre_out_cry_3_cZ (
	.DI(in_a_i_reg_0[3]),
	.CI(pre_out_cry_2),
	.S(pre_out_axb_3),
	.LO(pre_out_cry_3)
);
// @15:57
  XORCY pre_out_s_2 (
	.LI(pre_out_axb_2),
	.CI(pre_out_cry_1),
	.O(pre_out[2])
);
// @15:57
  MUXCY_L pre_out_cry_2_cZ (
	.DI(in_a_i_reg_0[2]),
	.CI(pre_out_cry_1),
	.S(pre_out_axb_2),
	.LO(pre_out_cry_2)
);
// @15:57
  XORCY pre_out_s_1 (
	.LI(pre_out_axb_1),
	.CI(pre_out_cry_0),
	.O(pre_out[1])
);
// @15:57
  MUXCY_L pre_out_cry_1_cZ (
	.DI(in_a_i_reg_0[1]),
	.CI(pre_out_cry_0),
	.S(pre_out_axb_1),
	.LO(pre_out_cry_1)
);
// @15:57
  MUXCY_L pre_out_cry_0_cZ (
	.DI(in_a_i_reg_0[0]),
	.CI(VCC),
	.S(pre_out_i[0]),
	.LO(pre_out_cry_0)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
// @15:65
  LUT5 \output_iv_lut6_2_o6[0]  (
	.I0(out_i_vec_mult_0[0]),
	.I1(in_a_i_reg_0[0]),
	.I2(out_i_vec_mult_0[11]),
	.I3(in_a_i_reg_0[11]),
	.I4(pre_out_10),
	.O(output_iv[0])
);
defparam \output_iv_lut6_2_o6[0] .INIT=32'h99099F99;
// @15:65
  LUT3 \output_iv_lut6_2_o5[0]  (
	.I0(out_i_vec_mult_0[11]),
	.I1(in_a_i_reg_0[11]),
	.I2(pre_out_10),
	.O(out_i_vec_sub_0[11])
);
defparam \output_iv_lut6_2_o5[0] .INIT=8'hD4;
// @15:65
  LUT4 \output_iv_lut6_2_o6[2]  (
	.I0(out_i_vec_mult_0[11]),
	.I1(in_a_i_reg_0[11]),
	.I2(pre_out[2]),
	.I3(pre_out_10),
	.O(output_iv[2])
);
defparam \output_iv_lut6_2_o6[2] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o5[2]  (
	.I0(out_i_vec_mult_0[11]),
	.I1(in_a_i_reg_0[11]),
	.I2(pre_out[3]),
	.I3(pre_out_10),
	.O(output_iv[3])
);
defparam \output_iv_lut6_2_o5[2] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o6[4]  (
	.I0(out_i_vec_mult_0[11]),
	.I1(in_a_i_reg_0[11]),
	.I2(pre_out[4]),
	.I3(pre_out_10),
	.O(output_iv[4])
);
defparam \output_iv_lut6_2_o6[4] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o5[4]  (
	.I0(out_i_vec_mult_0[11]),
	.I1(in_a_i_reg_0[11]),
	.I2(pre_out[1]),
	.I3(pre_out_10),
	.O(output_iv[1])
);
defparam \output_iv_lut6_2_o5[4] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o6[10]  (
	.I0(out_i_vec_mult_0[11]),
	.I1(in_a_i_reg_0[11]),
	.I2(pre_out[10]),
	.I3(pre_out_10),
	.O(output_iv[10])
);
defparam \output_iv_lut6_2_o6[10] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o5[10]  (
	.I0(out_i_vec_mult_0[11]),
	.I1(in_a_i_reg_0[11]),
	.I2(pre_out[9]),
	.I3(pre_out_10),
	.O(output_iv[9])
);
defparam \output_iv_lut6_2_o5[10] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o6[5]  (
	.I0(out_i_vec_mult_0[11]),
	.I1(in_a_i_reg_0[11]),
	.I2(pre_out[5]),
	.I3(pre_out_10),
	.O(output_iv[5])
);
defparam \output_iv_lut6_2_o6[5] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o5[5]  (
	.I0(out_i_vec_mult_0[11]),
	.I1(in_a_i_reg_0[11]),
	.I2(pre_out[6]),
	.I3(pre_out_10),
	.O(output_iv[6])
);
defparam \output_iv_lut6_2_o5[5] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o6[8]  (
	.I0(out_i_vec_mult_0[11]),
	.I1(in_a_i_reg_0[11]),
	.I2(pre_out[8]),
	.I3(pre_out_10),
	.O(output_iv[8])
);
defparam \output_iv_lut6_2_o6[8] .INIT=16'h0D4F;
// @15:65
  LUT4 \output_iv_lut6_2_o5[8]  (
	.I0(out_i_vec_mult_0[11]),
	.I1(in_a_i_reg_0[11]),
	.I2(pre_out[7]),
	.I3(pre_out_10),
	.O(output_iv[7])
);
defparam \output_iv_lut6_2_o5[8] .INIT=16'h0D4F;
endmodule /* add_subZ3_4 */

module add_subZ3_5 (
  pre_out_i_m,
  out_i_vec_mult_1,
  in_a_i_reg_1,
  pre_out,
  un5_output
)
;
output [0:0] pre_out_i_m ;
input [11:0] out_i_vec_mult_1 ;
input [11:0] in_a_i_reg_1 ;
output [11:1] pre_out ;
output un5_output ;
wire un5_output ;
wire [0:0] pre_out_i;
wire VCC ;
wire pre_out_axb_1 ;
wire pre_out_axb_2 ;
wire pre_out_axb_3 ;
wire pre_out_axb_4 ;
wire pre_out_axb_5 ;
wire pre_out_axb_6 ;
wire pre_out_axb_7 ;
wire pre_out_axb_8 ;
wire pre_out_axb_9 ;
wire pre_out_axb_10 ;
wire pre_out_axb_11 ;
wire pre_out_cry_10 ;
wire pre_out_cry_9 ;
wire pre_out_cry_8 ;
wire pre_out_cry_7 ;
wire pre_out_cry_6 ;
wire pre_out_cry_5 ;
wire pre_out_cry_4 ;
wire pre_out_cry_3 ;
wire pre_out_cry_2 ;
wire pre_out_cry_1 ;
wire pre_out_cry_0 ;
wire GND ;
// @15:57
  LUT2 pre_out_axb_0 (
	.I0(out_i_vec_mult_1[0]),
	.I1(in_a_i_reg_1[0]),
	.O(pre_out_i[0])
);
defparam pre_out_axb_0.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_1_cZ (
	.I0(out_i_vec_mult_1[1]),
	.I1(in_a_i_reg_1[1]),
	.O(pre_out_axb_1)
);
defparam pre_out_axb_1_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_2_cZ (
	.I0(out_i_vec_mult_1[2]),
	.I1(in_a_i_reg_1[2]),
	.O(pre_out_axb_2)
);
defparam pre_out_axb_2_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_3_cZ (
	.I0(out_i_vec_mult_1[3]),
	.I1(in_a_i_reg_1[3]),
	.O(pre_out_axb_3)
);
defparam pre_out_axb_3_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_4_cZ (
	.I0(out_i_vec_mult_1[4]),
	.I1(in_a_i_reg_1[4]),
	.O(pre_out_axb_4)
);
defparam pre_out_axb_4_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_5_cZ (
	.I0(out_i_vec_mult_1[5]),
	.I1(in_a_i_reg_1[5]),
	.O(pre_out_axb_5)
);
defparam pre_out_axb_5_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_6_cZ (
	.I0(out_i_vec_mult_1[6]),
	.I1(in_a_i_reg_1[6]),
	.O(pre_out_axb_6)
);
defparam pre_out_axb_6_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_7_cZ (
	.I0(out_i_vec_mult_1[7]),
	.I1(in_a_i_reg_1[7]),
	.O(pre_out_axb_7)
);
defparam pre_out_axb_7_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_8_cZ (
	.I0(out_i_vec_mult_1[8]),
	.I1(in_a_i_reg_1[8]),
	.O(pre_out_axb_8)
);
defparam pre_out_axb_8_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_9_cZ (
	.I0(out_i_vec_mult_1[9]),
	.I1(in_a_i_reg_1[9]),
	.O(pre_out_axb_9)
);
defparam pre_out_axb_9_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_10_cZ (
	.I0(out_i_vec_mult_1[10]),
	.I1(in_a_i_reg_1[10]),
	.O(pre_out_axb_10)
);
defparam pre_out_axb_10_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_11_cZ (
	.I0(out_i_vec_mult_1[11]),
	.I1(in_a_i_reg_1[11]),
	.O(pre_out_axb_11)
);
defparam pre_out_axb_11_cZ.INIT=4'h9;
// @15:57
  XORCY pre_out_s_11 (
	.LI(pre_out_axb_11),
	.CI(pre_out_cry_10),
	.O(pre_out[11])
);
// @15:57
  XORCY pre_out_s_10 (
	.LI(pre_out_axb_10),
	.CI(pre_out_cry_9),
	.O(pre_out[10])
);
// @15:57
  MUXCY_L pre_out_cry_10_cZ (
	.DI(in_a_i_reg_1[10]),
	.CI(pre_out_cry_9),
	.S(pre_out_axb_10),
	.LO(pre_out_cry_10)
);
// @15:57
  XORCY pre_out_s_9 (
	.LI(pre_out_axb_9),
	.CI(pre_out_cry_8),
	.O(pre_out[9])
);
// @15:57
  MUXCY_L pre_out_cry_9_cZ (
	.DI(in_a_i_reg_1[9]),
	.CI(pre_out_cry_8),
	.S(pre_out_axb_9),
	.LO(pre_out_cry_9)
);
// @15:57
  XORCY pre_out_s_8 (
	.LI(pre_out_axb_8),
	.CI(pre_out_cry_7),
	.O(pre_out[8])
);
// @15:57
  MUXCY_L pre_out_cry_8_cZ (
	.DI(in_a_i_reg_1[8]),
	.CI(pre_out_cry_7),
	.S(pre_out_axb_8),
	.LO(pre_out_cry_8)
);
// @15:57
  XORCY pre_out_s_7 (
	.LI(pre_out_axb_7),
	.CI(pre_out_cry_6),
	.O(pre_out[7])
);
// @15:57
  MUXCY_L pre_out_cry_7_cZ (
	.DI(in_a_i_reg_1[7]),
	.CI(pre_out_cry_6),
	.S(pre_out_axb_7),
	.LO(pre_out_cry_7)
);
// @15:57
  XORCY pre_out_s_6 (
	.LI(pre_out_axb_6),
	.CI(pre_out_cry_5),
	.O(pre_out[6])
);
// @15:57
  MUXCY_L pre_out_cry_6_cZ (
	.DI(in_a_i_reg_1[6]),
	.CI(pre_out_cry_5),
	.S(pre_out_axb_6),
	.LO(pre_out_cry_6)
);
// @15:57
  XORCY pre_out_s_5 (
	.LI(pre_out_axb_5),
	.CI(pre_out_cry_4),
	.O(pre_out[5])
);
// @15:57
  MUXCY_L pre_out_cry_5_cZ (
	.DI(in_a_i_reg_1[5]),
	.CI(pre_out_cry_4),
	.S(pre_out_axb_5),
	.LO(pre_out_cry_5)
);
// @15:57
  XORCY pre_out_s_4 (
	.LI(pre_out_axb_4),
	.CI(pre_out_cry_3),
	.O(pre_out[4])
);
// @15:57
  MUXCY_L pre_out_cry_4_cZ (
	.DI(in_a_i_reg_1[4]),
	.CI(pre_out_cry_3),
	.S(pre_out_axb_4),
	.LO(pre_out_cry_4)
);
// @15:57
  XORCY pre_out_s_3 (
	.LI(pre_out_axb_3),
	.CI(pre_out_cry_2),
	.O(pre_out[3])
);
// @15:57
  MUXCY_L pre_out_cry_3_cZ (
	.DI(in_a_i_reg_1[3]),
	.CI(pre_out_cry_2),
	.S(pre_out_axb_3),
	.LO(pre_out_cry_3)
);
// @15:57
  XORCY pre_out_s_2 (
	.LI(pre_out_axb_2),
	.CI(pre_out_cry_1),
	.O(pre_out[2])
);
// @15:57
  MUXCY_L pre_out_cry_2_cZ (
	.DI(in_a_i_reg_1[2]),
	.CI(pre_out_cry_1),
	.S(pre_out_axb_2),
	.LO(pre_out_cry_2)
);
// @15:57
  XORCY pre_out_s_1 (
	.LI(pre_out_axb_1),
	.CI(pre_out_cry_0),
	.O(pre_out[1])
);
// @15:57
  MUXCY_L pre_out_cry_1_cZ (
	.DI(in_a_i_reg_1[1]),
	.CI(pre_out_cry_0),
	.S(pre_out_axb_1),
	.LO(pre_out_cry_1)
);
// @15:57
  MUXCY_L pre_out_cry_0_cZ (
	.DI(in_a_i_reg_1[0]),
	.CI(VCC),
	.S(pre_out_i[0]),
	.LO(pre_out_cry_0)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
// @15:66
  LUT3 \gen_sub.gen_sat_sub.un5_output_lut6_2_o6  (
	.I0(out_i_vec_mult_1[11]),
	.I1(in_a_i_reg_1[11]),
	.I2(pre_out[11]),
	.O(un5_output)
);
defparam \gen_sub.gen_sat_sub.un5_output_lut6_2_o6 .INIT=8'hFB;
// @15:66
  LUT5 \gen_sub.gen_sat_sub.un5_output_lut6_2_o5  (
	.I0(out_i_vec_mult_1[0]),
	.I1(in_a_i_reg_1[0]),
	.I2(out_i_vec_mult_1[11]),
	.I3(in_a_i_reg_1[11]),
	.I4(pre_out[11]),
	.O(pre_out_i_m[0])
);
defparam \gen_sub.gen_sat_sub.un5_output_lut6_2_o5 .INIT=32'h99099099;
endmodule /* add_subZ3_5 */

module add_subZ3_6 (
  pre_out_i_m,
  out_i_vec_mult_2,
  in_a_i_reg_2,
  pre_out,
  un5_output
)
;
output [0:0] pre_out_i_m ;
input [11:0] out_i_vec_mult_2 ;
input [11:0] in_a_i_reg_2 ;
output [11:1] pre_out ;
output un5_output ;
wire un5_output ;
wire [0:0] pre_out_i;
wire VCC ;
wire pre_out_axb_1 ;
wire pre_out_axb_2 ;
wire pre_out_axb_3 ;
wire pre_out_axb_4 ;
wire pre_out_axb_5 ;
wire pre_out_axb_6 ;
wire pre_out_axb_7 ;
wire pre_out_axb_8 ;
wire pre_out_axb_9 ;
wire pre_out_axb_10 ;
wire pre_out_axb_11 ;
wire pre_out_cry_10 ;
wire pre_out_cry_9 ;
wire pre_out_cry_8 ;
wire pre_out_cry_7 ;
wire pre_out_cry_6 ;
wire pre_out_cry_5 ;
wire pre_out_cry_4 ;
wire pre_out_cry_3 ;
wire pre_out_cry_2 ;
wire pre_out_cry_1 ;
wire pre_out_cry_0 ;
wire GND ;
// @15:57
  LUT2 pre_out_axb_0 (
	.I0(out_i_vec_mult_2[0]),
	.I1(in_a_i_reg_2[0]),
	.O(pre_out_i[0])
);
defparam pre_out_axb_0.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_1_cZ (
	.I0(out_i_vec_mult_2[1]),
	.I1(in_a_i_reg_2[1]),
	.O(pre_out_axb_1)
);
defparam pre_out_axb_1_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_2_cZ (
	.I0(out_i_vec_mult_2[2]),
	.I1(in_a_i_reg_2[2]),
	.O(pre_out_axb_2)
);
defparam pre_out_axb_2_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_3_cZ (
	.I0(out_i_vec_mult_2[3]),
	.I1(in_a_i_reg_2[3]),
	.O(pre_out_axb_3)
);
defparam pre_out_axb_3_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_4_cZ (
	.I0(out_i_vec_mult_2[4]),
	.I1(in_a_i_reg_2[4]),
	.O(pre_out_axb_4)
);
defparam pre_out_axb_4_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_5_cZ (
	.I0(out_i_vec_mult_2[5]),
	.I1(in_a_i_reg_2[5]),
	.O(pre_out_axb_5)
);
defparam pre_out_axb_5_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_6_cZ (
	.I0(out_i_vec_mult_2[6]),
	.I1(in_a_i_reg_2[6]),
	.O(pre_out_axb_6)
);
defparam pre_out_axb_6_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_7_cZ (
	.I0(out_i_vec_mult_2[7]),
	.I1(in_a_i_reg_2[7]),
	.O(pre_out_axb_7)
);
defparam pre_out_axb_7_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_8_cZ (
	.I0(out_i_vec_mult_2[8]),
	.I1(in_a_i_reg_2[8]),
	.O(pre_out_axb_8)
);
defparam pre_out_axb_8_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_9_cZ (
	.I0(out_i_vec_mult_2[9]),
	.I1(in_a_i_reg_2[9]),
	.O(pre_out_axb_9)
);
defparam pre_out_axb_9_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_10_cZ (
	.I0(out_i_vec_mult_2[10]),
	.I1(in_a_i_reg_2[10]),
	.O(pre_out_axb_10)
);
defparam pre_out_axb_10_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_11_cZ (
	.I0(out_i_vec_mult_2[11]),
	.I1(in_a_i_reg_2[11]),
	.O(pre_out_axb_11)
);
defparam pre_out_axb_11_cZ.INIT=4'h9;
// @15:57
  XORCY pre_out_s_11 (
	.LI(pre_out_axb_11),
	.CI(pre_out_cry_10),
	.O(pre_out[11])
);
// @15:57
  XORCY pre_out_s_10 (
	.LI(pre_out_axb_10),
	.CI(pre_out_cry_9),
	.O(pre_out[10])
);
// @15:57
  MUXCY_L pre_out_cry_10_cZ (
	.DI(in_a_i_reg_2[10]),
	.CI(pre_out_cry_9),
	.S(pre_out_axb_10),
	.LO(pre_out_cry_10)
);
// @15:57
  XORCY pre_out_s_9 (
	.LI(pre_out_axb_9),
	.CI(pre_out_cry_8),
	.O(pre_out[9])
);
// @15:57
  MUXCY_L pre_out_cry_9_cZ (
	.DI(in_a_i_reg_2[9]),
	.CI(pre_out_cry_8),
	.S(pre_out_axb_9),
	.LO(pre_out_cry_9)
);
// @15:57
  XORCY pre_out_s_8 (
	.LI(pre_out_axb_8),
	.CI(pre_out_cry_7),
	.O(pre_out[8])
);
// @15:57
  MUXCY_L pre_out_cry_8_cZ (
	.DI(in_a_i_reg_2[8]),
	.CI(pre_out_cry_7),
	.S(pre_out_axb_8),
	.LO(pre_out_cry_8)
);
// @15:57
  XORCY pre_out_s_7 (
	.LI(pre_out_axb_7),
	.CI(pre_out_cry_6),
	.O(pre_out[7])
);
// @15:57
  MUXCY_L pre_out_cry_7_cZ (
	.DI(in_a_i_reg_2[7]),
	.CI(pre_out_cry_6),
	.S(pre_out_axb_7),
	.LO(pre_out_cry_7)
);
// @15:57
  XORCY pre_out_s_6 (
	.LI(pre_out_axb_6),
	.CI(pre_out_cry_5),
	.O(pre_out[6])
);
// @15:57
  MUXCY_L pre_out_cry_6_cZ (
	.DI(in_a_i_reg_2[6]),
	.CI(pre_out_cry_5),
	.S(pre_out_axb_6),
	.LO(pre_out_cry_6)
);
// @15:57
  XORCY pre_out_s_5 (
	.LI(pre_out_axb_5),
	.CI(pre_out_cry_4),
	.O(pre_out[5])
);
// @15:57
  MUXCY_L pre_out_cry_5_cZ (
	.DI(in_a_i_reg_2[5]),
	.CI(pre_out_cry_4),
	.S(pre_out_axb_5),
	.LO(pre_out_cry_5)
);
// @15:57
  XORCY pre_out_s_4 (
	.LI(pre_out_axb_4),
	.CI(pre_out_cry_3),
	.O(pre_out[4])
);
// @15:57
  MUXCY_L pre_out_cry_4_cZ (
	.DI(in_a_i_reg_2[4]),
	.CI(pre_out_cry_3),
	.S(pre_out_axb_4),
	.LO(pre_out_cry_4)
);
// @15:57
  XORCY pre_out_s_3 (
	.LI(pre_out_axb_3),
	.CI(pre_out_cry_2),
	.O(pre_out[3])
);
// @15:57
  MUXCY_L pre_out_cry_3_cZ (
	.DI(in_a_i_reg_2[3]),
	.CI(pre_out_cry_2),
	.S(pre_out_axb_3),
	.LO(pre_out_cry_3)
);
// @15:57
  XORCY pre_out_s_2 (
	.LI(pre_out_axb_2),
	.CI(pre_out_cry_1),
	.O(pre_out[2])
);
// @15:57
  MUXCY_L pre_out_cry_2_cZ (
	.DI(in_a_i_reg_2[2]),
	.CI(pre_out_cry_1),
	.S(pre_out_axb_2),
	.LO(pre_out_cry_2)
);
// @15:57
  XORCY pre_out_s_1 (
	.LI(pre_out_axb_1),
	.CI(pre_out_cry_0),
	.O(pre_out[1])
);
// @15:57
  MUXCY_L pre_out_cry_1_cZ (
	.DI(in_a_i_reg_2[1]),
	.CI(pre_out_cry_0),
	.S(pre_out_axb_1),
	.LO(pre_out_cry_1)
);
// @15:57
  MUXCY_L pre_out_cry_0_cZ (
	.DI(in_a_i_reg_2[0]),
	.CI(VCC),
	.S(pre_out_i[0]),
	.LO(pre_out_cry_0)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
// @15:66
  LUT3 \gen_sub.gen_sat_sub.un5_output_lut6_2_o6  (
	.I0(out_i_vec_mult_2[11]),
	.I1(in_a_i_reg_2[11]),
	.I2(pre_out[11]),
	.O(un5_output)
);
defparam \gen_sub.gen_sat_sub.un5_output_lut6_2_o6 .INIT=8'hFB;
// @15:66
  LUT5 \gen_sub.gen_sat_sub.un5_output_lut6_2_o5  (
	.I0(out_i_vec_mult_2[0]),
	.I1(in_a_i_reg_2[0]),
	.I2(out_i_vec_mult_2[11]),
	.I3(in_a_i_reg_2[11]),
	.I4(pre_out[11]),
	.O(pre_out_i_m[0])
);
defparam \gen_sub.gen_sat_sub.un5_output_lut6_2_o5 .INIT=32'h99099099;
endmodule /* add_subZ3_6 */

module add_subZ3_7 (
  out_i_vec_mult_3,
  in_a_i_reg_3,
  pre_out_i_m_1,
  pre_out_i_m_5,
  pre_out_i_m_2,
  pre_out_i_m_10,
  pre_out_i_m_9,
  pre_out_i_m_6,
  pre_out_i_m_7,
  pre_out_i_m_3,
  pre_out_i_m_4,
  pre_out_i_m_0,
  pre_out_10,
  pre_out_7,
  un5_output
)
;
input [11:0] out_i_vec_mult_3 ;
input [11:0] in_a_i_reg_3 ;
output pre_out_i_m_1 ;
output pre_out_i_m_5 ;
output pre_out_i_m_2 ;
output pre_out_i_m_10 ;
output pre_out_i_m_9 ;
output pre_out_i_m_6 ;
output pre_out_i_m_7 ;
output pre_out_i_m_3 ;
output pre_out_i_m_4 ;
output pre_out_i_m_0 ;
output pre_out_10 ;
output pre_out_7 ;
output un5_output ;
wire pre_out_i_m_1 ;
wire pre_out_i_m_5 ;
wire pre_out_i_m_2 ;
wire pre_out_i_m_10 ;
wire pre_out_i_m_9 ;
wire pre_out_i_m_6 ;
wire pre_out_i_m_7 ;
wire pre_out_i_m_3 ;
wire pre_out_i_m_4 ;
wire pre_out_i_m_0 ;
wire pre_out_10 ;
wire pre_out_7 ;
wire un5_output ;
wire [10:1] pre_out;
wire [0:0] pre_out_i;
wire VCC ;
wire GND ;
wire pre_out_axb_1 ;
wire pre_out_axb_2 ;
wire pre_out_axb_3 ;
wire pre_out_axb_4 ;
wire pre_out_axb_5 ;
wire pre_out_axb_6 ;
wire pre_out_axb_7 ;
wire pre_out_axb_8 ;
wire pre_out_axb_9 ;
wire pre_out_axb_10 ;
wire pre_out_axb_11 ;
wire pre_out_cry_10 ;
wire pre_out_cry_9 ;
wire pre_out_cry_8 ;
wire pre_out_cry_7 ;
wire pre_out_cry_6 ;
wire pre_out_cry_5 ;
wire pre_out_cry_4 ;
wire pre_out_cry_3 ;
wire pre_out_cry_2 ;
wire pre_out_cry_1 ;
wire pre_out_cry_0 ;
// @15:57
  LUT2 pre_out_axb_0 (
	.I0(out_i_vec_mult_3[0]),
	.I1(in_a_i_reg_3[0]),
	.O(pre_out_i[0])
);
defparam pre_out_axb_0.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_1_cZ (
	.I0(out_i_vec_mult_3[1]),
	.I1(in_a_i_reg_3[1]),
	.O(pre_out_axb_1)
);
defparam pre_out_axb_1_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_2_cZ (
	.I0(out_i_vec_mult_3[2]),
	.I1(in_a_i_reg_3[2]),
	.O(pre_out_axb_2)
);
defparam pre_out_axb_2_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_3_cZ (
	.I0(out_i_vec_mult_3[3]),
	.I1(in_a_i_reg_3[3]),
	.O(pre_out_axb_3)
);
defparam pre_out_axb_3_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_4_cZ (
	.I0(out_i_vec_mult_3[4]),
	.I1(in_a_i_reg_3[4]),
	.O(pre_out_axb_4)
);
defparam pre_out_axb_4_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_5_cZ (
	.I0(out_i_vec_mult_3[5]),
	.I1(in_a_i_reg_3[5]),
	.O(pre_out_axb_5)
);
defparam pre_out_axb_5_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_6_cZ (
	.I0(out_i_vec_mult_3[6]),
	.I1(in_a_i_reg_3[6]),
	.O(pre_out_axb_6)
);
defparam pre_out_axb_6_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_7_cZ (
	.I0(out_i_vec_mult_3[7]),
	.I1(in_a_i_reg_3[7]),
	.O(pre_out_axb_7)
);
defparam pre_out_axb_7_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_8_cZ (
	.I0(out_i_vec_mult_3[8]),
	.I1(in_a_i_reg_3[8]),
	.O(pre_out_axb_8)
);
defparam pre_out_axb_8_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_9_cZ (
	.I0(out_i_vec_mult_3[9]),
	.I1(in_a_i_reg_3[9]),
	.O(pre_out_axb_9)
);
defparam pre_out_axb_9_cZ.INIT=4'h9;
// @15:57
  LUT2 pre_out_axb_10_cZ (
	.I0(out_i_vec_mult_3[10]),
	.I1(in_a_i_reg_3[10]),
	.O(pre_out_axb_10)
);
defparam pre_out_axb_10_cZ.INIT=4'h9;
// @15:65
  LUT5 pre_out_s_11_RNIPS481 (
	.I0(out_i_vec_mult_3[0]),
	.I1(in_a_i_reg_3[0]),
	.I2(out_i_vec_mult_3[11]),
	.I3(in_a_i_reg_3[11]),
	.I4(pre_out_10),
	.O(pre_out_i_m_0)
);
defparam pre_out_s_11_RNIPS481.INIT=32'h99099099;
// @15:57
  LUT2 pre_out_axb_11_cZ (
	.I0(out_i_vec_mult_3[11]),
	.I1(in_a_i_reg_3[11]),
	.O(pre_out_axb_11)
);
defparam pre_out_axb_11_cZ.INIT=4'h9;
// @15:57
  XORCY pre_out_s_11 (
	.LI(pre_out_axb_11),
	.CI(pre_out_cry_10),
	.O(pre_out_10)
);
// @15:57
  XORCY pre_out_s_10 (
	.LI(pre_out_axb_10),
	.CI(pre_out_cry_9),
	.O(pre_out[10])
);
// @15:57
  MUXCY_L pre_out_cry_10_cZ (
	.DI(in_a_i_reg_3[10]),
	.CI(pre_out_cry_9),
	.S(pre_out_axb_10),
	.LO(pre_out_cry_10)
);
// @15:57
  XORCY pre_out_s_9 (
	.LI(pre_out_axb_9),
	.CI(pre_out_cry_8),
	.O(pre_out[9])
);
// @15:57
  MUXCY_L pre_out_cry_9_cZ (
	.DI(in_a_i_reg_3[9]),
	.CI(pre_out_cry_8),
	.S(pre_out_axb_9),
	.LO(pre_out_cry_9)
);
// @15:57
  XORCY pre_out_s_8 (
	.LI(pre_out_axb_8),
	.CI(pre_out_cry_7),
	.O(pre_out_7)
);
// @15:57
  MUXCY_L pre_out_cry_8_cZ (
	.DI(in_a_i_reg_3[8]),
	.CI(pre_out_cry_7),
	.S(pre_out_axb_8),
	.LO(pre_out_cry_8)
);
// @15:57
  XORCY pre_out_s_7 (
	.LI(pre_out_axb_7),
	.CI(pre_out_cry_6),
	.O(pre_out[7])
);
// @15:57
  MUXCY_L pre_out_cry_7_cZ (
	.DI(in_a_i_reg_3[7]),
	.CI(pre_out_cry_6),
	.S(pre_out_axb_7),
	.LO(pre_out_cry_7)
);
// @15:57
  XORCY pre_out_s_6 (
	.LI(pre_out_axb_6),
	.CI(pre_out_cry_5),
	.O(pre_out[6])
);
// @15:57
  MUXCY_L pre_out_cry_6_cZ (
	.DI(in_a_i_reg_3[6]),
	.CI(pre_out_cry_5),
	.S(pre_out_axb_6),
	.LO(pre_out_cry_6)
);
// @15:57
  XORCY pre_out_s_5 (
	.LI(pre_out_axb_5),
	.CI(pre_out_cry_4),
	.O(pre_out[5])
);
// @15:57
  MUXCY_L pre_out_cry_5_cZ (
	.DI(in_a_i_reg_3[5]),
	.CI(pre_out_cry_4),
	.S(pre_out_axb_5),
	.LO(pre_out_cry_5)
);
// @15:57
  XORCY pre_out_s_4 (
	.LI(pre_out_axb_4),
	.CI(pre_out_cry_3),
	.O(pre_out[4])
);
// @15:57
  MUXCY_L pre_out_cry_4_cZ (
	.DI(in_a_i_reg_3[4]),
	.CI(pre_out_cry_3),
	.S(pre_out_axb_4),
	.LO(pre_out_cry_4)
);
// @15:57
  XORCY pre_out_s_3 (
	.LI(pre_out_axb_3),
	.CI(pre_out_cry_2),
	.O(pre_out[3])
);
// @15:57
  MUXCY_L pre_out_cry_3_cZ (
	.DI(in_a_i_reg_3[3]),
	.CI(pre_out_cry_2),
	.S(pre_out_axb_3),
	.LO(pre_out_cry_3)
);
// @15:57
  XORCY pre_out_s_2 (
	.LI(pre_out_axb_2),
	.CI(pre_out_cry_1),
	.O(pre_out[2])
);
// @15:57
  MUXCY_L pre_out_cry_2_cZ (
	.DI(in_a_i_reg_3[2]),
	.CI(pre_out_cry_1),
	.S(pre_out_axb_2),
	.LO(pre_out_cry_2)
);
// @15:57
  XORCY pre_out_s_1 (
	.LI(pre_out_axb_1),
	.CI(pre_out_cry_0),
	.O(pre_out[1])
);
// @15:57
  MUXCY_L pre_out_cry_1_cZ (
	.DI(in_a_i_reg_3[1]),
	.CI(pre_out_cry_0),
	.S(pre_out_axb_1),
	.LO(pre_out_cry_1)
);
// @15:57
  MUXCY_L pre_out_cry_0_cZ (
	.DI(in_a_i_reg_3[0]),
	.CI(VCC),
	.S(pre_out_i[0]),
	.LO(pre_out_cry_0)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
// @15:65
  LUT4 pre_out_s_3_RNI5JVQ1_o6 (
	.I0(out_i_vec_mult_3[11]),
	.I1(in_a_i_reg_3[11]),
	.I2(pre_out[3]),
	.I3(pre_out_10),
	.O(pre_out_i_m_3)
);
defparam pre_out_s_3_RNI5JVQ1_o6.INIT=16'h0D0B;
// @15:65
  LUT4 pre_out_s_3_RNI5JVQ1_o5 (
	.I0(out_i_vec_mult_3[11]),
	.I1(in_a_i_reg_3[11]),
	.I2(pre_out[4]),
	.I3(pre_out_10),
	.O(pre_out_i_m_4)
);
defparam pre_out_s_3_RNI5JVQ1_o5.INIT=16'h0D0B;
// @15:65
  LUT4 pre_out_s_6_RNIBJVQ1_o6 (
	.I0(out_i_vec_mult_3[11]),
	.I1(in_a_i_reg_3[11]),
	.I2(pre_out[6]),
	.I3(pre_out_10),
	.O(pre_out_i_m_6)
);
defparam pre_out_s_6_RNIBJVQ1_o6.INIT=16'h0D0B;
// @15:65
  LUT4 pre_out_s_6_RNIBJVQ1_o5 (
	.I0(out_i_vec_mult_3[11]),
	.I1(in_a_i_reg_3[11]),
	.I2(pre_out[7]),
	.I3(pre_out_10),
	.O(pre_out_i_m_7)
);
defparam pre_out_s_6_RNIBJVQ1_o5.INIT=16'h0D0B;
// @15:65
  LUT4 pre_out_s_9_RNIOUVQ1_o6 (
	.I0(out_i_vec_mult_3[11]),
	.I1(in_a_i_reg_3[11]),
	.I2(pre_out[10]),
	.I3(pre_out_10),
	.O(pre_out_i_m_10)
);
defparam pre_out_s_9_RNIOUVQ1_o6.INIT=16'h0D0B;
// @15:65
  LUT4 pre_out_s_9_RNIOUVQ1_o5 (
	.I0(out_i_vec_mult_3[11]),
	.I1(in_a_i_reg_3[11]),
	.I2(pre_out[9]),
	.I3(pre_out_10),
	.O(pre_out_i_m_9)
);
defparam pre_out_s_9_RNIOUVQ1_o5.INIT=16'h0D0B;
// @15:65
  LUT4 pre_out_s_2_RNINIFC1_o6 (
	.I0(out_i_vec_mult_3[11]),
	.I1(in_a_i_reg_3[11]),
	.I2(pre_out[2]),
	.I3(pre_out_10),
	.O(pre_out_i_m_2)
);
defparam pre_out_s_2_RNINIFC1_o6.INIT=16'h0D0B;
// @15:65
  LUT3 pre_out_s_2_RNINIFC1_o5 (
	.I0(out_i_vec_mult_3[11]),
	.I1(in_a_i_reg_3[11]),
	.I2(pre_out_10),
	.O(un5_output)
);
defparam pre_out_s_2_RNINIFC1_o5.INIT=8'hFB;
// @15:65
  LUT4 pre_out_s_1_RNI4JVQ1_o6 (
	.I0(out_i_vec_mult_3[11]),
	.I1(in_a_i_reg_3[11]),
	.I2(pre_out[1]),
	.I3(pre_out_10),
	.O(pre_out_i_m_1)
);
defparam pre_out_s_1_RNI4JVQ1_o6.INIT=16'h0D0B;
// @15:65
  LUT4 pre_out_s_1_RNI4JVQ1_o5 (
	.I0(out_i_vec_mult_3[11]),
	.I1(in_a_i_reg_3[11]),
	.I2(pre_out[5]),
	.I3(pre_out_10),
	.O(pre_out_i_m_5)
);
defparam pre_out_s_1_RNI4JVQ1_o5.INIT=16'h0D0B;
endmodule /* add_subZ3_7 */

module vec_sub (
  in_a_r_reg_3_11,
  in_a_r_reg_2_11,
  in_a_r_reg_1_11,
  in_a_r_reg_0_0,
  in_a_r_reg_0_11,
  out_Q_r,
  in_a_i_reg_3_11,
  in_a_i_reg_2_11,
  in_a_i_reg_1_11,
  in_a_i_reg_0_11,
  out_Q_i,
  out_r_vec_mult_0,
  out_r_vec_mult_1,
  out_r_vec_mult_2,
  pre_out,
  out_r_vec_mult_3,
  pre_out_i_m_1,
  pre_out_0,
  output_iv,
  output_iv_0_0,
  output_iv_0_1,
  output_iv_0_2,
  output_iv_0_3,
  output_iv_0_4,
  output_iv_0_6,
  output_iv_0_7,
  output_iv_0_8,
  output_iv_0_9,
  out_i_vec_sub_0,
  out_i_vec_mult_0,
  pre_out_i_m_2,
  out_i_vec_mult_1,
  pre_out_1,
  pre_out_4,
  pre_out_i_m_3,
  out_i_vec_mult_2,
  pre_out_2,
  pre_out_5,
  out_i_vec_mult_3,
  pre_out_i_m,
  pre_out_i_m_0_0,
  pre_out_i_m_0_1,
  pre_out_i_m_0_6,
  pre_out_i_m_0_4,
  pre_out_i_m_4,
  pre_out_6,
  pre_out_3_9,
  pre_out_3_0,
  pre_out_3_1,
  pre_out_3_3,
  pre_out_3_5,
  pre_out_3_7,
  pre_out_3_8,
  pre_out_3_6,
  clk,
  w_in_a_vec_sub,
  N_500,
  un5_output,
  un5_output_0,
  un5_output_1,
  un5_output_2,
  un5_output_3,
  un5_output_4
)
;
output in_a_r_reg_3_11 ;
output in_a_r_reg_2_11 ;
output in_a_r_reg_1_11 ;
output in_a_r_reg_0_0 ;
output in_a_r_reg_0_11 ;
input [47:0] out_Q_r ;
output in_a_i_reg_3_11 ;
output in_a_i_reg_2_11 ;
output in_a_i_reg_1_11 ;
output in_a_i_reg_0_11 ;
input [47:0] out_Q_i ;
input [11:0] out_r_vec_mult_0 ;
input [11:0] out_r_vec_mult_1 ;
input [11:0] out_r_vec_mult_2 ;
output [11:1] pre_out ;
input [11:0] out_r_vec_mult_3 ;
output [0:0] pre_out_i_m_1 ;
output [11:1] pre_out_0 ;
output [10:0] output_iv ;
output output_iv_0_0 ;
output output_iv_0_1 ;
output output_iv_0_2 ;
output output_iv_0_3 ;
output output_iv_0_4 ;
output output_iv_0_6 ;
output output_iv_0_7 ;
output output_iv_0_8 ;
output output_iv_0_9 ;
output [11:11] out_i_vec_sub_0 ;
input [11:0] out_i_vec_mult_0 ;
output [0:0] pre_out_i_m_2 ;
input [11:0] out_i_vec_mult_1 ;
output [11:1] pre_out_1 ;
output [11:11] pre_out_4 ;
output [0:0] pre_out_i_m_3 ;
input [11:0] out_i_vec_mult_2 ;
output [11:1] pre_out_2 ;
output [11:11] pre_out_5 ;
input [11:0] out_i_vec_mult_3 ;
output [10:0] pre_out_i_m ;
output pre_out_i_m_0_0 ;
output pre_out_i_m_0_1 ;
output pre_out_i_m_0_6 ;
output pre_out_i_m_0_4 ;
output [0:0] pre_out_i_m_4 ;
output [11:11] pre_out_6 ;
output pre_out_3_9 ;
output pre_out_3_0 ;
output pre_out_3_1 ;
output pre_out_3_3 ;
output pre_out_3_5 ;
output pre_out_3_7 ;
output pre_out_3_8 ;
output pre_out_3_6 ;
input clk ;
input w_in_a_vec_sub ;
output N_500 ;
output un5_output ;
output un5_output_0 ;
output un5_output_1 ;
output un5_output_2 ;
output un5_output_3 ;
output un5_output_4 ;
wire in_a_r_reg_3_11 ;
wire in_a_r_reg_2_11 ;
wire in_a_r_reg_1_11 ;
wire in_a_r_reg_0_0 ;
wire in_a_r_reg_0_11 ;
wire in_a_i_reg_3_11 ;
wire in_a_i_reg_2_11 ;
wire in_a_i_reg_1_11 ;
wire in_a_i_reg_0_11 ;
wire output_iv_0_0 ;
wire output_iv_0_1 ;
wire output_iv_0_2 ;
wire output_iv_0_3 ;
wire output_iv_0_4 ;
wire output_iv_0_6 ;
wire output_iv_0_7 ;
wire output_iv_0_8 ;
wire output_iv_0_9 ;
wire pre_out_i_m_0_0 ;
wire pre_out_i_m_0_1 ;
wire pre_out_i_m_0_6 ;
wire pre_out_i_m_0_4 ;
wire pre_out_3_9 ;
wire pre_out_3_0 ;
wire pre_out_3_1 ;
wire pre_out_3_3 ;
wire pre_out_3_5 ;
wire pre_out_3_7 ;
wire pre_out_3_8 ;
wire pre_out_3_6 ;
wire clk ;
wire w_in_a_vec_sub ;
wire N_500 ;
wire un5_output ;
wire un5_output_0 ;
wire un5_output_1 ;
wire un5_output_2 ;
wire un5_output_3 ;
wire un5_output_4 ;
wire [10:0] in_a_r_reg_3;
wire [10:0] in_a_r_reg_2;
wire [10:0] in_a_r_reg_1;
wire [10:1] in_a_r_reg_0;
wire [10:0] in_a_i_reg_3;
wire [10:0] in_a_i_reg_2;
wire [10:0] in_a_i_reg_1;
wire [10:0] in_a_i_reg_0;
wire GND ;
wire VCC ;
// @16:48
  FDE \in_a_r_reg_3_Z[0]  (
	.Q(in_a_r_reg_3[0]),
	.D(out_Q_r[0]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_3_Z[1]  (
	.Q(in_a_r_reg_3[1]),
	.D(out_Q_r[1]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_3_Z[2]  (
	.Q(in_a_r_reg_3[2]),
	.D(out_Q_r[2]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_3_Z[3]  (
	.Q(in_a_r_reg_3[3]),
	.D(out_Q_r[3]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_3_Z[4]  (
	.Q(in_a_r_reg_3[4]),
	.D(out_Q_r[4]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_3_Z[5]  (
	.Q(in_a_r_reg_3[5]),
	.D(out_Q_r[5]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_3_Z[6]  (
	.Q(in_a_r_reg_3[6]),
	.D(out_Q_r[6]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_3_Z[7]  (
	.Q(in_a_r_reg_3[7]),
	.D(out_Q_r[7]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_3_Z[8]  (
	.Q(in_a_r_reg_3[8]),
	.D(out_Q_r[8]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_3_Z[9]  (
	.Q(in_a_r_reg_3[9]),
	.D(out_Q_r[9]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_3_Z[10]  (
	.Q(in_a_r_reg_3[10]),
	.D(out_Q_r[10]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_3_Z[11]  (
	.Q(in_a_r_reg_3_11),
	.D(out_Q_r[11]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_2_Z[0]  (
	.Q(in_a_r_reg_2[0]),
	.D(out_Q_r[12]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_2_Z[1]  (
	.Q(in_a_r_reg_2[1]),
	.D(out_Q_r[13]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_2_Z[2]  (
	.Q(in_a_r_reg_2[2]),
	.D(out_Q_r[14]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_2_Z[3]  (
	.Q(in_a_r_reg_2[3]),
	.D(out_Q_r[15]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_2_Z[4]  (
	.Q(in_a_r_reg_2[4]),
	.D(out_Q_r[16]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_2_Z[5]  (
	.Q(in_a_r_reg_2[5]),
	.D(out_Q_r[17]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_2_Z[6]  (
	.Q(in_a_r_reg_2[6]),
	.D(out_Q_r[18]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_2_Z[7]  (
	.Q(in_a_r_reg_2[7]),
	.D(out_Q_r[19]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_2_Z[8]  (
	.Q(in_a_r_reg_2[8]),
	.D(out_Q_r[20]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_2_Z[9]  (
	.Q(in_a_r_reg_2[9]),
	.D(out_Q_r[21]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_2_Z[10]  (
	.Q(in_a_r_reg_2[10]),
	.D(out_Q_r[22]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_2_Z[11]  (
	.Q(in_a_r_reg_2_11),
	.D(out_Q_r[23]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_1_Z[0]  (
	.Q(in_a_r_reg_1[0]),
	.D(out_Q_r[24]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_1_Z[1]  (
	.Q(in_a_r_reg_1[1]),
	.D(out_Q_r[25]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_1_Z[2]  (
	.Q(in_a_r_reg_1[2]),
	.D(out_Q_r[26]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_1_Z[3]  (
	.Q(in_a_r_reg_1[3]),
	.D(out_Q_r[27]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_1_Z[4]  (
	.Q(in_a_r_reg_1[4]),
	.D(out_Q_r[28]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_1_Z[5]  (
	.Q(in_a_r_reg_1[5]),
	.D(out_Q_r[29]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_1_Z[6]  (
	.Q(in_a_r_reg_1[6]),
	.D(out_Q_r[30]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_1_Z[7]  (
	.Q(in_a_r_reg_1[7]),
	.D(out_Q_r[31]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_1_Z[8]  (
	.Q(in_a_r_reg_1[8]),
	.D(out_Q_r[32]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_1_Z[9]  (
	.Q(in_a_r_reg_1[9]),
	.D(out_Q_r[33]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_1_Z[10]  (
	.Q(in_a_r_reg_1[10]),
	.D(out_Q_r[34]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_1_Z[11]  (
	.Q(in_a_r_reg_1_11),
	.D(out_Q_r[35]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_0_Z[0]  (
	.Q(in_a_r_reg_0_0),
	.D(out_Q_r[36]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_0_Z[1]  (
	.Q(in_a_r_reg_0[1]),
	.D(out_Q_r[37]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_0_Z[2]  (
	.Q(in_a_r_reg_0[2]),
	.D(out_Q_r[38]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_0_Z[3]  (
	.Q(in_a_r_reg_0[3]),
	.D(out_Q_r[39]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_0_Z[4]  (
	.Q(in_a_r_reg_0[4]),
	.D(out_Q_r[40]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_0_Z[5]  (
	.Q(in_a_r_reg_0[5]),
	.D(out_Q_r[41]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_0_Z[6]  (
	.Q(in_a_r_reg_0[6]),
	.D(out_Q_r[42]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_0_Z[7]  (
	.Q(in_a_r_reg_0[7]),
	.D(out_Q_r[43]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_0_Z[8]  (
	.Q(in_a_r_reg_0[8]),
	.D(out_Q_r[44]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_0_Z[9]  (
	.Q(in_a_r_reg_0[9]),
	.D(out_Q_r[45]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_0_Z[10]  (
	.Q(in_a_r_reg_0[10]),
	.D(out_Q_r[46]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_r_reg_0_Z[11]  (
	.Q(in_a_r_reg_0_11),
	.D(out_Q_r[47]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_3_Z[0]  (
	.Q(in_a_i_reg_3[0]),
	.D(out_Q_i[0]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_3_Z[1]  (
	.Q(in_a_i_reg_3[1]),
	.D(out_Q_i[1]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_3_Z[2]  (
	.Q(in_a_i_reg_3[2]),
	.D(out_Q_i[2]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_3_Z[3]  (
	.Q(in_a_i_reg_3[3]),
	.D(out_Q_i[3]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_3_Z[4]  (
	.Q(in_a_i_reg_3[4]),
	.D(out_Q_i[4]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_3_Z[5]  (
	.Q(in_a_i_reg_3[5]),
	.D(out_Q_i[5]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_3_Z[6]  (
	.Q(in_a_i_reg_3[6]),
	.D(out_Q_i[6]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_3_Z[7]  (
	.Q(in_a_i_reg_3[7]),
	.D(out_Q_i[7]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_3_Z[8]  (
	.Q(in_a_i_reg_3[8]),
	.D(out_Q_i[8]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_3_Z[9]  (
	.Q(in_a_i_reg_3[9]),
	.D(out_Q_i[9]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_3_Z[10]  (
	.Q(in_a_i_reg_3[10]),
	.D(out_Q_i[10]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_3_Z[11]  (
	.Q(in_a_i_reg_3_11),
	.D(out_Q_i[11]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_2_Z[0]  (
	.Q(in_a_i_reg_2[0]),
	.D(out_Q_i[12]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_2_Z[1]  (
	.Q(in_a_i_reg_2[1]),
	.D(out_Q_i[13]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_2_Z[2]  (
	.Q(in_a_i_reg_2[2]),
	.D(out_Q_i[14]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_2_Z[3]  (
	.Q(in_a_i_reg_2[3]),
	.D(out_Q_i[15]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_2_Z[4]  (
	.Q(in_a_i_reg_2[4]),
	.D(out_Q_i[16]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_2_Z[5]  (
	.Q(in_a_i_reg_2[5]),
	.D(out_Q_i[17]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_2_Z[6]  (
	.Q(in_a_i_reg_2[6]),
	.D(out_Q_i[18]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_2_Z[7]  (
	.Q(in_a_i_reg_2[7]),
	.D(out_Q_i[19]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_2_Z[8]  (
	.Q(in_a_i_reg_2[8]),
	.D(out_Q_i[20]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_2_Z[9]  (
	.Q(in_a_i_reg_2[9]),
	.D(out_Q_i[21]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_2_Z[10]  (
	.Q(in_a_i_reg_2[10]),
	.D(out_Q_i[22]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_2_Z[11]  (
	.Q(in_a_i_reg_2_11),
	.D(out_Q_i[23]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_1_Z[0]  (
	.Q(in_a_i_reg_1[0]),
	.D(out_Q_i[24]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_1_Z[1]  (
	.Q(in_a_i_reg_1[1]),
	.D(out_Q_i[25]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_1_Z[2]  (
	.Q(in_a_i_reg_1[2]),
	.D(out_Q_i[26]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_1_Z[3]  (
	.Q(in_a_i_reg_1[3]),
	.D(out_Q_i[27]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_1_Z[4]  (
	.Q(in_a_i_reg_1[4]),
	.D(out_Q_i[28]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_1_Z[5]  (
	.Q(in_a_i_reg_1[5]),
	.D(out_Q_i[29]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_1_Z[6]  (
	.Q(in_a_i_reg_1[6]),
	.D(out_Q_i[30]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_1_Z[7]  (
	.Q(in_a_i_reg_1[7]),
	.D(out_Q_i[31]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_1_Z[8]  (
	.Q(in_a_i_reg_1[8]),
	.D(out_Q_i[32]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_1_Z[9]  (
	.Q(in_a_i_reg_1[9]),
	.D(out_Q_i[33]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_1_Z[10]  (
	.Q(in_a_i_reg_1[10]),
	.D(out_Q_i[34]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_1_Z[11]  (
	.Q(in_a_i_reg_1_11),
	.D(out_Q_i[35]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_0_Z[0]  (
	.Q(in_a_i_reg_0[0]),
	.D(out_Q_i[36]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_0_Z[1]  (
	.Q(in_a_i_reg_0[1]),
	.D(out_Q_i[37]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_0_Z[2]  (
	.Q(in_a_i_reg_0[2]),
	.D(out_Q_i[38]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_0_Z[3]  (
	.Q(in_a_i_reg_0[3]),
	.D(out_Q_i[39]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_0_Z[4]  (
	.Q(in_a_i_reg_0[4]),
	.D(out_Q_i[40]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_0_Z[5]  (
	.Q(in_a_i_reg_0[5]),
	.D(out_Q_i[41]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_0_Z[6]  (
	.Q(in_a_i_reg_0[6]),
	.D(out_Q_i[42]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_0_Z[7]  (
	.Q(in_a_i_reg_0[7]),
	.D(out_Q_i[43]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_0_Z[8]  (
	.Q(in_a_i_reg_0[8]),
	.D(out_Q_i[44]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_0_Z[9]  (
	.Q(in_a_i_reg_0[9]),
	.D(out_Q_i[45]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_0_Z[10]  (
	.Q(in_a_i_reg_0[10]),
	.D(out_Q_i[46]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:48
  FDE \in_a_i_reg_0_Z[11]  (
	.Q(in_a_i_reg_0_11),
	.D(out_Q_i[47]),
	.C(clk),
	.CE(w_in_a_vec_sub)
);
// @16:57
  add_subZ3 \gen_subs.0.sub_r  (
	.pre_out_10(pre_out[11]),
	.output_iv_0(output_iv[1]),
	.output_iv_1(output_iv[2]),
	.output_iv_9(output_iv[10]),
	.output_iv_8(output_iv[9]),
	.output_iv_6(output_iv[7]),
	.output_iv_7(output_iv[8]),
	.output_iv_2(output_iv[3]),
	.output_iv_3(output_iv[4]),
	.output_iv_4(output_iv[5]),
	.out_r_vec_mult_0(out_r_vec_mult_0[11:0]),
	.in_a_r_reg_0({in_a_r_reg_0_11, in_a_r_reg_0[10:1], in_a_r_reg_0_0}),
	.N_500(N_500)
);
// @16:57
  add_subZ3_1 \gen_subs.1.sub_r  (
	.pre_out_i_m_8(pre_out_i_m[8]),
	.pre_out_i_m_4(pre_out_i_m[4]),
	.pre_out_i_m_0(pre_out_i_m[0]),
	.out_r_vec_mult_1(out_r_vec_mult_1[11:0]),
	.in_a_r_reg_1({in_a_r_reg_1_11, in_a_r_reg_1[10:0]}),
	.pre_out_10(pre_out_0[11]),
	.pre_out_9(pre_out[10]),
	.pre_out_8(pre_out[9]),
	.pre_out_6(pre_out[7]),
	.pre_out_5(pre_out[6]),
	.pre_out_4(pre_out[5]),
	.pre_out_2(pre_out[3]),
	.pre_out_1(pre_out[2]),
	.pre_out_0(pre_out[1]),
	.un5_output(un5_output)
);
// @16:57
  add_subZ3_2 \gen_subs.2.sub_r  (
	.out_r_vec_mult_2(out_r_vec_mult_2[11:0]),
	.in_a_r_reg_2({in_a_r_reg_2_11, in_a_r_reg_2[10:0]}),
	.pre_out_i_m_6(pre_out_i_m[6]),
	.pre_out_i_m_0(pre_out_i_m_0_0),
	.pre_out_10(pre_out_1[11]),
	.pre_out_9(pre_out_0[10]),
	.pre_out_8(pre_out_0[9]),
	.pre_out_7(pre_out[8]),
	.pre_out_6(pre_out_0[7]),
	.pre_out_4(pre_out_0[5]),
	.pre_out_3(pre_out[4]),
	.pre_out_2(pre_out_0[3]),
	.pre_out_1(pre_out_0[2]),
	.pre_out_0(pre_out_0[1]),
	.un5_output(un5_output_0)
);
// @16:57
  add_subZ3_3 \gen_subs.3.sub_r  (
	.out_r_vec_mult_3(out_r_vec_mult_3[11:0]),
	.in_a_r_reg_3({in_a_r_reg_3_11, in_a_r_reg_3[10:0]}),
	.pre_out_i_m({pre_out_i_m[1], pre_out_i_m_1[0]}),
	.pre_out_10(pre_out_2[11]),
	.pre_out_9(pre_out_1[10]),
	.pre_out_8(pre_out_1[9]),
	.pre_out_7(pre_out_0[8]),
	.pre_out_6(pre_out_1[7]),
	.pre_out_5(pre_out_0[6]),
	.pre_out_4(pre_out_1[5]),
	.pre_out_3(pre_out_0[4]),
	.pre_out_2(pre_out_1[3]),
	.pre_out_1(pre_out_1[2]),
	.un5_output(un5_output_1)
);
// @16:64
  add_subZ3_4 \gen_subs.0.sub_i  (
	.pre_out_10(pre_out_3_9),
	.output_iv({output_iv_0_9, output_iv_0_8, output_iv_0_7, output_iv_0_6, output_iv[6], output_iv_0_4, output_iv_0_3, output_iv_0_2, output_iv_0_1, output_iv_0_0, output_iv[0]}),
	.out_i_vec_sub_0(out_i_vec_sub_0[11]),
	.out_i_vec_mult_0(out_i_vec_mult_0[11:0]),
	.in_a_i_reg_0({in_a_i_reg_0_11, in_a_i_reg_0[10:0]})
);
// @16:64
  add_subZ3_5 \gen_subs.1.sub_i  (
	.pre_out_i_m(pre_out_i_m_2[0]),
	.out_i_vec_mult_1(out_i_vec_mult_1[11:0]),
	.in_a_i_reg_1({in_a_i_reg_1_11, in_a_i_reg_1[10:0]}),
	.pre_out({pre_out_4[11], pre_out_2[10:9], pre_out_1[8], pre_out_2[7], pre_out_1[6], pre_out_2[5], pre_out_1[4], pre_out_2[3:2], pre_out_1[1]}),
	.un5_output(un5_output_2)
);
// @16:64
  add_subZ3_6 \gen_subs.2.sub_i  (
	.pre_out_i_m(pre_out_i_m_3[0]),
	.out_i_vec_mult_2(out_i_vec_mult_2[11:0]),
	.in_a_i_reg_2({in_a_i_reg_2_11, in_a_i_reg_2[10:0]}),
	.pre_out({pre_out_5[11], pre_out_3_8, pre_out_3_7, pre_out_2[8], pre_out_3_5, pre_out_2[6], pre_out_3_3, pre_out_2[4], pre_out_3_1, pre_out_3_0, pre_out_2[1]}),
	.un5_output(un5_output_3)
);
// @16:64
  add_subZ3_7 \gen_subs.3.sub_i  (
	.out_i_vec_mult_3(out_i_vec_mult_3[11:0]),
	.in_a_i_reg_3({in_a_i_reg_3_11, in_a_i_reg_3[10:0]}),
	.pre_out_i_m_1(pre_out_i_m_0_1),
	.pre_out_i_m_5(pre_out_i_m[5]),
	.pre_out_i_m_2(pre_out_i_m[2]),
	.pre_out_i_m_10(pre_out_i_m[10]),
	.pre_out_i_m_9(pre_out_i_m[9]),
	.pre_out_i_m_6(pre_out_i_m_0_6),
	.pre_out_i_m_7(pre_out_i_m[7]),
	.pre_out_i_m_3(pre_out_i_m[3]),
	.pre_out_i_m_4(pre_out_i_m_0_4),
	.pre_out_i_m_0(pre_out_i_m_4[0]),
	.pre_out_10(pre_out_6[11]),
	.pre_out_7(pre_out_3_6),
	.un5_output(un5_output_4)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* vec_sub */

module mult_with_reg (
  un8_rnd_out,
  un8_rnd_out_P_19,
  out_inv_sqrt_0,
  out_inv_sqrt_1,
  out_inv_sqrt_2,
  out_inv_sqrt_7,
  out_inv_sqrt_8,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_11,
  out_inner_prod_r,
  pre_out_19,
  pre_out_20,
  pre_out_21,
  pre_out_22,
  pre_out_reg,
  N_425_i,
  N_428_i,
  N_431_i,
  N_434_i,
  N_512_i,
  clk,
  PATTERNDETECT_32
)
;
output [10:0] un8_rnd_out ;
output un8_rnd_out_P_19 ;
input out_inv_sqrt_0 ;
input out_inv_sqrt_1 ;
input out_inv_sqrt_2 ;
input out_inv_sqrt_7 ;
input out_inv_sqrt_8 ;
input out_inv_sqrt_9 ;
input out_inv_sqrt_10 ;
input out_inv_sqrt_11 ;
input [11:0] out_inner_prod_r ;
output pre_out_19 ;
output pre_out_20 ;
output pre_out_21 ;
output pre_out_22 ;
output [23:23] pre_out_reg ;
input N_425_i ;
input N_428_i ;
input N_431_i ;
input N_434_i ;
input N_512_i ;
input clk ;
output PATTERNDETECT_32 ;
wire un8_rnd_out_P_19 ;
wire out_inv_sqrt_0 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_11 ;
wire pre_out_19 ;
wire pre_out_20 ;
wire pre_out_21 ;
wire pre_out_22 ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire N_512_i ;
wire clk ;
wire PATTERNDETECT_32 ;
wire [29:0] ACOUT_12;
wire [17:0] BCOUT_12;
wire [3:0] CARRYOUT_12;
wire [6:0] un8_rnd_out_P;
wire [23:20] P_uc_2;
wire [47:24] P_uc_12;
wire [47:0] PCOUT_12;
wire [29:0] ACOUT_32;
wire [17:0] BCOUT_32;
wire [3:0] CARRYOUT_32;
wire [18:0] pre_out;
wire [47:24] P_uc_32;
wire [47:0] PCOUT_32;
wire CARRYCASCOUT_12 ;
wire MULTSIGNOUT_12 ;
wire OVERFLOW_12 ;
wire N_3 ;
wire PATTERNBDETECT_12 ;
wire PATTERNDETECT_12 ;
wire UNDERFLOW_12 ;
wire VCC ;
wire GND ;
wire CARRYCASCOUT_32 ;
wire MULTSIGNOUT_32 ;
wire OVERFLOW_32 ;
wire PATTERNBDETECT_32 ;
wire UNDERFLOW_32 ;
// @13:37
  DSP48E1 \un8_rnd_out[11:0],un8_rnd_out_un0  (
	.ACOUT(ACOUT_12[29:0]),
	.BCOUT(BCOUT_12[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_12),
	.CARRYOUT(CARRYOUT_12[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_12),
	.OVERFLOW(OVERFLOW_12),
	.P({P_uc_12[47:24], P_uc_2[23:20], un8_rnd_out_P_19, un8_rnd_out[10:0], N_3, un8_rnd_out_P[6:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_12),
	.PATTERNDETECT(PATTERNDETECT_12),
	.PCOUT(PCOUT_12[47:0]),
	.UNDERFLOW(UNDERFLOW_12),
	.A({out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_10, out_inv_sqrt_9, out_inv_sqrt_8, out_inv_sqrt_7, N_434_i, N_431_i, N_428_i, N_425_i, out_inv_sqrt_2, out_inv_sqrt_1, out_inv_sqrt_0}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, VCC, GND, GND, GND, GND, GND, GND, GND}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(N_512_i),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, VCC, VCC, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .ACASCREG=2;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .ADREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .ALUMODEREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .AREG=2;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .AUTORESET_PATDET="NO_RESET";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .A_INPUT="DIRECT";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .BCASCREG=1;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .BREG=1;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .B_INPUT="DIRECT";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .CARRYINREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .CARRYINSELREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .CREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .DREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .INMODEREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .MREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .OPMODEREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .PREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .USE_DPORT="FALSE";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .USE_MULT="MULTIPLY";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .USE_SIMD="ONE48";
// @13:37
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_32[29:0]),
	.BCOUT(BCOUT_32[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_32),
	.CARRYOUT(CARRYOUT_32[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_32),
	.OVERFLOW(OVERFLOW_32),
	.P({P_uc_32[47:24], pre_out_reg[23], pre_out_22, pre_out_21, pre_out_20, pre_out_19, pre_out[18:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_32),
	.PATTERNDETECT(PATTERNDETECT_32),
	.PCOUT(PCOUT_32[47:0]),
	.UNDERFLOW(UNDERFLOW_32),
	.A({out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_11, out_inv_sqrt_10, out_inv_sqrt_9, out_inv_sqrt_8, out_inv_sqrt_7, N_434_i, N_431_i, N_428_i, N_425_i, out_inv_sqrt_2, out_inv_sqrt_1, out_inv_sqrt_0}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(N_512_i),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(VCC),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=2;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=2;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=1;
defparam \pre_out[23:0] .BREG=1;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MASK=48'b111111111111111111111111011111111111111111111111;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PATTERN=48'b111111111111111111111111111111111111111111111111;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .SEL_MASK="MASK";
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* mult_with_reg */

module shifterZ1 (
  ret_val,
  un20_output_2,
  ret_val_m2,
  shift_amount_1,
  un26_output_0_iv_3,
  ret_val_d_a1,
  ret_val_d_a0,
  un26_output_6,
  un26_output_2,
  un26_output_4,
  un26_output_3,
  un26_output_0,
  un1_poly_odd_i,
  input_reg,
  un26_output_0_iv_2_0_1,
  input_shifted_4,
  input_shifted_0,
  input_shifted_3,
  un1_input_shifted,
  un1_poly_odd,
  un9_0_axb_8,
  un20_output_0_0_a2_0_0_lut6_2_O5,
  N_100_i,
  N_65,
  un3_shift_right,
  N_2502_i,
  un4_overflow_2,
  N_454,
  N_72,
  ret_val_ss0,
  N_458,
  N_45,
  N_70,
  N_73,
  N_71,
  N_441,
  un9_0_axb_4
)
;
input [3:1] ret_val ;
output [14:14] un20_output_2 ;
input [3:3] ret_val_m2 ;
input [1:1] shift_amount_1 ;
output [6:6] un26_output_0_iv_3 ;
input [1:1] ret_val_d_a1 ;
input [1:1] ret_val_d_a0 ;
output un26_output_6 ;
output un26_output_2 ;
output un26_output_4 ;
output un26_output_3 ;
output un26_output_0 ;
output [6:6] un1_poly_odd_i ;
input [11:0] input_reg ;
output un26_output_0_iv_2_0_1 ;
output input_shifted_4 ;
output input_shifted_0 ;
output input_shifted_3 ;
input [4:4] un1_input_shifted ;
input [8:8] un1_poly_odd ;
input un9_0_axb_8 ;
output un20_output_0_0_a2_0_0_lut6_2_O5 ;
output N_100_i ;
output N_65 ;
input un3_shift_right ;
output N_2502_i ;
input un4_overflow_2 ;
input N_454 ;
output N_72 ;
input ret_val_ss0 ;
input N_458 ;
output N_45 ;
output N_70 ;
output N_73 ;
output N_71 ;
input N_441 ;
output un9_0_axb_4 ;
wire un26_output_6 ;
wire un26_output_2 ;
wire un26_output_4 ;
wire un26_output_3 ;
wire un26_output_0 ;
wire un26_output_0_iv_2_0_1 ;
wire input_shifted_4 ;
wire input_shifted_0 ;
wire input_shifted_3 ;
wire un9_0_axb_8 ;
wire un20_output_0_0_a2_0_0_lut6_2_O5 ;
wire N_100_i ;
wire N_65 ;
wire un3_shift_right ;
wire N_2502_i ;
wire un4_overflow_2 ;
wire N_454 ;
wire N_72 ;
wire ret_val_ss0 ;
wire N_458 ;
wire N_45 ;
wire N_70 ;
wire N_73 ;
wire N_71 ;
wire N_441 ;
wire un9_0_axb_4 ;
wire [4:4] input_m_s;
wire [5:5] un26_output_0_iv_2_0;
wire [3:3] input_m_0;
wire [2:2] output_a1_0;
wire [3:3] un26_output_0_iv_0;
wire [4:4] un26_output_0_iv_2_a0;
wire [1:0] input_m_4;
wire [0:0] input_m_2;
wire [2:2] input_m_3;
wire [7:7] un26_output_0_iv_0_a2_xx;
wire [7:7] un26_output_0_iv_0_a2_yy;
wire [0:0] input_m_4_a0_0;
wire [2:2] output_0_2;
wire GND ;
wire VCC ;
wire un20_output_0_0_a2_0_0 ;
wire N_47 ;
wire un20_output_0_2_a0_0 ;
wire un20_output_3_0_0_a2_s ;
wire un26_m3_i_0 ;
wire N_46 ;
wire N_443 ;
wire N_445 ;
// @23:226
  LUT4 \un26_output_0_iv_0_RNICACH2[7]  (
	.I0(N_65),
	.I1(un26_output_6),
	.I2(un3_shift_right),
	.I3(un9_0_axb_8),
	.O(N_2502_i)
);
defparam \un26_output_0_iv_0_RNICACH2[7] .INIT=16'h00AC;
// @8:59
  LUT4 un20_output_0 (
	.I0(input_reg[4]),
	.I1(input_reg[5]),
	.I2(un20_output_0_2_a0_0),
	.I3(ret_val[3]),
	.O(un20_output_2[14])
);
defparam un20_output_0.INIT=16'h00DF;
// @8:59
  LUT5 un20_output_1_0_0_a2_0 (
	.I0(input_reg[3]),
	.I1(un4_overflow_2),
	.I2(ret_val_m2[3]),
	.I3(N_454),
	.I4(un9_0_axb_8),
	.O(un20_output_3_0_0_a2_s)
);
defparam un20_output_1_0_0_a2_0.INIT=32'h000037FF;
// @8:60
  LUT5 \un26_output_0_iv_3_cZ[6]  (
	.I0(input_reg[3]),
	.I1(input_reg[6]),
	.I2(un9_0_axb_8),
	.I3(input_m_s[4]),
	.I4(shift_amount_1[1]),
	.O(un26_output_0_iv_3[6])
);
defparam \un26_output_0_iv_3_cZ[6] .INIT=32'hFF0ACCC0;
// @8:60
  LUT3 \un26_output_0_iv_2_0_cZ[5]  (
	.I0(input_reg[4]),
	.I1(input_reg[5]),
	.I2(un9_0_axb_8),
	.O(un26_output_0_iv_2_0[5])
);
defparam \un26_output_0_iv_2_0_cZ[5] .INIT=8'hCA;
// @8:60
  LUT4 \input_m_0_cZ[3]  (
	.I0(input_reg[3]),
	.I1(ret_val[2]),
	.I2(ret_val[1]),
	.I3(un9_0_axb_8),
	.O(input_m_0[3])
);
defparam \input_m_0_cZ[3] .INIT=16'h2A00;
  LUT5 \un22_output_0_lut6_2_RNIRGBD6[5]  (
	.I0(input_reg[8]),
	.I1(input_reg[7]),
	.I2(un9_0_axb_8),
	.I3(N_47),
	.I4(shift_amount_1[1]),
	.O(N_72)
);
defparam \un22_output_0_lut6_2_RNIRGBD6[5] .INIT=32'hCACAFF00;
// @8:59
  LUT6 \output_a1_0_cZ[2]  (
	.I0(input_reg[2]),
	.I1(ret_val_ss0),
	.I2(ret_val_d_a1[1]),
	.I3(N_458),
	.I4(ret_val_d_a0[1]),
	.I5(N_454),
	.O(output_a1_0[2])
);
defparam \output_a1_0_cZ[2] .INIT=64'h1155115055555050;
// @8:60
  LUT6 \un26_output_0_iv[3]  (
	.I0(input_reg[2]),
	.I1(un9_0_axb_8),
	.I2(un20_output_2[14]),
	.I3(input_m_0[3]),
	.I4(shift_amount_1[1]),
	.I5(un26_output_0_iv_0[3]),
	.O(un26_output_2)
);
defparam \un26_output_0_iv[3] .INIT=64'hFFFFFFFF0000FF20;
// @8:60
  LUT6 \un26_output_0_iv_2_0_RNIASV9C[5]  (
	.I0(input_reg[2]),
	.I1(un9_0_axb_8),
	.I2(un26_output_0_iv_2_0[5]),
	.I3(un26_m3_i_0),
	.I4(input_m_0[3]),
	.I5(shift_amount_1[1]),
	.O(un26_output_4)
);
defparam \un26_output_0_iv_2_0_RNIASV9C[5] .INIT=64'hFFFFFF22FFF0FFF0;
// @8:60
  LUT6 \un26_output_0_iv[4]  (
	.I0(input_reg[3]),
	.I1(un9_0_axb_8),
	.I2(un20_output_2[14]),
	.I3(input_m_s[4]),
	.I4(un26_output_0_iv_2_a0[4]),
	.I5(shift_amount_1[1]),
	.O(un26_output_3)
);
defparam \un26_output_0_iv[4] .INIT=64'h0000FFFFFF20FF2F;
  LUT6 \un22_output_0_RNIKL1V6[3]  (
	.I0(input_reg[5]),
	.I1(input_reg[6]),
	.I2(un9_0_axb_8),
	.I3(un20_output_2[14]),
	.I4(N_45),
	.I5(shift_amount_1[1]),
	.O(N_70)
);
defparam \un22_output_0_RNIKL1V6[3] .INIT=64'hAC00AC00FF000000;
  LUT6 \un22_output_xx_mm[6]  (
	.I0(input_reg[9]),
	.I1(input_reg[8]),
	.I2(input_reg[7]),
	.I3(input_reg[6]),
	.I4(un9_0_axb_8),
	.I5(shift_amount_1[1]),
	.O(N_73)
);
defparam \un22_output_xx_mm[6] .INIT=64'hCCCCAAAAFF00F0F0;
  LUT6 \un22_output_0_RNINO1V6[4]  (
	.I0(input_reg[7]),
	.I1(input_reg[6]),
	.I2(un9_0_axb_8),
	.I3(un20_output_2[14]),
	.I4(N_46),
	.I5(shift_amount_1[1]),
	.O(N_71)
);
defparam \un22_output_0_RNINO1V6[4] .INIT=64'hCACACACAFF000000;
// @8:60
  LUT4 \un26_output_0_iv_2_RNO_1[6]  (
	.I0(input_reg[1]),
	.I1(ret_val[3]),
	.I2(ret_val[1]),
	.I3(un9_0_axb_8),
	.O(input_m_4[1])
);
defparam \un26_output_0_iv_2_RNO_1[6] .INIT=16'h0008;
// @8:60
  LUT4 \input_m_1_s[4]  (
	.I0(input_reg[4]),
	.I1(ret_val[2]),
	.I2(ret_val[1]),
	.I3(un9_0_axb_8),
	.O(input_m_s[4])
);
defparam \input_m_1_s[4] .INIT=16'h2A00;
// @8:60
  LUT4_L \un26_output_0_iv_2_a0_RNO[4]  (
	.I0(input_reg[0]),
	.I1(ret_val[2]),
	.I2(ret_val[1]),
	.I3(un9_0_axb_8),
	.LO(input_m_2[0])
);
defparam \un26_output_0_iv_2_a0_RNO[4] .INIT=16'h8000;
// @8:60
  LUT4 \un26_output_0_iv_2_RNO[6]  (
	.I0(input_reg[2]),
	.I1(ret_val[2]),
	.I2(ret_val[1]),
	.I3(un9_0_axb_8),
	.O(input_m_3[2])
);
defparam \un26_output_0_iv_2_RNO[6] .INIT=16'h8000;
// @8:60
  LUT5_L \un26_output_0_iv_0_cZ[3]  (
	.I0(input_reg[0]),
	.I1(input_reg[1]),
	.I2(un9_0_axb_8),
	.I3(un20_output_2[14]),
	.I4(shift_amount_1[1]),
	.LO(un26_output_0_iv_0[3])
);
defparam \un26_output_0_iv_0_cZ[3] .INIT=32'hCA000000;
// @8:60
  LUT5 \un26_output_0_iv_2_a0_cZ[4]  (
	.I0(input_reg[1]),
	.I1(input_reg[2]),
	.I2(un9_0_axb_8),
	.I3(un20_output_2[14]),
	.I4(input_m_2[0]),
	.O(un26_output_0_iv_2_a0[4])
);
defparam \un26_output_0_iv_2_a0_cZ[4] .INIT=32'h000035FF;
// @8:60
  LUT5 \un26_output_0_iv[1]  (
	.I0(input_reg[0]),
	.I1(input_reg[1]),
	.I2(un9_0_axb_8),
	.I3(un20_output_0_0_a2_0_0),
	.I4(shift_amount_1[1]),
	.O(un26_output_0)
);
defparam \un26_output_0_iv[1] .INIT=32'h0000CA00;
// @8:60
  LUT5 \un26_output_0_iv_0[7]  (
	.I0(N_443),
	.I1(N_445),
	.I2(un26_output_0_iv_0_a2_xx[7]),
	.I3(un26_output_0_iv_0_a2_yy[7]),
	.I4(shift_amount_1[1]),
	.O(un26_output_6)
);
defparam \un26_output_0_iv_0[7] .INIT=32'hFFAAFCFC;
// @23:226
  LUT5 \output_RNI1PDK2[6]  (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(N_65),
	.I3(un26_output_6),
	.I4(input_shifted_4),
	.O(un1_poly_odd_i[6])
);
defparam \output_RNI1PDK2[6] .INIT=32'hF7D5A280;
// @8:59
  LUT3 \un22_output_0[3]  (
	.I0(input_reg[3]),
	.I1(input_reg[4]),
	.I2(un9_0_axb_8),
	.O(N_45)
);
defparam \un22_output_0[3] .INIT=8'hAC;
// @8:59
  LUT3 \un22_output_0[4]  (
	.I0(input_reg[4]),
	.I1(input_reg[5]),
	.I2(un9_0_axb_8),
	.O(N_46)
);
defparam \un22_output_0[4] .INIT=8'hAC;
// @8:60
  LUT3 \un26_output_0_iv_0_m2_4[7]  (
	.I0(input_reg[7]),
	.I1(input_reg[6]),
	.I2(un9_0_axb_8),
	.O(N_445)
);
defparam \un26_output_0_iv_0_m2_4[7] .INIT=8'hAC;
// @8:60
  LUT3 \un26_output_0_iv_0_m2_2[7]  (
	.I0(input_reg[4]),
	.I1(input_reg[5]),
	.I2(un9_0_axb_8),
	.O(N_443)
);
defparam \un26_output_0_iv_0_m2_2[7] .INIT=8'hCA;
// @8:59
  LUT6 un20_output_0_2_a0_0_0 (
	.I0(input_reg[9]),
	.I1(input_reg[8]),
	.I2(input_reg[7]),
	.I3(input_reg[10]),
	.I4(input_reg[11]),
	.I5(input_reg[6]),
	.O(un20_output_0_2_a0_0)
);
defparam un20_output_0_2_a0_0_0.INIT=64'h0000000000000001;
// @8:60
  LUT6 \un26_output_0_iv_2_RNO_2[6]  (
	.I0(input_reg[0]),
	.I1(input_reg[7]),
	.I2(input_reg[11]),
	.I3(input_reg[6]),
	.I4(un4_overflow_2),
	.I5(N_441),
	.O(input_m_4_a0_0[0])
);
defparam \un26_output_0_iv_2_RNO_2[6] .INIT=64'hAAAAAAAAA0A2A0A0;
// @8:60
  LUT4 \un26_output_0_iv_2_RNO_0[6]  (
	.I0(input_m_4_a0_0[0]),
	.I1(ret_val[3]),
	.I2(ret_val[1]),
	.I3(un9_0_axb_8),
	.O(input_m_4[0])
);
defparam \un26_output_0_iv_2_RNO_0[6] .INIT=16'h0800;
// @8:59
  LUT6 \output_0_2_cZ[2]  (
	.I0(input_reg[0]),
	.I1(input_reg[1]),
	.I2(ret_val[2]),
	.I3(output_a1_0[2]),
	.I4(ret_val[3]),
	.I5(un9_0_axb_8),
	.O(output_0_2[2])
);
defparam \output_0_2_cZ[2] .INIT=64'h000000AF0000CFCF;
// @8:60
  LUT6 un26_m3_i_0_cZ (
	.I0(input_reg[0]),
	.I1(input_reg[1]),
	.I2(ret_val[2]),
	.I3(ret_val[3]),
	.I4(ret_val[1]),
	.I5(un9_0_axb_8),
	.O(un26_m3_i_0)
);
defparam un26_m3_i_0_cZ.INIT=64'h00C0000000000A00;
// @8:60
  LUT6 \un26_output_0_iv_0_a2_yy_cZ[7]  (
	.I0(input_reg[0]),
	.I1(input_reg[1]),
	.I2(ret_val[2]),
	.I3(ret_val[3]),
	.I4(ret_val[1]),
	.I5(un9_0_axb_8),
	.O(un26_output_0_iv_0_a2_yy[7])
);
defparam \un26_output_0_iv_0_a2_yy_cZ[7] .INIT=64'h00C00C000A000A00;
// @8:60
  LUT6 \un26_output_0_iv_0_a2_xx_cZ[7]  (
	.I0(input_reg[2]),
	.I1(input_reg[3]),
	.I2(ret_val[2]),
	.I3(ret_val[3]),
	.I4(ret_val[1]),
	.I5(un9_0_axb_8),
	.O(un26_output_0_iv_0_a2_xx[7])
);
defparam \un26_output_0_iv_0_a2_xx_cZ[7] .INIT=64'h00C00C000A000A00;
// @8:59
  LUT6 \un22_output_2[7]  (
	.I0(input_reg[9]),
	.I1(input_reg[8]),
	.I2(input_reg[7]),
	.I3(input_reg[10]),
	.I4(un9_0_axb_8),
	.I5(shift_amount_1[1]),
	.O(N_65)
);
defparam \un22_output_2[7] .INIT=64'hAAAAFF00F0F0CCCC;
// @8:59
  LUT6 \output_0[2]  (
	.I0(input_reg[3]),
	.I1(ret_val[2]),
	.I2(ret_val[1]),
	.I3(un9_0_axb_8),
	.I4(output_0_2[2]),
	.I5(N_46),
	.O(input_shifted_0)
);
defparam \output_0[2] .INIT=64'h3F2F00003C2C0000;
// @8:60
  LUT6 \un26_output_0_iv_2[6]  (
	.I0(input_reg[5]),
	.I1(un20_output_3_0_0_a2_s),
	.I2(input_m_3[2]),
	.I3(input_m_4[0]),
	.I4(input_m_4[1]),
	.I5(shift_amount_1[1]),
	.O(un26_output_0_iv_2_0_1)
);
defparam \un26_output_0_iv_2[6] .INIT=64'hFFFFFFF0FFFFFFF8;
// @8:59
  LUT3 \output[5]  (
	.I0(un3_shift_right),
	.I1(N_72),
	.I2(un26_output_4),
	.O(input_shifted_3)
);
defparam \output[5] .INIT=8'hD8;
// @8:59
  LUT4 \output[6]  (
	.I0(un3_shift_right),
	.I1(N_73),
	.I2(un26_output_0_iv_3[6]),
	.I3(un26_output_0_iv_2_0_1),
	.O(input_shifted_4)
);
defparam \output[6] .INIT=16'hDDD8;
  LUT5 \output_RNIOO962[5]  (
	.I0(un9_0_axb_8),
	.I1(input_shifted_3),
	.I2(un1_input_shifted[4]),
	.I3(un1_poly_odd[8]),
	.I4(input_shifted_4),
	.O(un9_0_axb_4)
);
defparam \output_RNIOO962[5] .INIT=32'hEBB1411B;
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
// @8:59
  LUT3 \un22_output_0_lut6_2_o6[5]  (
	.I0(input_reg[5]),
	.I1(input_reg[6]),
	.I2(un9_0_axb_8),
	.O(N_47)
);
defparam \un22_output_0_lut6_2_o6[5] .INIT=8'hAC;
// @8:59
  LUT3 \un22_output_0_lut6_2_o5[5]  (
	.I0(ret_val[3]),
	.I1(ret_val[1]),
	.I2(un9_0_axb_8),
	.O(N_100_i)
);
defparam \un22_output_0_lut6_2_o5[5] .INIT=8'h7F;
// @8:59
  LUT3 un20_output_0_0_a2_0_0_lut6_2_o6 (
	.I0(ret_val[2]),
	.I1(ret_val[3]),
	.I2(ret_val[1]),
	.O(un20_output_0_0_a2_0_0)
);
defparam un20_output_0_0_a2_0_0_lut6_2_o6.INIT=8'h13;
// @8:59
  LUT4 un20_output_0_0_a2_0_0_lut6_2_o5 (
	.I0(ret_val[2]),
	.I1(ret_val[3]),
	.I2(ret_val[1]),
	.I3(un9_0_axb_8),
	.O(un20_output_0_0_a2_0_0_lut6_2_O5)
);
defparam un20_output_0_0_a2_0_0_lut6_2_o5.INIT=16'h2444;
endmodule /* shifterZ1 */

module shifterZ0 (
  input_reg,
  shift_amount_1,
  un14_pos_output,
  ret_val,
  un11_output_6_d_0,
  out_shift_amount,
  un7_output_2_0_0,
  un7_output_2_1,
  output_d,
  shift_amount_1_i,
  un11_output_1,
  un11_output_2,
  un20_output_2,
  pre_output,
  done_inv_sqrt,
  un4_overflow_0,
  output_reg_pipe_12_RNIPJ901_O6,
  un9_0_axb_8,
  un9_0_s_6,
  un9_0_s_7,
  N_414,
  N_33,
  clk,
  N_420,
  un3_shift_right,
  N_410,
  un9_0_s_5,
  un9_0_s_8,
  N_79,
  N_50,
  un9_0_s_4,
  un9_0_s_3,
  N_13_0,
  N_100_i,
  N_31,
  N_18_0,
  N_378,
  N_33_0,
  N_80,
  N_51,
  un9_0_s_0,
  un9_0_s_1,
  m9_0_0,
  N_417,
  N_62,
  N_454,
  SUM1_0_i_1_1,
  N_56,
  N_434_i,
  N_431_i,
  N_428_i,
  N_425_i,
  un9_0_s_2,
  N_419,
  N_49,
  N_413,
  un20_output_0_0_a2_0_0_lut6_2_O5,
  un1_apply_nrlt8_1,
  un1_apply_nrlt7
)
;
input [11:10] input_reg ;
input [1:1] shift_amount_1 ;
input [6:3] un14_pos_output ;
input [3:1] ret_val ;
output [9:9] un11_output_6_d_0 ;
input [1:1] out_shift_amount ;
output [6:6] un7_output_2_0_0 ;
output [6:5] un7_output_2_1 ;
output [4:4] output_d ;
input [2:2] shift_amount_1_i ;
output un11_output_1 ;
output un11_output_2 ;
input [14:14] un20_output_2 ;
output [11:1] pre_output ;
input done_inv_sqrt ;
input un4_overflow_0 ;
output output_reg_pipe_12_RNIPJ901_O6 ;
input un9_0_axb_8 ;
input un9_0_s_6 ;
input un9_0_s_7 ;
output N_414 ;
output N_33 ;
input clk ;
output N_420 ;
input un3_shift_right ;
output N_410 ;
input un9_0_s_5 ;
input un9_0_s_8 ;
output N_79 ;
output N_50 ;
input un9_0_s_4 ;
input un9_0_s_3 ;
output N_13_0 ;
input N_100_i ;
output N_31 ;
output N_18_0 ;
input N_378 ;
output N_33_0 ;
output N_80 ;
output N_51 ;
input un9_0_s_0 ;
input un9_0_s_1 ;
output m9_0_0 ;
output N_417 ;
output N_62 ;
input N_454 ;
input SUM1_0_i_1_1 ;
output N_56 ;
output N_434_i ;
output N_431_i ;
output N_428_i ;
output N_425_i ;
input un9_0_s_2 ;
input N_419 ;
output N_49 ;
output N_413 ;
input un20_output_0_0_a2_0_0_lut6_2_O5 ;
input un1_apply_nrlt8_1 ;
input un1_apply_nrlt7 ;
wire un11_output_1 ;
wire un11_output_2 ;
wire done_inv_sqrt ;
wire un4_overflow_0 ;
wire output_reg_pipe_12_RNIPJ901_O6 ;
wire un9_0_axb_8 ;
wire un9_0_s_6 ;
wire un9_0_s_7 ;
wire N_414 ;
wire N_33 ;
wire clk ;
wire N_420 ;
wire un3_shift_right ;
wire N_410 ;
wire un9_0_s_5 ;
wire un9_0_s_8 ;
wire N_79 ;
wire N_50 ;
wire un9_0_s_4 ;
wire un9_0_s_3 ;
wire N_13_0 ;
wire N_100_i ;
wire N_31 ;
wire N_18_0 ;
wire N_378 ;
wire N_33_0 ;
wire N_80 ;
wire N_51 ;
wire un9_0_s_0 ;
wire un9_0_s_1 ;
wire m9_0_0 ;
wire N_417 ;
wire N_62 ;
wire N_454 ;
wire SUM1_0_i_1_1 ;
wire N_56 ;
wire N_434_i ;
wire N_431_i ;
wire N_428_i ;
wire N_425_i ;
wire un9_0_s_2 ;
wire N_419 ;
wire N_49 ;
wire N_413 ;
wire un20_output_0_0_a2_0_0_lut6_2_O5 ;
wire un1_apply_nrlt8_1 ;
wire un1_apply_nrlt7 ;
wire [6:3] un14_pos_outputf;
wire [6:3] pre_outputf;
wire [4:4] un11_output;
wire [6:4] un11_output_1_Z;
wire un4_overflow_if ;
wire VCC ;
wire un4_overflow_i_0 ;
wire output_reg_pipe_13 ;
wire m41 ;
wire output_reg_pipe ;
wire m44 ;
wire output_reg_pipe_5 ;
wire N_427 ;
wire output_reg_pipe_10 ;
wire N_430 ;
wire output_reg_pipe_15 ;
wire N_433 ;
wire m25_0_1 ;
wire m25_0_0 ;
wire m17_0_2 ;
wire GND ;
  FD output_reg_pipe_13_Z (
	.Q(output_reg_pipe_13),
	.D(m41),
	.C(clk)
);
  FD output_reg_pipe_12_Z (
	.Q(un4_overflow_if),
	.D(un4_overflow_i_0),
	.C(clk)
);
  FD output_reg_pipe_Z (
	.Q(output_reg_pipe),
	.D(m44),
	.C(clk)
);
// @27:84
  LUT5 output_reg_pipe_RNO (
	.I0(un4_overflow_0),
	.I1(pre_output[3]),
	.I2(N_420),
	.I3(output_reg_pipe),
	.I4(done_inv_sqrt),
	.O(m44)
);
defparam output_reg_pipe_RNO.INIT=32'h0101FF00;
// @27:84
  LUT6 output_reg_pipe_13_RNO (
	.I0(input_reg[10]),
	.I1(input_reg[11]),
	.I2(un4_overflow_0),
	.I3(N_420),
	.I4(output_reg_pipe_13),
	.I5(done_inv_sqrt),
	.O(m41)
);
defparam output_reg_pipe_13_RNO.INIT=64'hEF00EF00FFFF0000;
  FDE output_reg_pipe_1_Z (
	.Q(un14_pos_outputf[3]),
	.D(un14_pos_output[3]),
	.C(clk),
	.CE(done_inv_sqrt)
);
  FDE output_reg_pipe_4_Z (
	.Q(pre_outputf[3]),
	.D(pre_output[3]),
	.C(clk),
	.CE(done_inv_sqrt)
);
  FDE output_reg_pipe_5_Z (
	.Q(output_reg_pipe_5),
	.D(N_427),
	.C(clk),
	.CE(done_inv_sqrt)
);
  FDE output_reg_pipe_6_Z (
	.Q(un14_pos_outputf[4]),
	.D(un14_pos_output[4]),
	.C(clk),
	.CE(done_inv_sqrt)
);
  FDE output_reg_pipe_9_Z (
	.Q(pre_outputf[4]),
	.D(pre_output[4]),
	.C(clk),
	.CE(done_inv_sqrt)
);
  FDE output_reg_pipe_10_Z (
	.Q(output_reg_pipe_10),
	.D(N_430),
	.C(clk),
	.CE(done_inv_sqrt)
);
  FDE output_reg_pipe_11_Z (
	.Q(un14_pos_outputf[5]),
	.D(un14_pos_output[5]),
	.C(clk),
	.CE(done_inv_sqrt)
);
  FDE output_reg_pipe_14_Z (
	.Q(pre_outputf[5]),
	.D(pre_output[5]),
	.C(clk),
	.CE(done_inv_sqrt)
);
  FDE output_reg_pipe_15_Z (
	.Q(output_reg_pipe_15),
	.D(N_433),
	.C(clk),
	.CE(done_inv_sqrt)
);
  FDE output_reg_pipe_16_Z (
	.Q(un14_pos_outputf[6]),
	.D(un14_pos_output[6]),
	.C(clk),
	.CE(done_inv_sqrt)
);
  FDE output_reg_pipe_19_Z (
	.Q(pre_outputf[6]),
	.D(pre_output[6]),
	.C(clk),
	.CE(done_inv_sqrt)
);
  LUT3 \un11_output_RNIM9LT[5]  (
	.I0(un3_shift_right),
	.I1(un7_output_2_1[5]),
	.I2(un11_output_1),
	.O(pre_output[5])
);
defparam \un11_output_RNIM9LT[5] .INIT=8'hD8;
// @27:84
  LUT4 m26 (
	.I0(ret_val[3]),
	.I1(N_410),
	.I2(m25_0_1),
	.I3(m25_0_0),
	.O(pre_output[8])
);
defparam m26.INIT=16'hFFD8;
// @8:60
  LUT5 \un11_output_6_d_0_cZ[9]  (
	.I0(ret_val[3]),
	.I1(ret_val[1]),
	.I2(shift_amount_1[1]),
	.I3(un9_0_s_5),
	.I4(un9_0_s_8),
	.O(un11_output_6_d_0[9])
);
defparam \un11_output_6_d_0_cZ[9] .INIT=32'hF8F00800;
  LUT5 \un11_output_3_RNITKM12[2]  (
	.I0(ret_val[3]),
	.I1(ret_val[1]),
	.I2(un3_shift_right),
	.I3(N_79),
	.I4(N_50),
	.O(pre_output[2])
);
defparam \un11_output_3_RNITKM12[2] .INIT=32'hFFF00700;
// @27:84
  LUT4 m19 (
	.I0(ret_val[2]),
	.I1(un9_0_axb_8),
	.I2(shift_amount_1[1]),
	.I3(un9_0_s_4),
	.O(N_410)
);
defparam m19.INIT=16'h0600;
// @27:84
  LUT4 m12 (
	.I0(ret_val[2]),
	.I1(un9_0_axb_8),
	.I2(shift_amount_1[1]),
	.I3(un9_0_s_3),
	.O(N_13_0)
);
defparam m12.INIT=16'h0600;
  LUT3 m31 (
	.I0(N_100_i),
	.I1(un9_0_s_6),
	.I2(N_31),
	.O(pre_output[10])
);
defparam m31.INIT=8'hE4;
  LUT3 m18 (
	.I0(N_100_i),
	.I1(un9_0_s_3),
	.I2(N_18_0),
	.O(pre_output[7])
);
defparam m18.INIT=8'hE4;
  LUT5 \un11_output_RNIL9QU3[4]  (
	.I0(N_378),
	.I1(un3_shift_right),
	.I2(un9_0_s_6),
	.I3(N_33_0),
	.I4(un11_output[4]),
	.O(pre_output[4])
);
defparam \un11_output_RNIL9QU3[4] .INIT=32'hF733CC80;
// @8:59
  LUT5 \un7_output_2_0[6]  (
	.I0(ret_val[3]),
	.I1(ret_val[1]),
	.I2(un9_0_axb_8),
	.I3(out_shift_amount[1]),
	.I4(un9_0_s_8),
	.O(un7_output_2_0_0[6])
);
defparam \un7_output_2_0[6] .INIT=32'h437F007F;
  LUT6 \un11_output_3_RNI53BN3[3]  (
	.I0(ret_val[3]),
	.I1(ret_val[1]),
	.I2(un9_0_axb_8),
	.I3(un3_shift_right),
	.I4(N_80),
	.I5(N_51),
	.O(pre_output[3])
);
defparam \un11_output_3_RNI53BN3[3] .INIT=64'hFF7FFF00007F0000;
// @27:84
  LUT6 m25_0_1_cZ (
	.I0(ret_val[1]),
	.I1(un9_0_axb_8),
	.I2(out_shift_amount[1]),
	.I3(un3_shift_right),
	.I4(un9_0_s_8),
	.I5(un9_0_s_7),
	.O(m25_0_1)
);
defparam m25_0_1_cZ.INIT=64'h090F000609090000;
// @27:84
  LUT6 m30 (
	.I0(ret_val[1]),
	.I1(un9_0_axb_8),
	.I2(out_shift_amount[1]),
	.I3(un3_shift_right),
	.I4(un9_0_s_8),
	.I5(un9_0_s_7),
	.O(N_31)
);
defparam m30.INIT=64'h00F0006000900000;
// @8:59
  LUT5 \un7_output_2_1_cZ[5]  (
	.I0(ret_val[1]),
	.I1(un9_0_axb_8),
	.I2(out_shift_amount[1]),
	.I3(un9_0_s_6),
	.I4(un9_0_s_7),
	.O(un7_output_2_1[5])
);
defparam \un7_output_2_1_cZ[5] .INIT=32'hFF990F09;
// @8:59
  LUT5 \un7_output_2_1_cZ[6]  (
	.I0(ret_val[1]),
	.I1(un9_0_axb_8),
	.I2(out_shift_amount[1]),
	.I3(un9_0_s_6),
	.I4(un9_0_s_7),
	.O(un7_output_2_1[6])
);
defparam \un7_output_2_1_cZ[6] .INIT=32'hFFF69990;
// @27:84
  LUT6 m25_0_0_cZ (
	.I0(ret_val[1]),
	.I1(un9_0_axb_8),
	.I2(out_shift_amount[1]),
	.I3(un3_shift_right),
	.I4(un9_0_s_5),
	.I5(un9_0_s_6),
	.O(m25_0_0)
);
defparam m25_0_0_cZ.INIT=64'h00F0009000600000;
// @8:59
  LUT5 \output_d_cZ[4]  (
	.I0(ret_val[1]),
	.I1(un9_0_axb_8),
	.I2(un3_shift_right),
	.I3(un9_0_s_6),
	.I4(un11_output[4]),
	.O(output_d[4])
);
defparam \output_d_cZ[4] .INIT=32'h9F0F9000;
// @27:84
  LUT6 m9_0_0_c (
	.I0(ret_val[1]),
	.I1(un9_0_axb_8),
	.I2(out_shift_amount[1]),
	.I3(un3_shift_right),
	.I4(un9_0_s_0),
	.I5(un9_0_s_1),
	.O(m9_0_0)
);
defparam m9_0_0_c.INIT=64'h0F09060009090000;
// @27:84
  LUT4 m33 (
	.I0(ret_val[2]),
	.I1(shift_amount_1[1]),
	.I2(un3_shift_right),
	.I3(un9_0_s_8),
	.O(N_417)
);
defparam m33.INIT=16'h0400;
// @8:60
  LUT4 \un11_output_1[7]  (
	.I0(ret_val[1]),
	.I1(un9_0_axb_8),
	.I2(un9_0_s_6),
	.I3(un9_0_s_7),
	.O(N_62)
);
defparam \un11_output_1[7] .INIT=16'hF960;
// @8:60
  LUT6 \un11_output_1[1]  (
	.I0(N_454),
	.I1(SUM1_0_i_1_1),
	.I2(ret_val[1]),
	.I3(un9_0_axb_8),
	.I4(un9_0_s_0),
	.I5(un9_0_s_1),
	.O(N_56)
);
defparam \un11_output_1[1] .INIT=64'hFFFF3013CFEC0000;
// @8:59
  LUT4 \un7_output_0[4]  (
	.I0(ret_val[1]),
	.I1(un9_0_axb_8),
	.I2(un9_0_s_4),
	.I3(un9_0_s_5),
	.O(N_33_0)
);
defparam \un7_output_0[4] .INIT=16'hF690;
// @13:37
  LUT5 output_reg_pipe_15_RNIJLNH1 (
	.I0(un14_pos_outputf[6]),
	.I1(output_reg_pipe_15),
	.I2(pre_outputf[6]),
	.I3(un4_overflow_if),
	.I4(output_reg_pipe_13),
	.O(N_434_i)
);
defparam output_reg_pipe_15_RNIJLNH1.INIT=32'h22277277;
// @13:37
  LUT5 output_reg_pipe_10_RNI4LNH1 (
	.I0(un14_pos_outputf[5]),
	.I1(output_reg_pipe_10),
	.I2(pre_outputf[5]),
	.I3(un4_overflow_if),
	.I4(output_reg_pipe_13),
	.O(N_431_i)
);
defparam output_reg_pipe_10_RNI4LNH1.INIT=32'h22277277;
// @13:37
  LUT5 output_reg_pipe_5_RNI0B2S (
	.I0(un14_pos_outputf[4]),
	.I1(output_reg_pipe_5),
	.I2(pre_outputf[4]),
	.I3(un4_overflow_if),
	.I4(output_reg_pipe_13),
	.O(N_428_i)
);
defparam output_reg_pipe_5_RNI0B2S.INIT=32'h22277277;
// @13:37
  LUT5 output_reg_pipe_1_RNI23E61 (
	.I0(un14_pos_outputf[3]),
	.I1(output_reg_pipe),
	.I2(pre_outputf[3]),
	.I3(un4_overflow_if),
	.I4(output_reg_pipe_13),
	.O(N_425_i)
);
defparam output_reg_pipe_1_RNI23E61.INIT=32'h22277277;
// @8:60
  LUT5 \un11_output_3[2]  (
	.I0(shift_amount_1_i[2]),
	.I1(shift_amount_1[1]),
	.I2(un9_0_s_0),
	.I3(un9_0_s_1),
	.I4(un9_0_s_2),
	.O(N_79)
);
defparam \un11_output_3[2] .INIT=32'hBA329810;
// @8:60
  LUT5 \un11_output_3[3]  (
	.I0(shift_amount_1_i[2]),
	.I1(shift_amount_1[1]),
	.I2(un9_0_s_2),
	.I3(N_56),
	.I4(un9_0_s_3),
	.O(N_80)
);
defparam \un11_output_3[3] .INIT=32'hF7A2D580;
// @8:60
  LUT6_L \un11_output_1[5]  (
	.I0(shift_amount_1_i[2]),
	.I1(N_100_i),
	.I2(shift_amount_1[1]),
	.I3(un9_0_s_1),
	.I4(un9_0_s_2),
	.I5(un9_0_s_3),
	.LO(un11_output_1_Z[5])
);
defparam \un11_output_1[5] .INIT=64'h4644060442400200;
// @8:60
  LUT6_L \un11_output_1[4]  (
	.I0(shift_amount_1_i[2]),
	.I1(N_100_i),
	.I2(shift_amount_1[1]),
	.I3(un9_0_s_0),
	.I4(un9_0_s_1),
	.I5(un9_0_s_2),
	.LO(un11_output_1_Z[4])
);
defparam \un11_output_1[4] .INIT=64'h4644060442400200;
// @8:59
  LUT6 \un7_output[1]  (
	.I0(N_419),
	.I1(N_378),
	.I2(N_100_i),
	.I3(un9_0_s_1),
	.I4(un9_0_s_2),
	.I5(un9_0_s_3),
	.O(N_49)
);
defparam \un7_output[1] .INIT=64'hEA62C840AA228800;
// @8:59
  LUT6 \un7_output[2]  (
	.I0(N_419),
	.I1(N_378),
	.I2(N_100_i),
	.I3(un9_0_s_2),
	.I4(un9_0_s_3),
	.I5(un9_0_s_4),
	.O(N_50)
);
defparam \un7_output[2] .INIT=64'hEA62C840AA228800;
// @8:60
  LUT6_L \un11_output_1[6]  (
	.I0(N_378),
	.I1(N_100_i),
	.I2(out_shift_amount[1]),
	.I3(un9_0_s_2),
	.I4(un9_0_s_3),
	.I5(un9_0_s_4),
	.LO(un11_output_1_Z[6])
);
defparam \un11_output_1[6] .INIT=64'hC2C0828042400200;
// @27:84
  LUT6_L m17_0_2_cZ (
	.I0(N_378),
	.I1(out_shift_amount[1]),
	.I2(un3_shift_right),
	.I3(un9_0_s_4),
	.I4(un9_0_s_5),
	.I5(un9_0_s_8),
	.LO(m17_0_2)
);
defparam m17_0_2_cZ.INIT=64'h1C1814100C080400;
// @27:84
  LUT6 m25_0 (
	.I0(N_378),
	.I1(out_shift_amount[1]),
	.I2(un3_shift_right),
	.I3(un9_0_s_8),
	.I4(un9_0_s_7),
	.I5(m25_0_0),
	.O(N_413)
);
defparam m25_0.INIT=64'hFFFFFFFF23012200;
// @8:60
  LUT6 \un11_output[5]  (
	.I0(shift_amount_1_i[2]),
	.I1(N_378),
	.I2(N_100_i),
	.I3(un9_0_s_4),
	.I4(un9_0_s_5),
	.I5(un11_output_1_Z[5]),
	.O(un11_output_1)
);
defparam \un11_output[5] .INIT=64'hFFFFFFFFA0802000;
// @8:60
  LUT6 \un11_output_cZ[4]  (
	.I0(shift_amount_1_i[2]),
	.I1(N_378),
	.I2(N_100_i),
	.I3(un9_0_s_3),
	.I4(un9_0_s_4),
	.I5(un11_output_1_Z[4]),
	.O(un11_output[4])
);
defparam \un11_output_cZ[4] .INIT=64'hFFFFFFFFA0802000;
// @8:59
  LUT6 \output_0[9]  (
	.I0(un20_output_0_0_a2_0_0_lut6_2_O5),
	.I1(N_378),
	.I2(un3_shift_right),
	.I3(un9_0_s_6),
	.I4(un9_0_s_7),
	.I5(un11_output_6_d_0[9]),
	.O(pre_output[9])
);
defparam \output_0[9] .INIT=64'h0F0D07050A080200;
// @27:84
  LUT6 m34 (
	.I0(N_100_i),
	.I1(out_shift_amount[1]),
	.I2(shift_amount_1[1]),
	.I3(un3_shift_right),
	.I4(un9_0_s_8),
	.I5(un9_0_s_7),
	.O(pre_output[11])
);
defparam m34.INIT=64'h0081000100800000;
// @8:59
  LUT6 \un7_output_2[3]  (
	.I0(N_378),
	.I1(N_100_i),
	.I2(out_shift_amount[1]),
	.I3(un9_0_s_3),
	.I4(un9_0_s_4),
	.I5(un9_0_s_5),
	.O(N_51)
);
defparam \un7_output_2[3] .INIT=64'h8C8488800C040800;
// @27:84
  LUT6 m17_0 (
	.I0(N_378),
	.I1(out_shift_amount[1]),
	.I2(un3_shift_right),
	.I3(un9_0_s_6),
	.I4(un9_0_s_7),
	.I5(m17_0_2),
	.O(N_18_0)
);
defparam m17_0.INIT=64'hFFFFFFFF23220100;
// @8:60
  LUT6 \un11_output[6]  (
	.I0(N_378),
	.I1(N_100_i),
	.I2(out_shift_amount[1]),
	.I3(un9_0_s_5),
	.I4(un9_0_s_6),
	.I5(un11_output_1_Z[6]),
	.O(un11_output_2)
);
defparam \un11_output[6] .INIT=64'hFFFFFFFF0C080400;
// @27:84
  LUT6 \output_0_RNIMQFRP[9]  (
	.I0(pre_output[11]),
	.I1(pre_output[10]),
	.I2(pre_output[9]),
	.I3(pre_output[8]),
	.I4(un1_apply_nrlt8_1),
	.I5(un1_apply_nrlt7),
	.O(N_420)
);
defparam \output_0_RNIMQFRP[9] .INIT=64'h0101011101110111;
// @27:84
  LUT5_L output_reg_pipe_5_RNO (
	.I0(input_reg[10]),
	.I1(input_reg[11]),
	.I2(un4_overflow_0),
	.I3(pre_output[4]),
	.I4(N_420),
	.LO(N_427)
);
defparam output_reg_pipe_5_RNO.INIT=32'h000000EF;
// @27:84
  LUT5_L output_reg_pipe_10_RNO (
	.I0(input_reg[10]),
	.I1(input_reg[11]),
	.I2(un4_overflow_0),
	.I3(pre_output[5]),
	.I4(N_420),
	.LO(N_430)
);
defparam output_reg_pipe_10_RNO.INIT=32'h000000EF;
// @27:84
  LUT5_L output_reg_pipe_15_RNO (
	.I0(input_reg[10]),
	.I1(input_reg[11]),
	.I2(un4_overflow_0),
	.I3(pre_output[6]),
	.I4(N_420),
	.LO(N_433)
);
defparam output_reg_pipe_15_RNO.INIT=32'h000000EF;
  LUT4 \un7_output_RNIN1BC1[1]  (
	.I0(un20_output_2[14]),
	.I1(un3_shift_right),
	.I2(N_56),
	.I3(N_49),
	.O(pre_output[1])
);
defparam \un7_output_RNIN1BC1[1] .INIT=16'hEC20;
  LUT4 \un7_output_2_0_RNI7K981[6]  (
	.I0(un3_shift_right),
	.I1(un7_output_2_0_0[6]),
	.I2(un7_output_2_1[6]),
	.I3(un11_output_2),
	.O(pre_output[6])
);
defparam \un7_output_2_0_RNI7K981[6] .INIT=16'hD580;
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
// @27:84
  LUT4 m27_lut6_2_o6 (
	.I0(ret_val[2]),
	.I1(un9_0_axb_8),
	.I2(shift_amount_1[1]),
	.I3(un9_0_s_6),
	.O(N_414)
);
defparam m27_lut6_2_o6.INIT=16'h0600;
// @27:84
  LUT4 m27_lut6_2_o5 (
	.I0(ret_val[2]),
	.I1(un9_0_axb_8),
	.I2(shift_amount_1[1]),
	.I3(un9_0_s_7),
	.O(N_33)
);
defparam m27_lut6_2_o5.INIT=16'h0600;
  LUT4 output_reg_pipe_12_RNIPJ901_o6 (
	.I0(input_reg[10]),
	.I1(input_reg[11]),
	.I2(done_inv_sqrt),
	.I3(un4_overflow_0),
	.O(output_reg_pipe_12_RNIPJ901_O6)
);
defparam output_reg_pipe_12_RNIPJ901_o6.INIT=16'h1000;
  LUT5 output_reg_pipe_12_RNIPJ901_o5 (
	.I0(un4_overflow_if),
	.I1(input_reg[10]),
	.I2(input_reg[11]),
	.I3(done_inv_sqrt),
	.I4(un4_overflow_0),
	.O(un4_overflow_i_0)
);
defparam output_reg_pipe_12_RNIPJ901_o5.INIT=32'hFCAAFFAA;
endmodule /* shifterZ0 */

module multiplier (
  mult1_out,
  pre_output
)
;
output [11:0] mult1_out ;
input [11:0] pre_output ;
wire [23:0] pre_out;
wire [18:8] un8_rnd_out_P;
wire [19:19] un8_rnd_out_P_0;
wire [29:0] ACOUT_9;
wire [17:0] BCOUT_9;
wire [3:0] CARRYOUT_9;
wire [6:0] un8_rnd_out_P_1;
wire [23:20] P_uc;
wire [47:24] P_uc_9;
wire [47:0] PCOUT_9;
wire [29:0] ACOUT_13;
wire [17:0] BCOUT_13;
wire [3:0] CARRYOUT_13;
wire [47:24] P_uc_13;
wire [47:0] PCOUT_13;
wire un5_output_3_0 ;
wire PATTERNDETECT_13 ;
wire CARRYCASCOUT_9 ;
wire MULTSIGNOUT_9 ;
wire OVERFLOW_9 ;
wire N_15 ;
wire PATTERNBDETECT_9 ;
wire PATTERNDETECT_9 ;
wire UNDERFLOW_9 ;
wire VCC ;
wire GND ;
wire CARRYCASCOUT_13 ;
wire MULTSIGNOUT_13 ;
wire OVERFLOW_13 ;
wire PATTERNBDETECT_13 ;
wire UNDERFLOW_13 ;
// @12:39
  LUT2 \gen_sat.un5_output_3_0  (
	.I0(pre_out[21]),
	.I1(pre_out[22]),
	.O(un5_output_3_0)
);
defparam \gen_sat.un5_output_3_0 .INIT=4'h8;
// @12:39
  LUT6 \output_f0[0]  (
	.I0(un8_rnd_out_P[8]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_13),
	.O(mult1_out[0])
);
defparam \output_f0[0] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[1]  (
	.I0(un8_rnd_out_P[9]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_13),
	.O(mult1_out[1])
);
defparam \output_f0[1] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[2]  (
	.I0(un8_rnd_out_P[10]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_13),
	.O(mult1_out[2])
);
defparam \output_f0[2] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[3]  (
	.I0(un8_rnd_out_P[11]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_13),
	.O(mult1_out[3])
);
defparam \output_f0[3] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[4]  (
	.I0(un8_rnd_out_P[12]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_13),
	.O(mult1_out[4])
);
defparam \output_f0[4] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[5]  (
	.I0(un8_rnd_out_P[13]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_13),
	.O(mult1_out[5])
);
defparam \output_f0[5] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[6]  (
	.I0(un8_rnd_out_P[14]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_13),
	.O(mult1_out[6])
);
defparam \output_f0[6] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[7]  (
	.I0(un8_rnd_out_P[15]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_13),
	.O(mult1_out[7])
);
defparam \output_f0[7] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[8]  (
	.I0(un8_rnd_out_P[16]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_13),
	.O(mult1_out[8])
);
defparam \output_f0[8] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[9]  (
	.I0(un8_rnd_out_P[17]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_13),
	.O(mult1_out[9])
);
defparam \output_f0[9] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[10]  (
	.I0(un8_rnd_out_P[18]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_13),
	.O(mult1_out[10])
);
defparam \output_f0[10] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0_0[11]  (
	.I0(un8_rnd_out_P_0[19]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_13),
	.O(mult1_out[11])
);
defparam \output_f0_0[11] .INIT=64'hBFAAFFAABF00FF00;
// @12:35
  DSP48E1 \un8_rnd_out[11:0],un8_rnd_out_un0  (
	.ACOUT(ACOUT_9[29:0]),
	.BCOUT(BCOUT_9[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_9),
	.CARRYOUT(CARRYOUT_9[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_9),
	.OVERFLOW(OVERFLOW_9),
	.P({P_uc_9[47:24], P_uc[23:20], un8_rnd_out_P_0[19], un8_rnd_out_P[18:8], N_15, un8_rnd_out_P_1[6:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_9),
	.PATTERNDETECT(PATTERNDETECT_9),
	.PCOUT(PCOUT_9[47:0]),
	.UNDERFLOW(UNDERFLOW_9),
	.A({pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, VCC, GND, GND, GND, GND, GND, GND, GND}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(GND),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(GND),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, VCC, VCC, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .ACASCREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .ADREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .ALUMODEREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .AREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .AUTORESET_PATDET="NO_RESET";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .A_INPUT="DIRECT";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .BCASCREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .BREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .B_INPUT="DIRECT";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .CARRYINREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .CARRYINSELREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .CREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .DREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .INMODEREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .MREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .OPMODEREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .PREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .USE_DPORT="FALSE";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .USE_MULT="MULTIPLY";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .USE_SIMD="ONE48";
// @12:35
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_13[29:0]),
	.BCOUT(BCOUT_13[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_13),
	.CARRYOUT(CARRYOUT_13[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_13),
	.OVERFLOW(OVERFLOW_13),
	.P({P_uc_13[47:24], pre_out[23:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_13),
	.PATTERNDETECT(PATTERNDETECT_13),
	.PCOUT(PCOUT_13[47:0]),
	.UNDERFLOW(UNDERFLOW_13),
	.A({pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(GND),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(GND),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=0;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=0;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=0;
defparam \pre_out[23:0] .BREG=0;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MASK=48'b111111111111111111111111100001111111111111111111;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PATTERN=48'b111111111111111111111111100001111111111111111111;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .SEL_MASK="MASK";
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* multiplier */

module multiplier_1 (
  mult2_out,
  pre_output,
  out_inner_prod_r,
  start_inv_sqrt,
  clk
)
;
output [11:0] mult2_out ;
input [11:0] pre_output ;
input [11:0] out_inner_prod_r ;
input start_inv_sqrt ;
input clk ;
wire start_inv_sqrt ;
wire clk ;
wire [23:0] pre_out;
wire [18:0] un8_rnd_out_P_0;
wire [19:19] un8_rnd_out_P_1;
wire [29:0] ACOUT_10;
wire [17:0] BCOUT_10;
wire [3:0] CARRYOUT_10;
wire [23:20] P_uc_0;
wire [47:24] P_uc_10;
wire [47:0] PCOUT_10;
wire [29:0] ACOUT_14;
wire [17:0] BCOUT_14;
wire [3:0] CARRYOUT_14;
wire [47:24] P_uc_14;
wire [47:0] PCOUT_14;
wire un5_output_3_0 ;
wire PATTERNDETECT_14 ;
wire CARRYCASCOUT_10 ;
wire MULTSIGNOUT_10 ;
wire OVERFLOW_10 ;
wire N_3 ;
wire PATTERNBDETECT_10 ;
wire PATTERNDETECT_10 ;
wire UNDERFLOW_10 ;
wire VCC ;
wire GND ;
wire CARRYCASCOUT_14 ;
wire MULTSIGNOUT_14 ;
wire OVERFLOW_14 ;
wire PATTERNBDETECT_14 ;
wire UNDERFLOW_14 ;
// @12:39
  LUT2 \gen_sat.un5_output_3_0  (
	.I0(pre_out[21]),
	.I1(pre_out[22]),
	.O(un5_output_3_0)
);
defparam \gen_sat.un5_output_3_0 .INIT=4'h8;
// @12:39
  LUT6 \output_f0[0]  (
	.I0(un8_rnd_out_P_0[8]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_14),
	.O(mult2_out[0])
);
defparam \output_f0[0] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[1]  (
	.I0(un8_rnd_out_P_0[9]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_14),
	.O(mult2_out[1])
);
defparam \output_f0[1] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[2]  (
	.I0(un8_rnd_out_P_0[10]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_14),
	.O(mult2_out[2])
);
defparam \output_f0[2] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[3]  (
	.I0(un8_rnd_out_P_0[11]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_14),
	.O(mult2_out[3])
);
defparam \output_f0[3] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[4]  (
	.I0(un8_rnd_out_P_0[12]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_14),
	.O(mult2_out[4])
);
defparam \output_f0[4] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[5]  (
	.I0(un8_rnd_out_P_0[13]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_14),
	.O(mult2_out[5])
);
defparam \output_f0[5] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[6]  (
	.I0(un8_rnd_out_P_0[14]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_14),
	.O(mult2_out[6])
);
defparam \output_f0[6] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[7]  (
	.I0(un8_rnd_out_P_0[15]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_14),
	.O(mult2_out[7])
);
defparam \output_f0[7] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[8]  (
	.I0(un8_rnd_out_P_0[16]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_14),
	.O(mult2_out[8])
);
defparam \output_f0[8] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[9]  (
	.I0(un8_rnd_out_P_0[17]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_14),
	.O(mult2_out[9])
);
defparam \output_f0[9] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0[10]  (
	.I0(un8_rnd_out_P_0[18]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_14),
	.O(mult2_out[10])
);
defparam \output_f0[10] .INIT=64'h80AA00AA80FF00FF;
// @12:39
  LUT6 \output_f0_0[11]  (
	.I0(un8_rnd_out_P_1[19]),
	.I1(pre_out[19]),
	.I2(pre_out[20]),
	.I3(pre_out[23]),
	.I4(un5_output_3_0),
	.I5(PATTERNDETECT_14),
	.O(mult2_out[11])
);
defparam \output_f0_0[11] .INIT=64'hBFAAFFAABF00FF00;
// @12:35
  DSP48E1 \un8_rnd_out[11:0],un8_rnd_out_un0  (
	.ACOUT(ACOUT_10[29:0]),
	.BCOUT(BCOUT_10[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_10),
	.CARRYOUT(CARRYOUT_10[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_10),
	.OVERFLOW(OVERFLOW_10),
	.P({P_uc_10[47:24], P_uc_0[23:20], un8_rnd_out_P_1[19], un8_rnd_out_P_0[18:8], N_3, un8_rnd_out_P_0[6:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_10),
	.PATTERNDETECT(PATTERNDETECT_10),
	.PCOUT(PCOUT_10[47:0]),
	.UNDERFLOW(UNDERFLOW_10),
	.A({pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, VCC, GND, GND, GND, GND, GND, GND, GND}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(start_inv_sqrt),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, VCC, VCC, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .ACASCREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .ADREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .ALUMODEREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .AREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .AUTORESET_PATDET="NO_RESET";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .A_INPUT="DIRECT";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .BCASCREG=1;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .BREG=1;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .B_INPUT="DIRECT";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .CARRYINREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .CARRYINSELREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .CREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .DREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .INMODEREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .MREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .OPMODEREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .PREG=0;
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .USE_DPORT="FALSE";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .USE_MULT="MULTIPLY";
defparam \un8_rnd_out[11:0],un8_rnd_out_un0 .USE_SIMD="ONE48";
// @12:35
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_14[29:0]),
	.BCOUT(BCOUT_14[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_14),
	.CARRYOUT(CARRYOUT_14[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_14),
	.OVERFLOW(OVERFLOW_14),
	.P({P_uc_14[47:24], pre_out[23:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_14),
	.PATTERNDETECT(PATTERNDETECT_14),
	.PCOUT(PCOUT_14[47:0]),
	.UNDERFLOW(UNDERFLOW_14),
	.A({pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11], pre_output[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11], out_inner_prod_r[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(start_inv_sqrt),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(clk),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=0;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=0;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=1;
defparam \pre_out[23:0] .BREG=1;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MASK=48'b111111111111111111111111100001111111111111111111;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PATTERN=48'b111111111111111111111111100001111111111111111111;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .SEL_MASK="MASK";
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* multiplier_1 */

module \multiplier_enabled_nr.mult3  (
  un8_rnd_out_un0_P_9,
  un8_rnd_out_un0_P_10,
  un8_rnd_out_un0_P_11,
  un8_rnd_out_un0_P_12,
  un8_rnd_out_un0_P_13,
  un8_rnd_out_un0_P_14,
  un8_rnd_out_un0_P_15,
  un8_rnd_out_un0_P_16,
  un8_rnd_out_un0_P_17,
  un8_rnd_out_un0_P_18,
  un8_rnd_out_un0_P_19,
  mult1_out,
  mult2_out,
  pre_out_23,
  un2_output_3,
  PATTERNDETECT_15
)
;
output un8_rnd_out_un0_P_9 ;
output un8_rnd_out_un0_P_10 ;
output un8_rnd_out_un0_P_11 ;
output un8_rnd_out_un0_P_12 ;
output un8_rnd_out_un0_P_13 ;
output un8_rnd_out_un0_P_14 ;
output un8_rnd_out_un0_P_15 ;
output un8_rnd_out_un0_P_16 ;
output un8_rnd_out_un0_P_17 ;
output un8_rnd_out_un0_P_18 ;
output un8_rnd_out_un0_P_19 ;
input [11:0] mult1_out ;
input [11:0] mult2_out ;
output pre_out_23 ;
output un2_output_3 ;
output PATTERNDETECT_15 ;
wire un8_rnd_out_un0_P_9 ;
wire un8_rnd_out_un0_P_10 ;
wire un8_rnd_out_un0_P_11 ;
wire un8_rnd_out_un0_P_12 ;
wire un8_rnd_out_un0_P_13 ;
wire un8_rnd_out_un0_P_14 ;
wire un8_rnd_out_un0_P_15 ;
wire un8_rnd_out_un0_P_16 ;
wire un8_rnd_out_un0_P_17 ;
wire un8_rnd_out_un0_P_18 ;
wire un8_rnd_out_un0_P_19 ;
wire pre_out_23 ;
wire un2_output_3 ;
wire PATTERNDETECT_15 ;
wire [22:0] pre_out;
wire [29:0] ACOUT_11;
wire [17:0] BCOUT_11;
wire [3:0] CARRYOUT_11;
wire [8:0] un8_rnd_out_un0_P;
wire [23:20] P_uc_1;
wire [47:24] P_uc_11;
wire [47:0] PCOUT_11;
wire [29:0] ACOUT_15;
wire [17:0] BCOUT_15;
wire [3:0] CARRYOUT_15;
wire [47:24] P_uc_15;
wire [47:0] PCOUT_15;
wire CARRYCASCOUT_11 ;
wire MULTSIGNOUT_11 ;
wire OVERFLOW_11 ;
wire PATTERNBDETECT_11 ;
wire PATTERNDETECT_11 ;
wire UNDERFLOW_11 ;
wire VCC ;
wire GND ;
wire CARRYCASCOUT_15 ;
wire MULTSIGNOUT_15 ;
wire OVERFLOW_15 ;
wire PATTERNBDETECT_15 ;
wire UNDERFLOW_15 ;
// @12:39
  LUT4 \gen_sat.un2_output_3  (
	.I0(pre_out[19]),
	.I1(pre_out[20]),
	.I2(pre_out[21]),
	.I3(pre_out[22]),
	.O(un2_output_3)
);
defparam \gen_sat.un2_output_3 .INIT=16'h0001;
// @12:35
  DSP48E1 \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0  (
	.ACOUT(ACOUT_11[29:0]),
	.BCOUT(BCOUT_11[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_11),
	.CARRYOUT(CARRYOUT_11[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_11),
	.OVERFLOW(OVERFLOW_11),
	.P({P_uc_11[47:24], P_uc_1[23:20], un8_rnd_out_un0_P_19, un8_rnd_out_un0_P_18, un8_rnd_out_un0_P_17, un8_rnd_out_un0_P_16, un8_rnd_out_un0_P_15, un8_rnd_out_un0_P_14, un8_rnd_out_un0_P_13, un8_rnd_out_un0_P_12, un8_rnd_out_un0_P_11, un8_rnd_out_un0_P_10, un8_rnd_out_un0_P_9, un8_rnd_out_un0_P[8:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_11),
	.PATTERNDETECT(PATTERNDETECT_11),
	.PCOUT(PCOUT_11[47:0]),
	.UNDERFLOW(UNDERFLOW_11),
	.A({mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({mult2_out[11], mult2_out[11], mult2_out[11], mult2_out[11], mult2_out[11], mult2_out[11], mult2_out[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, VCC, GND, GND, GND, GND, GND, GND, GND}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(GND),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(GND),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, VCC, VCC, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .ACASCREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .ADREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .ALUMODEREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .AREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .AUTORESET_PATDET="NO_RESET";
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .A_INPUT="DIRECT";
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .BCASCREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .BREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .B_INPUT="DIRECT";
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .CARRYINREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .CARRYINSELREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .CREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .DREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .INMODEREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .MREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .OPMODEREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .PREG=0;
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .USE_DPORT="FALSE";
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .USE_MULT="MULTIPLY";
defparam \un8_rnd_out[11:0],enabled_nr.mult3.un8_rnd_out_un0 .USE_SIMD="ONE48";
// @12:35
  DSP48E1 \pre_out[23:0]  (
	.ACOUT(ACOUT_15[29:0]),
	.BCOUT(BCOUT_15[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_15),
	.CARRYOUT(CARRYOUT_15[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_15),
	.OVERFLOW(OVERFLOW_15),
	.P({P_uc_15[47:24], pre_out_23, pre_out[22:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_15),
	.PATTERNDETECT(PATTERNDETECT_15),
	.PCOUT(PCOUT_15[47:0]),
	.UNDERFLOW(UNDERFLOW_15),
	.A({mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11], mult1_out[11:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({mult2_out[11], mult2_out[11], mult2_out[11], mult2_out[11], mult2_out[11], mult2_out[11], mult2_out[11:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(GND),
	.CEB2(GND),
	.CEC(GND),
	.CECARRYIN(GND),
	.CECTRL(GND),
	.CED(GND),
	.CEINMODE(GND),
	.CEM(GND),
	.CEP(GND),
	.CLK(GND),
	.D({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.INMODE({GND, GND, GND, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, GND, GND, VCC, GND, VCC}),
	.PCIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND}),
	.RSTA(GND),
	.RSTALLCARRYIN(GND),
	.RSTALUMODE(GND),
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \pre_out[23:0] .ACASCREG=0;
defparam \pre_out[23:0] .ADREG=0;
defparam \pre_out[23:0] .ALUMODEREG=0;
defparam \pre_out[23:0] .AREG=0;
defparam \pre_out[23:0] .AUTORESET_PATDET="NO_RESET";
defparam \pre_out[23:0] .A_INPUT="DIRECT";
defparam \pre_out[23:0] .BCASCREG=0;
defparam \pre_out[23:0] .BREG=0;
defparam \pre_out[23:0] .B_INPUT="DIRECT";
defparam \pre_out[23:0] .CARRYINREG=0;
defparam \pre_out[23:0] .CARRYINSELREG=0;
defparam \pre_out[23:0] .CREG=1;
defparam \pre_out[23:0] .DREG=0;
defparam \pre_out[23:0] .INMODEREG=0;
defparam \pre_out[23:0] .MASK=48'b111111111111111111111111100001111111111111111111;
defparam \pre_out[23:0] .MREG=0;
defparam \pre_out[23:0] .OPMODEREG=0;
defparam \pre_out[23:0] .PATTERN=48'b111111111111111111111111111111111111111111111111;
defparam \pre_out[23:0] .PREG=0;
defparam \pre_out[23:0] .SEL_MASK="MASK";
defparam \pre_out[23:0] .USE_DPORT="FALSE";
defparam \pre_out[23:0] .USE_MULT="MULTIPLY";
defparam \pre_out[23:0] .USE_PATTERN_DETECT="PATDET";
defparam \pre_out[23:0] .USE_SIMD="ONE48";
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* \multiplier_enabled_nr.mult3  */

module inv_sqrt (
  out_inner_prod_r,
  out_inv_sqrt_9,
  out_inv_sqrt_10,
  out_inv_sqrt_8,
  out_inv_sqrt_7,
  out_inv_sqrt_2,
  out_inv_sqrt_1,
  out_inv_sqrt_11,
  out_inv_sqrt_0,
  done_inv_sqrt,
  clk,
  rst,
  start_inv_sqrt,
  N_434_i,
  N_431_i,
  N_428_i,
  N_425_i
)
;
input [11:0] out_inner_prod_r ;
output out_inv_sqrt_9 ;
output out_inv_sqrt_10 ;
output out_inv_sqrt_8 ;
output out_inv_sqrt_7 ;
output out_inv_sqrt_2 ;
output out_inv_sqrt_1 ;
output out_inv_sqrt_11 ;
output out_inv_sqrt_0 ;
output done_inv_sqrt ;
input clk ;
input rst ;
input start_inv_sqrt ;
output N_434_i ;
output N_431_i ;
output N_428_i ;
output N_425_i ;
wire out_inv_sqrt_9 ;
wire out_inv_sqrt_10 ;
wire out_inv_sqrt_8 ;
wire out_inv_sqrt_7 ;
wire out_inv_sqrt_2 ;
wire out_inv_sqrt_1 ;
wire out_inv_sqrt_11 ;
wire out_inv_sqrt_0 ;
wire done_inv_sqrt ;
wire clk ;
wire rst ;
wire start_inv_sqrt ;
wire N_434_i ;
wire N_431_i ;
wire N_428_i ;
wire N_425_i ;
wire [2:2] ret_val_m10;
wire [3:1] ret_val;
wire [11:11] un1_poly_odd_s_lut6_2_O6;
wire [11:0] input_reg;
wire [3:0] counter;
wire [0:0] state;
wire [3:1] counter_4;
wire [11:0] un14_pos_outputf;
wire [11:0] pre_outputf;
wire [1:1] out_shift_amount;
wire [6:5] un7_output_2_1;
wire [6:5] un11_output;
wire [11:0] pre_output;
wire [7:1] un26_output;
wire [7:4] un1_input_shifted;
wire [0:0] state_i;
wire [11:1] un14_pos_output;
wire [9:9] un11_output_6_d_0;
wire [11:0] z_5;
wire [3:3] ret_val_m2;
wire [1:1] ret_val_d_a1;
wire [1:1] ret_val_d_a0;
wire [10:7] un1_poly_odd;
wire [10:9] un7;
wire [6:2] input_shifted;
wire [0:0] ret_val_d_0;
wire [1:1] shift_amount_1;
wire [2:2] shift_amount_1_i;
wire [11:11] z_5_i;
wire [19:9] un8_rnd_out_un0_P;
wire [23:23] pre_out;
wire [14:14] un20_output_2;
wire [11:11] un1_poly_odd_d;
wire [6:6] un26_output_0_iv_3;
wire [6:6] un26_output_0_iv_2_0;
wire [4:4] output_d;
wire [6:6] un7_output_2_0_0;
wire [6:6] un1_poly_odd_i;
wire [11:0] mult1_out;
wire [11:0] mult2_out;
wire N_454 ;
wire un3_shift_right_c2_0_0_a0_1 ;
wire un9_0_axb_8 ;
wire VCC ;
wire m9_a1_1 ;
wire GND ;
wire N_439 ;
wire done ;
wire output_reg_pipe_11 ;
wire N_419 ;
wire un3_shift_right ;
wire z_5_axb_5 ;
wire N_71 ;
wire N_50_i ;
wire output_reg_pipe_12_RNIPJ901_O6 ;
wire N_420 ;
wire output_reg_pipe_17 ;
wire z_axb_0_i ;
wire un9_0_s_2 ;
wire m9_0_0 ;
wire CO1 ;
wire N_62 ;
wire z_5_8_d ;
wire N_414 ;
wire N_417 ;
wire N_33 ;
wire N_31 ;
wire z_5_axb_10 ;
wire un1_apply_nrlt8_1 ;
wire SUM1_0_i_a2_a0_1 ;
wire SUM1_0_i_1_1 ;
wire ret_val_ss0 ;
wire N_458 ;
wire N_378 ;
wire N_13_0 ;
wire N_410 ;
wire N_413 ;
wire N_18_0 ;
wire z_5_axb_7 ;
wire N_80 ;
wire N_51 ;
wire z_5_axb_3 ;
wire N_65 ;
wire un9_0_o5_2 ;
wire N_72 ;
wire un9_0_axb_1 ;
wire un9_0_o5_1 ;
wire un9_0_cry_0_RNO ;
wire N_100_i ;
wire N_79 ;
wire N_50 ;
wire z_5_axb_2 ;
wire un9_0_axb_3 ;
wire un9_0_axb_2 ;
wire ret_val_sm0 ;
wire un4_overflow_2 ;
wire get_m8_0_o4_2 ;
wire N_441 ;
wire un3_shift_right_axb0_i ;
wire un9_0_cry_0_cy ;
wire ret_val_ss3 ;
wire un4_overflow_0 ;
wire PATTERNDETECT_15 ;
wire un2_output_3 ;
wire z_axb_10 ;
wire un1_apply_nrlt7 ;
wire z_axb_9 ;
wire z_axb_8 ;
wire z_axb_7 ;
wire z_axb_6 ;
wire z_axb_5 ;
wire z_axb_4 ;
wire z_axb_3 ;
wire z_axb_2 ;
wire z_axb_1 ;
wire z_axb_0 ;
wire N_45 ;
wire N_70 ;
wire N_73 ;
wire un20_output_0_0_a2_0_0_lut6_2_O5 ;
wire z_5_axb_8 ;
wire un9_0_axb_0 ;
wire N_56 ;
wire N_49 ;
wire z_5_axb_1 ;
wire N_33_0 ;
wire z_5_axb_4 ;
wire z_5_axb_6 ;
wire z_5_axb_9 ;
wire z_5_cry_10 ;
wire z_5_cry_9 ;
wire z_5_cry_8 ;
wire z_5_cry_7 ;
wire z_5_cry_6 ;
wire z_5_cry_5 ;
wire z_5_cry_4 ;
wire z_5_cry_3 ;
wire z_5_cry_2 ;
wire z_5_cry_1 ;
wire z_5_cry_0 ;
wire z_cry_10 ;
wire z_cry_9 ;
wire z_cry_8 ;
wire z_cry_7 ;
wire z_cry_6 ;
wire z_cry_5 ;
wire z_cry_4 ;
wire z_cry_3 ;
wire z_cry_2 ;
wire z_cry_1 ;
wire z_cry_0 ;
wire un9_0_cry_7 ;
wire un9_0_s_8 ;
wire un9_0_cry_6 ;
wire un9_0_s_7 ;
wire N_2502_i ;
wire un9_0_cry_5 ;
wire un9_0_s_6 ;
wire un9_0_cry_4 ;
wire un9_0_s_5 ;
wire un9_0_axb_4 ;
wire un9_0_cry_3 ;
wire un9_0_s_4 ;
wire un9_0_cry_2 ;
wire un9_0_s_3 ;
wire un9_0_cry_1 ;
wire un9_0_cry_0 ;
wire un9_0_s_1 ;
wire un9_0_s_0 ;
  LUT4 \enabled_nr.un14_pos_output.z_5_axb_5  (
	.I0(un3_shift_right),
	.I1(un7_output_2_1[5]),
	.I2(un11_output[5]),
	.I3(pre_output[6]),
	.O(z_5_axb_5)
);
defparam \enabled_nr.un14_pos_output.z_5_axb_5 .INIT=16'h27D8;
// @23:226
  LUT4 \un1_input_shifted_cZ[7]  (
	.I0(N_71),
	.I1(un26_output[4]),
	.I2(un3_shift_right),
	.I3(un9_0_axb_8),
	.O(un1_input_shifted[7])
);
defparam \un1_input_shifted_cZ[7] .INIT=16'hFFAC;
// @23:140
  FDC done_Z (
	.Q(done_inv_sqrt),
	.D(done),
	.C(clk),
	.CLR(rst)
);
// @23:140
  FDC \counter_Z[0]  (
	.Q(counter[0]),
	.D(state_i[0]),
	.C(clk),
	.CLR(rst)
);
// @23:140
  FDC \counter_Z[1]  (
	.Q(counter[1]),
	.D(counter_4[1]),
	.C(clk),
	.CLR(rst)
);
// @23:140
  FDC \counter_Z[2]  (
	.Q(counter[2]),
	.D(counter_4[2]),
	.C(clk),
	.CLR(rst)
);
// @23:140
  FDC \counter_Z[3]  (
	.Q(counter[3]),
	.D(counter_4[3]),
	.C(clk),
	.CLR(rst)
);
// @23:140
  FDC \state_Z[0]  (
	.Q(state[0]),
	.D(N_50_i),
	.C(clk),
	.CLR(rst)
);
// @23:174
  FDE \input_reg_Z[11]  (
	.Q(input_reg[11]),
	.D(out_inner_prod_r[11]),
	.C(clk),
	.CE(start_inv_sqrt)
);
// @23:174
  FDE \input_reg_Z[10]  (
	.Q(input_reg[10]),
	.D(out_inner_prod_r[10]),
	.C(clk),
	.CE(start_inv_sqrt)
);
// @23:174
  FDE \input_reg_Z[9]  (
	.Q(input_reg[9]),
	.D(out_inner_prod_r[9]),
	.C(clk),
	.CE(start_inv_sqrt)
);
// @23:174
  FDE \input_reg_Z[8]  (
	.Q(input_reg[8]),
	.D(out_inner_prod_r[8]),
	.C(clk),
	.CE(start_inv_sqrt)
);
// @23:174
  FDE \input_reg_Z[7]  (
	.Q(input_reg[7]),
	.D(out_inner_prod_r[7]),
	.C(clk),
	.CE(start_inv_sqrt)
);
// @23:174
  FDE \input_reg_Z[6]  (
	.Q(input_reg[6]),
	.D(out_inner_prod_r[6]),
	.C(clk),
	.CE(start_inv_sqrt)
);
// @23:174
  FDE \input_reg_Z[5]  (
	.Q(input_reg[5]),
	.D(out_inner_prod_r[5]),
	.C(clk),
	.CE(start_inv_sqrt)
);
// @23:174
  FDE \input_reg_Z[4]  (
	.Q(input_reg[4]),
	.D(out_inner_prod_r[4]),
	.C(clk),
	.CE(start_inv_sqrt)
);
// @23:174
  FDE \input_reg_Z[3]  (
	.Q(input_reg[3]),
	.D(out_inner_prod_r[3]),
	.C(clk),
	.CE(start_inv_sqrt)
);
// @23:174
  FDE \input_reg_Z[2]  (
	.Q(input_reg[2]),
	.D(out_inner_prod_r[2]),
	.C(clk),
	.CE(start_inv_sqrt)
);
// @23:174
  FDE \input_reg_Z[1]  (
	.Q(input_reg[1]),
	.D(out_inner_prod_r[1]),
	.C(clk),
	.CE(start_inv_sqrt)
);
// @23:174
  FDE \input_reg_Z[0]  (
	.Q(input_reg[0]),
	.D(out_inner_prod_r[0]),
	.C(clk),
	.CE(start_inv_sqrt)
);
  FDRE output_reg_pipe_Z (
	.Q(pre_outputf[1]),
	.D(pre_output[1]),
	.C(clk),
	.R(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDSE output_reg_pipe_1_Z (
	.Q(un14_pos_outputf[1]),
	.D(un14_pos_output[1]),
	.C(clk),
	.S(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDRE output_reg_pipe_3_Z (
	.Q(pre_outputf[2]),
	.D(pre_output[2]),
	.C(clk),
	.R(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDSE output_reg_pipe_4_Z (
	.Q(un14_pos_outputf[2]),
	.D(un14_pos_output[2]),
	.C(clk),
	.S(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDRE output_reg_pipe_6_Z (
	.Q(pre_outputf[7]),
	.D(pre_output[7]),
	.C(clk),
	.R(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDSE output_reg_pipe_7_Z (
	.Q(un14_pos_outputf[7]),
	.D(un14_pos_output[7]),
	.C(clk),
	.S(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDRE output_reg_pipe_9_Z (
	.Q(pre_outputf[8]),
	.D(pre_output[8]),
	.C(clk),
	.R(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDSE output_reg_pipe_10_Z (
	.Q(un14_pos_outputf[8]),
	.D(un14_pos_output[8]),
	.C(clk),
	.S(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDSE output_reg_pipe_11_Z (
	.Q(output_reg_pipe_11),
	.D(N_420),
	.C(clk),
	.S(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDRE output_reg_pipe_12_Z (
	.Q(pre_outputf[10]),
	.D(pre_output[10]),
	.C(clk),
	.R(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDSE output_reg_pipe_13_Z (
	.Q(un14_pos_outputf[10]),
	.D(un14_pos_output[10]),
	.C(clk),
	.S(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDRE output_reg_pipe_15_Z (
	.Q(pre_outputf[11]),
	.D(pre_output[11]),
	.C(clk),
	.R(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDRE output_reg_pipe_16_Z (
	.Q(un14_pos_outputf[11]),
	.D(un14_pos_output[11]),
	.C(clk),
	.R(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDRE output_reg_pipe_17_Z (
	.Q(output_reg_pipe_17),
	.D(N_420),
	.C(clk),
	.R(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDRE output_reg_pipe_18_Z (
	.Q(pre_outputf[0]),
	.D(pre_output[0]),
	.C(clk),
	.R(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDSE output_reg_pipe_19_Z (
	.Q(un14_pos_outputf[0]),
	.D(z_axb_0_i),
	.C(clk),
	.S(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDRE output_reg_pipe_21_Z (
	.Q(pre_outputf[9]),
	.D(pre_output[9]),
	.C(clk),
	.R(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  FDSE output_reg_pipe_22_Z (
	.Q(un14_pos_outputf[9]),
	.D(un14_pos_output[9]),
	.C(clk),
	.S(output_reg_pipe_12_RNIPJ901_O6),
	.CE(done_inv_sqrt)
);
  LUT4 \enabled_nr.un14_pos_output.z_5_0_d  (
	.I0(ret_val[3]),
	.I1(m9_a1_1),
	.I2(un9_0_s_2),
	.I3(m9_0_0),
	.O(pre_output[0])
);
defparam \enabled_nr.un14_pos_output.z_5_0_d .INIT=16'h5540;
  LUT5 \enabled_nr.un14_pos_output.z_5_8_d  (
	.I0(ret_val[2]),
	.I1(ret_val[3]),
	.I2(CO1),
	.I3(un11_output_6_d_0[9]),
	.I4(N_62),
	.O(z_5_8_d)
);
defparam \enabled_nr.un14_pos_output.z_5_8_d .INIT=32'hFE24DA00;
  LUT5 \enabled_nr.un14_pos_output.z_5_axb_10  (
	.I0(ret_val[3]),
	.I1(N_414),
	.I2(N_417),
	.I3(N_33),
	.I4(N_31),
	.O(z_5_axb_10)
);
defparam \enabled_nr.un14_pos_output.z_5_axb_10 .INIT=32'h0F0FF2F8;
  LUT5 \enabled_nr.un14_pos_output.z_5_axb_0  (
	.I0(ret_val[3]),
	.I1(m9_a1_1),
	.I2(un9_0_s_2),
	.I3(m9_0_0),
	.I4(pre_output[1]),
	.O(z_5[0])
);
defparam \enabled_nr.un14_pos_output.z_5_axb_0 .INIT=32'hAABF5540;
// @23:264
  LUT4 \enabled_nr.un1_apply_nrlto7_1  (
	.I0(un3_shift_right),
	.I1(un7_output_2_1[6]),
	.I2(un11_output[6]),
	.I3(pre_output[7]),
	.O(un1_apply_nrlt8_1)
);
defparam \enabled_nr.un1_apply_nrlto7_1 .INIT=16'hD800;
// @23:99
  LUT6 \get_leading_zeros.ret_val[3]  (
	.I0(input_reg[3]),
	.I1(input_reg[4]),
	.I2(input_reg[5]),
	.I3(input_reg[6]),
	.I4(ret_val_m2[3]),
	.I5(N_454),
	.O(ret_val[3])
);
defparam \get_leading_zeros.ret_val[3] .INIT=64'h0003000200000000;
// @23:201
  LUT6 \input_reg_RNIS93U1[4]  (
	.I0(input_reg[4]),
	.I1(input_reg[5]),
	.I2(input_reg[10]),
	.I3(input_reg[11]),
	.I4(ret_val_m2[3]),
	.I5(SUM1_0_i_a2_a0_1),
	.O(SUM1_0_i_1_1)
);
defparam \input_reg_RNIS93U1[4] .INIT=64'hFFF0FFF1FFF0FFF0;
// @23:236
  LUT6 \get_leading_zeros.ret_val_d_a0_RNID7JG2[1]  (
	.I0(ret_val_ss0),
	.I1(ret_val_d_a1[1]),
	.I2(N_458),
	.I3(ret_val_d_a0[1]),
	.I4(N_454),
	.I5(un9_0_axb_8),
	.O(N_378)
);
defparam \get_leading_zeros.ret_val_d_a0_RNID7JG2[1] .INIT=64'h5F5CFFCCA0A30033;
// @23:201
  LUT6 \get_leading_zeros.ret_val_d_a0_RNID7JG2_0[1]  (
	.I0(ret_val_ss0),
	.I1(ret_val_d_a1[1]),
	.I2(N_458),
	.I3(ret_val_d_a0[1]),
	.I4(N_454),
	.I5(un9_0_axb_8),
	.O(CO1)
);
defparam \get_leading_zeros.ret_val_d_a0_RNID7JG2_0[1] .INIT=64'h5F5CFFCC00000000;
  LUT6 \enabled_nr.un14_pos_output.z_5_axb_7  (
	.I0(ret_val[3]),
	.I1(CO1),
	.I2(N_13_0),
	.I3(N_410),
	.I4(N_413),
	.I5(N_18_0),
	.O(z_5_axb_7)
);
defparam \enabled_nr.un14_pos_output.z_5_axb_7 .INIT=64'h08807FF77FF70880;
  LUT6 \enabled_nr.un14_pos_output.z_5_axb_3  (
	.I0(ret_val[3]),
	.I1(CO1),
	.I2(un3_shift_right),
	.I3(N_80),
	.I4(N_51),
	.I5(pre_output[4]),
	.O(z_5_axb_3)
);
defparam \enabled_nr.un14_pos_output.z_5_axb_3 .INIT=64'h080FF8FFF7F00700;
// @23:226
  LUT6 un9_0_o5_2_cZ (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(N_65),
	.I3(un26_output[7]),
	.I4(un1_input_shifted[5]),
	.I5(un1_poly_odd[9]),
	.O(un9_0_o5_2)
);
defparam un9_0_o5_2_cZ.INIT=64'hFFFF5D7F5D7F0000;
// @23:226
  LUT6 un9_0_axb_1_cZ (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(N_72),
	.I3(un26_output[5]),
	.I4(un7[10]),
	.I5(un1_poly_odd[10]),
	.O(un9_0_axb_1)
);
defparam un9_0_axb_1_cZ.INIT=64'h5140AEBFAEBF5140;
// @23:226
  LUT6 un9_0_o5_1_cZ (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(N_72),
	.I3(un26_output[5]),
	.I4(un7[10]),
	.I5(un1_poly_odd[10]),
	.O(un9_0_o5_1)
);
defparam un9_0_o5_1_cZ.INIT=64'hFFFF514051400000;
  LUT4 un9_0_cry_0_RNO_cZ (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(N_72),
	.I3(un26_output[5]),
	.O(un9_0_cry_0_RNO)
);
defparam un9_0_cry_0_RNO_cZ.INIT=16'h082A;
  LUT5 un9_0_cry_4_RNO (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(N_72),
	.I3(un26_output[5]),
	.I4(input_shifted[6]),
	.O(un1_poly_odd[7])
);
defparam un9_0_cry_4_RNO.INIT=32'h0415AEBF;
  LUT6 \enabled_nr.un14_pos_output.z_5_axb_2  (
	.I0(N_100_i),
	.I1(un3_shift_right),
	.I2(N_79),
	.I3(N_50),
	.I4(N_80),
	.I5(N_51),
	.O(z_5_axb_2)
);
defparam \enabled_nr.un14_pos_output.z_5_axb_2 .INIT=64'h02CE20ECCE02EC20;
// @23:226
  LUT6 un9_0_axb_3_cZ (
	.I0(un9_0_axb_8),
	.I1(un1_input_shifted[4]),
	.I2(un7[9]),
	.I3(un1_poly_odd[8]),
	.I4(un1_input_shifted[5]),
	.I5(un1_poly_odd[9]),
	.O(un9_0_axb_3)
);
defparam un9_0_axb_3_cZ.INIT=64'h6699699669969966;
// @23:226
  LUT6 un9_0_axb_2_cZ (
	.I0(un1_input_shifted[6]),
	.I1(un7[9]),
	.I2(un1_input_shifted[5]),
	.I3(un7[10]),
	.I4(un1_poly_odd[10]),
	.I5(un1_poly_odd[9]),
	.O(un9_0_axb_2)
);
defparam un9_0_axb_2_cZ.INIT=64'h3C6969C3C396963C;
// @23:99
  LUT6 \get_leading_zeros.ret_val_m2s2_RNILJ2K1_0  (
	.I0(ret_val_sm0),
	.I1(un4_overflow_2),
	.I2(get_m8_0_o4_2),
	.I3(ret_val_ss0),
	.I4(N_441),
	.I5(ret_val_d_0[0]),
	.O(un3_shift_right_axb0_i)
);
defparam \get_leading_zeros.ret_val_m2s2_RNILJ2K1_0 .INIT=64'h00000408FFFFF7FB;
// @23:226
  MUXCY_L un9_0_cry_0_cy_cZ (
	.DI(GND),
	.CI(VCC),
	.S(un1_input_shifted[7]),
	.LO(un9_0_cry_0_cy)
);
// @23:99
  LUT5 \get_leading_zeros.ret_val[1]  (
	.I0(ret_val_ss0),
	.I1(ret_val_d_a1[1]),
	.I2(N_458),
	.I3(ret_val_d_a0[1]),
	.I4(N_454),
	.O(ret_val[1])
);
defparam \get_leading_zeros.ret_val[1] .INIT=32'h5F5CFFCC;
// @23:201
  LUT4 \get_leading_zeros.ret_vals2_i_a2_RNI12FC4  (
	.I0(N_454),
	.I1(SUM1_0_i_1_1),
	.I2(ret_val[1]),
	.I3(un9_0_axb_8),
	.O(shift_amount_1[1])
);
defparam \get_leading_zeros.ret_vals2_i_a2_RNI12FC4 .INIT=16'hCFEC;
// @23:201
  LUT5 \op_lt.op_lt.un3_shift_right_c2_0_0_a0_1_RNIHAV73  (
	.I0(N_454),
	.I1(un3_shift_right_c2_0_0_a0_1),
	.I2(ret_val[2]),
	.I3(ret_val[1]),
	.I4(un9_0_axb_8),
	.O(shift_amount_1_i[2])
);
defparam \op_lt.op_lt.un3_shift_right_c2_0_0_a0_1_RNIHAV73 .INIT=32'h0F7D7D7D;
// @23:226
  LUT4 \un1_input_shifted_cZ[4]  (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(N_65),
	.I3(un26_output[7]),
	.O(un1_input_shifted[4])
);
defparam \un1_input_shifted_cZ[4] .INIT=16'hFBEA;
// @23:226
  LUT4 \un7_cZ[9]  (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(N_65),
	.I3(un26_output[7]),
	.O(un7[9])
);
defparam \un7_cZ[9] .INIT=16'h5D7F;
// @26:414
  LUT1_L \enabled_nr.un14_pos_output.z_s_11_RNO  (
	.I0(z_5[11]),
	.LO(z_5_i[11])
);
defparam \enabled_nr.un14_pos_output.z_s_11_RNO .INIT=2'h1;
// @23:99
  LUT2 \get_leading_zeros.ret_val_m2s2  (
	.I0(input_reg[1]),
	.I1(input_reg[2]),
	.O(ret_val_sm0)
);
defparam \get_leading_zeros.ret_val_m2s2 .INIT=4'hE;
// @6:277
  LUT2 \op_lt.op_lt.un4_overflowlto11_2  (
	.I0(input_reg[4]),
	.I1(input_reg[5]),
	.O(un4_overflow_2)
);
defparam \op_lt.op_lt.un4_overflowlto11_2 .INIT=4'h1;
// @23:140
  LUT1_L \counter_RNO[0]  (
	.I0(state[0]),
	.LO(state_i[0])
);
defparam \counter_RNO[0] .INIT=2'h1;
// @23:287
  LUT3 \pos_output_0[11]  (
	.I0(un14_pos_outputf[11]),
	.I1(output_reg_pipe_17),
	.I2(pre_outputf[11]),
	.O(out_inv_sqrt_11)
);
defparam \pos_output_0[11] .INIT=8'hB8;
// @23:287
  LUT3 \pos_output_0[0]  (
	.I0(un14_pos_outputf[0]),
	.I1(pre_outputf[0]),
	.I2(output_reg_pipe_11),
	.O(out_inv_sqrt_0)
);
defparam \pos_output_0[0] .INIT=8'hAC;
// @23:99
  LUT4 \input_reg_RNI6Q9J[3]  (
	.I0(input_reg[3]),
	.I1(input_reg[7]),
	.I2(input_reg[11]),
	.I3(input_reg[6]),
	.O(get_m8_0_o4_2)
);
defparam \input_reg_RNI6Q9J[3] .INIT=16'hFFFE;
// @23:99
  LUT4 \get_leading_zeros.ret_val_m10_0_a2_0[2]  (
	.I0(input_reg[3]),
	.I1(input_reg[4]),
	.I2(input_reg[5]),
	.I3(input_reg[6]),
	.O(N_458)
);
defparam \get_leading_zeros.ret_val_m10_0_a2_0[2] .INIT=16'h0001;
  LUT3 \input_reg_RNIUHJH[0]  (
	.I0(input_reg[0]),
	.I1(input_reg[1]),
	.I2(input_reg[2]),
	.O(ret_val_m2[3])
);
defparam \input_reg_RNIUHJH[0] .INIT=8'hFE;
// @23:99
  LUT4 \get_leading_zeros.ret_val_d_a1[1]  (
	.I0(input_reg[9]),
	.I1(input_reg[8]),
	.I2(input_reg[10]),
	.I3(input_reg[11]),
	.O(ret_val_d_a1[1])
);
defparam \get_leading_zeros.ret_val_d_a1[1] .INIT=16'h000E;
// @23:99
  LUT3 \get_leading_zeros.ret_val_m10_0_o2_0[2]  (
	.I0(input_reg[9]),
	.I1(input_reg[8]),
	.I2(input_reg[10]),
	.O(N_441)
);
defparam \get_leading_zeros.ret_val_m10_0_o2_0[2] .INIT=8'hFE;
// @23:99
  LUT3_L \get_leading_zeros.ret_val_ss3_0  (
	.I0(input_reg[4]),
	.I1(input_reg[5]),
	.I2(input_reg[6]),
	.LO(ret_val_ss3)
);
defparam \get_leading_zeros.ret_val_ss3_0 .INIT=8'hF2;
// @23:99
  LUT3 \get_leading_zeros.ret_val_ss0  (
	.I0(input_reg[0]),
	.I1(input_reg[1]),
	.I2(input_reg[2]),
	.O(ret_val_ss0)
);
defparam \get_leading_zeros.ret_val_ss0 .INIT=8'hF1;
// @23:140
  LUT3_L \state_RNO[0]  (
	.I0(counter[3]),
	.I1(state[0]),
	.I2(start_inv_sqrt),
	.LO(N_50_i)
);
defparam \state_RNO[0] .INIT=8'h74;
// @23:201
  LUT5_L \input_reg_RNIE5CT[9]  (
	.I0(input_reg[9]),
	.I1(input_reg[8]),
	.I2(input_reg[3]),
	.I3(input_reg[7]),
	.I4(input_reg[6]),
	.LO(SUM1_0_i_a2_a0_1)
);
defparam \input_reg_RNIE5CT[9] .INIT=32'h00000001;
// @23:99
  LUT5 \get_leading_zeros.ret_vals2_i_a2  (
	.I0(input_reg[9]),
	.I1(input_reg[8]),
	.I2(input_reg[7]),
	.I3(input_reg[10]),
	.I4(input_reg[11]),
	.O(N_454)
);
defparam \get_leading_zeros.ret_vals2_i_a2 .INIT=32'h00000001;
// @23:99
  LUT6 \get_leading_zeros.ret_val_d_a0[1]  (
	.I0(input_reg[4]),
	.I1(input_reg[5]),
	.I2(input_reg[7]),
	.I3(input_reg[10]),
	.I4(input_reg[11]),
	.I5(input_reg[6]),
	.O(ret_val_d_a0[1])
);
defparam \get_leading_zeros.ret_val_d_a0[1] .INIT=64'h000000000000000E;
// @6:277
  LUT6 \op_lt.op_lt.un4_overflowlto11_0  (
	.I0(input_reg[2]),
	.I1(input_reg[3]),
	.I2(input_reg[7]),
	.I3(input_reg[6]),
	.I4(N_439),
	.I5(un4_overflow_2),
	.O(un4_overflow_0)
);
defparam \op_lt.op_lt.un4_overflowlto11_0 .INIT=64'h0000000100000000;
// @23:99
  LUT6 \get_leading_zeros.ret_val_d_0[0]  (
	.I0(input_reg[9]),
	.I1(input_reg[8]),
	.I2(input_reg[7]),
	.I3(input_reg[10]),
	.I4(input_reg[11]),
	.I5(ret_val_ss3),
	.O(ret_val_d_0[0])
);
defparam \get_leading_zeros.ret_val_d_0[0] .INIT=64'h0000FF450000FF44;
// @23:99
  LUT6 \get_leading_zeros.ret_val[2]  (
	.I0(input_reg[4]),
	.I1(input_reg[5]),
	.I2(input_reg[7]),
	.I3(input_reg[11]),
	.I4(input_reg[6]),
	.I5(N_441),
	.O(ret_val[2])
);
defparam \get_leading_zeros.ret_val[2] .INIT=64'h0000000000FF00FE;
// @6:277
  LUT6 \op_lt.op_lt.un3_shift_right_c2_0_0_a0_1  (
	.I0(input_reg[3]),
	.I1(input_reg[7]),
	.I2(input_reg[6]),
	.I3(un4_overflow_2),
	.I4(ret_val_m2[3]),
	.I5(N_441),
	.O(un3_shift_right_c2_0_0_a0_1)
);
defparam \op_lt.op_lt.un3_shift_right_c2_0_0_a0_1 .INIT=64'h00000F0000000D00;
// @26:414
  LUT5_L \enabled_nr.un14_pos_output.z_5_s_10_RNIMG3R  (
	.I0(z_5[10]),
	.I1(un8_rnd_out_un0_P[19]),
	.I2(pre_out[23]),
	.I3(PATTERNDETECT_15),
	.I4(un2_output_3),
	.LO(z_axb_10)
);
defparam \enabled_nr.un14_pos_output.z_5_s_10_RNIMG3R .INIT=32'h99A995A5;
// @23:264
  LUT6 \enabled_nr.un1_apply_nrlto5  (
	.I0(pre_output[0]),
	.I1(pre_output[1]),
	.I2(pre_output[2]),
	.I3(pre_output[4]),
	.I4(pre_output[3]),
	.I5(pre_output[5]),
	.O(un1_apply_nrlt7)
);
defparam \enabled_nr.un1_apply_nrlto5 .INIT=64'hFFFFFFFFFF00E000;
// @23:99
  LUT6 \get_leading_zeros.ret_val_m2s2_RNILJ2K1  (
	.I0(ret_val_sm0),
	.I1(un4_overflow_2),
	.I2(get_m8_0_o4_2),
	.I3(ret_val_ss0),
	.I4(N_441),
	.I5(ret_val_d_0[0]),
	.O(un9_0_axb_8)
);
defparam \get_leading_zeros.ret_val_m2s2_RNILJ2K1 .INIT=64'hFFFFFBF700000804;
// @26:414
  LUT5_L \enabled_nr.un14_pos_output.z_5_s_9_RNIESNT  (
	.I0(z_5[9]),
	.I1(un8_rnd_out_un0_P[18]),
	.I2(pre_out[23]),
	.I3(PATTERNDETECT_15),
	.I4(un2_output_3),
	.LO(z_axb_9)
);
defparam \enabled_nr.un14_pos_output.z_5_s_9_RNIESNT .INIT=32'h99599A5A;
// @26:414
  LUT5_L \enabled_nr.un14_pos_output.z_5_s_8_RNIDSNT  (
	.I0(z_5[8]),
	.I1(un8_rnd_out_un0_P[17]),
	.I2(pre_out[23]),
	.I3(PATTERNDETECT_15),
	.I4(un2_output_3),
	.LO(z_axb_8)
);
defparam \enabled_nr.un14_pos_output.z_5_s_8_RNIDSNT .INIT=32'h99599A5A;
// @26:414
  LUT5_L \enabled_nr.un14_pos_output.z_5_s_7_RNICSNT  (
	.I0(z_5[7]),
	.I1(un8_rnd_out_un0_P[16]),
	.I2(pre_out[23]),
	.I3(PATTERNDETECT_15),
	.I4(un2_output_3),
	.LO(z_axb_7)
);
defparam \enabled_nr.un14_pos_output.z_5_s_7_RNICSNT .INIT=32'h99599A5A;
// @26:414
  LUT5_L \enabled_nr.un14_pos_output.z_5_s_6_RNIBSNT  (
	.I0(z_5[6]),
	.I1(un8_rnd_out_un0_P[15]),
	.I2(pre_out[23]),
	.I3(PATTERNDETECT_15),
	.I4(un2_output_3),
	.LO(z_axb_6)
);
defparam \enabled_nr.un14_pos_output.z_5_s_6_RNIBSNT .INIT=32'h99599A5A;
// @26:414
  LUT5_L \enabled_nr.un14_pos_output.z_5_s_5_RNIASNT  (
	.I0(z_5[5]),
	.I1(un8_rnd_out_un0_P[14]),
	.I2(pre_out[23]),
	.I3(PATTERNDETECT_15),
	.I4(un2_output_3),
	.LO(z_axb_5)
);
defparam \enabled_nr.un14_pos_output.z_5_s_5_RNIASNT .INIT=32'h99599A5A;
// @26:414
  LUT5_L \enabled_nr.un14_pos_output.z_5_s_4_RNI9SNT  (
	.I0(z_5[4]),
	.I1(un8_rnd_out_un0_P[13]),
	.I2(pre_out[23]),
	.I3(PATTERNDETECT_15),
	.I4(un2_output_3),
	.LO(z_axb_4)
);
defparam \enabled_nr.un14_pos_output.z_5_s_4_RNI9SNT .INIT=32'h99599A5A;
// @26:414
  LUT5_L \enabled_nr.un14_pos_output.z_5_s_3_RNI8SNT  (
	.I0(z_5[3]),
	.I1(un8_rnd_out_un0_P[12]),
	.I2(pre_out[23]),
	.I3(PATTERNDETECT_15),
	.I4(un2_output_3),
	.LO(z_axb_3)
);
defparam \enabled_nr.un14_pos_output.z_5_s_3_RNI8SNT .INIT=32'h99599A5A;
// @26:414
  LUT5_L \enabled_nr.un14_pos_output.z_5_s_2_RNI7SNT  (
	.I0(z_5[2]),
	.I1(un8_rnd_out_un0_P[11]),
	.I2(pre_out[23]),
	.I3(PATTERNDETECT_15),
	.I4(un2_output_3),
	.LO(z_axb_2)
);
defparam \enabled_nr.un14_pos_output.z_5_s_2_RNI7SNT .INIT=32'h99599A5A;
// @26:414
  LUT5_L \enabled_nr.un14_pos_output.z_5_s_1_RNI6SNT  (
	.I0(z_5[1]),
	.I1(un8_rnd_out_un0_P[10]),
	.I2(pre_out[23]),
	.I3(PATTERNDETECT_15),
	.I4(un2_output_3),
	.LO(z_axb_1)
);
defparam \enabled_nr.un14_pos_output.z_5_s_1_RNI6SNT .INIT=32'h99599A5A;
// @26:414
  LUT5 \enabled_nr.un14_pos_output.z_cry_0_RNO  (
	.I0(z_5[0]),
	.I1(un8_rnd_out_un0_P[9]),
	.I2(pre_out[23]),
	.I3(PATTERNDETECT_15),
	.I4(un2_output_3),
	.O(z_axb_0)
);
defparam \enabled_nr.un14_pos_output.z_cry_0_RNO .INIT=32'h99599A5A;
  LUT5_L \enabled_nr.un14_pos_output.z_axb_0_i  (
	.I0(z_5[0]),
	.I1(un8_rnd_out_un0_P[9]),
	.I2(pre_out[23]),
	.I3(PATTERNDETECT_15),
	.I4(un2_output_3),
	.LO(z_axb_0_i)
);
defparam \enabled_nr.un14_pos_output.z_axb_0_i .INIT=32'h66A665A5;
// @6:277
  LUT5 \op_lt.op_lt.un3_shift_right_c2_0_0  (
	.I0(ret_val_m10[2]),
	.I1(N_454),
	.I2(un3_shift_right_c2_0_0_a0_1),
	.I3(ret_val[1]),
	.I4(un9_0_axb_8),
	.O(un3_shift_right)
);
defparam \op_lt.op_lt.un3_shift_right_c2_0_0 .INIT=32'h00D1D1D1;
// @23:226
  LUT6 \un1_poly_odd_d_cZ[11]  (
	.I0(input_reg[2]),
	.I1(un9_0_axb_8),
	.I2(un20_output_2[14]),
	.I3(N_45),
	.I4(shift_amount_1[1]),
	.I5(input_shifted[2]),
	.O(un1_poly_odd_d[11])
);
defparam \un1_poly_odd_d_cZ[11] .INIT=64'h03331313CFFFDFDF;
// @23:226
  LUT5 \un1_poly_odd_cZ[10]  (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(input_shifted[2]),
	.I3(N_70),
	.I4(un26_output[3]),
	.O(un1_poly_odd[10])
);
defparam \un1_poly_odd_cZ[10] .INIT=32'h058D27AF;
// @23:226
  LUT4 \un1_input_shifted_cZ[6]  (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(N_72),
	.I3(un26_output[5]),
	.O(un1_input_shifted[6])
);
defparam \un1_input_shifted_cZ[6] .INIT=16'h5140;
// @23:226
  LUT6 \un1_poly_odd_cZ[9]  (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(N_70),
	.I3(N_71),
	.I4(un26_output[4]),
	.I5(un26_output[3]),
	.O(un1_poly_odd[9])
);
defparam \un1_poly_odd_cZ[9] .INIT=64'h048C26AE159D37BF;
// @23:226
  LUT6 \un1_poly_odd_cZ[8]  (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(N_71),
	.I3(un26_output[4]),
	.I4(N_72),
	.I5(un26_output[5]),
	.O(un1_poly_odd[8])
);
defparam \un1_poly_odd_cZ[8] .INIT=64'h04158C9D2637AEBF;
// @23:226
  LUT5 \un1_input_shifted_cZ[5]  (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(N_73),
	.I3(un26_output_0_iv_3[6]),
	.I4(un26_output_0_iv_2_0[6]),
	.O(un1_input_shifted[5])
);
defparam \un1_input_shifted_cZ[5] .INIT=32'h51515140;
// @23:226
  LUT5 \un7_cZ[10]  (
	.I0(un9_0_axb_8),
	.I1(un3_shift_right),
	.I2(N_73),
	.I3(un26_output_0_iv_3[6]),
	.I4(un26_output_0_iv_2_0[6]),
	.O(un7[10])
);
defparam \un7_cZ[10] .INIT=32'h0808082A;
// @26:414
  LUT5 \enabled_nr.un14_pos_output.z_5_axb_8  (
	.I0(un20_output_0_0_a2_0_0_lut6_2_O5),
	.I1(un3_shift_right),
	.I2(un11_output_6_d_0[9]),
	.I3(N_62),
	.I4(pre_output[8]),
	.O(z_5_axb_8)
);
defparam \enabled_nr.un14_pos_output.z_5_axb_8 .INIT=32'hCDEF3210;
  LUT5 \un1_poly_odd_s_lut6_2_RNIMJIV1[11]  (
	.I0(un9_0_axb_8),
	.I1(un1_poly_odd_s_lut6_2_O6[11]),
	.I2(un26_output[1]),
	.I3(un1_poly_odd_d[11]),
	.I4(input_shifted[5]),
	.O(un9_0_axb_0)
);
defparam \un1_poly_odd_s_lut6_2_RNIMJIV1[11] .INIT=32'h3F0C95A6;
  LUT5 \enabled_nr.un14_pos_output.z_5_axb_1  (
	.I0(un20_output_2[14]),
	.I1(un3_shift_right),
	.I2(N_56),
	.I3(N_49),
	.I4(pre_output[2]),
	.O(z_5_axb_1)
);
defparam \enabled_nr.un14_pos_output.z_5_axb_1 .INIT=32'h13DFEC20;
  LUT5 \enabled_nr.un14_pos_output.z_5_axb_4  (
	.I0(N_419),
	.I1(un3_shift_right),
	.I2(N_33_0),
	.I3(output_d[4]),
	.I4(pre_output[5]),
	.O(z_5_axb_4)
);
defparam \enabled_nr.un14_pos_output.z_5_axb_4 .INIT=32'h087FF780;
  LUT5 \enabled_nr.un14_pos_output.z_5_axb_6  (
	.I0(un3_shift_right),
	.I1(un7_output_2_0_0[6]),
	.I2(un7_output_2_1[6]),
	.I3(un11_output[6]),
	.I4(pre_output[7]),
	.O(z_5_axb_6)
);
defparam \enabled_nr.un14_pos_output.z_5_axb_6 .INIT=32'h2A7FD580;
  LUT5 \enabled_nr.un14_pos_output.z_5_axb_9  (
	.I0(un20_output_0_0_a2_0_0_lut6_2_O5),
	.I1(un3_shift_right),
	.I2(un11_output_6_d_0[9]),
	.I3(N_62),
	.I4(pre_output[10]),
	.O(z_5_axb_9)
);
defparam \enabled_nr.un14_pos_output.z_5_axb_9 .INIT=32'hCDEF3210;
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_5_s_11  (
	.LI(pre_output[11]),
	.CI(z_5_cry_10),
	.O(z_5[11])
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_5_s_10  (
	.LI(z_5_axb_10),
	.CI(z_5_cry_9),
	.O(z_5[10])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_5_cry_10  (
	.DI(pre_output[10]),
	.CI(z_5_cry_9),
	.S(z_5_axb_10),
	.LO(z_5_cry_10)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_5_s_9  (
	.LI(z_5_axb_9),
	.CI(z_5_cry_8),
	.O(z_5[9])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_5_cry_9  (
	.DI(z_5_8_d),
	.CI(z_5_cry_8),
	.S(z_5_axb_9),
	.LO(z_5_cry_9)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_5_s_8  (
	.LI(z_5_axb_8),
	.CI(z_5_cry_7),
	.O(z_5[8])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_5_cry_8  (
	.DI(z_5_8_d),
	.CI(z_5_cry_7),
	.S(z_5_axb_8),
	.LO(z_5_cry_8)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_5_s_7  (
	.LI(z_5_axb_7),
	.CI(z_5_cry_6),
	.O(z_5[7])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_5_cry_7  (
	.DI(pre_output[7]),
	.CI(z_5_cry_6),
	.S(z_5_axb_7),
	.LO(z_5_cry_7)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_5_s_6  (
	.LI(z_5_axb_6),
	.CI(z_5_cry_5),
	.O(z_5[6])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_5_cry_6  (
	.DI(pre_output[6]),
	.CI(z_5_cry_5),
	.S(z_5_axb_6),
	.LO(z_5_cry_6)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_5_s_5  (
	.LI(z_5_axb_5),
	.CI(z_5_cry_4),
	.O(z_5[5])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_5_cry_5  (
	.DI(pre_output[5]),
	.CI(z_5_cry_4),
	.S(z_5_axb_5),
	.LO(z_5_cry_5)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_5_s_4  (
	.LI(z_5_axb_4),
	.CI(z_5_cry_3),
	.O(z_5[4])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_5_cry_4  (
	.DI(pre_output[4]),
	.CI(z_5_cry_3),
	.S(z_5_axb_4),
	.LO(z_5_cry_4)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_5_s_3  (
	.LI(z_5_axb_3),
	.CI(z_5_cry_2),
	.O(z_5[3])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_5_cry_3  (
	.DI(pre_output[3]),
	.CI(z_5_cry_2),
	.S(z_5_axb_3),
	.LO(z_5_cry_3)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_5_s_2  (
	.LI(z_5_axb_2),
	.CI(z_5_cry_1),
	.O(z_5[2])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_5_cry_2  (
	.DI(pre_output[2]),
	.CI(z_5_cry_1),
	.S(z_5_axb_2),
	.LO(z_5_cry_2)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_5_s_1  (
	.LI(z_5_axb_1),
	.CI(z_5_cry_0),
	.O(z_5[1])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_5_cry_1  (
	.DI(pre_output[1]),
	.CI(z_5_cry_0),
	.S(z_5_axb_1),
	.LO(z_5_cry_1)
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_5_cry_0  (
	.DI(pre_output[0]),
	.CI(GND),
	.S(z_5[0]),
	.LO(z_5_cry_0)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_s_11  (
	.LI(z_5_i[11]),
	.CI(z_cry_10),
	.O(un14_pos_output[11])
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_s_10  (
	.LI(z_axb_10),
	.CI(z_cry_9),
	.O(un14_pos_output[10])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_cry_10  (
	.DI(z_5[10]),
	.CI(z_cry_9),
	.S(z_axb_10),
	.LO(z_cry_10)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_s_9  (
	.LI(z_axb_9),
	.CI(z_cry_8),
	.O(un14_pos_output[9])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_cry_9  (
	.DI(z_5[9]),
	.CI(z_cry_8),
	.S(z_axb_9),
	.LO(z_cry_9)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_s_8  (
	.LI(z_axb_8),
	.CI(z_cry_7),
	.O(un14_pos_output[8])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_cry_8  (
	.DI(z_5[8]),
	.CI(z_cry_7),
	.S(z_axb_8),
	.LO(z_cry_8)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_s_7  (
	.LI(z_axb_7),
	.CI(z_cry_6),
	.O(un14_pos_output[7])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_cry_7  (
	.DI(z_5[7]),
	.CI(z_cry_6),
	.S(z_axb_7),
	.LO(z_cry_7)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_s_6  (
	.LI(z_axb_6),
	.CI(z_cry_5),
	.O(un14_pos_output[6])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_cry_6  (
	.DI(z_5[6]),
	.CI(z_cry_5),
	.S(z_axb_6),
	.LO(z_cry_6)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_s_5  (
	.LI(z_axb_5),
	.CI(z_cry_4),
	.O(un14_pos_output[5])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_cry_5  (
	.DI(z_5[5]),
	.CI(z_cry_4),
	.S(z_axb_5),
	.LO(z_cry_5)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_s_4  (
	.LI(z_axb_4),
	.CI(z_cry_3),
	.O(un14_pos_output[4])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_cry_4  (
	.DI(z_5[4]),
	.CI(z_cry_3),
	.S(z_axb_4),
	.LO(z_cry_4)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_s_3  (
	.LI(z_axb_3),
	.CI(z_cry_2),
	.O(un14_pos_output[3])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_cry_3  (
	.DI(z_5[3]),
	.CI(z_cry_2),
	.S(z_axb_3),
	.LO(z_cry_3)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_s_2  (
	.LI(z_axb_2),
	.CI(z_cry_1),
	.O(un14_pos_output[2])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_cry_2  (
	.DI(z_5[2]),
	.CI(z_cry_1),
	.S(z_axb_2),
	.LO(z_cry_2)
);
// @26:414
  XORCY \enabled_nr.un14_pos_output.z_s_1  (
	.LI(z_axb_1),
	.CI(z_cry_0),
	.O(un14_pos_output[1])
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_cry_1  (
	.DI(z_5[1]),
	.CI(z_cry_0),
	.S(z_axb_1),
	.LO(z_cry_1)
);
// @26:414
  MUXCY_L \enabled_nr.un14_pos_output.z_cry_0  (
	.DI(z_5[0]),
	.CI(VCC),
	.S(z_axb_0),
	.LO(z_cry_0)
);
// @23:226
  XORCY un9_0_s_8_cZ (
	.LI(un9_0_axb_8),
	.CI(un9_0_cry_7),
	.O(un9_0_s_8)
);
// @23:226
  XORCY un9_0_s_7_cZ (
	.LI(un3_shift_right_axb0_i),
	.CI(un9_0_cry_6),
	.O(un9_0_s_7)
);
// @23:226
  MUXCY_L un9_0_cry_7_cZ (
	.DI(VCC),
	.CI(un9_0_cry_6),
	.S(un3_shift_right_axb0_i),
	.LO(un9_0_cry_7)
);
// @23:226
  XORCY un9_0_s_6_cZ (
	.LI(N_2502_i),
	.CI(un9_0_cry_5),
	.O(un9_0_s_6)
);
// @23:226
  MUXCY_L un9_0_cry_6_cZ (
	.DI(VCC),
	.CI(un9_0_cry_5),
	.S(N_2502_i),
	.LO(un9_0_cry_6)
);
// @23:226
  XORCY un9_0_s_5_cZ (
	.LI(un1_poly_odd_i[6]),
	.CI(un9_0_cry_4),
	.O(un9_0_s_5)
);
// @23:226
  MUXCY_L un9_0_cry_5_cZ (
	.DI(VCC),
	.CI(un9_0_cry_4),
	.S(un1_poly_odd_i[6]),
	.LO(un9_0_cry_5)
);
// @23:226
  XORCY un9_0_s_4_cZ (
	.LI(un9_0_axb_4),
	.CI(un9_0_cry_3),
	.O(un9_0_s_4)
);
// @23:226
  MUXCY_L un9_0_cry_4_cZ (
	.DI(un1_poly_odd[7]),
	.CI(un9_0_cry_3),
	.S(un9_0_axb_4),
	.LO(un9_0_cry_4)
);
// @23:226
  XORCY un9_0_s_3_cZ (
	.LI(un9_0_axb_3),
	.CI(un9_0_cry_2),
	.O(un9_0_s_3)
);
// @23:226
  MUXCY_L un9_0_cry_3_cZ (
	.DI(un9_0_o5_2),
	.CI(un9_0_cry_2),
	.S(un9_0_axb_3),
	.LO(un9_0_cry_3)
);
// @23:226
  XORCY un9_0_s_2_cZ (
	.LI(un9_0_axb_2),
	.CI(un9_0_cry_1),
	.O(un9_0_s_2)
);
// @23:226
  MUXCY_L un9_0_cry_2_cZ (
	.DI(un9_0_o5_1),
	.CI(un9_0_cry_1),
	.S(un9_0_axb_2),
	.LO(un9_0_cry_2)
);
// @23:226
  XORCY un9_0_s_1_cZ (
	.LI(un9_0_axb_1),
	.CI(un9_0_cry_0),
	.O(un9_0_s_1)
);
// @23:226
  MUXCY_L un9_0_cry_1_cZ (
	.DI(GND),
	.CI(un9_0_cry_0),
	.S(un9_0_axb_1),
	.LO(un9_0_cry_1)
);
// @23:226
  XORCY un9_0_s_0_cZ (
	.LI(un9_0_axb_0),
	.CI(un9_0_cry_0_cy),
	.O(un9_0_s_0)
);
// @23:226
  MUXCY_L un9_0_cry_0_cZ (
	.DI(un9_0_cry_0_RNO),
	.CI(un9_0_cry_0_cy),
	.S(un9_0_axb_0),
	.LO(un9_0_cry_0)
);
// @23:205
  shifterZ1 in_shift (
	.ret_val(ret_val[3:1]),
	.un20_output_2(un20_output_2[14]),
	.ret_val_m2(ret_val_m2[3]),
	.shift_amount_1(shift_amount_1[1]),
	.un26_output_0_iv_3(un26_output_0_iv_3[6]),
	.ret_val_d_a1(ret_val_d_a1[1]),
	.ret_val_d_a0(ret_val_d_a0[1]),
	.un26_output_6(un26_output[7]),
	.un26_output_2(un26_output[3]),
	.un26_output_4(un26_output[5]),
	.un26_output_3(un26_output[4]),
	.un26_output_0(un26_output[1]),
	.un1_poly_odd_i(un1_poly_odd_i[6]),
	.input_reg(input_reg[11:0]),
	.un26_output_0_iv_2_0_1(un26_output_0_iv_2_0[6]),
	.input_shifted_4(input_shifted[6]),
	.input_shifted_0(input_shifted[2]),
	.input_shifted_3(input_shifted[5]),
	.un1_input_shifted(un1_input_shifted[4]),
	.un1_poly_odd(un1_poly_odd[8]),
	.un9_0_axb_8(un9_0_axb_8),
	.un20_output_0_0_a2_0_0_lut6_2_O5(un20_output_0_0_a2_0_0_lut6_2_O5),
	.N_100_i(N_100_i),
	.N_65(N_65),
	.un3_shift_right(un3_shift_right),
	.N_2502_i(N_2502_i),
	.un4_overflow_2(un4_overflow_2),
	.N_454(N_454),
	.N_72(N_72),
	.ret_val_ss0(ret_val_ss0),
	.N_458(N_458),
	.N_45(N_45),
	.N_70(N_70),
	.N_73(N_73),
	.N_71(N_71),
	.N_441(N_441),
	.un9_0_axb_4(un9_0_axb_4)
);
// @23:239
  shifterZ0 out_shift (
	.input_reg(input_reg[11:10]),
	.shift_amount_1(shift_amount_1[1]),
	.un14_pos_output(un14_pos_output[6:3]),
	.ret_val(ret_val[3:1]),
	.un11_output_6_d_0(un11_output_6_d_0[9]),
	.out_shift_amount(out_shift_amount[1]),
	.un7_output_2_0_0(un7_output_2_0_0[6]),
	.un7_output_2_1(un7_output_2_1[6:5]),
	.output_d(output_d[4]),
	.shift_amount_1_i(shift_amount_1_i[2]),
	.un11_output_1(un11_output[5]),
	.un11_output_2(un11_output[6]),
	.un20_output_2(un20_output_2[14]),
	.pre_output(pre_output[11:1]),
	.done_inv_sqrt(done_inv_sqrt),
	.un4_overflow_0(un4_overflow_0),
	.output_reg_pipe_12_RNIPJ901_O6(output_reg_pipe_12_RNIPJ901_O6),
	.un9_0_axb_8(un9_0_axb_8),
	.un9_0_s_6(un9_0_s_6),
	.un9_0_s_7(un9_0_s_7),
	.N_414(N_414),
	.N_33(N_33),
	.clk(clk),
	.N_420(N_420),
	.un3_shift_right(un3_shift_right),
	.N_410(N_410),
	.un9_0_s_5(un9_0_s_5),
	.un9_0_s_8(un9_0_s_8),
	.N_79(N_79),
	.N_50(N_50),
	.un9_0_s_4(un9_0_s_4),
	.un9_0_s_3(un9_0_s_3),
	.N_13_0(N_13_0),
	.N_100_i(N_100_i),
	.N_31(N_31),
	.N_18_0(N_18_0),
	.N_378(N_378),
	.N_33_0(N_33_0),
	.N_80(N_80),
	.N_51(N_51),
	.un9_0_s_0(un9_0_s_0),
	.un9_0_s_1(un9_0_s_1),
	.m9_0_0(m9_0_0),
	.N_417(N_417),
	.N_62(N_62),
	.N_454(N_454),
	.SUM1_0_i_1_1(SUM1_0_i_1_1),
	.N_56(N_56),
	.N_434_i(N_434_i),
	.N_431_i(N_431_i),
	.N_428_i(N_428_i),
	.N_425_i(N_425_i),
	.un9_0_s_2(un9_0_s_2),
	.N_419(N_419),
	.N_49(N_49),
	.N_413(N_413),
	.un20_output_0_0_a2_0_0_lut6_2_O5(un20_output_0_0_a2_0_0_lut6_2_O5),
	.un1_apply_nrlt8_1(un1_apply_nrlt8_1),
	.un1_apply_nrlt7(un1_apply_nrlt7)
);
// @23:266
  multiplier \enabled_nr.mult1  (
	.mult1_out(mult1_out[11:0]),
	.pre_output(pre_output[11:0])
);
// @23:273
  multiplier_1 \enabled_nr.mult2  (
	.mult2_out(mult2_out[11:0]),
	.pre_output(pre_output[11:0]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.start_inv_sqrt(start_inv_sqrt),
	.clk(clk)
);
// @23:280
  \multiplier_enabled_nr.mult3  \enabled_nr.mult3  (
	.un8_rnd_out_un0_P_9(un8_rnd_out_un0_P[9]),
	.un8_rnd_out_un0_P_10(un8_rnd_out_un0_P[10]),
	.un8_rnd_out_un0_P_11(un8_rnd_out_un0_P[11]),
	.un8_rnd_out_un0_P_12(un8_rnd_out_un0_P[12]),
	.un8_rnd_out_un0_P_13(un8_rnd_out_un0_P[13]),
	.un8_rnd_out_un0_P_14(un8_rnd_out_un0_P[14]),
	.un8_rnd_out_un0_P_15(un8_rnd_out_un0_P[15]),
	.un8_rnd_out_un0_P_16(un8_rnd_out_un0_P[16]),
	.un8_rnd_out_un0_P_17(un8_rnd_out_un0_P[17]),
	.un8_rnd_out_un0_P_18(un8_rnd_out_un0_P[18]),
	.un8_rnd_out_un0_P_19(un8_rnd_out_un0_P[19]),
	.mult1_out(mult1_out[11:0]),
	.mult2_out(mult2_out[11:0]),
	.pre_out_23(pre_out[23]),
	.un2_output_3(un2_output_3),
	.PATTERNDETECT_15(PATTERNDETECT_15)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
// @23:236
  LUT4 \out_shift_amount_lut6_2_o6[1]  (
	.I0(N_454),
	.I1(ret_val[2]),
	.I2(ret_val[1]),
	.I3(un9_0_axb_8),
	.O(out_shift_amount[1])
);
defparam \out_shift_amount_lut6_2_o6[1] .INIT=16'hC623;
// @23:236
  LUT4 \out_shift_amount_lut6_2_o5[1]  (
	.I0(N_454),
	.I1(ret_val[2]),
	.I2(ret_val[1]),
	.I3(un9_0_axb_8),
	.O(N_419)
);
defparam \out_shift_amount_lut6_2_o5[1] .INIT=16'h1DDC;
// @23:146
  LUT2 \counter_4_lut6_2_o6[2]  (
	.I0(counter[1]),
	.I1(state[0]),
	.O(counter_4[2])
);
defparam \counter_4_lut6_2_o6[2] .INIT=4'h8;
// @23:146
  LUT2 \counter_4_lut6_2_o5[2]  (
	.I0(counter[2]),
	.I1(state[0]),
	.O(counter_4[3])
);
defparam \counter_4_lut6_2_o5[2] .INIT=4'h8;
// @23:287
  LUT3 \pos_output_0_lut6_2_o6[2]  (
	.I0(un14_pos_outputf[2]),
	.I1(pre_outputf[2]),
	.I2(output_reg_pipe_11),
	.O(out_inv_sqrt_2)
);
defparam \pos_output_0_lut6_2_o6[2] .INIT=8'hAC;
// @23:287
  LUT3 \pos_output_0_lut6_2_o5[2]  (
	.I0(un14_pos_outputf[1]),
	.I1(pre_outputf[1]),
	.I2(output_reg_pipe_11),
	.O(out_inv_sqrt_1)
);
defparam \pos_output_0_lut6_2_o5[2] .INIT=8'hAC;
// @23:287
  LUT3 \pos_output_0_lut6_2_o6[8]  (
	.I0(un14_pos_outputf[8]),
	.I1(pre_outputf[8]),
	.I2(output_reg_pipe_11),
	.O(out_inv_sqrt_8)
);
defparam \pos_output_0_lut6_2_o6[8] .INIT=8'hAC;
// @23:287
  LUT3 \pos_output_0_lut6_2_o5[8]  (
	.I0(un14_pos_outputf[7]),
	.I1(pre_outputf[7]),
	.I2(output_reg_pipe_11),
	.O(out_inv_sqrt_7)
);
defparam \pos_output_0_lut6_2_o5[8] .INIT=8'hAC;
// @23:287
  LUT3 \pos_output_0_lut6_2_o6[9]  (
	.I0(un14_pos_outputf[9]),
	.I1(pre_outputf[9]),
	.I2(output_reg_pipe_11),
	.O(out_inv_sqrt_9)
);
defparam \pos_output_0_lut6_2_o6[9] .INIT=8'hAC;
// @23:287
  LUT3 \pos_output_0_lut6_2_o5[9]  (
	.I0(un14_pos_outputf[10]),
	.I1(pre_outputf[10]),
	.I2(output_reg_pipe_11),
	.O(out_inv_sqrt_10)
);
defparam \pos_output_0_lut6_2_o5[9] .INIT=8'hAC;
// @23:140
  LUT3 done_e_lut6_2_o6 (
	.I0(counter[3]),
	.I1(state[0]),
	.I2(done_inv_sqrt),
	.O(done)
);
defparam done_e_lut6_2_o6.INIT=8'hC8;
// @23:140
  LUT2 done_e_lut6_2_o5 (
	.I0(counter[0]),
	.I1(state[0]),
	.O(counter_4[1])
);
defparam done_e_lut6_2_o5.INIT=4'h8;
// @23:99
  LUT4 \get_leading_zeros.ret_val_m10_0_a2_lut6_2_o6[2]  (
	.I0(input_reg[9]),
	.I1(input_reg[8]),
	.I2(input_reg[10]),
	.I3(input_reg[11]),
	.O(ret_val_m10[2])
);
defparam \get_leading_zeros.ret_val_m10_0_a2_lut6_2_o6[2] .INIT=16'h0001;
// @23:99
  LUT2 \get_leading_zeros.ret_val_m10_0_a2_lut6_2_o5[2]  (
	.I0(input_reg[9]),
	.I1(input_reg[8]),
	.O(N_439)
);
defparam \get_leading_zeros.ret_val_m10_0_a2_lut6_2_o5[2] .INIT=4'hE;
// @23:226
  LUT4 \un1_poly_odd_s_lut6_2_o6[11]  (
	.I0(ret_val_m10[2]),
	.I1(N_454),
	.I2(un3_shift_right_c2_0_0_a0_1),
	.I3(un9_0_axb_8),
	.O(un1_poly_odd_s_lut6_2_O6[11])
);
defparam \un1_poly_odd_s_lut6_2_o6[11] .INIT=16'h002E;
// @23:226
  LUT5 \un1_poly_odd_s_lut6_2_o5[11]  (
	.I0(ret_val_m10[2]),
	.I1(N_454),
	.I2(un3_shift_right_c2_0_0_a0_1),
	.I3(ret_val[1]),
	.I4(un9_0_axb_8),
	.O(m9_a1_1)
);
defparam \un1_poly_odd_s_lut6_2_o5[11] .INIT=32'h000000D1;
endmodule /* inv_sqrt */

module qr_decomp_ctl_mux (
  single_in_R_sel,
  single_in_R_sel_0,
  w_col_sel_AQ_int,
  col_sel_AQ,
  wr_en_AQ_sel,
  w_col_sel_AQ_mux_i_m3_lut6_2_O6,
  w_col_sel_AQ_mux_i_m3_lut6_2_O5,
  col_sel_AQ2_int,
  col_sel_AQ2_mux_i_m3_lut6_2_O6,
  col_sel_AQ2_mux_i_m3_lut6_2_O5,
  state_0,
  state_2,
  state_5,
  wr_en_AQ_sel_0,
  col_sel_R,
  col_sel_R_int,
  col_sel_R_mux_i_m3_lut6_2_O6,
  col_sel_R_mux_i_m3_lut6_2_O5,
  in_a_r_reg_0_0,
  in_a_r_reg_0_11,
  out_r_vec_sub_0,
  in_a_i_reg_1,
  vec_in_AQ_sel,
  in_a_r_reg_3,
  in_a_i_reg_0,
  in_a_i_reg_3,
  in_a_r_reg_1,
  pre_out_4,
  pre_out_0,
  in_a_r_reg_2,
  pre_out_5,
  pre_out_1,
  in_a_i_reg_2,
  pre_out_6,
  pre_out_3_9,
  pre_out_3_1,
  pre_out_3_7,
  pre_out_3_3,
  pre_out_3_8,
  pre_out_3_5,
  pre_out_3_6,
  pre_out_3_0,
  pre_out_2,
  out_inner_prod_i,
  pre_out_10,
  pre_out_9,
  pre_out_0_d0,
  pre_out_1_d0,
  pre_out_3_d0,
  pre_out_6_d0,
  pre_out_7,
  pre_out_8,
  pre_out_5_d0,
  pre_out_4_d0,
  pre_out_2_d0,
  pre_out_18,
  pre_out_19,
  pre_out_20,
  pre_out_21,
  pre_out_reg,
  out_r_vec_mult_2,
  vec_in_r_AQ_mux_2,
  out_r_vec_mult_1,
  vec_in_r_AQ_mux_1,
  pre_out_i_m,
  out_i_vec_mult_3,
  pre_out_i_m_1,
  vec_in_i_AQ_mux_3,
  output_iv,
  out_i_vec_mult_0,
  vec_in_i_AQ_mux_0_11,
  vec_in_i_AQ_mux_0_1,
  vec_in_i_AQ_mux_0_5,
  vec_in_i_AQ_mux_0_0,
  vec_in_i_AQ_mux_0_8,
  vec_in_i_AQ_mux_0_10,
  vec_in_i_AQ_mux_0_7,
  vec_in_i_AQ_mux_0_6,
  vec_in_i_AQ_mux_0_9,
  vec_in_i_AQ_mux_0_4,
  out_r_vec_mult_0,
  output_iv_0_2,
  output_iv_0_4,
  output_iv_0_1,
  output_iv_0_0,
  output_iv_0_9,
  output_iv_0_6,
  output_iv_0_8,
  output_iv_0_3,
  output_iv_0_7,
  vec_in_r_AQ_mux_0_10,
  vec_in_r_AQ_mux_0_2,
  vec_in_r_AQ_mux_0_4,
  vec_in_r_AQ_mux_0_3,
  vec_in_r_AQ_mux_0_6,
  vec_in_r_AQ_mux_0_1,
  vec_in_r_AQ_mux_0_9,
  vec_in_r_AQ_mux_0_8,
  vec_in_r_AQ_mux_0_0,
  vec_in_r_AQ_mux_0_7,
  pre_out_i_m_0_0,
  pre_out_i_m_0_6,
  pre_out_i_m_0_4,
  pre_out_i_m_0_1,
  in_A_r,
  out_r_vec_mult_3,
  pre_out_i_m_2,
  vec_in_r_AQ_mux_3,
  out_i_vec_mult_2,
  pre_out_i_m_3,
  vec_in_i_AQ_mux_2,
  in_A_i,
  out_i_vec_mult_1,
  pre_out_i_m_4,
  vec_in_i_AQ_mux_1,
  un8_rnd_out_P,
  single_in_r_R_mux,
  out_inner_prod_r,
  un8_rnd_out,
  N_390_i,
  N_393_i,
  done_inv_sqrt,
  N_391_i,
  N_394_i,
  N_396_i,
  N_395_i,
  N_397_i,
  N_398_i,
  N_400_i,
  N_399_i,
  N_401_i,
  wr_en_AQ_int,
  wr_A_QR,
  start_QR,
  wr_en_AQ_mux_i_m3_lut6_2_O6,
  N_501,
  N_392_i,
  PATTERNDETECT_32,
  N_500,
  N_508,
  N_507,
  N_506,
  N_505,
  un5_output,
  un5_output_0,
  un5_output_1,
  un5_output_2,
  un5_output_3,
  un5_output_4,
  N_389_i,
  N_388_i,
  N_387_i,
  N_386_i,
  N_385_i,
  N_384_i,
  N_383_i,
  N_34_i,
  N_32_i,
  N_30_i,
  N_28_i
)
;
input [0:0] single_in_R_sel ;
output [0:0] single_in_R_sel_0 ;
input [1:0] w_col_sel_AQ_int ;
input [1:0] col_sel_AQ ;
input [0:0] wr_en_AQ_sel ;
output [0:0] w_col_sel_AQ_mux_i_m3_lut6_2_O6 ;
output [0:0] w_col_sel_AQ_mux_i_m3_lut6_2_O5 ;
input [1:0] col_sel_AQ2_int ;
output [0:0] col_sel_AQ2_mux_i_m3_lut6_2_O6 ;
output [0:0] col_sel_AQ2_mux_i_m3_lut6_2_O5 ;
input state_0 ;
input state_2 ;
input state_5 ;
output [0:0] wr_en_AQ_sel_0 ;
input [1:0] col_sel_R ;
input [1:0] col_sel_R_int ;
output [0:0] col_sel_R_mux_i_m3_lut6_2_O6 ;
output [0:0] col_sel_R_mux_i_m3_lut6_2_O5 ;
input in_a_r_reg_0_0 ;
input in_a_r_reg_0_11 ;
output [11:11] out_r_vec_sub_0 ;
input [11:11] in_a_i_reg_1 ;
input [1:0] vec_in_AQ_sel ;
input [11:11] in_a_r_reg_3 ;
input [11:11] in_a_i_reg_0 ;
input [11:11] in_a_i_reg_3 ;
input [11:11] in_a_r_reg_1 ;
input [11:11] pre_out_4 ;
input [11:1] pre_out_0 ;
input [11:11] in_a_r_reg_2 ;
input [11:11] pre_out_5 ;
input [11:1] pre_out_1 ;
input [11:11] in_a_i_reg_2 ;
input [11:11] pre_out_6 ;
input pre_out_3_9 ;
input pre_out_3_1 ;
input pre_out_3_7 ;
input pre_out_3_3 ;
input pre_out_3_8 ;
input pre_out_3_5 ;
input pre_out_3_6 ;
input pre_out_3_0 ;
input [11:1] pre_out_2 ;
input [11:0] out_inner_prod_i ;
input pre_out_10 ;
input pre_out_9 ;
input pre_out_0_d0 ;
input pre_out_1_d0 ;
input pre_out_3_d0 ;
input pre_out_6_d0 ;
input pre_out_7 ;
input pre_out_8 ;
input pre_out_5_d0 ;
input pre_out_4_d0 ;
input pre_out_2_d0 ;
input pre_out_18 ;
input pre_out_19 ;
input pre_out_20 ;
input pre_out_21 ;
input [23:23] pre_out_reg ;
input [11:0] out_r_vec_mult_2 ;
output [11:0] vec_in_r_AQ_mux_2 ;
input [11:0] out_r_vec_mult_1 ;
output [11:0] vec_in_r_AQ_mux_1 ;
input [10:0] pre_out_i_m ;
input [11:0] out_i_vec_mult_3 ;
input [0:0] pre_out_i_m_1 ;
output [11:0] vec_in_i_AQ_mux_3 ;
input [10:0] output_iv ;
input [11:0] out_i_vec_mult_0 ;
output vec_in_i_AQ_mux_0_11 ;
output vec_in_i_AQ_mux_0_1 ;
output vec_in_i_AQ_mux_0_5 ;
output vec_in_i_AQ_mux_0_0 ;
output vec_in_i_AQ_mux_0_8 ;
output vec_in_i_AQ_mux_0_10 ;
output vec_in_i_AQ_mux_0_7 ;
output vec_in_i_AQ_mux_0_6 ;
output vec_in_i_AQ_mux_0_9 ;
output vec_in_i_AQ_mux_0_4 ;
input [11:0] out_r_vec_mult_0 ;
input output_iv_0_2 ;
input output_iv_0_4 ;
input output_iv_0_1 ;
input output_iv_0_0 ;
input output_iv_0_9 ;
input output_iv_0_6 ;
input output_iv_0_8 ;
input output_iv_0_3 ;
input output_iv_0_7 ;
output vec_in_r_AQ_mux_0_10 ;
output vec_in_r_AQ_mux_0_2 ;
output vec_in_r_AQ_mux_0_4 ;
output vec_in_r_AQ_mux_0_3 ;
output vec_in_r_AQ_mux_0_6 ;
output vec_in_r_AQ_mux_0_1 ;
output vec_in_r_AQ_mux_0_9 ;
output vec_in_r_AQ_mux_0_8 ;
output vec_in_r_AQ_mux_0_0 ;
output vec_in_r_AQ_mux_0_7 ;
input pre_out_i_m_0_0 ;
input pre_out_i_m_0_6 ;
input pre_out_i_m_0_4 ;
input pre_out_i_m_0_1 ;
input [47:0] in_A_r ;
input [11:0] out_r_vec_mult_3 ;
input [0:0] pre_out_i_m_2 ;
output [11:0] vec_in_r_AQ_mux_3 ;
input [11:0] out_i_vec_mult_2 ;
input [0:0] pre_out_i_m_3 ;
output [11:0] vec_in_i_AQ_mux_2 ;
input [47:0] in_A_i ;
input [11:0] out_i_vec_mult_1 ;
input [0:0] pre_out_i_m_4 ;
output [11:0] vec_in_i_AQ_mux_1 ;
input [19:19] un8_rnd_out_P ;
output [11:11] single_in_r_R_mux ;
input [11:0] out_inner_prod_r ;
input [10:0] un8_rnd_out ;
output N_390_i ;
output N_393_i ;
input done_inv_sqrt ;
output N_391_i ;
output N_394_i ;
output N_396_i ;
output N_395_i ;
output N_397_i ;
output N_398_i ;
output N_400_i ;
output N_399_i ;
output N_401_i ;
input wr_en_AQ_int ;
input wr_A_QR ;
input start_QR ;
output wr_en_AQ_mux_i_m3_lut6_2_O6 ;
output N_501 ;
output N_392_i ;
input PATTERNDETECT_32 ;
input N_500 ;
output N_508 ;
output N_507 ;
output N_506 ;
output N_505 ;
input un5_output ;
input un5_output_0 ;
input un5_output_1 ;
input un5_output_2 ;
input un5_output_3 ;
input un5_output_4 ;
output N_389_i ;
output N_388_i ;
output N_387_i ;
output N_386_i ;
output N_385_i ;
output N_384_i ;
output N_383_i ;
output N_34_i ;
output N_32_i ;
output N_30_i ;
output N_28_i ;
wire state_0 ;
wire state_2 ;
wire state_5 ;
wire in_a_r_reg_0_0 ;
wire in_a_r_reg_0_11 ;
wire pre_out_3_9 ;
wire pre_out_3_1 ;
wire pre_out_3_7 ;
wire pre_out_3_3 ;
wire pre_out_3_8 ;
wire pre_out_3_5 ;
wire pre_out_3_6 ;
wire pre_out_3_0 ;
wire pre_out_10 ;
wire pre_out_9 ;
wire pre_out_0_d0 ;
wire pre_out_1_d0 ;
wire pre_out_3_d0 ;
wire pre_out_6_d0 ;
wire pre_out_7 ;
wire pre_out_8 ;
wire pre_out_5_d0 ;
wire pre_out_4_d0 ;
wire pre_out_2_d0 ;
wire pre_out_18 ;
wire pre_out_19 ;
wire pre_out_20 ;
wire pre_out_21 ;
wire vec_in_i_AQ_mux_0_11 ;
wire vec_in_i_AQ_mux_0_1 ;
wire vec_in_i_AQ_mux_0_5 ;
wire vec_in_i_AQ_mux_0_0 ;
wire vec_in_i_AQ_mux_0_8 ;
wire vec_in_i_AQ_mux_0_10 ;
wire vec_in_i_AQ_mux_0_7 ;
wire vec_in_i_AQ_mux_0_6 ;
wire vec_in_i_AQ_mux_0_9 ;
wire vec_in_i_AQ_mux_0_4 ;
wire output_iv_0_2 ;
wire output_iv_0_4 ;
wire output_iv_0_1 ;
wire output_iv_0_0 ;
wire output_iv_0_9 ;
wire output_iv_0_6 ;
wire output_iv_0_8 ;
wire output_iv_0_3 ;
wire output_iv_0_7 ;
wire vec_in_r_AQ_mux_0_10 ;
wire vec_in_r_AQ_mux_0_2 ;
wire vec_in_r_AQ_mux_0_4 ;
wire vec_in_r_AQ_mux_0_3 ;
wire vec_in_r_AQ_mux_0_6 ;
wire vec_in_r_AQ_mux_0_1 ;
wire vec_in_r_AQ_mux_0_9 ;
wire vec_in_r_AQ_mux_0_8 ;
wire vec_in_r_AQ_mux_0_0 ;
wire vec_in_r_AQ_mux_0_7 ;
wire pre_out_i_m_0_0 ;
wire pre_out_i_m_0_6 ;
wire pre_out_i_m_0_4 ;
wire pre_out_i_m_0_1 ;
wire N_390_i ;
wire N_393_i ;
wire done_inv_sqrt ;
wire N_391_i ;
wire N_394_i ;
wire N_396_i ;
wire N_395_i ;
wire N_397_i ;
wire N_398_i ;
wire N_400_i ;
wire N_399_i ;
wire N_401_i ;
wire wr_en_AQ_int ;
wire wr_A_QR ;
wire start_QR ;
wire wr_en_AQ_mux_i_m3_lut6_2_O6 ;
wire N_501 ;
wire N_392_i ;
wire PATTERNDETECT_32 ;
wire N_500 ;
wire N_508 ;
wire N_507 ;
wire N_506 ;
wire N_505 ;
wire un5_output ;
wire un5_output_0 ;
wire un5_output_1 ;
wire un5_output_2 ;
wire un5_output_3 ;
wire un5_output_4 ;
wire N_389_i ;
wire N_388_i ;
wire N_387_i ;
wire N_386_i ;
wire N_385_i ;
wire N_384_i ;
wire N_383_i ;
wire N_34_i ;
wire N_32_i ;
wire N_30_i ;
wire N_28_i ;
wire GND ;
wire VCC ;
wire N_161 ;
wire N_162 ;
wire N_163 ;
wire N_164 ;
wire N_165 ;
wire N_148 ;
wire N_166 ;
wire N_167 ;
wire N_168 ;
wire N_169 ;
wire N_149 ;
wire N_150 ;
wire N_151 ;
wire N_152 ;
wire N_153 ;
wire N_154 ;
wire N_155 ;
wire N_143 ;
wire N_156 ;
wire N_157 ;
wire N_37 ;
wire N_38 ;
wire N_39 ;
wire N_40 ;
wire N_41 ;
wire N_50 ;
wire N_60 ;
wire N_66 ;
wire N_61 ;
wire N_62 ;
wire N_64 ;
wire N_65 ;
wire N_68 ;
wire N_69 ;
wire N_48 ;
wire N_49 ;
wire N_51 ;
wire N_52 ;
wire N_54 ;
wire N_55 ;
wire N_56 ;
wire N_57 ;
wire N_42 ;
wire N_43 ;
wire N_44 ;
wire N_45 ;
wire N_160 ;
wire N_95 ;
wire N_122 ;
// @21:112
  LUT6 \vec_in_i_AQ_mux[13]  (
	.I0(out_i_vec_mult_1[11]),
	.I1(in_a_i_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_169),
	.I4(pre_out_9),
	.I5(pre_out_0[11]),
	.O(vec_in_i_AQ_mux_1[10])
);
defparam \vec_in_i_AQ_mux[13] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[22]  (
	.I0(out_i_vec_mult_1[11]),
	.I1(in_a_i_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_160),
	.I4(pre_out_0_d0),
	.I5(pre_out_0[11]),
	.O(vec_in_i_AQ_mux_1[1])
);
defparam \vec_in_i_AQ_mux[22] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[21]  (
	.I0(out_i_vec_mult_1[11]),
	.I1(in_a_i_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_161),
	.I4(pre_out_1_d0),
	.I5(pre_out_0[11]),
	.O(vec_in_i_AQ_mux_1[2])
);
defparam \vec_in_i_AQ_mux[21] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[19]  (
	.I0(out_i_vec_mult_1[11]),
	.I1(in_a_i_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_163),
	.I4(pre_out_3_d0),
	.I5(pre_out_0[11]),
	.O(vec_in_i_AQ_mux_1[4])
);
defparam \vec_in_i_AQ_mux[19] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[16]  (
	.I0(out_i_vec_mult_1[11]),
	.I1(in_a_i_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_166),
	.I4(pre_out_6_d0),
	.I5(pre_out_0[11]),
	.O(vec_in_i_AQ_mux_1[7])
);
defparam \vec_in_i_AQ_mux[16] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[15]  (
	.I0(out_i_vec_mult_1[11]),
	.I1(in_a_i_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_167),
	.I4(pre_out_7),
	.I5(pre_out_0[11]),
	.O(vec_in_i_AQ_mux_1[8])
);
defparam \vec_in_i_AQ_mux[15] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[14]  (
	.I0(out_i_vec_mult_1[11]),
	.I1(in_a_i_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_168),
	.I4(pre_out_8),
	.I5(pre_out_0[11]),
	.O(vec_in_i_AQ_mux_1[9])
);
defparam \vec_in_i_AQ_mux[14] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[17]  (
	.I0(out_i_vec_mult_1[11]),
	.I1(in_a_i_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_165),
	.I4(pre_out_5_d0),
	.I5(pre_out_0[11]),
	.O(vec_in_i_AQ_mux_1[6])
);
defparam \vec_in_i_AQ_mux[17] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[18]  (
	.I0(out_i_vec_mult_1[11]),
	.I1(in_a_i_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_164),
	.I4(pre_out_4_d0),
	.I5(pre_out_0[11]),
	.O(vec_in_i_AQ_mux_1[5])
);
defparam \vec_in_i_AQ_mux[18] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[20]  (
	.I0(out_i_vec_mult_1[11]),
	.I1(in_a_i_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_162),
	.I4(pre_out_2_d0),
	.I5(pre_out_0[11]),
	.O(vec_in_i_AQ_mux_1[3])
);
defparam \vec_in_i_AQ_mux[20] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[41]  (
	.I0(out_r_vec_mult_3[11]),
	.I1(in_a_r_reg_3[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_41),
	.I4(pre_out_0[6]),
	.I5(pre_out_1[11]),
	.O(vec_in_r_AQ_mux_3[6])
);
defparam \vec_in_r_AQ_mux[41] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[38]  (
	.I0(out_r_vec_mult_3[11]),
	.I1(in_a_r_reg_3[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_44),
	.I4(pre_out_0[9]),
	.I5(pre_out_1[11]),
	.O(vec_in_r_AQ_mux_3[9])
);
defparam \vec_in_r_AQ_mux[38] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[45]  (
	.I0(out_r_vec_mult_3[11]),
	.I1(in_a_r_reg_3[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_37),
	.I4(pre_out_0[2]),
	.I5(pre_out_1[11]),
	.O(vec_in_r_AQ_mux_3[2])
);
defparam \vec_in_r_AQ_mux[45] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[43]  (
	.I0(out_r_vec_mult_3[11]),
	.I1(in_a_r_reg_3[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_39),
	.I4(pre_out_0[4]),
	.I5(pre_out_1[11]),
	.O(vec_in_r_AQ_mux_3[4])
);
defparam \vec_in_r_AQ_mux[43] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[42]  (
	.I0(out_r_vec_mult_3[11]),
	.I1(in_a_r_reg_3[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_40),
	.I4(pre_out_0[5]),
	.I5(pre_out_1[11]),
	.O(vec_in_r_AQ_mux_3[5])
);
defparam \vec_in_r_AQ_mux[42] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[37]  (
	.I0(out_r_vec_mult_3[11]),
	.I1(in_a_r_reg_3[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_45),
	.I4(pre_out_0[10]),
	.I5(pre_out_1[11]),
	.O(vec_in_r_AQ_mux_3[10])
);
defparam \vec_in_r_AQ_mux[37] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[44]  (
	.I0(out_r_vec_mult_3[11]),
	.I1(in_a_r_reg_3[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_38),
	.I4(pre_out_0[3]),
	.I5(pre_out_1[11]),
	.O(vec_in_r_AQ_mux_3[3])
);
defparam \vec_in_r_AQ_mux[44] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[40]  (
	.I0(out_r_vec_mult_3[11]),
	.I1(in_a_r_reg_3[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_42),
	.I4(pre_out_0[7]),
	.I5(pre_out_1[11]),
	.O(vec_in_r_AQ_mux_3[7])
);
defparam \vec_in_r_AQ_mux[40] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[39]  (
	.I0(out_r_vec_mult_3[11]),
	.I1(in_a_r_reg_3[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_43),
	.I4(pre_out_0[8]),
	.I5(pre_out_1[11]),
	.O(vec_in_r_AQ_mux_3[8])
);
defparam \vec_in_r_AQ_mux[39] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[0]  (
	.I0(in_A_i[47]),
	.I1(out_i_vec_mult_0[11]),
	.I2(in_a_i_reg_0[11]),
	.I3(vec_in_AQ_sel[0]),
	.I4(vec_in_AQ_sel[1]),
	.I5(pre_out_2[11]),
	.O(vec_in_i_AQ_mux_0_11)
);
defparam \vec_in_i_AQ_mux[0] .INIT=64'hF3F3CCAA3030CCAA;
// @21:109
  LUT6 \vec_in_r_AQ_mux[0]  (
	.I0(in_A_r[47]),
	.I1(out_r_vec_mult_0[11]),
	.I2(in_a_r_reg_0_11),
	.I3(vec_in_AQ_sel[0]),
	.I4(vec_in_AQ_sel[1]),
	.I5(pre_out_10),
	.O(vec_in_r_AQ_mux_0_10)
);
defparam \vec_in_r_AQ_mux[0] .INIT=64'hF3F3CCAA3030CCAA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[39]  (
	.I0(out_i_vec_mult_3[11]),
	.I1(in_a_i_reg_3[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_143),
	.I4(pre_out_1[8]),
	.I5(pre_out_3_9),
	.O(vec_in_i_AQ_mux_3[8])
);
defparam \vec_in_i_AQ_mux[39] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[20]  (
	.I0(out_r_vec_mult_1[11]),
	.I1(in_a_r_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_62),
	.I4(pre_out_1[3]),
	.I5(pre_out_4[11]),
	.O(vec_in_r_AQ_mux_1[3])
);
defparam \vec_in_r_AQ_mux[20] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[17]  (
	.I0(out_r_vec_mult_1[11]),
	.I1(in_a_r_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_65),
	.I4(pre_out_1[6]),
	.I5(pre_out_4[11]),
	.O(vec_in_r_AQ_mux_1[6])
);
defparam \vec_in_r_AQ_mux[17] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[18]  (
	.I0(out_r_vec_mult_1[11]),
	.I1(in_a_r_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_64),
	.I4(pre_out_1[5]),
	.I5(pre_out_4[11]),
	.O(vec_in_r_AQ_mux_1[5])
);
defparam \vec_in_r_AQ_mux[18] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[13]  (
	.I0(out_r_vec_mult_1[11]),
	.I1(in_a_r_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_69),
	.I4(pre_out_1[10]),
	.I5(pre_out_4[11]),
	.O(vec_in_r_AQ_mux_1[10])
);
defparam \vec_in_r_AQ_mux[13] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[22]  (
	.I0(out_r_vec_mult_1[11]),
	.I1(in_a_r_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_60),
	.I4(pre_out_0[1]),
	.I5(pre_out_4[11]),
	.O(vec_in_r_AQ_mux_1[1])
);
defparam \vec_in_r_AQ_mux[22] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[14]  (
	.I0(out_r_vec_mult_1[11]),
	.I1(in_a_r_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_68),
	.I4(pre_out_1[9]),
	.I5(pre_out_4[11]),
	.O(vec_in_r_AQ_mux_1[9])
);
defparam \vec_in_r_AQ_mux[14] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[21]  (
	.I0(out_r_vec_mult_1[11]),
	.I1(in_a_r_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_61),
	.I4(pre_out_1[2]),
	.I5(pre_out_4[11]),
	.O(vec_in_r_AQ_mux_1[2])
);
defparam \vec_in_r_AQ_mux[21] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[16]  (
	.I0(out_r_vec_mult_1[11]),
	.I1(in_a_r_reg_1[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_66),
	.I4(pre_out_1[7]),
	.I5(pre_out_4[11]),
	.O(vec_in_r_AQ_mux_1[7])
);
defparam \vec_in_r_AQ_mux[16] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[31]  (
	.I0(out_r_vec_mult_2[11]),
	.I1(in_a_r_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_51),
	.I4(pre_out_1[4]),
	.I5(pre_out_5[11]),
	.O(vec_in_r_AQ_mux_2[4])
);
defparam \vec_in_r_AQ_mux[31] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[27]  (
	.I0(out_r_vec_mult_2[11]),
	.I1(in_a_r_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_55),
	.I4(pre_out_2[8]),
	.I5(pre_out_5[11]),
	.O(vec_in_r_AQ_mux_2[8])
);
defparam \vec_in_r_AQ_mux[27] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[28]  (
	.I0(out_r_vec_mult_2[11]),
	.I1(in_a_r_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_54),
	.I4(pre_out_2[7]),
	.I5(pre_out_5[11]),
	.O(vec_in_r_AQ_mux_2[7])
);
defparam \vec_in_r_AQ_mux[28] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[34]  (
	.I0(out_r_vec_mult_2[11]),
	.I1(in_a_r_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_48),
	.I4(pre_out_1[1]),
	.I5(pre_out_5[11]),
	.O(vec_in_r_AQ_mux_2[1])
);
defparam \vec_in_r_AQ_mux[34] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[32]  (
	.I0(out_r_vec_mult_2[11]),
	.I1(in_a_r_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_50),
	.I4(pre_out_2[3]),
	.I5(pre_out_5[11]),
	.O(vec_in_r_AQ_mux_2[3])
);
defparam \vec_in_r_AQ_mux[32] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[25]  (
	.I0(out_r_vec_mult_2[11]),
	.I1(in_a_r_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_57),
	.I4(pre_out_2[10]),
	.I5(pre_out_5[11]),
	.O(vec_in_r_AQ_mux_2[10])
);
defparam \vec_in_r_AQ_mux[25] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[30]  (
	.I0(out_r_vec_mult_2[11]),
	.I1(in_a_r_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_52),
	.I4(pre_out_2[5]),
	.I5(pre_out_5[11]),
	.O(vec_in_r_AQ_mux_2[5])
);
defparam \vec_in_r_AQ_mux[30] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[33]  (
	.I0(out_r_vec_mult_2[11]),
	.I1(in_a_r_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_49),
	.I4(pre_out_2[2]),
	.I5(pre_out_5[11]),
	.O(vec_in_r_AQ_mux_2[2])
);
defparam \vec_in_r_AQ_mux[33] .INIT=64'hFFF02F20BFB00F00;
// @21:109
  LUT6 \vec_in_r_AQ_mux[26]  (
	.I0(out_r_vec_mult_2[11]),
	.I1(in_a_r_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_56),
	.I4(pre_out_2[9]),
	.I5(pre_out_5[11]),
	.O(vec_in_r_AQ_mux_2[9])
);
defparam \vec_in_r_AQ_mux[26] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[32]  (
	.I0(out_i_vec_mult_2[11]),
	.I1(in_a_i_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_150),
	.I4(pre_out_3_1),
	.I5(pre_out_6[11]),
	.O(vec_in_i_AQ_mux_2[3])
);
defparam \vec_in_i_AQ_mux[32] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[26]  (
	.I0(out_i_vec_mult_2[11]),
	.I1(in_a_i_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_156),
	.I4(pre_out_3_7),
	.I5(pre_out_6[11]),
	.O(vec_in_i_AQ_mux_2[9])
);
defparam \vec_in_i_AQ_mux[26] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[30]  (
	.I0(out_i_vec_mult_2[11]),
	.I1(in_a_i_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_152),
	.I4(pre_out_3_3),
	.I5(pre_out_6[11]),
	.O(vec_in_i_AQ_mux_2[5])
);
defparam \vec_in_i_AQ_mux[30] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[25]  (
	.I0(out_i_vec_mult_2[11]),
	.I1(in_a_i_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_157),
	.I4(pre_out_3_8),
	.I5(pre_out_6[11]),
	.O(vec_in_i_AQ_mux_2[10])
);
defparam \vec_in_i_AQ_mux[25] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[31]  (
	.I0(out_i_vec_mult_2[11]),
	.I1(in_a_i_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_151),
	.I4(pre_out_2[4]),
	.I5(pre_out_6[11]),
	.O(vec_in_i_AQ_mux_2[4])
);
defparam \vec_in_i_AQ_mux[31] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[28]  (
	.I0(out_i_vec_mult_2[11]),
	.I1(in_a_i_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_154),
	.I4(pre_out_3_5),
	.I5(pre_out_6[11]),
	.O(vec_in_i_AQ_mux_2[7])
);
defparam \vec_in_i_AQ_mux[28] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[27]  (
	.I0(out_i_vec_mult_2[11]),
	.I1(in_a_i_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_155),
	.I4(pre_out_3_6),
	.I5(pre_out_6[11]),
	.O(vec_in_i_AQ_mux_2[8])
);
defparam \vec_in_i_AQ_mux[27] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[33]  (
	.I0(out_i_vec_mult_2[11]),
	.I1(in_a_i_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_149),
	.I4(pre_out_3_0),
	.I5(pre_out_6[11]),
	.O(vec_in_i_AQ_mux_2[2])
);
defparam \vec_in_i_AQ_mux[33] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[29]  (
	.I0(out_i_vec_mult_2[11]),
	.I1(in_a_i_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_153),
	.I4(pre_out_2[6]),
	.I5(pre_out_6[11]),
	.O(vec_in_i_AQ_mux_2[6])
);
defparam \vec_in_i_AQ_mux[29] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT6 \vec_in_i_AQ_mux[34]  (
	.I0(out_i_vec_mult_2[11]),
	.I1(in_a_i_reg_2[11]),
	.I2(vec_in_AQ_sel[1]),
	.I3(N_148),
	.I4(pre_out_2[1]),
	.I5(pre_out_6[11]),
	.O(vec_in_i_AQ_mux_2[1])
);
defparam \vec_in_i_AQ_mux[34] .INIT=64'hFFF02F20BFB00F00;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0[22]  (
	.I0(in_A_i[25]),
	.I1(out_i_vec_mult_1[1]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_160)
);
defparam \vec_in_i_AQ_mux_0[22] .INIT=8'hCA;
// @19:70
  LUT2 N_392_i_c (
	.I0(out_inner_prod_i[2]),
	.I1(single_in_R_sel[0]),
	.O(N_392_i)
);
defparam N_392_i_c.INIT=4'h8;
// @21:125
  LUT6 single_in_r_R_mux_i_a3_a (
	.I0(single_in_R_sel[0]),
	.I1(pre_out_18),
	.I2(pre_out_19),
	.I3(pre_out_20),
	.I4(pre_out_21),
	.I5(PATTERNDETECT_32),
	.O(N_95)
);
defparam single_in_r_R_mux_i_a3_a.INIT=64'h1555555500000000;
// @21:125
  LUT6 \single_in_r_R_mux_i_a4[0]  (
	.I0(single_in_R_sel[0]),
	.I1(pre_out_reg[23]),
	.I2(pre_out_18),
	.I3(pre_out_19),
	.I4(pre_out_20),
	.I5(pre_out_21),
	.O(N_122)
);
defparam \single_in_r_R_mux_i_a4[0] .INIT=64'h4444444444444445;
// @21:109
  LUT5 \vec_in_r_AQ_mux_1_m3[5]  (
	.I0(in_A_r[42]),
	.I1(out_r_vec_mult_0[6]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(N_500),
	.O(N_508)
);
defparam \vec_in_r_AQ_mux_1_m3[5] .INIT=32'h00CAFFCA;
// @21:109
  LUT5 \vec_in_r_AQ_mux_i_m2[11]  (
	.I0(in_A_r[36]),
	.I1(out_r_vec_mult_0[0]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(N_501),
	.O(N_507)
);
defparam \vec_in_r_AQ_mux_i_m2[11] .INIT=32'h00CAFFCA;
// @21:112
  LUT5 \vec_in_i_AQ_mux_i_m3[8]  (
	.I0(in_A_i[39]),
	.I1(out_i_vec_mult_0[3]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv[3]),
	.O(N_506)
);
defparam \vec_in_i_AQ_mux_i_m3[8] .INIT=32'h00CAFFCA;
// @21:112
  LUT5 \vec_in_i_AQ_mux_i_m3[9]  (
	.I0(in_A_i[38]),
	.I1(out_i_vec_mult_0[2]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv[2]),
	.O(N_505)
);
defparam \vec_in_i_AQ_mux_i_m3[9] .INIT=32'h00CAFFCA;
// @21:109
  LUT5 \vec_in_r_AQ_mux[8]  (
	.I0(in_A_r[39]),
	.I1(out_r_vec_mult_0[3]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv_0_2),
	.O(vec_in_r_AQ_mux_0_2)
);
defparam \vec_in_r_AQ_mux[8] .INIT=32'h00CAFFCA;
// @21:109
  LUT6 \vec_in_r_AQ_mux[36]  (
	.I0(in_A_r[11]),
	.I1(out_r_vec_mult_3[11]),
	.I2(in_a_r_reg_3[11]),
	.I3(vec_in_AQ_sel[0]),
	.I4(vec_in_AQ_sel[1]),
	.I5(pre_out_1[11]),
	.O(vec_in_r_AQ_mux_3[11])
);
defparam \vec_in_r_AQ_mux[36] .INIT=64'hF3F3CCAA3030CCAA;
// @21:109
  LUT6 \vec_in_r_AQ_mux[24]  (
	.I0(in_A_r[23]),
	.I1(out_r_vec_mult_2[11]),
	.I2(in_a_r_reg_2[11]),
	.I3(vec_in_AQ_sel[0]),
	.I4(vec_in_AQ_sel[1]),
	.I5(pre_out_5[11]),
	.O(vec_in_r_AQ_mux_2[11])
);
defparam \vec_in_r_AQ_mux[24] .INIT=64'hF3F3CCAA3030CCAA;
// @21:109
  LUT6 \vec_in_r_AQ_mux[29]  (
	.I0(in_A_r[18]),
	.I1(out_r_vec_mult_2[6]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m[6]),
	.I5(un5_output),
	.O(vec_in_r_AQ_mux_2[6])
);
defparam \vec_in_r_AQ_mux[29] .INIT=64'h00CAFFCA00CA00CA;
// @21:109
  LUT6 \vec_in_r_AQ_mux[35]  (
	.I0(in_A_r[12]),
	.I1(out_r_vec_mult_2[0]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m[0]),
	.I5(un5_output),
	.O(vec_in_r_AQ_mux_2[0])
);
defparam \vec_in_r_AQ_mux[35] .INIT=64'h00CAFFCA00CA00CA;
// @21:109
  LUT6 \vec_in_r_AQ_mux[12]  (
	.I0(in_A_r[35]),
	.I1(out_r_vec_mult_1[11]),
	.I2(in_a_r_reg_1[11]),
	.I3(vec_in_AQ_sel[0]),
	.I4(vec_in_AQ_sel[1]),
	.I5(pre_out_4[11]),
	.O(vec_in_r_AQ_mux_1[11])
);
defparam \vec_in_r_AQ_mux[12] .INIT=64'hF3F3CCAA3030CCAA;
// @21:109
  LUT6 \vec_in_r_AQ_mux[15]  (
	.I0(in_A_r[32]),
	.I1(out_r_vec_mult_1[8]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m[8]),
	.I5(un5_output_0),
	.O(vec_in_r_AQ_mux_1[8])
);
defparam \vec_in_r_AQ_mux[15] .INIT=64'h00CAFFCA00CA00CA;
// @21:109
  LUT6 \vec_in_r_AQ_mux[19]  (
	.I0(in_A_r[28]),
	.I1(out_r_vec_mult_1[4]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m[4]),
	.I5(un5_output_0),
	.O(vec_in_r_AQ_mux_1[4])
);
defparam \vec_in_r_AQ_mux[19] .INIT=64'h00CAFFCA00CA00CA;
// @21:109
  LUT6 \vec_in_r_AQ_mux[23]  (
	.I0(in_A_r[24]),
	.I1(out_r_vec_mult_1[0]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m_0_0),
	.I5(un5_output_0),
	.O(vec_in_r_AQ_mux_1[0])
);
defparam \vec_in_r_AQ_mux[23] .INIT=64'h00CAFFCA00CA00CA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[36]  (
	.I0(in_A_i[11]),
	.I1(out_i_vec_mult_3[11]),
	.I2(in_a_i_reg_3[11]),
	.I3(vec_in_AQ_sel[0]),
	.I4(vec_in_AQ_sel[1]),
	.I5(pre_out_3_9),
	.O(vec_in_i_AQ_mux_3[11])
);
defparam \vec_in_i_AQ_mux[36] .INIT=64'hF3F3CCAA3030CCAA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[37]  (
	.I0(in_A_i[10]),
	.I1(out_i_vec_mult_3[10]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m[10]),
	.I5(un5_output_1),
	.O(vec_in_i_AQ_mux_3[10])
);
defparam \vec_in_i_AQ_mux[37] .INIT=64'h00CAFFCA00CA00CA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[38]  (
	.I0(in_A_i[9]),
	.I1(out_i_vec_mult_3[9]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m[9]),
	.I5(un5_output_1),
	.O(vec_in_i_AQ_mux_3[9])
);
defparam \vec_in_i_AQ_mux[38] .INIT=64'h00CAFFCA00CA00CA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[40]  (
	.I0(in_A_i[7]),
	.I1(out_i_vec_mult_3[7]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m[7]),
	.I5(un5_output_1),
	.O(vec_in_i_AQ_mux_3[7])
);
defparam \vec_in_i_AQ_mux[40] .INIT=64'h00CAFFCA00CA00CA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[41]  (
	.I0(in_A_i[6]),
	.I1(out_i_vec_mult_3[6]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m_0_6),
	.I5(un5_output_1),
	.O(vec_in_i_AQ_mux_3[6])
);
defparam \vec_in_i_AQ_mux[41] .INIT=64'h00CAFFCA00CA00CA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[42]  (
	.I0(in_A_i[5]),
	.I1(out_i_vec_mult_3[5]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m[5]),
	.I5(un5_output_1),
	.O(vec_in_i_AQ_mux_3[5])
);
defparam \vec_in_i_AQ_mux[42] .INIT=64'h00CAFFCA00CA00CA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[43]  (
	.I0(in_A_i[4]),
	.I1(out_i_vec_mult_3[4]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m_0_4),
	.I5(un5_output_1),
	.O(vec_in_i_AQ_mux_3[4])
);
defparam \vec_in_i_AQ_mux[43] .INIT=64'h00CAFFCA00CA00CA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[44]  (
	.I0(in_A_i[3]),
	.I1(out_i_vec_mult_3[3]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m[3]),
	.I5(un5_output_1),
	.O(vec_in_i_AQ_mux_3[3])
);
defparam \vec_in_i_AQ_mux[44] .INIT=64'h00CAFFCA00CA00CA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[45]  (
	.I0(in_A_i[2]),
	.I1(out_i_vec_mult_3[2]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m[2]),
	.I5(un5_output_1),
	.O(vec_in_i_AQ_mux_3[2])
);
defparam \vec_in_i_AQ_mux[45] .INIT=64'h00CAFFCA00CA00CA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[46]  (
	.I0(in_A_i[1]),
	.I1(out_i_vec_mult_3[1]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m[1]),
	.I5(un5_output_1),
	.O(vec_in_i_AQ_mux_3[1])
);
defparam \vec_in_i_AQ_mux[46] .INIT=64'h00CAFFCA00CA00CA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[47]  (
	.I0(in_A_i[0]),
	.I1(out_i_vec_mult_3[0]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m_1[0]),
	.I5(un5_output_1),
	.O(vec_in_i_AQ_mux_3[0])
);
defparam \vec_in_i_AQ_mux[47] .INIT=64'h00CAFFCA00CA00CA;
// @21:112
  LUT5 \vec_in_i_AQ_mux[10]  (
	.I0(in_A_i[37]),
	.I1(out_i_vec_mult_0[1]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv[1]),
	.O(vec_in_i_AQ_mux_0_1)
);
defparam \vec_in_i_AQ_mux[10] .INIT=32'h00CAFFCA;
// @21:109
  LUT5 \vec_in_r_AQ_mux[6]  (
	.I0(in_A_r[41]),
	.I1(out_r_vec_mult_0[5]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv[5]),
	.O(vec_in_r_AQ_mux_0_4)
);
defparam \vec_in_r_AQ_mux[6] .INIT=32'h00CAFFCA;
// @21:109
  LUT5 \vec_in_r_AQ_mux[7]  (
	.I0(in_A_r[40]),
	.I1(out_r_vec_mult_0[4]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv[4]),
	.O(vec_in_r_AQ_mux_0_3)
);
defparam \vec_in_r_AQ_mux[7] .INIT=32'h00CAFFCA;
// @21:112
  LUT5 \vec_in_i_AQ_mux[6]  (
	.I0(in_A_i[41]),
	.I1(out_i_vec_mult_0[5]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv_0_4),
	.O(vec_in_i_AQ_mux_0_5)
);
defparam \vec_in_i_AQ_mux[6] .INIT=32'h00CAFFCA;
// @21:112
  LUT5 \vec_in_i_AQ_mux[11]  (
	.I0(in_A_i[36]),
	.I1(out_i_vec_mult_0[0]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv[0]),
	.O(vec_in_i_AQ_mux_0_0)
);
defparam \vec_in_i_AQ_mux[11] .INIT=32'h00CAFFCA;
// @21:109
  LUT5 \vec_in_r_AQ_mux[4]  (
	.I0(in_A_r[43]),
	.I1(out_r_vec_mult_0[7]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv[7]),
	.O(vec_in_r_AQ_mux_0_6)
);
defparam \vec_in_r_AQ_mux[4] .INIT=32'h00CAFFCA;
// @21:109
  LUT5 \vec_in_r_AQ_mux[9]  (
	.I0(in_A_r[38]),
	.I1(out_r_vec_mult_0[2]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv_0_1),
	.O(vec_in_r_AQ_mux_0_1)
);
defparam \vec_in_r_AQ_mux[9] .INIT=32'h00CAFFCA;
// @21:112
  LUT5 \vec_in_i_AQ_mux[3]  (
	.I0(in_A_i[44]),
	.I1(out_i_vec_mult_0[8]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv[8]),
	.O(vec_in_i_AQ_mux_0_8)
);
defparam \vec_in_i_AQ_mux[3] .INIT=32'h00CAFFCA;
// @21:109
  LUT5 \vec_in_r_AQ_mux[1]  (
	.I0(in_A_r[46]),
	.I1(out_r_vec_mult_0[10]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv[10]),
	.O(vec_in_r_AQ_mux_0_9)
);
defparam \vec_in_r_AQ_mux[1] .INIT=32'h00CAFFCA;
// @21:109
  LUT5 \vec_in_r_AQ_mux[2]  (
	.I0(in_A_r[45]),
	.I1(out_r_vec_mult_0[9]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv[9]),
	.O(vec_in_r_AQ_mux_0_8)
);
defparam \vec_in_r_AQ_mux[2] .INIT=32'h00CAFFCA;
// @21:109
  LUT5 \vec_in_r_AQ_mux[10]  (
	.I0(in_A_r[37]),
	.I1(out_r_vec_mult_0[1]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv_0_0),
	.O(vec_in_r_AQ_mux_0_0)
);
defparam \vec_in_r_AQ_mux[10] .INIT=32'h00CAFFCA;
// @21:112
  LUT5 \vec_in_i_AQ_mux[1]  (
	.I0(in_A_i[46]),
	.I1(out_i_vec_mult_0[10]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv_0_9),
	.O(vec_in_i_AQ_mux_0_10)
);
defparam \vec_in_i_AQ_mux[1] .INIT=32'h00CAFFCA;
// @21:112
  LUT5 \vec_in_i_AQ_mux[4]  (
	.I0(in_A_i[43]),
	.I1(out_i_vec_mult_0[7]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv_0_6),
	.O(vec_in_i_AQ_mux_0_7)
);
defparam \vec_in_i_AQ_mux[4] .INIT=32'h00CAFFCA;
// @21:112
  LUT5 \vec_in_i_AQ_mux[5]  (
	.I0(in_A_i[42]),
	.I1(out_i_vec_mult_0[6]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv[6]),
	.O(vec_in_i_AQ_mux_0_6)
);
defparam \vec_in_i_AQ_mux[5] .INIT=32'h00CAFFCA;
// @21:112
  LUT5 \vec_in_i_AQ_mux[2]  (
	.I0(in_A_i[45]),
	.I1(out_i_vec_mult_0[9]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv_0_8),
	.O(vec_in_i_AQ_mux_0_9)
);
defparam \vec_in_i_AQ_mux[2] .INIT=32'h00CAFFCA;
// @21:112
  LUT5 \vec_in_i_AQ_mux[7]  (
	.I0(in_A_i[40]),
	.I1(out_i_vec_mult_0[4]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv_0_3),
	.O(vec_in_i_AQ_mux_0_4)
);
defparam \vec_in_i_AQ_mux[7] .INIT=32'h00CAFFCA;
// @21:109
  LUT5 \vec_in_r_AQ_mux[3]  (
	.I0(in_A_r[44]),
	.I1(out_r_vec_mult_0[8]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(output_iv_0_7),
	.O(vec_in_r_AQ_mux_0_7)
);
defparam \vec_in_r_AQ_mux[3] .INIT=32'h00CAFFCA;
// @21:109
  LUT6 \vec_in_r_AQ_mux[46]  (
	.I0(in_A_r[1]),
	.I1(out_r_vec_mult_3[1]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m_0_1),
	.I5(un5_output_2),
	.O(vec_in_r_AQ_mux_3[1])
);
defparam \vec_in_r_AQ_mux[46] .INIT=64'h00CAFFCA00CA00CA;
// @21:109
  LUT6 \vec_in_r_AQ_mux[47]  (
	.I0(in_A_r[0]),
	.I1(out_r_vec_mult_3[0]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(pre_out_i_m_2[0]),
	.I5(un5_output_2),
	.O(vec_in_r_AQ_mux_3[0])
);
defparam \vec_in_r_AQ_mux[47] .INIT=64'h00CAFFCA00CA00CA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[24]  (
	.I0(in_A_i[23]),
	.I1(out_i_vec_mult_2[11]),
	.I2(in_a_i_reg_2[11]),
	.I3(vec_in_AQ_sel[0]),
	.I4(vec_in_AQ_sel[1]),
	.I5(pre_out_6[11]),
	.O(vec_in_i_AQ_mux_2[11])
);
defparam \vec_in_i_AQ_mux[24] .INIT=64'hF3F3CCAA3030CCAA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[35]  (
	.I0(in_A_i[12]),
	.I1(out_i_vec_mult_2[0]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(un5_output_3),
	.I5(pre_out_i_m_3[0]),
	.O(vec_in_i_AQ_mux_2[0])
);
defparam \vec_in_i_AQ_mux[35] .INIT=64'h00CA00CAFFCA00CA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[12]  (
	.I0(in_A_i[35]),
	.I1(out_i_vec_mult_1[11]),
	.I2(in_a_i_reg_1[11]),
	.I3(vec_in_AQ_sel[0]),
	.I4(vec_in_AQ_sel[1]),
	.I5(pre_out_0[11]),
	.O(vec_in_i_AQ_mux_1[11])
);
defparam \vec_in_i_AQ_mux[12] .INIT=64'hF3F3CCAA3030CCAA;
// @21:112
  LUT6 \vec_in_i_AQ_mux[23]  (
	.I0(in_A_i[24]),
	.I1(out_i_vec_mult_1[0]),
	.I2(vec_in_AQ_sel[0]),
	.I3(vec_in_AQ_sel[1]),
	.I4(un5_output_4),
	.I5(pre_out_i_m_4[0]),
	.O(vec_in_i_AQ_mux_1[0])
);
defparam \vec_in_i_AQ_mux[23] .INIT=64'h00CA00CAFFCA00CA;
// @21:125
  LUT5 \single_in_r_R_mux_0[11]  (
	.I0(single_in_R_sel[0]),
	.I1(out_inner_prod_r[11]),
	.I2(un8_rnd_out_P[19]),
	.I3(N_122),
	.I4(N_95),
	.O(single_in_r_R_mux[11])
);
defparam \single_in_r_R_mux_0[11] .INIT=32'hFFFFF888;
// @19:70
  LUT5 \single_in_r_R_mux_i_a4_RNI2PN21[0]  (
	.I0(out_inner_prod_r[10]),
	.I1(single_in_R_sel[0]),
	.I2(un8_rnd_out[10]),
	.I3(N_122),
	.I4(N_95),
	.O(N_389_i)
);
defparam \single_in_r_R_mux_i_a4_RNI2PN21[0] .INIT=32'h0000B0BB;
// @19:70
  LUT5 \single_in_r_R_mux_i_a4_RNIQTA81[0]  (
	.I0(out_inner_prod_r[9]),
	.I1(single_in_R_sel[0]),
	.I2(un8_rnd_out[9]),
	.I3(N_122),
	.I4(N_95),
	.O(N_388_i)
);
defparam \single_in_r_R_mux_i_a4_RNIQTA81[0] .INIT=32'h0000B0BB;
// @19:70
  LUT5 \single_in_r_R_mux_i_a4_RNIPSA81[0]  (
	.I0(out_inner_prod_r[8]),
	.I1(single_in_R_sel[0]),
	.I2(un8_rnd_out[8]),
	.I3(N_122),
	.I4(N_95),
	.O(N_387_i)
);
defparam \single_in_r_R_mux_i_a4_RNIPSA81[0] .INIT=32'h0000B0BB;
// @19:70
  LUT5 \single_in_r_R_mux_i_a4_RNIORA81[0]  (
	.I0(out_inner_prod_r[7]),
	.I1(single_in_R_sel[0]),
	.I2(un8_rnd_out[7]),
	.I3(N_122),
	.I4(N_95),
	.O(N_386_i)
);
defparam \single_in_r_R_mux_i_a4_RNIORA81[0] .INIT=32'h0000B0BB;
// @19:70
  LUT5 \single_in_r_R_mux_i_a4_RNINQA81[0]  (
	.I0(out_inner_prod_r[6]),
	.I1(single_in_R_sel[0]),
	.I2(un8_rnd_out[6]),
	.I3(N_122),
	.I4(N_95),
	.O(N_385_i)
);
defparam \single_in_r_R_mux_i_a4_RNINQA81[0] .INIT=32'h0000B0BB;
// @19:70
  LUT5 \single_in_r_R_mux_i_a4_RNIMPA81[0]  (
	.I0(out_inner_prod_r[5]),
	.I1(single_in_R_sel[0]),
	.I2(un8_rnd_out[5]),
	.I3(N_122),
	.I4(N_95),
	.O(N_384_i)
);
defparam \single_in_r_R_mux_i_a4_RNIMPA81[0] .INIT=32'h0000B0BB;
// @19:70
  LUT5 \single_in_r_R_mux_i_a4_RNILOA81[0]  (
	.I0(out_inner_prod_r[4]),
	.I1(single_in_R_sel[0]),
	.I2(un8_rnd_out[4]),
	.I3(N_122),
	.I4(N_95),
	.O(N_383_i)
);
defparam \single_in_r_R_mux_i_a4_RNILOA81[0] .INIT=32'h0000B0BB;
// @19:70
  LUT5 \single_in_r_R_mux_i_a4_RNIKNA81[0]  (
	.I0(out_inner_prod_r[3]),
	.I1(single_in_R_sel[0]),
	.I2(un8_rnd_out[3]),
	.I3(N_122),
	.I4(N_95),
	.O(N_34_i)
);
defparam \single_in_r_R_mux_i_a4_RNIKNA81[0] .INIT=32'h0000B0BB;
// @19:70
  LUT5 \single_in_r_R_mux_i_a4_RNIJMA81[0]  (
	.I0(out_inner_prod_r[2]),
	.I1(single_in_R_sel[0]),
	.I2(un8_rnd_out[2]),
	.I3(N_122),
	.I4(N_95),
	.O(N_32_i)
);
defparam \single_in_r_R_mux_i_a4_RNIJMA81[0] .INIT=32'h0000B0BB;
// @19:70
  LUT5 \single_in_r_R_mux_i_a4_RNIILA81[0]  (
	.I0(out_inner_prod_r[1]),
	.I1(single_in_R_sel[0]),
	.I2(un8_rnd_out[1]),
	.I3(N_122),
	.I4(N_95),
	.O(N_30_i)
);
defparam \single_in_r_R_mux_i_a4_RNIILA81[0] .INIT=32'h0000B0BB;
// @19:70
  LUT5 \single_in_r_R_mux_i_a4_RNIHKA81[0]  (
	.I0(out_inner_prod_r[0]),
	.I1(single_in_R_sel[0]),
	.I2(un8_rnd_out[0]),
	.I3(N_122),
	.I4(N_95),
	.O(N_28_i)
);
defparam \single_in_r_R_mux_i_a4_RNIHKA81[0] .INIT=32'h0000B0BB;
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
// @21:109
  LUT5 \vec_in_r_AQ_mux_i_o3_lut6_2_o6[11]  (
	.I0(out_r_vec_mult_0[0]),
	.I1(in_a_r_reg_0_0),
	.I2(out_r_vec_mult_0[11]),
	.I3(in_a_r_reg_0_11),
	.I4(pre_out_10),
	.O(N_501)
);
defparam \vec_in_r_AQ_mux_i_o3_lut6_2_o6[11] .INIT=32'h99099F99;
// @21:109
  LUT3 \vec_in_r_AQ_mux_i_o3_lut6_2_o5[11]  (
	.I0(out_r_vec_mult_0[11]),
	.I1(in_a_r_reg_0_11),
	.I2(pre_out_10),
	.O(out_r_vec_sub_0[11])
);
defparam \vec_in_r_AQ_mux_i_o3_lut6_2_o5[11] .INIT=8'hD4;
// @21:131
  LUT3 \col_sel_R_mux_i_m3_lut6_2_o6[0]  (
	.I0(col_sel_R_int[0]),
	.I1(col_sel_R[0]),
	.I2(wr_en_AQ_sel[0]),
	.O(col_sel_R_mux_i_m3_lut6_2_O6[0])
);
defparam \col_sel_R_mux_i_m3_lut6_2_o6[0] .INIT=8'hAC;
// @21:131
  LUT3 \col_sel_R_mux_i_m3_lut6_2_o5[0]  (
	.I0(col_sel_R[1]),
	.I1(col_sel_R_int[1]),
	.I2(wr_en_AQ_sel[0]),
	.O(col_sel_R_mux_i_m3_lut6_2_O5[0])
);
defparam \col_sel_R_mux_i_m3_lut6_2_o5[0] .INIT=8'hCA;
// @21:121
  LUT3 wr_en_AQ_mux_i_m3_lut6_2_o6 (
	.I0(wr_en_AQ_int),
	.I1(wr_A_QR),
	.I2(wr_en_AQ_sel[0]),
	.O(wr_en_AQ_mux_i_m3_lut6_2_O6)
);
defparam wr_en_AQ_mux_i_m3_lut6_2_o6.INIT=8'hAC;
// @21:121
  LUT3 wr_en_AQ_mux_i_m3_lut6_2_o5 (
	.I0(start_QR),
	.I1(state_5),
	.I2(wr_en_AQ_sel[0]),
	.O(wr_en_AQ_sel_0[0])
);
defparam wr_en_AQ_mux_i_m3_lut6_2_o5.INIT=8'hB8;
// @21:117
  LUT3 \col_sel_AQ2_mux_i_m3_lut6_2_o6[0]  (
	.I0(col_sel_AQ[0]),
	.I1(col_sel_AQ2_int[0]),
	.I2(wr_en_AQ_sel[0]),
	.O(col_sel_AQ2_mux_i_m3_lut6_2_O6[0])
);
defparam \col_sel_AQ2_mux_i_m3_lut6_2_o6[0] .INIT=8'hCA;
// @21:117
  LUT3 \col_sel_AQ2_mux_i_m3_lut6_2_o5[0]  (
	.I0(col_sel_AQ[1]),
	.I1(col_sel_AQ2_int[1]),
	.I2(wr_en_AQ_sel[0]),
	.O(col_sel_AQ2_mux_i_m3_lut6_2_O5[0])
);
defparam \col_sel_AQ2_mux_i_m3_lut6_2_o5[0] .INIT=8'hCA;
// @21:141
  LUT3 \w_col_sel_AQ_mux_i_m3_lut6_2_o6[0]  (
	.I0(w_col_sel_AQ_int[0]),
	.I1(col_sel_AQ[0]),
	.I2(wr_en_AQ_sel[0]),
	.O(w_col_sel_AQ_mux_i_m3_lut6_2_O6[0])
);
defparam \w_col_sel_AQ_mux_i_m3_lut6_2_o6[0] .INIT=8'hAC;
// @21:141
  LUT3 \w_col_sel_AQ_mux_i_m3_lut6_2_o5[0]  (
	.I0(w_col_sel_AQ_int[1]),
	.I1(col_sel_AQ[1]),
	.I2(wr_en_AQ_sel[0]),
	.O(w_col_sel_AQ_mux_i_m3_lut6_2_O5[0])
);
defparam \w_col_sel_AQ_mux_i_m3_lut6_2_o5[0] .INIT=8'hAC;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o6[38]  (
	.I0(in_A_r[9]),
	.I1(out_r_vec_mult_3[9]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_44)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o6[38] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o5[38]  (
	.I0(in_A_r[10]),
	.I1(out_r_vec_mult_3[10]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_45)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o5[38] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o6[40]  (
	.I0(in_A_r[7]),
	.I1(out_r_vec_mult_3[7]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_42)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o6[40] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o5[40]  (
	.I0(in_A_r[8]),
	.I1(out_r_vec_mult_3[8]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_43)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o5[40] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o6[26]  (
	.I0(in_A_r[21]),
	.I1(out_r_vec_mult_2[9]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_56)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o6[26] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o5[26]  (
	.I0(in_A_r[22]),
	.I1(out_r_vec_mult_2[10]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_57)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o5[26] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o6[28]  (
	.I0(in_A_r[19]),
	.I1(out_r_vec_mult_2[7]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_54)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o6[28] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o5[28]  (
	.I0(in_A_r[20]),
	.I1(out_r_vec_mult_2[8]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_55)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o5[28] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o6[31]  (
	.I0(in_A_r[16]),
	.I1(out_r_vec_mult_2[4]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_51)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o6[31] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o5[31]  (
	.I0(in_A_r[17]),
	.I1(out_r_vec_mult_2[5]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_52)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o5[31] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o6[34]  (
	.I0(in_A_r[13]),
	.I1(out_r_vec_mult_2[1]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_48)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o6[34] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o5[34]  (
	.I0(in_A_r[14]),
	.I1(out_r_vec_mult_2[2]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_49)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o5[34] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o6[14]  (
	.I0(in_A_r[33]),
	.I1(out_r_vec_mult_1[9]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_68)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o6[14] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o5[14]  (
	.I0(in_A_r[34]),
	.I1(out_r_vec_mult_1[10]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_69)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o5[14] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o6[18]  (
	.I0(in_A_r[29]),
	.I1(out_r_vec_mult_1[5]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_64)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o6[18] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o5[18]  (
	.I0(in_A_r[30]),
	.I1(out_r_vec_mult_1[6]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_65)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o5[18] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o6[21]  (
	.I0(in_A_r[26]),
	.I1(out_r_vec_mult_1[2]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_61)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o6[21] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o5[21]  (
	.I0(in_A_r[27]),
	.I1(out_r_vec_mult_1[3]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_62)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o5[21] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o6[22]  (
	.I0(in_A_r[25]),
	.I1(out_r_vec_mult_1[1]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_60)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o6[22] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o5[22]  (
	.I0(in_A_r[31]),
	.I1(out_r_vec_mult_1[7]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_66)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o5[22] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o6[41]  (
	.I0(in_A_r[6]),
	.I1(out_r_vec_mult_3[6]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_41)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o6[41] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o5[41]  (
	.I0(in_A_r[15]),
	.I1(out_r_vec_mult_2[3]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_50)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o5[41] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o6[43]  (
	.I0(in_A_r[4]),
	.I1(out_r_vec_mult_3[4]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_39)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o6[43] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o5[43]  (
	.I0(in_A_r[5]),
	.I1(out_r_vec_mult_3[5]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_40)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o5[43] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o6[45]  (
	.I0(in_A_r[2]),
	.I1(out_r_vec_mult_3[2]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_37)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o6[45] .INIT=8'hCA;
// @21:109
  LUT3 \vec_in_r_AQ_mux_0_lut6_2_o5[45]  (
	.I0(in_A_r[3]),
	.I1(out_r_vec_mult_3[3]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_38)
);
defparam \vec_in_r_AQ_mux_0_lut6_2_o5[45] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o6[26]  (
	.I0(in_A_i[21]),
	.I1(out_i_vec_mult_2[9]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_156)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o6[26] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o5[26]  (
	.I0(in_A_i[22]),
	.I1(out_i_vec_mult_2[10]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_157)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o5[26] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o6[27]  (
	.I0(in_A_i[20]),
	.I1(out_i_vec_mult_2[8]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_155)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o6[27] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o5[27]  (
	.I0(in_A_i[8]),
	.I1(out_i_vec_mult_3[8]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_143)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o5[27] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o6[29]  (
	.I0(in_A_i[18]),
	.I1(out_i_vec_mult_2[6]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_153)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o6[29] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o5[29]  (
	.I0(in_A_i[19]),
	.I1(out_i_vec_mult_2[7]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_154)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o5[29] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o6[31]  (
	.I0(in_A_i[16]),
	.I1(out_i_vec_mult_2[4]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_151)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o6[31] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o5[31]  (
	.I0(in_A_i[17]),
	.I1(out_i_vec_mult_2[5]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_152)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o5[31] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o6[33]  (
	.I0(in_A_i[14]),
	.I1(out_i_vec_mult_2[2]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_149)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o6[33] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o5[33]  (
	.I0(in_A_i[15]),
	.I1(out_i_vec_mult_2[3]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_150)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o5[33] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o6[14]  (
	.I0(in_A_i[33]),
	.I1(out_i_vec_mult_1[9]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_168)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o6[14] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o5[14]  (
	.I0(in_A_i[34]),
	.I1(out_i_vec_mult_1[10]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_169)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o5[14] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o6[16]  (
	.I0(in_A_i[31]),
	.I1(out_i_vec_mult_1[7]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_166)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o6[16] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o5[16]  (
	.I0(in_A_i[32]),
	.I1(out_i_vec_mult_1[8]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_167)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o5[16] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o6[17]  (
	.I0(in_A_i[30]),
	.I1(out_i_vec_mult_1[6]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_165)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o6[17] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o5[17]  (
	.I0(in_A_i[13]),
	.I1(out_i_vec_mult_2[1]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_148)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o5[17] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o6[19]  (
	.I0(in_A_i[28]),
	.I1(out_i_vec_mult_1[4]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_163)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o6[19] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o5[19]  (
	.I0(in_A_i[29]),
	.I1(out_i_vec_mult_1[5]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_164)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o5[19] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o6[21]  (
	.I0(in_A_i[26]),
	.I1(out_i_vec_mult_1[2]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_161)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o6[21] .INIT=8'hCA;
// @21:112
  LUT3 \vec_in_i_AQ_mux_0_lut6_2_o5[21]  (
	.I0(in_A_i[27]),
	.I1(out_i_vec_mult_1[3]),
	.I2(vec_in_AQ_sel[0]),
	.O(N_162)
);
defparam \vec_in_i_AQ_mux_0_lut6_2_o5[21] .INIT=8'hCA;
// @19:70
  LUT2 N_399_i_lut6_2_o6 (
	.I0(out_inner_prod_i[9]),
	.I1(single_in_R_sel[0]),
	.O(N_399_i)
);
defparam N_399_i_lut6_2_o6.INIT=4'h8;
// @19:70
  LUT2 N_399_i_lut6_2_o5 (
	.I0(single_in_R_sel[0]),
	.I1(out_inner_prod_i[11]),
	.O(N_401_i)
);
defparam N_399_i_lut6_2_o5.INIT=4'h8;
// @19:70
  LUT2 N_398_i_lut6_2_o6 (
	.I0(out_inner_prod_i[8]),
	.I1(single_in_R_sel[0]),
	.O(N_398_i)
);
defparam N_398_i_lut6_2_o6.INIT=4'h8;
// @19:70
  LUT2 N_398_i_lut6_2_o5 (
	.I0(out_inner_prod_i[10]),
	.I1(single_in_R_sel[0]),
	.O(N_400_i)
);
defparam N_398_i_lut6_2_o5.INIT=4'h8;
// @19:70
  LUT2 N_395_i_lut6_2_o6 (
	.I0(out_inner_prod_i[5]),
	.I1(single_in_R_sel[0]),
	.O(N_395_i)
);
defparam N_395_i_lut6_2_o6.INIT=4'h8;
// @19:70
  LUT2 N_395_i_lut6_2_o5 (
	.I0(out_inner_prod_i[7]),
	.I1(single_in_R_sel[0]),
	.O(N_397_i)
);
defparam N_395_i_lut6_2_o5.INIT=4'h8;
// @19:70
  LUT2 N_394_i_lut6_2_o6 (
	.I0(out_inner_prod_i[4]),
	.I1(single_in_R_sel[0]),
	.O(N_394_i)
);
defparam N_394_i_lut6_2_o6.INIT=4'h8;
// @19:70
  LUT2 N_394_i_lut6_2_o5 (
	.I0(out_inner_prod_i[6]),
	.I1(single_in_R_sel[0]),
	.O(N_396_i)
);
defparam N_394_i_lut6_2_o5.INIT=4'h8;
// @19:70
  LUT2 N_391_i_lut6_2_o6 (
	.I0(out_inner_prod_i[1]),
	.I1(single_in_R_sel[0]),
	.O(N_391_i)
);
defparam N_391_i_lut6_2_o6.INIT=4'h8;
// @19:70
  LUT4 N_391_i_lut6_2_o5 (
	.I0(state_0),
	.I1(state_2),
	.I2(single_in_R_sel[0]),
	.I3(done_inv_sqrt),
	.O(single_in_R_sel_0[0])
);
defparam N_391_i_lut6_2_o5.INIT=16'hBAFA;
// @19:70
  LUT2 N_390_i_lut6_2_o6 (
	.I0(out_inner_prod_i[0]),
	.I1(single_in_R_sel[0]),
	.O(N_390_i)
);
defparam N_390_i_lut6_2_o6.INIT=4'h8;
// @19:70
  LUT2 N_390_i_lut6_2_o5 (
	.I0(out_inner_prod_i[3]),
	.I1(single_in_R_sel[0]),
	.O(N_393_i)
);
defparam N_390_i_lut6_2_o5.INIT=4'h8;
endmodule /* qr_decomp_ctl_mux */

module qr_decomp_ctl (
  col_sel_AQ_int,
  col_sel_AQ2_int,
  row_sel_AQ,
  state_5,
  state_8,
  state_3,
  in_b_inner_prod_sel,
  w_col_sel_AQ_int,
  col_sel_R_int,
  row_sel_R,
  in_a_inner_prod_sel,
  vec_in_AQ_sel,
  single_in_R_sel,
  single_in_R_sel_0,
  wr_en_AQ_sel,
  wr_en_AQ_sel_0,
  in_b_vec_mult_sel,
  red_mat_reg,
  rst,
  done_inv_sqrt,
  N_512_i,
  done_inner_prod,
  start_inv_sqrt,
  clk,
  start_inner_prod,
  wr_en_AQ_int,
  wr_en_R,
  w_in_a_vec_sub,
  done_QR,
  start_QR,
  red_mat_reg_0
)
;
output [1:0] col_sel_AQ_int ;
output [1:0] col_sel_AQ2_int ;
output [1:0] row_sel_AQ ;
output state_5 ;
output state_8 ;
output state_3 ;
output [0:0] in_b_inner_prod_sel ;
output [1:0] w_col_sel_AQ_int ;
output [1:0] col_sel_R_int ;
output [1:0] row_sel_R ;
output [0:0] in_a_inner_prod_sel ;
output [1:0] vec_in_AQ_sel ;
output [0:0] single_in_R_sel ;
input [0:0] single_in_R_sel_0 ;
output [0:0] wr_en_AQ_sel ;
input [0:0] wr_en_AQ_sel_0 ;
output [0:0] in_b_vec_mult_sel ;
output red_mat_reg ;
input rst ;
input done_inv_sqrt ;
output N_512_i ;
input done_inner_prod ;
output start_inv_sqrt ;
input clk ;
output start_inner_prod ;
output wr_en_AQ_int ;
output wr_en_R ;
output w_in_a_vec_sub ;
output done_QR ;
input start_QR ;
input red_mat_reg_0 ;
wire state_5 ;
wire state_8 ;
wire state_3 ;
wire red_mat_reg ;
wire rst ;
wire done_inv_sqrt ;
wire N_512_i ;
wire done_inner_prod ;
wire start_inv_sqrt ;
wire clk ;
wire start_inner_prod ;
wire wr_en_AQ_int ;
wire wr_en_R ;
wire w_in_a_vec_sub ;
wire done_QR ;
wire start_QR ;
wire red_mat_reg_0 ;
wire [7:0] state;
wire [2:0] mult_counter;
wire [5:5] state_ns_2_tz;
wire [7:1] state_ns;
wire [0:0] in_b_inner_prod_sel_0;
wire [1:0] w_col_sel_AQ_int_4_i_m2_i_m3;
wire [1:0] col_sel_R_int_4_i_m2_i_m3;
wire [0:0] in_a_inner_prod_sel_0;
wire [1:1] j_RNO;
wire VCC ;
wire N_676 ;
wire N_210_i ;
wire N_526 ;
wire row_sel_R_0_sqmuxa ;
wire row_sel_R_0_sqmuxa_0_a6_0_a2_lut6_2_O5 ;
wire N_662 ;
wire N_201_2 ;
wire N_706 ;
wire N_686 ;
wire N_495 ;
wire N_503 ;
wire N_652 ;
wire un1_state_1_sqmuxa_3_0_o6_0_o2_lut6_2_O6 ;
wire un1_state_10_0_o6_0_o2_lut6_2_O6 ;
wire N_653 ;
wire start_inv_sqrt_0 ;
wire un1_state_23_0_0_o2_lut6_2_O6 ;
wire N_513_i ;
wire N_218_i ;
wire un1_state_33_0_0 ;
wire N_220_i ;
wire start_inner_prod_0 ;
wire wr_en_AQ_int_0 ;
wire un1_state_29_0_0 ;
wire N_514_i ;
wire wr_en_R_0 ;
wire w_in_a_vec_sub_0 ;
wire pre_red_mat_reg ;
wire done ;
wire N_214_i ;
wire N_216_i ;
wire N_231_i ;
wire N_201_i ;
wire N_196_3 ;
wire N_106_1 ;
wire N_527 ;
wire N_106_2 ;
wire N_123 ;
wire N_122 ;
wire N_121 ;
wire N_120 ;
wire N_119 ;
wire N_118 ;
wire N_117 ;
wire N_116 ;
wire N_115 ;
wire GND ;
// @20:112
  FDC \w_col_sel_AQ_int_Z[1]  (
	.Q(w_col_sel_AQ_int[1]),
	.D(w_col_sel_AQ_int_4_i_m2_i_m3[1]),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDC \w_col_sel_AQ_int_Z[0]  (
	.Q(w_col_sel_AQ_int[0]),
	.D(w_col_sel_AQ_int_4_i_m2_i_m3[0]),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDC \col_sel_R_int_Z[1]  (
	.Q(col_sel_R_int[1]),
	.D(col_sel_R_int_4_i_m2_i_m3[1]),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDC \col_sel_R_int_Z[0]  (
	.Q(col_sel_R_int[0]),
	.D(col_sel_R_int_4_i_m2_i_m3[0]),
	.C(clk),
	.CLR(rst)
);
// @20:154
  LUT5 \w_col_sel_AQ_int_4_i_m2_i_m3_cZ[0]  (
	.I0(col_sel_AQ2_int[0]),
	.I1(state[7]),
	.I2(col_sel_AQ_int[0]),
	.I3(w_col_sel_AQ_int[0]),
	.I4(un1_state_1_sqmuxa_3_0_o6_0_o2_lut6_2_O6),
	.O(w_col_sel_AQ_int_4_i_m2_i_m3[0])
);
defparam \w_col_sel_AQ_int_4_i_m2_i_m3_cZ[0] .INIT=32'hE2E2FF00;
// @20:154
  LUT5 \w_col_sel_AQ_int_4_i_m2_i_m3_cZ[1]  (
	.I0(col_sel_AQ2_int[1]),
	.I1(state[7]),
	.I2(col_sel_AQ_int[1]),
	.I3(w_col_sel_AQ_int[1]),
	.I4(un1_state_1_sqmuxa_3_0_o6_0_o2_lut6_2_O6),
	.O(w_col_sel_AQ_int_4_i_m2_i_m3[1])
);
defparam \w_col_sel_AQ_int_4_i_m2_i_m3_cZ[1] .INIT=32'hE2E2FF00;
// @20:154
  LUT5 \col_sel_R_int_4_i_m2_i_m3_cZ[0]  (
	.I0(col_sel_AQ2_int[0]),
	.I1(state_5),
	.I2(col_sel_AQ_int[0]),
	.I3(col_sel_R_int[0]),
	.I4(un1_state_23_0_0_o2_lut6_2_O6),
	.O(col_sel_R_int_4_i_m2_i_m3[0])
);
defparam \col_sel_R_int_4_i_m2_i_m3_cZ[0] .INIT=32'hE2E2FF00;
// @20:154
  LUT5 \col_sel_R_int_4_i_m2_i_m3_cZ[1]  (
	.I0(col_sel_AQ2_int[1]),
	.I1(state_5),
	.I2(col_sel_AQ_int[1]),
	.I3(col_sel_R_int[1]),
	.I4(un1_state_23_0_0_o2_lut6_2_O6),
	.O(col_sel_R_int_4_i_m2_i_m3[1])
);
defparam \col_sel_R_int_4_i_m2_i_m3_cZ[1] .INIT=32'hE2E2FF00;
// @20:112
  FDCE \row_sel_R_Z[0]  (
	.Q(row_sel_R[0]),
	.D(col_sel_AQ_int[0]),
	.C(clk),
	.CLR(rst),
	.CE(row_sel_R_0_sqmuxa)
);
// @20:112
  FDCE \row_sel_R_Z[1]  (
	.Q(row_sel_R[1]),
	.D(col_sel_AQ_int[1]),
	.C(clk),
	.CLR(rst),
	.CE(row_sel_R_0_sqmuxa)
);
// @20:112
  FDP \in_b_inner_prod_sel_Z[0]  (
	.Q(in_b_inner_prod_sel[0]),
	.D(in_b_inner_prod_sel_0[0]),
	.C(clk),
	.PRE(rst)
);
// @20:112
  FDCE \row_sel_AQ2_Z[0]  (
	.Q(row_sel_AQ[0]),
	.D(N_218_i),
	.C(clk),
	.CLR(rst),
	.CE(un1_state_33_0_0)
);
// @20:112
  FDCE \row_sel_AQ2_Z[1]  (
	.Q(row_sel_AQ[1]),
	.D(N_220_i),
	.C(clk),
	.CLR(rst),
	.CE(un1_state_33_0_0)
);
// @20:112
  FDC start_inner_prod_Z (
	.Q(start_inner_prod),
	.D(start_inner_prod_0),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDP \in_a_inner_prod_sel_Z[0]  (
	.Q(in_a_inner_prod_sel[0]),
	.D(in_a_inner_prod_sel_0[0]),
	.C(clk),
	.PRE(rst)
);
// @20:112
  FDC wr_en_AQ_int_Z (
	.Q(wr_en_AQ_int),
	.D(wr_en_AQ_int_0),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDCE \mult_counter_Z[0]  (
	.Q(mult_counter[0]),
	.D(un1_state_23_0_0_o2_lut6_2_O6),
	.C(clk),
	.CLR(rst),
	.CE(un1_state_29_0_0)
);
// @20:112
  FDCE \mult_counter_Z[1]  (
	.Q(mult_counter[1]),
	.D(N_513_i),
	.C(clk),
	.CLR(rst),
	.CE(un1_state_29_0_0)
);
// @20:112
  FDCE \mult_counter_Z[2]  (
	.Q(mult_counter[2]),
	.D(N_514_i),
	.C(clk),
	.CLR(rst),
	.CE(un1_state_29_0_0)
);
// @20:112
  FDC wr_en_R_Z (
	.Q(wr_en_R),
	.D(wr_en_R_0),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDCE \vec_in_AQ_sel_Z[0]  (
	.Q(vec_in_AQ_sel[0]),
	.D(state_5),
	.C(clk),
	.CLR(rst),
	.CE(row_sel_R_0_sqmuxa_0_a6_0_a2_lut6_2_O5)
);
// @20:112
  FDCE \vec_in_AQ_sel_Z[1]  (
	.Q(vec_in_AQ_sel[1]),
	.D(state[2]),
	.C(clk),
	.CLR(rst),
	.CE(row_sel_R_0_sqmuxa_0_a6_0_a2_lut6_2_O5)
);
// @20:112
  FDC w_in_a_vec_sub_Z (
	.Q(w_in_a_vec_sub),
	.D(w_in_a_vec_sub_0),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDC start_inv_sqrt_Z (
	.Q(start_inv_sqrt),
	.D(start_inv_sqrt_0),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDC \single_in_R_sel_Z[0]  (
	.Q(single_in_R_sel[0]),
	.D(single_in_R_sel_0[0]),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDC pre_red_mat_reg_Z (
	.Q(red_mat_reg),
	.D(pre_red_mat_reg),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDC done_Z (
	.Q(done_QR),
	.D(done),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDC \wr_en_AQ_sel_Z[0]  (
	.Q(wr_en_AQ_sel[0]),
	.D(wr_en_AQ_sel_0[0]),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDC \k_Z[0]  (
	.Q(col_sel_AQ_int[0]),
	.D(N_214_i),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDC \k_Z[1]  (
	.Q(col_sel_AQ_int[1]),
	.D(N_216_i),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDC \j_Z[0]  (
	.Q(col_sel_AQ2_int[0]),
	.D(N_231_i),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDC \j_Z[1]  (
	.Q(col_sel_AQ2_int[1]),
	.D(j_RNO[1]),
	.C(clk),
	.CLR(rst)
);
// @20:156
  FDP \state_Z[8]  (
	.Q(state_8),
	.D(N_201_i),
	.C(clk),
	.PRE(rst)
);
// @20:184
  FDC \state_Z[7]  (
	.Q(state[7]),
	.D(state_ns[1]),
	.C(clk),
	.CLR(rst)
);
// @20:199
  FDC \state_Z[6]  (
	.Q(state[6]),
	.D(state_ns[2]),
	.C(clk),
	.CLR(rst)
);
// @20:208
  FDC \state_Z[5]  (
	.Q(state_5),
	.D(state_ns[3]),
	.C(clk),
	.CLR(rst)
);
// @20:221
  FDC \state_Z[4]  (
	.Q(state[4]),
	.D(state_ns[4]),
	.C(clk),
	.CLR(rst)
);
// @20:248
  FDC \state_Z[3]  (
	.Q(state_3),
	.D(state_ns[5]),
	.C(clk),
	.CLR(rst)
);
// @20:265
  FDC \state_Z[2]  (
	.Q(state[2]),
	.D(state_ns[6]),
	.C(clk),
	.CLR(rst)
);
// @20:276
  FDC \state_Z[1]  (
	.Q(state[1]),
	.D(state_ns[7]),
	.C(clk),
	.CLR(rst)
);
// @20:308
  FDC \state_Z[0]  (
	.Q(state[0]),
	.D(N_210_i),
	.C(clk),
	.CLR(rst)
);
// @20:112
  FDPE \in_b_vec_mult_sel_Z[0]  (
	.Q(in_b_vec_mult_sel[0]),
	.D(row_sel_R_0_sqmuxa),
	.C(clk),
	.PRE(rst),
	.CE(un1_state_23_0_0_o2_lut6_2_O6)
);
// @20:154
  LUT6 un1_state_29_0_0_cZ (
	.I0(done_inner_prod),
	.I1(state[1]),
	.I2(state[2]),
	.I3(state[4]),
	.I4(state_5),
	.I5(done_inv_sqrt),
	.O(un1_state_29_0_0)
);
defparam un1_state_29_0_0_cZ.INIT=64'hFFFFFFECFFECFFEC;
// @20:112
  LUT5_L \mult_counter_RNO[2]  (
	.I0(mult_counter[1]),
	.I1(done_inner_prod),
	.I2(state[2]),
	.I3(state_5),
	.I4(done_inv_sqrt),
	.LO(N_514_i)
);
defparam \mult_counter_RNO[2] .INIT=32'h002A2A2A;
// @20:112
  LUT6_L \state_ns_0[5]  (
	.I0(state_3),
	.I1(state[1]),
	.I2(mult_counter[2]),
	.I3(state_ns_2_tz[5]),
	.I4(N_526),
	.I5(N_676),
	.LO(state_ns[5])
);
defparam \state_ns_0[5] .INIT=64'hFFFFFFFFEAAAC000;
// @20:112
  LUT6_L \row_sel_AQ2_RNO[0]  (
	.I0(start_QR),
	.I1(state[1]),
	.I2(mult_counter[2]),
	.I3(state_8),
	.I4(row_sel_AQ[0]),
	.I5(N_676),
	.LO(N_218_i)
);
defparam \row_sel_AQ2_RNO[0] .INIT=64'h000000000000153F;
// @20:112
  LUT6_L \in_a_inner_prod_sel_e[0]  (
	.I0(state_3),
	.I1(state[7]),
	.I2(state_8),
	.I3(in_a_inner_prod_sel[0]),
	.I4(N_676),
	.I5(N_652),
	.LO(in_a_inner_prod_sel_0[0])
);
defparam \in_a_inner_prod_sel_e[0] .INIT=64'hFEFEFEFEFEFEFFEE;
// @20:154
  LUT6 un1_state_33_0_0_cZ (
	.I0(state_3),
	.I1(start_QR),
	.I2(state[7]),
	.I3(state_8),
	.I4(N_706),
	.I5(N_676),
	.O(un1_state_33_0_0)
);
defparam un1_state_33_0_0_cZ.INIT=64'hFFFFFFFFFFFFFEFA;
// @20:154
  LUT6_L un1_state_28_i_0_3 (
	.I0(state[7]),
	.I1(done_inner_prod),
	.I2(state[2]),
	.I3(state_5),
	.I4(state_8),
	.I5(N_662),
	.LO(N_196_3)
);
defparam un1_state_28_i_0_3.INIT=64'hFFFFFFFFFFFFFFBA;
// @20:112
  LUT6_L \state_ns_0[2]  (
	.I0(state[6]),
	.I1(state[7]),
	.I2(done_inner_prod),
	.I3(red_mat_reg),
	.I4(row_sel_AQ[1]),
	.I5(row_sel_AQ[0]),
	.LO(state_ns[2])
);
defparam \state_ns_0[2] .INIT=64'hCECECE0A0A0A0A0A;
// @20:112
  LUT6_L \state_ns_0[6]  (
	.I0(state_3),
	.I1(done_inner_prod),
	.I2(state[2]),
	.I3(red_mat_reg),
	.I4(row_sel_AQ[1]),
	.I5(row_sel_AQ[0]),
	.LO(state_ns[6])
);
defparam \state_ns_0[6] .INIT=64'hBABABA3030303030;
// @20:154
  LUT6 \j_RNO_0[1]  (
	.I0(col_sel_AQ2_int[0]),
	.I1(state[1]),
	.I2(state[4]),
	.I3(mult_counter[2]),
	.I4(col_sel_AQ_int[1]),
	.I5(col_sel_AQ_int[0]),
	.O(N_106_1)
);
defparam \j_RNO_0[1] .INIT=64'h00008800F8000000;
// @20:112
  LUT4_L w_in_a_vec_sub_e (
	.I0(done_inner_prod),
	.I1(state[1]),
	.I2(state[2]),
	.I3(w_in_a_vec_sub),
	.LO(w_in_a_vec_sub_0)
);
defparam w_in_a_vec_sub_e.INIT=16'hB3A0;
// @20:112
  LUT6_L \k_RNO[0]  (
	.I0(col_sel_AQ2_int[1]),
	.I1(red_mat_reg),
	.I2(mult_counter[2]),
	.I3(state_8),
	.I4(col_sel_AQ_int[0]),
	.I5(N_495),
	.LO(N_214_i)
);
defparam \k_RNO[0] .INIT=64'h00FF0000001F00E0;
// @20:112
  LUT4_L \state_ns_0[3]  (
	.I0(state[6]),
	.I1(done_inner_prod),
	.I2(state_5),
	.I3(done_inv_sqrt),
	.LO(state_ns[3])
);
defparam \state_ns_0[3] .INIT=16'h88F8;
// @20:112
  LUT4_L pre_red_mat_reg_e (
	.I0(red_mat_reg_0),
	.I1(start_QR),
	.I2(red_mat_reg),
	.I3(state_8),
	.LO(pre_red_mat_reg)
);
defparam pre_red_mat_reg_e.INIT=16'hB8F0;
// @20:112
  LUT3_L done_e (
	.I0(done_QR),
	.I1(state[0]),
	.I2(state_8),
	.LO(done)
);
defparam done_e.INIT=8'hCE;
// @20:154
  LUT6 un1_state_1_sqmuxa_3_0_o2_0 (
	.I0(col_sel_AQ2_int[1]),
	.I1(red_mat_reg),
	.I2(mult_counter[2]),
	.I3(state_8),
	.I4(col_sel_AQ_int[1]),
	.I5(N_495),
	.O(N_652)
);
defparam un1_state_1_sqmuxa_3_0_o2_0.INIT=64'hFF00FF00FFE0FFC0;
// @20:154
  LUT6 \state_RNI7A6I2[4]  (
	.I0(col_sel_AQ2_int[1]),
	.I1(state[4]),
	.I2(red_mat_reg),
	.I3(col_sel_AQ_int[1]),
	.I4(col_sel_AQ_int[0]),
	.I5(N_495),
	.O(N_527)
);
defparam \state_RNI7A6I2[4] .INIT=64'h000C0000050D0505;
// @20:112
  LUT5_L \state_ns_0[1]  (
	.I0(start_QR),
	.I1(state[7]),
	.I2(state_8),
	.I3(N_526),
	.I4(N_503),
	.LO(state_ns[1])
);
defparam \state_ns_0[1] .INIT=32'hECA0FFFF;
// @20:156
  LUT6_L \state_RNO[8]  (
	.I0(state[0]),
	.I1(state[6]),
	.I2(start_QR),
	.I3(state[2]),
	.I4(state_5),
	.I5(N_201_2),
	.LO(N_201_i)
);
defparam \state_RNO[8] .INIT=64'h0000000000000023;
// @20:112
  LUT6_L wr_en_AQ_int_e (
	.I0(wr_en_AQ_int),
	.I1(state[6]),
	.I2(state[2]),
	.I3(mult_counter[2]),
	.I4(un1_state_10_0_o6_0_o2_lut6_2_O6),
	.I5(N_653),
	.LO(wr_en_AQ_int_0)
);
defparam wr_en_AQ_int_e.INIT=64'hAAAAAAAAABAAA8A8;
// @20:112
  LUT5_L wr_en_R_e (
	.I0(state[6]),
	.I1(wr_en_R),
	.I2(state[2]),
	.I3(state[4]),
	.I4(N_196_3),
	.LO(wr_en_R_0)
);
defparam wr_en_R_e.INIT=32'hCCCCDDD8;
// @20:154
  LUT6_L \j_RNO_1[1]  (
	.I0(col_sel_AQ2_int[1]),
	.I1(state[1]),
	.I2(mult_counter[2]),
	.I3(state_8),
	.I4(col_sel_AQ_int[0]),
	.I5(N_527),
	.LO(N_106_2)
);
defparam \j_RNO_1[1] .INIT=64'hF0FAF0FA002A000A;
// @20:112
  LUT4_L \k_RNO[1]  (
	.I0(state_8),
	.I1(col_sel_AQ_int[1]),
	.I2(col_sel_AQ_int[0]),
	.I3(N_503),
	.LO(N_216_i)
);
defparam \k_RNO[1] .INIT=16'h4414;
// @20:112
  LUT6_L \row_sel_AQ2_RNO[1]  (
	.I0(start_QR),
	.I1(state_8),
	.I2(row_sel_AQ[1]),
	.I3(row_sel_AQ[0]),
	.I4(N_706),
	.I5(N_676),
	.LO(N_220_i)
);
defparam \row_sel_AQ2_RNO[1] .INIT=64'h0000000000000770;
// @20:112
  LUT6_L start_inner_prod_e (
	.I0(start_QR),
	.I1(state_8),
	.I2(start_inner_prod),
	.I3(un1_state_1_sqmuxa_3_0_o6_0_o2_lut6_2_O6),
	.I4(N_706),
	.I5(N_676),
	.LO(start_inner_prod_0)
);
defparam start_inner_prod_e.INIT=64'hFFFFFFFFFFFF88B8;
// @20:154
  LUT6_L \j_RNO_cZ[1]  (
	.I0(col_sel_AQ2_int[1]),
	.I1(state[4]),
	.I2(state_8),
	.I3(N_495),
	.I4(N_106_1),
	.I5(N_106_2),
	.LO(j_RNO[1])
);
defparam \j_RNO_cZ[1] .INIT=64'hFFFFFFFFFFFF0200;
// @20:112
  LUT6_L \j_RNO[0]  (
	.I0(mult_counter[2]),
	.I1(state_8),
	.I2(col_sel_AQ_int[0]),
	.I3(N_495),
	.I4(N_686),
	.I5(N_527),
	.LO(N_231_i)
);
defparam \j_RNO[0] .INIT=64'h0000111100003313;
//@20:112
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
// @20:154
  LUT4 un1_state_23_0_0_o2_lut6_2_o6 (
	.I0(done_inner_prod),
	.I1(state[2]),
	.I2(state_5),
	.I3(done_inv_sqrt),
	.O(un1_state_23_0_0_o2_lut6_2_O6)
);
defparam un1_state_23_0_0_o2_lut6_2_o6.INIT=16'hF888;
// @20:154
  LUT5 un1_state_23_0_0_o2_lut6_2_o5 (
	.I0(mult_counter[0]),
	.I1(done_inner_prod),
	.I2(state[2]),
	.I3(state_5),
	.I4(done_inv_sqrt),
	.O(N_513_i)
);
defparam un1_state_23_0_0_o2_lut6_2_o5.INIT=32'h002A2A2A;
// @20:154
  LUT2 un1_state_25_0_0_o2_lut6_2_o6 (
	.I0(state_5),
	.I1(state_8),
	.O(N_653)
);
defparam un1_state_25_0_0_o2_lut6_2_o6.INIT=4'hE;
// @20:154
  LUT5 un1_state_25_0_0_o2_lut6_2_o5 (
	.I0(state[6]),
	.I1(done_inner_prod),
	.I2(state_5),
	.I3(start_inv_sqrt),
	.I4(state_8),
	.O(start_inv_sqrt_0)
);
defparam un1_state_25_0_0_o2_lut6_2_o5.INIT=32'hAAAAAFA8;
// @20:154
  LUT2 un1_state_10_0_o6_0_o2_lut6_2_o6 (
	.I0(state[1]),
	.I1(state[4]),
	.O(un1_state_10_0_o6_0_o2_lut6_2_O6)
);
defparam un1_state_10_0_o6_0_o2_lut6_2_o6.INIT=4'hE;
// @20:154
  LUT4 un1_state_10_0_o6_0_o2_lut6_2_o5 (
	.I0(state[1]),
	.I1(done_inner_prod),
	.I2(state[2]),
	.I3(mult_counter[2]),
	.O(state_ns[7])
);
defparam un1_state_10_0_o6_0_o2_lut6_2_o5.INIT=16'hC0EA;
// @20:154
  LUT2 un1_state_1_sqmuxa_3_0_o6_0_o2_lut6_2_o6 (
	.I0(state_3),
	.I1(state[7]),
	.O(un1_state_1_sqmuxa_3_0_o6_0_o2_lut6_2_O6)
);
defparam un1_state_1_sqmuxa_3_0_o6_0_o2_lut6_2_o6.INIT=4'hE;
// @20:154
  LUT5 un1_state_1_sqmuxa_3_0_o6_0_o2_lut6_2_o5 (
	.I0(state_3),
	.I1(state[7]),
	.I2(state_8),
	.I3(in_b_inner_prod_sel[0]),
	.I4(N_652),
	.O(in_b_inner_prod_sel_0[0])
);
defparam un1_state_1_sqmuxa_3_0_o6_0_o2_lut6_2_o5.INIT=32'hFEFEFFEE;
// @20:154
  LUT2 \j_RNID3171_o6[0]  (
	.I0(col_sel_AQ2_int[0]),
	.I1(state[1]),
	.O(N_495)
);
defparam \j_RNID3171_o6[0] .INIT=4'h7;
// @20:154
  LUT5 \j_RNID3171_o5[0]  (
	.I0(col_sel_AQ2_int[0]),
	.I1(col_sel_AQ2_int[1]),
	.I2(state[1]),
	.I3(red_mat_reg),
	.I4(mult_counter[2]),
	.O(N_503)
);
defparam \j_RNID3171_o5[0] .INIT=32'h5F7FFFFF;
// @20:154
  LUT2 un1_state_1_sqmuxa_4_0_0_a3_lut6_2_o6 (
	.I0(state[1]),
	.I1(mult_counter[2]),
	.O(N_706)
);
defparam un1_state_1_sqmuxa_4_0_0_a3_lut6_2_o6.INIT=4'h8;
// @20:154
  LUT5 un1_state_1_sqmuxa_4_0_0_a3_lut6_2_o5 (
	.I0(col_sel_AQ2_int[0]),
	.I1(state[1]),
	.I2(state[4]),
	.I3(mult_counter[2]),
	.I4(col_sel_AQ_int[0]),
	.O(N_686)
);
defparam un1_state_1_sqmuxa_4_0_0_a3_lut6_2_o5.INIT=32'h11550155;
// @20:112
  LUT2 \state_ns_0_a2_lut6_2_o6[4]  (
	.I0(state[4]),
	.I1(mult_counter[2]),
	.O(N_662)
);
defparam \state_ns_0_a2_lut6_2_o6[4] .INIT=4'h2;
// @20:112
  LUT4 \state_ns_0_a2_lut6_2_o5[4]  (
	.I0(state_3),
	.I1(state[7]),
	.I2(state[4]),
	.I3(state[1]),
	.O(N_201_2)
);
defparam \state_ns_0_a2_lut6_2_o5[4] .INIT=16'hFFFE;
// @20:210
  LUT2 row_sel_R_0_sqmuxa_0_a6_0_a2_lut6_2_o6 (
	.I0(state_5),
	.I1(done_inv_sqrt),
	.O(row_sel_R_0_sqmuxa)
);
defparam row_sel_R_0_sqmuxa_0_a6_0_a2_lut6_2_o6.INIT=4'h8;
// @20:210
  LUT5 row_sel_R_0_sqmuxa_0_a6_0_a2_lut6_2_o5 (
	.I0(done_inner_prod),
	.I1(state[2]),
	.I2(state_5),
	.I3(state_8),
	.I4(done_inv_sqrt),
	.O(row_sel_R_0_sqmuxa_0_a6_0_a2_lut6_2_O5)
);
defparam row_sel_R_0_sqmuxa_0_a6_0_a2_lut6_2_o5.INIT=32'hFFF8FF88;
// @13:37
  LUT2 \state_RNI5VEU_o6[4]  (
	.I0(rst),
	.I1(state[4]),
	.O(N_512_i)
);
defparam \state_RNI5VEU_o6[4] .INIT=4'h4;
// @13:37
  LUT4 \state_RNI5VEU_o5[4]  (
	.I0(state[4]),
	.I1(mult_counter[2]),
	.I2(state_5),
	.I3(done_inv_sqrt),
	.O(state_ns[4])
);
defparam \state_RNI5VEU_o5[4] .INIT=16'hF222;
// @20:112
  LUT3 \state_ns_0_o3_lut6_2_o6[1]  (
	.I0(red_mat_reg),
	.I1(row_sel_AQ[1]),
	.I2(row_sel_AQ[0]),
	.O(N_526)
);
defparam \state_ns_0_o3_lut6_2_o6[1] .INIT=8'h1F;
// @20:112
  LUT3 \state_ns_0_o3_lut6_2_o5[1]  (
	.I0(col_sel_AQ2_int[0]),
	.I1(col_sel_AQ2_int[1]),
	.I2(red_mat_reg),
	.O(state_ns_2_tz[5])
);
defparam \state_ns_0_o3_lut6_2_o5[1] .INIT=8'h57;
// @20:112
  LUT5 \state_ns_0_a2_0_lut6_2_o6[5]  (
	.I0(state[4]),
	.I1(red_mat_reg),
	.I2(mult_counter[2]),
	.I3(col_sel_AQ_int[1]),
	.I4(col_sel_AQ_int[0]),
	.O(N_676)
);
defparam \state_ns_0_a2_0_lut6_2_o6[5] .INIT=32'h0020A0A0;
// @20:112
  LUT5 \state_ns_0_a2_0_lut6_2_o5[5]  (
	.I0(state[4]),
	.I1(red_mat_reg),
	.I2(mult_counter[2]),
	.I3(col_sel_AQ_int[1]),
	.I4(col_sel_AQ_int[0]),
	.O(N_210_i)
);
defparam \state_ns_0_a2_0_lut6_2_o5[5] .INIT=32'hA0800000;
endmodule /* qr_decomp_ctl */

module qr_decomp (
  out_Q_r,
  out_Q_i,
  col_sel_R,
  out_R_i,
  out_R_r,
  col_sel_AQ,
  in_A_r,
  in_A_i,
  clk,
  rst,
  wr_A_QR,
  start_QR,
  done_QR,
  red_mat_reg_0
)
;
output [47:0] out_Q_r ;
output [47:0] out_Q_i ;
input [1:0] col_sel_R ;
output [47:12] out_R_i ;
output [47:0] out_R_r ;
input [1:0] col_sel_AQ ;
input [47:0] in_A_r ;
input [47:0] in_A_i ;
input clk ;
input rst ;
input wr_A_QR ;
input start_QR ;
output done_QR ;
input red_mat_reg_0 ;
wire clk ;
wire rst ;
wire wr_A_QR ;
wire start_QR ;
wire done_QR ;
wire red_mat_reg_0 ;
wire [0:0] col_sel_AQ2_mux_i_m3_lut6_2_O6;
wire [0:0] col_sel_AQ2_mux_i_m3_lut6_2_O5;
wire [1:0] col_sel_AQ_int;
wire [0:0] w_col_sel_AQ_mux_i_m3_lut6_2_O6;
wire [0:0] w_col_sel_AQ_mux_i_m3_lut6_2_O5;
wire [11:0] vec_out_r_AQ_0;
wire [11:1] vec_in_r_AQ_mux_0;
wire [11:0] vec_out_r_AQ_3;
wire [11:0] vec_in_r_AQ_mux_3;
wire [11:0] vec_out_r_AQ_2;
wire [11:0] vec_out_r_AQ_1;
wire [11:0] vec_in_r_AQ_mux_2;
wire [11:0] vec_in_r_AQ_mux_1;
wire [11:0] vec_out_i_AQ_0;
wire [11:0] vec_in_i_AQ_mux_0;
wire [11:0] vec_out_i_AQ_3;
wire [11:0] vec_in_i_AQ_mux_3;
wire [11:0] vec_out_i_AQ_2;
wire [11:0] vec_out_i_AQ_1;
wire [11:0] vec_in_i_AQ_mux_2;
wire [11:0] vec_in_i_AQ_mux_1;
wire [1:0] row_sel_AQ;
wire [7:1] single_out_r_AQ2;
wire [11:0] single_out_i_AQ2;
wire [11:0] single_out_i_AQ;
wire [8:1] single_out_r_AQ;
wire [1:0] row_sel_R;
wire [0:0] col_sel_R_mux_i_m3_lut6_2_O6;
wire [0:0] col_sel_R_mux_i_m3_lut6_2_O5;
wire [11:11] single_in_r_R_mux;
wire [0:0] wr_en_AQ_sel;
wire [1:0] col_sel_R_int;
wire [11:0] out_inner_prod_i;
wire [11:0] out_inner_prod_r;
wire [0:0] in_a_inner_prod_sel;
wire [0:0] in_b_inner_prod_sel;
wire [10:0] output_iv;
wire [10:1] output_iv_0;
wire [11:11] out_r_vec_sub_0;
wire [11:11] out_i_vec_sub_0;
wire [0:0] in_b_vec_mult_sel;
wire [11:0] out_i_vec_mult_2;
wire [11:0] out_r_vec_mult_2;
wire [11:0] out_inv_sqrt;
wire [11:0] out_i_vec_mult_1;
wire [11:0] out_r_vec_mult_1;
wire [11:0] out_i_vec_mult_0;
wire [11:0] out_r_vec_mult_0;
wire [11:0] out_i_vec_mult_3;
wire [11:0] out_r_vec_mult_3;
wire [11:11] in_a_r_reg_3;
wire [11:11] in_a_r_reg_2;
wire [11:11] in_a_r_reg_1;
wire [11:0] in_a_r_reg_0;
wire [11:11] in_a_i_reg_3;
wire [11:11] in_a_i_reg_2;
wire [11:11] in_a_i_reg_1;
wire [11:11] in_a_i_reg_0;
wire [22:1] pre_out;
wire [10:0] pre_out_i_m;
wire [11:1] pre_out_0;
wire [6:0] pre_out_i_m_0;
wire [11:1] pre_out_1;
wire [11:1] pre_out_2;
wire [0:0] pre_out_i_m_1;
wire [11:2] pre_out_3;
wire [11:11] pre_out_4;
wire [0:0] pre_out_i_m_2;
wire [0:0] pre_out_i_m_3;
wire [0:0] pre_out_i_m_4;
wire [11:11] pre_out_5;
wire [11:11] pre_out_6;
wire [10:0] un8_rnd_out;
wire [19:19] un8_rnd_out_P;
wire [23:23] pre_out_reg;
wire [0:0] single_in_R_sel;
wire [0:0] single_in_R_sel_0;
wire [1:0] w_col_sel_AQ_int;
wire [1:0] col_sel_AQ2_int;
wire [8:3] state;
wire [0:0] wr_en_AQ_sel_0;
wire [1:0] vec_in_AQ_sel;
wire wr_en_AQ_mux_i_m3_lut6_2_O6 ;
wire N_507 ;
wire N_508 ;
wire N_505 ;
wire N_506 ;
wire N_645 ;
wire N_641 ;
wire N_637 ;
wire N_632 ;
wire N_628 ;
wire N_624 ;
wire N_623 ;
wire N_622 ;
wire N_612 ;
wire N_607 ;
wire N_606 ;
wire N_605 ;
wire N_597 ;
wire N_596 ;
wire N_595 ;
wire N_586 ;
wire N_585 ;
wire N_584 ;
wire N_583 ;
wire N_582 ;
wire N_571 ;
wire N_568 ;
wire N_567 ;
wire N_566 ;
wire N_555 ;
wire N_552 ;
wire N_549 ;
wire wr_en_R ;
wire N_28_i ;
wire N_30_i ;
wire N_32_i ;
wire N_34_i ;
wire N_383_i ;
wire N_384_i ;
wire N_385_i ;
wire N_386_i ;
wire N_387_i ;
wire N_388_i ;
wire N_389_i ;
wire N_390_i ;
wire N_391_i ;
wire N_392_i ;
wire N_393_i ;
wire N_394_i ;
wire N_395_i ;
wire N_396_i ;
wire N_397_i ;
wire N_398_i ;
wire N_399_i ;
wire N_400_i ;
wire N_401_i ;
wire start_inner_prod ;
wire red_mat_reg ;
wire done_inner_prod ;
wire N_501 ;
wire N_500 ;
wire N_425_i ;
wire N_428_i ;
wire N_431_i ;
wire N_434_i ;
wire w_in_a_vec_sub ;
wire un5_output ;
wire un5_output_0 ;
wire un5_output_1 ;
wire un5_output_2 ;
wire un5_output_3 ;
wire un5_output_4 ;
wire N_512_i ;
wire PATTERNDETECT_32 ;
wire done_inv_sqrt ;
wire start_inv_sqrt ;
wire wr_en_AQ_int ;
wire GND ;
wire VCC ;
// @26:328
  mat_regs A_Q_mat (
	.col_sel_AQ2_mux_i_m3_lut6_2_O6(col_sel_AQ2_mux_i_m3_lut6_2_O6[0]),
	.col_sel_AQ2_mux_i_m3_lut6_2_O5(col_sel_AQ2_mux_i_m3_lut6_2_O5[0]),
	.col_sel_AQ_int(col_sel_AQ_int[1:0]),
	.w_col_sel_AQ_mux_i_m3_lut6_2_O6(w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]),
	.w_col_sel_AQ_mux_i_m3_lut6_2_O5(w_col_sel_AQ_mux_i_m3_lut6_2_O5[0]),
	.vec_out_r_AQ_0(vec_out_r_AQ_0[11:0]),
	.vec_in_r_AQ_mux_0_4(vec_in_r_AQ_mux_0[5]),
	.vec_in_r_AQ_mux_0_9(vec_in_r_AQ_mux_0[10]),
	.vec_in_r_AQ_mux_0_6(vec_in_r_AQ_mux_0[7]),
	.vec_in_r_AQ_mux_0_0(vec_in_r_AQ_mux_0[1]),
	.vec_in_r_AQ_mux_0_1(vec_in_r_AQ_mux_0[2]),
	.vec_in_r_AQ_mux_0_2(vec_in_r_AQ_mux_0[3]),
	.vec_in_r_AQ_mux_0_3(vec_in_r_AQ_mux_0[4]),
	.vec_in_r_AQ_mux_0_10(vec_in_r_AQ_mux_0[11]),
	.vec_in_r_AQ_mux_0_7(vec_in_r_AQ_mux_0[8]),
	.vec_in_r_AQ_mux_0_8(vec_in_r_AQ_mux_0[9]),
	.vec_out_r_AQ_3(vec_out_r_AQ_3[11:0]),
	.vec_in_r_AQ_mux_3(vec_in_r_AQ_mux_3[11:0]),
	.out_Q_r(out_Q_r[47:0]),
	.vec_out_r_AQ_2(vec_out_r_AQ_2[11:0]),
	.vec_out_r_AQ_1(vec_out_r_AQ_1[11:0]),
	.vec_in_r_AQ_mux_2(vec_in_r_AQ_mux_2[11:0]),
	.vec_in_r_AQ_mux_1(vec_in_r_AQ_mux_1[11:0]),
	.vec_out_i_AQ_0(vec_out_i_AQ_0[11:0]),
	.vec_in_i_AQ_mux_0_5(vec_in_i_AQ_mux_0[5]),
	.vec_in_i_AQ_mux_0_10(vec_in_i_AQ_mux_0[10]),
	.vec_in_i_AQ_mux_0_7(vec_in_i_AQ_mux_0[7]),
	.vec_in_i_AQ_mux_0_0(vec_in_i_AQ_mux_0[0]),
	.vec_in_i_AQ_mux_0_1(vec_in_i_AQ_mux_0[1]),
	.vec_in_i_AQ_mux_0_4(vec_in_i_AQ_mux_0[4]),
	.vec_in_i_AQ_mux_0_6(vec_in_i_AQ_mux_0[6]),
	.vec_in_i_AQ_mux_0_11(vec_in_i_AQ_mux_0[11]),
	.vec_in_i_AQ_mux_0_8(vec_in_i_AQ_mux_0[8]),
	.vec_in_i_AQ_mux_0_9(vec_in_i_AQ_mux_0[9]),
	.vec_out_i_AQ_3(vec_out_i_AQ_3[11:0]),
	.vec_in_i_AQ_mux_3(vec_in_i_AQ_mux_3[11:0]),
	.out_Q_i(out_Q_i[47:0]),
	.vec_out_i_AQ_2(vec_out_i_AQ_2[11:0]),
	.vec_out_i_AQ_1(vec_out_i_AQ_1[11:0]),
	.vec_in_i_AQ_mux_2(vec_in_i_AQ_mux_2[11:0]),
	.vec_in_i_AQ_mux_1(vec_in_i_AQ_mux_1[11:0]),
	.row_sel_AQ(row_sel_AQ[1:0]),
	.single_out_r_AQ2_1(single_out_r_AQ2[2]),
	.single_out_r_AQ2_6(single_out_r_AQ2[7]),
	.single_out_r_AQ2_4(single_out_r_AQ2[5]),
	.single_out_r_AQ2_0(single_out_r_AQ2[1]),
	.single_out_i_AQ2_1(single_out_i_AQ2[1]),
	.single_out_i_AQ2_5(single_out_i_AQ2[5]),
	.single_out_i_AQ2_4(single_out_i_AQ2[4]),
	.single_out_i_AQ2_0(single_out_i_AQ2[0]),
	.single_out_i_AQ2_11(single_out_i_AQ2[11]),
	.single_out_i_AQ_1(single_out_i_AQ[1]),
	.single_out_i_AQ_0(single_out_i_AQ[0]),
	.single_out_i_AQ_8(single_out_i_AQ[8]),
	.single_out_i_AQ_10(single_out_i_AQ[10]),
	.single_out_i_AQ_11(single_out_i_AQ[11]),
	.single_out_i_AQ_9(single_out_i_AQ[9]),
	.single_out_i_AQ_4(single_out_i_AQ[4]),
	.single_out_r_AQ_4(single_out_r_AQ[5]),
	.single_out_r_AQ_2(single_out_r_AQ[3]),
	.single_out_r_AQ_7(single_out_r_AQ[8]),
	.single_out_r_AQ_1(single_out_r_AQ[2]),
	.single_out_r_AQ_0(single_out_r_AQ[1]),
	.clk(clk),
	.wr_en_AQ_mux_i_m3_lut6_2_O6(wr_en_AQ_mux_i_m3_lut6_2_O6),
	.N_507(N_507),
	.N_508(N_508),
	.N_505(N_505),
	.N_506(N_506),
	.N_645(N_645),
	.N_641(N_641),
	.N_637(N_637),
	.N_632(N_632),
	.N_628(N_628),
	.N_624(N_624),
	.N_623(N_623),
	.N_622(N_622),
	.N_612(N_612),
	.N_607(N_607),
	.N_606(N_606),
	.N_605(N_605),
	.N_597(N_597),
	.N_596(N_596),
	.N_595(N_595),
	.N_586(N_586),
	.N_585(N_585),
	.N_584(N_584),
	.N_583(N_583),
	.N_582(N_582),
	.N_571(N_571),
	.N_568(N_568),
	.N_567(N_567),
	.N_566(N_566),
	.N_555(N_555),
	.N_552(N_552),
	.N_549(N_549)
);
// @26:350
  r_mat_regs R_mat (
	.row_sel_R(row_sel_R[1:0]),
	.col_sel_R_mux_i_m3_lut6_2_O6(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.col_sel_R_mux_i_m3_lut6_2_O5(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.single_in_r_R_mux(single_in_r_R_mux[11]),
	.wr_en_AQ_sel(wr_en_AQ_sel[0]),
	.col_sel_R(col_sel_R[1:0]),
	.col_sel_R_int(col_sel_R_int[1:0]),
	.out_R_i(out_R_i[47:12]),
	.out_R_r(out_R_r[47:0]),
	.wr_en_R(wr_en_R),
	.N_28_i(N_28_i),
	.clk(clk),
	.N_30_i(N_30_i),
	.N_32_i(N_32_i),
	.N_34_i(N_34_i),
	.N_383_i(N_383_i),
	.N_384_i(N_384_i),
	.N_385_i(N_385_i),
	.N_386_i(N_386_i),
	.N_387_i(N_387_i),
	.N_388_i(N_388_i),
	.N_389_i(N_389_i),
	.N_390_i(N_390_i),
	.N_391_i(N_391_i),
	.N_392_i(N_392_i),
	.N_393_i(N_393_i),
	.N_394_i(N_394_i),
	.N_395_i(N_395_i),
	.N_396_i(N_396_i),
	.N_397_i(N_397_i),
	.N_398_i(N_398_i),
	.N_399_i(N_399_i),
	.N_400_i(N_400_i),
	.N_401_i(N_401_i)
);
// @26:363
  inner_prod inner_prod_inst (
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.in_a_inner_prod_sel(in_a_inner_prod_sel[0]),
	.single_out_r_AQ_7(single_out_r_AQ[8]),
	.single_out_r_AQ_0(single_out_r_AQ[1]),
	.single_out_r_AQ_1(single_out_r_AQ[2]),
	.single_out_r_AQ_4(single_out_r_AQ[5]),
	.single_out_r_AQ_2(single_out_r_AQ[3]),
	.in_b_inner_prod_sel(in_b_inner_prod_sel[0]),
	.vec_in_r_AQ_mux_0_6(vec_in_r_AQ_mux_0[7]),
	.vec_in_r_AQ_mux_0_7(vec_in_r_AQ_mux_0[8]),
	.vec_in_r_AQ_mux_0_0(vec_in_r_AQ_mux_0[1]),
	.vec_in_r_AQ_mux_0_9(vec_in_r_AQ_mux_0[10]),
	.vec_in_r_AQ_mux_0_1(vec_in_r_AQ_mux_0[2]),
	.vec_in_r_AQ_mux_0_8(vec_in_r_AQ_mux_0[9]),
	.vec_in_r_AQ_mux_0_4(vec_in_r_AQ_mux_0[5]),
	.vec_in_r_AQ_mux_0_3(vec_in_r_AQ_mux_0[4]),
	.vec_in_r_AQ_mux_0_2(vec_in_r_AQ_mux_0[3]),
	.vec_in_r_AQ_mux_0_10(vec_in_r_AQ_mux_0[11]),
	.vec_in_i_AQ_mux_0_7(vec_in_i_AQ_mux_0[7]),
	.vec_in_i_AQ_mux_0_1(vec_in_i_AQ_mux_0[1]),
	.vec_in_i_AQ_mux_0_0(vec_in_i_AQ_mux_0[0]),
	.vec_in_i_AQ_mux_0_6(vec_in_i_AQ_mux_0[6]),
	.vec_in_i_AQ_mux_0_8(vec_in_i_AQ_mux_0[8]),
	.vec_in_i_AQ_mux_0_10(vec_in_i_AQ_mux_0[10]),
	.vec_in_i_AQ_mux_0_5(vec_in_i_AQ_mux_0[5]),
	.vec_in_i_AQ_mux_0_9(vec_in_i_AQ_mux_0[9]),
	.vec_in_i_AQ_mux_0_4(vec_in_i_AQ_mux_0[4]),
	.vec_in_i_AQ_mux_0_11(vec_in_i_AQ_mux_0[11]),
	.single_out_i_AQ_1(single_out_i_AQ[1]),
	.single_out_i_AQ_0(single_out_i_AQ[0]),
	.single_out_i_AQ_8(single_out_i_AQ[8]),
	.single_out_i_AQ_10(single_out_i_AQ[10]),
	.single_out_i_AQ_9(single_out_i_AQ[9]),
	.single_out_i_AQ_4(single_out_i_AQ[4]),
	.single_out_i_AQ_11(single_out_i_AQ[11]),
	.output_iv(output_iv[10:0]),
	.single_out_r_AQ2_4(single_out_r_AQ2[5]),
	.single_out_r_AQ2_0(single_out_r_AQ2[1]),
	.single_out_r_AQ2_1(single_out_r_AQ2[2]),
	.single_out_r_AQ2_6(single_out_r_AQ2[7]),
	.output_iv_0_4(output_iv_0[5]),
	.output_iv_0_7(output_iv_0[8]),
	.output_iv_0_0(output_iv_0[1]),
	.output_iv_0_9(output_iv_0[10]),
	.output_iv_0_1(output_iv_0[2]),
	.output_iv_0_6(output_iv_0[7]),
	.output_iv_0_3(output_iv_0[4]),
	.output_iv_0_2(output_iv_0[3]),
	.output_iv_0_8(output_iv_0[9]),
	.out_r_vec_sub_0(out_r_vec_sub_0[11]),
	.out_i_vec_sub_0(out_i_vec_sub_0[11]),
	.single_out_i_AQ2_0(single_out_i_AQ2[0]),
	.single_out_i_AQ2_5(single_out_i_AQ2[5]),
	.single_out_i_AQ2_4(single_out_i_AQ2[4]),
	.single_out_i_AQ2_1(single_out_i_AQ2[1]),
	.single_out_i_AQ2_11(single_out_i_AQ2[11]),
	.start_inner_prod(start_inner_prod),
	.red_mat_reg(red_mat_reg),
	.clk(clk),
	.rst(rst),
	.done_inner_prod(done_inner_prod),
	.N_623(N_623),
	.N_568(N_568),
	.N_622(N_622),
	.N_507(N_507),
	.N_549(N_549),
	.N_505(N_505),
	.N_597(N_597),
	.N_567(N_567),
	.N_596(N_596),
	.N_628(N_628),
	.N_637(N_637),
	.N_566(N_566),
	.N_506(N_506),
	.N_585(N_585),
	.N_584(N_584),
	.N_612(N_612),
	.N_583(N_583),
	.N_595(N_595),
	.N_508(N_508),
	.N_501(N_501),
	.N_605(N_605),
	.N_624(N_624),
	.N_607(N_607),
	.N_552(N_552),
	.N_555(N_555),
	.N_586(N_586),
	.N_645(N_645),
	.N_641(N_641),
	.N_582(N_582),
	.N_606(N_606),
	.N_632(N_632),
	.N_500(N_500),
	.N_571(N_571)
);
// @26:379
  vec_mult vec_mult_inst (
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.out_i_vec_mult_2(out_i_vec_mult_2[11:0]),
	.out_r_vec_mult_2(out_r_vec_mult_2[11:0]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.vec_out_r_AQ_2(vec_out_r_AQ_2[11:0]),
	.out_inv_sqrt_0(out_inv_sqrt[0]),
	.out_inv_sqrt_1(out_inv_sqrt[1]),
	.out_inv_sqrt_2(out_inv_sqrt[2]),
	.out_inv_sqrt_7(out_inv_sqrt[7]),
	.out_inv_sqrt_8(out_inv_sqrt[8]),
	.out_inv_sqrt_9(out_inv_sqrt[9]),
	.out_inv_sqrt_10(out_inv_sqrt[10]),
	.out_inv_sqrt_11(out_inv_sqrt[11]),
	.vec_out_i_AQ_2(vec_out_i_AQ_2[11:0]),
	.out_i_vec_mult_1(out_i_vec_mult_1[11:0]),
	.out_r_vec_mult_1(out_r_vec_mult_1[11:0]),
	.vec_out_r_AQ_1(vec_out_r_AQ_1[11:0]),
	.vec_out_i_AQ_1(vec_out_i_AQ_1[11:0]),
	.out_i_vec_mult_0(out_i_vec_mult_0[11:0]),
	.out_r_vec_mult_0(out_r_vec_mult_0[11:0]),
	.vec_out_r_AQ_0(vec_out_r_AQ_0[11:0]),
	.vec_out_i_AQ_0(vec_out_i_AQ_0[11:0]),
	.out_i_vec_mult_3(out_i_vec_mult_3[11:0]),
	.out_r_vec_mult_3(out_r_vec_mult_3[11:0]),
	.vec_out_r_AQ_3(vec_out_r_AQ_3[11:0]),
	.vec_out_i_AQ_3(vec_out_i_AQ_3[11:0]),
	.clk(clk),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i)
);
// @26:391
  vec_sub vec_sub_inst (
	.in_a_r_reg_3_11(in_a_r_reg_3[11]),
	.in_a_r_reg_2_11(in_a_r_reg_2[11]),
	.in_a_r_reg_1_11(in_a_r_reg_1[11]),
	.in_a_r_reg_0_0(in_a_r_reg_0[0]),
	.in_a_r_reg_0_11(in_a_r_reg_0[11]),
	.out_Q_r(out_Q_r[47:0]),
	.in_a_i_reg_3_11(in_a_i_reg_3[11]),
	.in_a_i_reg_2_11(in_a_i_reg_2[11]),
	.in_a_i_reg_1_11(in_a_i_reg_1[11]),
	.in_a_i_reg_0_11(in_a_i_reg_0[11]),
	.out_Q_i(out_Q_i[47:0]),
	.out_r_vec_mult_0(out_r_vec_mult_0[11:0]),
	.out_r_vec_mult_1(out_r_vec_mult_1[11:0]),
	.out_r_vec_mult_2(out_r_vec_mult_2[11:0]),
	.pre_out(pre_out[11:1]),
	.out_r_vec_mult_3(out_r_vec_mult_3[11:0]),
	.pre_out_i_m_1(pre_out_i_m[0]),
	.pre_out_0(pre_out_0[11:1]),
	.output_iv({output_iv[10], output_iv_0[9:7], output_iv[6:5], output_iv_0[4], output_iv[3], output_iv_0[2], output_iv[1:0]}),
	.output_iv_0_0(output_iv_0[1]),
	.output_iv_0_1(output_iv[2]),
	.output_iv_0_2(output_iv_0[3]),
	.output_iv_0_3(output_iv[4]),
	.output_iv_0_4(output_iv_0[5]),
	.output_iv_0_6(output_iv[7]),
	.output_iv_0_7(output_iv[8]),
	.output_iv_0_8(output_iv[9]),
	.output_iv_0_9(output_iv_0[10]),
	.out_i_vec_sub_0(out_i_vec_sub_0[11]),
	.out_i_vec_mult_0(out_i_vec_mult_0[11:0]),
	.pre_out_i_m_2(pre_out_i_m_0[0]),
	.out_i_vec_mult_1(out_i_vec_mult_1[11:0]),
	.pre_out_1(pre_out_1[11:1]),
	.pre_out_4(pre_out_2[11]),
	.pre_out_i_m_3(pre_out_i_m_1[0]),
	.out_i_vec_mult_2(out_i_vec_mult_2[11:0]),
	.pre_out_2({pre_out_3[11], pre_out_2[10:1]}),
	.pre_out_5(pre_out_4[11]),
	.out_i_vec_mult_3(out_i_vec_mult_3[11:0]),
	.pre_out_i_m({pre_out_i_m[10:1], pre_out_i_m_2[0]}),
	.pre_out_i_m_0_0(pre_out_i_m_3[0]),
	.pre_out_i_m_0_1(pre_out_i_m_0[1]),
	.pre_out_i_m_0_6(pre_out_i_m_0[6]),
	.pre_out_i_m_0_4(pre_out_i_m_0[4]),
	.pre_out_i_m_4(pre_out_i_m_4[0]),
	.pre_out_6(pre_out_5[11]),
	.pre_out_3_9(pre_out_6[11]),
	.pre_out_3_0(pre_out_3[2]),
	.pre_out_3_1(pre_out_3[3]),
	.pre_out_3_3(pre_out_3[5]),
	.pre_out_3_5(pre_out_3[7]),
	.pre_out_3_7(pre_out_3[9]),
	.pre_out_3_8(pre_out_3[10]),
	.pre_out_3_6(pre_out_3[8]),
	.clk(clk),
	.w_in_a_vec_sub(w_in_a_vec_sub),
	.N_500(N_500),
	.un5_output(un5_output),
	.un5_output_0(un5_output_0),
	.un5_output_1(un5_output_1),
	.un5_output_2(un5_output_2),
	.un5_output_3(un5_output_3),
	.un5_output_4(un5_output_4)
);
// @26:404
  mult_with_reg r_mult (
	.un8_rnd_out(un8_rnd_out[10:0]),
	.un8_rnd_out_P_19(un8_rnd_out_P[19]),
	.out_inv_sqrt_0(out_inv_sqrt[0]),
	.out_inv_sqrt_1(out_inv_sqrt[1]),
	.out_inv_sqrt_2(out_inv_sqrt[2]),
	.out_inv_sqrt_7(out_inv_sqrt[7]),
	.out_inv_sqrt_8(out_inv_sqrt[8]),
	.out_inv_sqrt_9(out_inv_sqrt[9]),
	.out_inv_sqrt_10(out_inv_sqrt[10]),
	.out_inv_sqrt_11(out_inv_sqrt[11]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.pre_out_19(pre_out[19]),
	.pre_out_20(pre_out[20]),
	.pre_out_21(pre_out[21]),
	.pre_out_22(pre_out[22]),
	.pre_out_reg(pre_out_reg[23]),
	.N_425_i(N_425_i),
	.N_428_i(N_428_i),
	.N_431_i(N_431_i),
	.N_434_i(N_434_i),
	.N_512_i(N_512_i),
	.clk(clk),
	.PATTERNDETECT_32(PATTERNDETECT_32)
);
// @26:414
  inv_sqrt inv_sqrt_inst (
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.out_inv_sqrt_9(out_inv_sqrt[9]),
	.out_inv_sqrt_10(out_inv_sqrt[10]),
	.out_inv_sqrt_8(out_inv_sqrt[8]),
	.out_inv_sqrt_7(out_inv_sqrt[7]),
	.out_inv_sqrt_2(out_inv_sqrt[2]),
	.out_inv_sqrt_1(out_inv_sqrt[1]),
	.out_inv_sqrt_11(out_inv_sqrt[11]),
	.out_inv_sqrt_0(out_inv_sqrt[0]),
	.done_inv_sqrt(done_inv_sqrt),
	.clk(clk),
	.rst(rst),
	.start_inv_sqrt(start_inv_sqrt),
	.N_434_i(N_434_i),
	.N_431_i(N_431_i),
	.N_428_i(N_428_i),
	.N_425_i(N_425_i)
);
// @26:426
  qr_decomp_ctl_mux muxes (
	.single_in_R_sel(single_in_R_sel[0]),
	.single_in_R_sel_0(single_in_R_sel_0[0]),
	.w_col_sel_AQ_int(w_col_sel_AQ_int[1:0]),
	.col_sel_AQ(col_sel_AQ[1:0]),
	.wr_en_AQ_sel(wr_en_AQ_sel[0]),
	.w_col_sel_AQ_mux_i_m3_lut6_2_O6(w_col_sel_AQ_mux_i_m3_lut6_2_O6[0]),
	.w_col_sel_AQ_mux_i_m3_lut6_2_O5(w_col_sel_AQ_mux_i_m3_lut6_2_O5[0]),
	.col_sel_AQ2_int(col_sel_AQ2_int[1:0]),
	.col_sel_AQ2_mux_i_m3_lut6_2_O6(col_sel_AQ2_mux_i_m3_lut6_2_O6[0]),
	.col_sel_AQ2_mux_i_m3_lut6_2_O5(col_sel_AQ2_mux_i_m3_lut6_2_O5[0]),
	.state_0(state[3]),
	.state_2(state[5]),
	.state_5(state[8]),
	.wr_en_AQ_sel_0(wr_en_AQ_sel_0[0]),
	.col_sel_R(col_sel_R[1:0]),
	.col_sel_R_int(col_sel_R_int[1:0]),
	.col_sel_R_mux_i_m3_lut6_2_O6(col_sel_R_mux_i_m3_lut6_2_O6[0]),
	.col_sel_R_mux_i_m3_lut6_2_O5(col_sel_R_mux_i_m3_lut6_2_O5[0]),
	.in_a_r_reg_0_0(in_a_r_reg_0[0]),
	.in_a_r_reg_0_11(in_a_r_reg_0[11]),
	.out_r_vec_sub_0(out_r_vec_sub_0[11]),
	.in_a_i_reg_1(in_a_i_reg_1[11]),
	.vec_in_AQ_sel(vec_in_AQ_sel[1:0]),
	.in_a_r_reg_3(in_a_r_reg_3[11]),
	.in_a_i_reg_0(in_a_i_reg_0[11]),
	.in_a_i_reg_3(in_a_i_reg_3[11]),
	.in_a_r_reg_1(in_a_r_reg_1[11]),
	.pre_out_4(pre_out_0[11]),
	.pre_out_0({pre_out_2[11], pre_out_1[10:9], pre_out_0[8], pre_out_1[7], pre_out_0[6], pre_out_1[5], pre_out_0[4], pre_out_1[3:2], pre_out[1]}),
	.in_a_r_reg_2(in_a_r_reg_2[11]),
	.pre_out_5(pre_out_1[11]),
	.pre_out_1({pre_out_3[11], pre_out[10:9], pre_out_3[8], pre_out[7:2], pre_out_0[1]}),
	.in_a_i_reg_2(in_a_i_reg_2[11]),
	.pre_out_6(pre_out_4[11]),
	.pre_out_3_9(pre_out_5[11]),
	.pre_out_3_1(pre_out_3[3]),
	.pre_out_3_7(pre_out_3[9]),
	.pre_out_3_3(pre_out_3[5]),
	.pre_out_3_8(pre_out_3[10]),
	.pre_out_3_5(pre_out_3[7]),
	.pre_out_3_6(pre_out_2[8]),
	.pre_out_3_0(pre_out_3[2]),
	.pre_out_2({pre_out_6[11], pre_out_0[10:9], pre_out[8], pre_out_0[7], pre_out_2[6], pre_out_0[5], pre_out_2[4], pre_out_0[3:2], pre_out_2[1]}),
	.out_inner_prod_i(out_inner_prod_i[11:0]),
	.pre_out_10(pre_out[11]),
	.pre_out_9(pre_out_2[10]),
	.pre_out_0_d0(pre_out_1[1]),
	.pre_out_1_d0(pre_out_2[2]),
	.pre_out_3_d0(pre_out_1[4]),
	.pre_out_6_d0(pre_out_2[7]),
	.pre_out_7(pre_out_1[8]),
	.pre_out_8(pre_out_2[9]),
	.pre_out_5_d0(pre_out_1[6]),
	.pre_out_4_d0(pre_out_2[5]),
	.pre_out_2_d0(pre_out_2[3]),
	.pre_out_18(pre_out[19]),
	.pre_out_19(pre_out[20]),
	.pre_out_20(pre_out[21]),
	.pre_out_21(pre_out[22]),
	.pre_out_reg(pre_out_reg[23]),
	.out_r_vec_mult_2(out_r_vec_mult_2[11:0]),
	.vec_in_r_AQ_mux_2(vec_in_r_AQ_mux_2[11:0]),
	.out_r_vec_mult_1(out_r_vec_mult_1[11:0]),
	.vec_in_r_AQ_mux_1(vec_in_r_AQ_mux_1[11:0]),
	.pre_out_i_m({pre_out_i_m[10:2], pre_out_i_m_0[1], pre_out_i_m_3[0]}),
	.out_i_vec_mult_3(out_i_vec_mult_3[11:0]),
	.pre_out_i_m_1(pre_out_i_m_4[0]),
	.vec_in_i_AQ_mux_3(vec_in_i_AQ_mux_3[11:0]),
	.output_iv({output_iv[10], output_iv_0[9], output_iv[8], output_iv_0[7], output_iv[6:5], output_iv_0[4:3], output_iv[2], output_iv_0[1], output_iv[0]}),
	.out_i_vec_mult_0(out_i_vec_mult_0[11:0]),
	.vec_in_i_AQ_mux_0_11(vec_in_i_AQ_mux_0[11]),
	.vec_in_i_AQ_mux_0_1(vec_in_i_AQ_mux_0[1]),
	.vec_in_i_AQ_mux_0_5(vec_in_i_AQ_mux_0[5]),
	.vec_in_i_AQ_mux_0_0(vec_in_i_AQ_mux_0[0]),
	.vec_in_i_AQ_mux_0_8(vec_in_i_AQ_mux_0[8]),
	.vec_in_i_AQ_mux_0_10(vec_in_i_AQ_mux_0[10]),
	.vec_in_i_AQ_mux_0_7(vec_in_i_AQ_mux_0[7]),
	.vec_in_i_AQ_mux_0_6(vec_in_i_AQ_mux_0[6]),
	.vec_in_i_AQ_mux_0_9(vec_in_i_AQ_mux_0[9]),
	.vec_in_i_AQ_mux_0_4(vec_in_i_AQ_mux_0[4]),
	.out_r_vec_mult_0(out_r_vec_mult_0[11:0]),
	.output_iv_0_2(output_iv[3]),
	.output_iv_0_4(output_iv_0[5]),
	.output_iv_0_1(output_iv_0[2]),
	.output_iv_0_0(output_iv[1]),
	.output_iv_0_9(output_iv_0[10]),
	.output_iv_0_6(output_iv[7]),
	.output_iv_0_8(output_iv[9]),
	.output_iv_0_3(output_iv[4]),
	.output_iv_0_7(output_iv_0[8]),
	.vec_in_r_AQ_mux_0_10(vec_in_r_AQ_mux_0[11]),
	.vec_in_r_AQ_mux_0_2(vec_in_r_AQ_mux_0[3]),
	.vec_in_r_AQ_mux_0_4(vec_in_r_AQ_mux_0[5]),
	.vec_in_r_AQ_mux_0_3(vec_in_r_AQ_mux_0[4]),
	.vec_in_r_AQ_mux_0_6(vec_in_r_AQ_mux_0[7]),
	.vec_in_r_AQ_mux_0_1(vec_in_r_AQ_mux_0[2]),
	.vec_in_r_AQ_mux_0_9(vec_in_r_AQ_mux_0[10]),
	.vec_in_r_AQ_mux_0_8(vec_in_r_AQ_mux_0[9]),
	.vec_in_r_AQ_mux_0_0(vec_in_r_AQ_mux_0[1]),
	.vec_in_r_AQ_mux_0_7(vec_in_r_AQ_mux_0[8]),
	.pre_out_i_m_0_0(pre_out_i_m_2[0]),
	.pre_out_i_m_0_6(pre_out_i_m_0[6]),
	.pre_out_i_m_0_4(pre_out_i_m_0[4]),
	.pre_out_i_m_0_1(pre_out_i_m[1]),
	.in_A_r(in_A_r[47:0]),
	.out_r_vec_mult_3(out_r_vec_mult_3[11:0]),
	.pre_out_i_m_2(pre_out_i_m[0]),
	.vec_in_r_AQ_mux_3(vec_in_r_AQ_mux_3[11:0]),
	.out_i_vec_mult_2(out_i_vec_mult_2[11:0]),
	.pre_out_i_m_3(pre_out_i_m_1[0]),
	.vec_in_i_AQ_mux_2(vec_in_i_AQ_mux_2[11:0]),
	.in_A_i(in_A_i[47:0]),
	.out_i_vec_mult_1(out_i_vec_mult_1[11:0]),
	.pre_out_i_m_4(pre_out_i_m_0[0]),
	.vec_in_i_AQ_mux_1(vec_in_i_AQ_mux_1[11:0]),
	.un8_rnd_out_P(un8_rnd_out_P[19]),
	.single_in_r_R_mux(single_in_r_R_mux[11]),
	.out_inner_prod_r(out_inner_prod_r[11:0]),
	.un8_rnd_out(un8_rnd_out[10:0]),
	.N_390_i(N_390_i),
	.N_393_i(N_393_i),
	.done_inv_sqrt(done_inv_sqrt),
	.N_391_i(N_391_i),
	.N_394_i(N_394_i),
	.N_396_i(N_396_i),
	.N_395_i(N_395_i),
	.N_397_i(N_397_i),
	.N_398_i(N_398_i),
	.N_400_i(N_400_i),
	.N_399_i(N_399_i),
	.N_401_i(N_401_i),
	.wr_en_AQ_int(wr_en_AQ_int),
	.wr_A_QR(wr_A_QR),
	.start_QR(start_QR),
	.wr_en_AQ_mux_i_m3_lut6_2_O6(wr_en_AQ_mux_i_m3_lut6_2_O6),
	.N_501(N_501),
	.N_392_i(N_392_i),
	.PATTERNDETECT_32(PATTERNDETECT_32),
	.N_500(N_500),
	.N_508(N_508),
	.N_507(N_507),
	.N_506(N_506),
	.N_505(N_505),
	.un5_output(un5_output_0),
	.un5_output_0(un5_output),
	.un5_output_1(un5_output_4),
	.un5_output_2(un5_output_1),
	.un5_output_3(un5_output_3),
	.un5_output_4(un5_output_2),
	.N_389_i(N_389_i),
	.N_388_i(N_388_i),
	.N_387_i(N_387_i),
	.N_386_i(N_386_i),
	.N_385_i(N_385_i),
	.N_384_i(N_384_i),
	.N_383_i(N_383_i),
	.N_34_i(N_34_i),
	.N_32_i(N_32_i),
	.N_30_i(N_30_i),
	.N_28_i(N_28_i)
);
// @26:480
  qr_decomp_ctl the_ctl (
	.col_sel_AQ_int(col_sel_AQ_int[1:0]),
	.col_sel_AQ2_int(col_sel_AQ2_int[1:0]),
	.row_sel_AQ(row_sel_AQ[1:0]),
	.state_5(state[5]),
	.state_8(state[8]),
	.state_3(state[3]),
	.in_b_inner_prod_sel(in_b_inner_prod_sel[0]),
	.w_col_sel_AQ_int(w_col_sel_AQ_int[1:0]),
	.col_sel_R_int(col_sel_R_int[1:0]),
	.row_sel_R(row_sel_R[1:0]),
	.in_a_inner_prod_sel(in_a_inner_prod_sel[0]),
	.vec_in_AQ_sel(vec_in_AQ_sel[1:0]),
	.single_in_R_sel(single_in_R_sel[0]),
	.single_in_R_sel_0(single_in_R_sel_0[0]),
	.wr_en_AQ_sel(wr_en_AQ_sel[0]),
	.wr_en_AQ_sel_0(wr_en_AQ_sel_0[0]),
	.in_b_vec_mult_sel(in_b_vec_mult_sel[0]),
	.red_mat_reg(red_mat_reg),
	.rst(rst),
	.done_inv_sqrt(done_inv_sqrt),
	.N_512_i(N_512_i),
	.done_inner_prod(done_inner_prod),
	.start_inv_sqrt(start_inv_sqrt),
	.clk(clk),
	.start_inner_prod(start_inner_prod),
	.wr_en_AQ_int(wr_en_AQ_int),
	.wr_en_R(wr_en_R),
	.w_in_a_vec_sub(w_in_a_vec_sub),
	.done_QR(done_QR),
	.start_QR(start_QR),
	.red_mat_reg_0(red_mat_reg_0)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* qr_decomp */

module qr_wrapper (
  out_Q_r,
  out_Q_i,
  out_R_i,
  out_R_r,
  in_A_r,
  in_A_i,
  clk,
  rst,
  valid_out,
  ready,
  request_out,
  start,
  reduced_matrix
)
;
output [47:0] out_Q_r ;
output [47:0] out_Q_i ;
output [47:12] out_R_i ;
output [47:0] out_R_r ;
input [47:0] in_A_r ;
input [47:0] in_A_i ;
input clk ;
input rst ;
output valid_out ;
output ready ;
input request_out ;
input start ;
input reduced_matrix ;
wire clk ;
wire rst ;
wire valid_out ;
wire ready ;
wire request_out ;
wire start ;
wire reduced_matrix ;
wire [1:0] col_sel_AQ;
wire [1:0] col_sel_AQ_4;
wire [1:0] col_sel_R;
wire [1:0] state;
wire [1:0] state_ns;
wire start_QR ;
wire start_QR_0 ;
wire wr_A_QR ;
wire wr_A_QR_0 ;
wire valid_out_0 ;
wire ready_0 ;
wire red_mat_reg ;
wire red_mat_reg_0 ;
wire N_14_i ;
wire N_16_i ;
wire N_26 ;
wire done_QR ;
wire N_50 ;
wire N_49 ;
wire N_48 ;
wire N_47 ;
wire GND ;
wire VCC ;
// @27:104
  FDC start_QR_Z (
	.Q(start_QR),
	.D(start_QR_0),
	.C(clk),
	.CLR(rst)
);
// @27:104
  FDC wr_A_QR_Z (
	.Q(wr_A_QR),
	.D(wr_A_QR_0),
	.C(clk),
	.CLR(rst)
);
// @27:104
  FDC valid_out_Z (
	.Q(valid_out),
	.D(valid_out_0),
	.C(clk),
	.CLR(rst)
);
// @27:104
  FDC ready_Z (
	.Q(ready),
	.D(ready_0),
	.C(clk),
	.CLR(rst)
);
// @27:104
  FDC red_mat_reg_Z (
	.Q(red_mat_reg),
	.D(red_mat_reg_0),
	.C(clk),
	.CLR(rst)
);
// @27:104
  FDC \col_sel_AQ_Z[1]  (
	.Q(col_sel_AQ[1]),
	.D(col_sel_AQ_4[1]),
	.C(clk),
	.CLR(rst)
);
// @27:104
  FDC \col_sel_R_Z[0]  (
	.Q(col_sel_R[0]),
	.D(N_14_i),
	.C(clk),
	.CLR(rst)
);
// @27:104
  FDC \col_sel_R_Z[1]  (
	.Q(col_sel_R[1]),
	.D(N_16_i),
	.C(clk),
	.CLR(rst)
);
// @27:104
  FDC \col_sel_AQ_Z[0]  (
	.Q(col_sel_AQ[0]),
	.D(col_sel_AQ_4[0]),
	.C(clk),
	.CLR(rst)
);
// @27:104
  FDC \state_Z[0]  (
	.Q(state[0]),
	.D(state_ns[0]),
	.C(clk),
	.CLR(rst)
);
// @27:104
  FDC \state_Z[1]  (
	.Q(state[1]),
	.D(state_ns[1]),
	.C(clk),
	.CLR(rst)
);
// @27:114
  LUT6_L \col_sel_AQ_4_0[1]  (
	.I0(request_out),
	.I1(start),
	.I2(col_sel_AQ[1]),
	.I3(col_sel_AQ[0]),
	.I4(state[0]),
	.I5(state[1]),
	.LO(col_sel_AQ_4[1])
);
defparam \col_sel_AQ_4_0[1] .INIT=64'h0FF0F0F00FF01010;
// @27:104
  LUT6_L start_QR_e (
	.I0(red_mat_reg),
	.I1(col_sel_AQ[1]),
	.I2(col_sel_AQ[0]),
	.I3(start_QR),
	.I4(state[0]),
	.I5(state[1]),
	.LO(start_QR_0)
);
defparam start_QR_e.INIT=64'hFF000000FFE0FF00;
// @27:104
  LUT3 \state_ns_1_0_.m8_0_o2  (
	.I0(red_mat_reg),
	.I1(col_sel_AQ[1]),
	.I2(col_sel_AQ[0]),
	.O(N_26)
);
defparam \state_ns_1_0_.m8_0_o2 .INIT=8'h1F;
// @27:104
  LUT5_L ready_e (
	.I0(request_out),
	.I1(start),
	.I2(ready),
	.I3(state[0]),
	.I4(state[1]),
	.LO(ready_0)
);
defparam ready_e.INIT=32'hF0F0F011;
// @27:104
  LUT5_L red_mat_reg_e (
	.I0(reduced_matrix),
	.I1(start),
	.I2(red_mat_reg),
	.I3(state[0]),
	.I4(state[1]),
	.LO(red_mat_reg_0)
);
defparam red_mat_reg_e.INIT=32'hF0F0F0B8;
// @27:104
  LUT5_L \state_ns_1_0_.m5_0_m5  (
	.I0(request_out),
	.I1(start),
	.I2(state[0]),
	.I3(state[1]),
	.I4(N_26),
	.LO(state_ns[0])
);
defparam \state_ns_1_0_.m5_0_m5 .INIT=32'hF0FE000E;
// @27:114
  LUT5_L \col_sel_AQ_4_0[0]  (
	.I0(request_out),
	.I1(start),
	.I2(col_sel_AQ[0]),
	.I3(state[0]),
	.I4(state[1]),
	.LO(col_sel_AQ_4[0])
);
defparam \col_sel_AQ_4_0[0] .INIT=32'h0FF00F10;
// @27:104
  LUT6_L \col_sel_R_RNO[1]  (
	.I0(request_out),
	.I1(start),
	.I2(state[0]),
	.I3(state[1]),
	.I4(col_sel_R[0]),
	.I5(col_sel_R[1]),
	.LO(N_16_i)
);
defparam \col_sel_R_RNO[1] .INIT=64'h0FFDFFFDF0000000;
// @27:104
  LUT5_L \col_sel_R_RNO[0]  (
	.I0(request_out),
	.I1(start),
	.I2(state[0]),
	.I3(state[1]),
	.I4(col_sel_R[0]),
	.LO(N_14_i)
);
defparam \col_sel_R_RNO[0] .INIT=32'h0FFDF000;
// @27:104
  LUT6_L valid_out_e (
	.I0(request_out),
	.I1(start),
	.I2(valid_out),
	.I3(state[0]),
	.I4(state[1]),
	.I5(N_26),
	.LO(valid_out_0)
);
defparam valid_out_e.INIT=64'hF0F0F0F200F0F0F2;
// @27:104
  LUT6_L \state_ns_1_0_.m8_0  (
	.I0(request_out),
	.I1(start),
	.I2(done_QR),
	.I3(state[0]),
	.I4(state[1]),
	.I5(N_26),
	.LO(state_ns[1])
);
defparam \state_ns_1_0_.m8_0 .INIT=64'hFF0F0022000FFF22;
// @27:104
  LUT5_L wr_A_QR_e (
	.I0(start),
	.I1(wr_A_QR),
	.I2(state[0]),
	.I3(state[1]),
	.I4(N_26),
	.LO(wr_A_QR_0)
);
defparam wr_A_QR_e.INIT=32'hCCCECC0E;
//@27:104
// @27:84
  qr_decomp qr_decomp_inst (
	.out_Q_r(out_Q_r[47:0]),
	.out_Q_i(out_Q_i[47:0]),
	.col_sel_R(col_sel_R[1:0]),
	.out_R_i(out_R_i[47:12]),
	.out_R_r(out_R_r[47:0]),
	.col_sel_AQ(col_sel_AQ[1:0]),
	.in_A_r(in_A_r[47:0]),
	.in_A_i(in_A_i[47:0]),
	.clk(clk),
	.rst(rst),
	.wr_A_QR(wr_A_QR),
	.start_QR(start_QR),
	.done_QR(done_QR),
	.red_mat_reg_0(red_mat_reg)
);
  VCC VCC_cZ (
	.P(VCC)
);
  GND GND_cZ (
	.G(GND)
);
endmodule /* qr_wrapper */

module qr_wrapper_wrapper (
  clk,
  rst,
  reduced_matrix,
  start,
  request_out,
  valid_out,
  ready,
  in_A_r,
  in_A_i,
  sigma_in,
  out_Q_r,
  out_Q_i,
  out_R_r,
  out_R_i,
  permut
)
;
input clk ;
input rst ;
input reduced_matrix ;
input start ;
input request_out ;
output valid_out ;
output ready ;
input [47:0] in_A_r ;
input [47:0] in_A_i ;
input [11:0] sigma_in ;
output [47:0] out_Q_r ;
output [47:0] out_Q_i ;
output [47:0] out_R_r ;
output [47:0] out_R_i ;
output [7:0] permut ;
wire clk ;
wire rst ;
wire reduced_matrix ;
wire start ;
wire request_out ;
wire valid_out ;
wire ready ;
wire VCC ;
wire GND ;
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
// @28:61
  qr_wrapper qr_wrapper_inst (
	.out_Q_r(out_Q_r[47:0]),
	.out_Q_i(out_Q_i[47:0]),
	.out_R_i(out_R_i[47:12]),
	.out_R_r(out_R_r[47:0]),
	.in_A_r(in_A_r[47:0]),
	.in_A_i(in_A_i[47:0]),
	.clk(clk),
	.rst(rst),
	.valid_out(valid_out),
	.ready(ready),
	.request_out(request_out),
	.start(start),
	.reduced_matrix(reduced_matrix)
);
assign out_R_i[0] = GND;
assign out_R_i[1] = GND;
assign out_R_i[2] = GND;
assign out_R_i[3] = GND;
assign out_R_i[4] = GND;
assign out_R_i[5] = GND;
assign out_R_i[6] = GND;
assign out_R_i[7] = GND;
assign out_R_i[8] = GND;
assign out_R_i[9] = GND;
assign out_R_i[10] = GND;
assign out_R_i[11] = GND;
assign permut[0] = GND;
assign permut[1] = GND;
assign permut[2] = GND;
assign permut[3] = GND;
assign permut[4] = GND;
assign permut[5] = GND;
assign permut[6] = GND;
assign permut[7] = GND;
endmodule /* qr_wrapper_wrapper */

