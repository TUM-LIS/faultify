//
// Written by Synplify
// Product Version "H-2013.03-SP1-1 "
// Program "Synplify Premier", Mapper "map201303sp1_1rc, Build 007R"
// Thu Feb  5 14:25:36 2015
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
// file 8 "\/home/david/projects/faultify_github/faultify/hardware/testcases/FIR/src/fir.vhd "
// file 9 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/xilinx/unisim.v "
// file 10 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vlog/umr_capim.v "
// file 11 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vlog/scemi_objects.v "
// file 12 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vlog/scemi_pipes.svh "
// file 13 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vlog/hypermods.v "
// file 14 "\/home/david/projects/faultify_github/faultify/hardware/testcases/FIR/fpga_syn/rev_1/syntmp/multadd.v "
// file 15 "\/home/david/projects/faultify_github/faultify/hardware/testcases/FIR/fpga_syn/rev_1/syntmp/unisim.v "

`timescale 100 ps/100 ps
module fir (
  x_in,
  clk,
  y
)
;

/*  Synopsys
.origName=fir
.langParams="N"
N=16
 */
input [7:0] x_in ;
input clk ;
output [7:0] y ;
wire clk ;
wire [7:0] x_0;
wire [15:4] un1_x_1;
wire [15:5] un1_x_2;
wire [15:4] un1_x_3;
wire [7:0] x_4;
wire [15:2] un1_x_4;
wire [14:0] un84_sop_0_0_0_0_5;
wire [7:0] x_7;
wire [7:0] x_8;
wire [0:0] x_9;
wire [7:0] x_12;
wire [7:0] x_13;
wire [9:0] un84_sop_0_0_0_0_0;
wire [9:0] un84_sop_0_0_0_0_1;
wire [15:4] un1_x_14_0_0;
wire [15:5] un1_x_13_0_0;
wire [15:4] un1_x_12_0_0;
wire [14:7] un1_x_11_0_0;
wire [14:0] un84_sop_0_0_0_10_0;
wire [15:8] un1_x_10_0_0;
wire [15:5] un1_x_9_0;
wire [15:4] un1_x_8_0;
wire [15:2] un1_x_7_0;
wire [15:1] un1_x_6_0;
wire [14:0] un84_sop_0_0_0_5_0;
wire [47:11] P_uc;
wire [29:0] ACOUT;
wire [3:0] CARRYOUT;
wire [47:0] PCOUT;
wire [47:11] P_uc_0;
wire [29:0] ACOUT_0;
wire [3:0] CARRYOUT_0;
wire [47:0] PCOUT_0;
wire [47:11] P_uc_1;
wire [29:0] ACOUT_1;
wire [17:0] BCOUT_1;
wire [3:0] CARRYOUT_1;
wire [47:0] PCOUT_1;
wire [47:12] P_uc_2;
wire [29:0] ACOUT_2;
wire [3:0] CARRYOUT_2;
wire [47:0] PCOUT_2;
wire [47:12] P_uc_3;
wire [29:0] ACOUT_3;
wire [3:0] CARRYOUT_3;
wire [47:0] PCOUT_3;
wire [47:12] P_uc_4;
wire [29:0] ACOUT_4;
wire [3:0] CARRYOUT_4;
wire [47:0] PCOUT_4;
wire [47:12] P_uc_5;
wire [29:0] ACOUT_5;
wire [3:0] CARRYOUT_5;
wire [47:0] PCOUT_5;
wire [47:12] P_uc_6;
wire [29:0] ACOUT_6;
wire [3:0] CARRYOUT_6;
wire [47:0] PCOUT_6;
wire [47:14] P_uc_7;
wire [29:0] ACOUT_7;
wire [3:0] CARRYOUT_7;
wire [47:0] PCOUT_7;
wire [47:14] P_uc_8;
wire [29:0] ACOUT_8;
wire [3:0] CARRYOUT_8;
wire [47:0] PCOUT_8;
wire [47:15] P_uc_9;
wire [29:0] ACOUT_9;
wire [17:0] BCOUT_9;
wire [3:0] CARRYOUT_9;
wire [47:0] PCOUT_9;
wire [7:0] x_10_0;
wire [7:7] x_10_1;
wire [7:7] x_10_2;
wire [7:7] x_10_3;
wire [7:7] x_10_4;
wire [7:7] x_10_5;
wire [7:7] x_10_6;
wire [7:7] x_10_7;
wire [7:7] x_10_8;
wire [7:7] x_10_9;
wire [7:7] x_10_10;
wire [7:0] x_9_0;
wire [7:7] x_9_1;
wire [7:7] x_9_2;
wire [7:7] x_9_3;
wire [7:7] x_9_4;
wire [7:7] x_9_5;
wire [7:7] x_9_6;
wire [7:7] x_9_7;
wire [7:7] x_9_8;
wire [7:7] x_9_9;
wire [7:7] x_9_10;
wire [7:0] x_6_0;
wire [7:7] x_6_1;
wire [7:7] x_6_2;
wire [7:7] x_6_3;
wire [7:7] x_6_4;
wire [7:7] x_6_5;
wire [7:7] x_6_6;
wire [7:7] x_6_7;
wire [7:7] x_6_8;
wire [7:7] x_6_9;
wire [7:7] x_6_10;
wire [7:0] x_5_0;
wire [7:7] x_5_1;
wire [7:7] x_5_2;
wire [7:7] x_5_3;
wire [7:7] x_5_4;
wire [7:7] x_5_5;
wire [7:7] x_5_6;
wire [7:7] x_5_7;
wire [7:7] x_5_8;
wire [7:7] x_5_9;
wire [7:7] x_5_10;
wire [7:0] x_4_0;
wire [7:7] x_4_1;
wire [7:7] x_4_2;
wire [7:7] x_4_3;
wire [7:7] x_4_4;
wire [7:7] x_4_5;
wire [7:7] x_4_6;
wire [7:7] x_4_7;
wire [7:7] x_4_8;
wire [7:7] x_4_9;
wire [7:7] x_4_10;
wire [7:0] x_3_0;
wire [7:7] x_3_1;
wire [7:7] x_3_2;
wire [7:7] x_3_3;
wire [7:7] x_3_4;
wire [7:7] x_3_5;
wire [7:7] x_3_6;
wire [7:7] x_3_7;
wire [7:7] x_3_8;
wire [7:7] x_3_9;
wire [7:7] x_3_10;
wire [7:0] x_2_0;
wire [7:7] x_2_1;
wire [7:7] x_2_2;
wire [7:7] x_2_3;
wire [7:7] x_2_4;
wire [7:7] x_2_5;
wire [7:7] x_2_6;
wire [7:7] x_2_7;
wire [7:7] x_2_8;
wire [7:7] x_2_9;
wire [7:7] x_2_10;
wire [7:0] x_1_0;
wire [7:7] x_1_1;
wire [7:7] x_1_2;
wire [7:7] x_1_3;
wire [7:7] x_1_4;
wire [7:7] x_1_5;
wire [7:7] x_1_6;
wire [7:7] x_1_7;
wire [7:7] x_1_8;
wire [7:7] x_1_9;
wire [7:7] x_1_10;
wire [7:0] x_0_0;
wire [7:7] x_0_1;
wire [7:7] x_0_2;
wire [7:7] x_0_3;
wire [7:7] x_0_4;
wire [7:7] x_0_5;
wire [7:7] x_0_6;
wire [7:7] x_0_7;
wire [7:7] x_0_8;
wire [7:7] x_0_9;
wire [7:7] x_0_10;
wire [14:3] un84_sop_0_0_0_1_6_8;
wire [14:0] un84_sop_1_7;
wire [14:0] un84_sop_0_0_0_0_11_7;
wire [14:0] un84_sop_1_4;
wire [10:2] un1_x_10_4;
wire [14:0] un84_sop_0_0_0_1_6_4;
wire [14:0] un84_sop_0_0_0_0_11_6;
wire [14:0] un84_sop_0_0_0_0_8;
wire [14:0] un84_sop_0_0_0_1_6_6;
wire [14:0] un84_sop_1_6;
wire [14:7] un1_x_15_0_0_0;
wire [14:7] un1_x_11_0_0_0;
wire [14:7] un1_x_16_0_0_0;
wire [0:0] x_12_6_tmp_d_array_0;
wire [0:0] x_12_5_tmp_d_array_0;
wire [0:0] x_12_4_tmp_d_array_0;
wire [0:0] x_12_3_tmp_d_array_0;
wire [0:0] x_12_2_tmp_d_array_0;
wire [0:0] x_12_1_tmp_d_array_0;
wire [0:0] x_12_0_tmp_d_array_0;
wire [0:0] x_12_tmp_d_array_0;
wire [0:0] x_7_6_tmp_d_array_0;
wire [0:0] x_7_5_tmp_d_array_0;
wire [0:0] x_7_4_tmp_d_array_0;
wire [0:0] x_7_3_tmp_d_array_0;
wire [0:0] x_7_2_tmp_d_array_0;
wire [0:0] x_7_1_tmp_d_array_0;
wire [0:0] x_7_0_tmp_d_array_0;
wire [0:0] x_7_tmp_d_array_0;
wire [0:0] x_4_6_tmp_d_array_0;
wire [0:0] x_4_5_tmp_d_array_0;
wire [0:0] x_4_4_tmp_d_array_0;
wire [0:0] x_4_3_tmp_d_array_0;
wire [0:0] x_4_2_tmp_d_array_0;
wire [0:0] x_4_1_tmp_d_array_0;
wire [0:0] x_4_0_tmp_d_array_0;
wire [0:0] x_4_tmp_d_array_0;
wire [4:4] un1_x_14_0_0_0;
wire [5:5] un1_x_9_0_0;
wire [4:4] un1_x_3_0;
wire VCC ;
wire GND ;
wire un84_sop_1_s_7 ;
wire un84_sop_1_s_8 ;
wire un84_sop_1_s_9 ;
wire un84_sop_1_s_10 ;
wire un84_sop_1_s_11 ;
wire un84_sop_1_s_12 ;
wire un84_sop_1_s_13 ;
wire un84_sop_1_s_14 ;
wire un1_x_10_s_2_sf ;
wire un1_x_10_axb_3 ;
wire CARRYCASCOUT ;
wire OVERFLOW ;
wire MULTSIGNOUT ;
wire PATTERNBDETECT ;
wire PATTERNDETECT ;
wire UNDERFLOW ;
wire CARRYCASCOUT_0 ;
wire OVERFLOW_0 ;
wire MULTSIGNOUT_0 ;
wire PATTERNBDETECT_0 ;
wire PATTERNDETECT_0 ;
wire UNDERFLOW_0 ;
wire CARRYCASCOUT_1 ;
wire OVERFLOW_1 ;
wire MULTSIGNOUT_1 ;
wire PATTERNBDETECT_1 ;
wire PATTERNDETECT_1 ;
wire UNDERFLOW_1 ;
wire CARRYCASCOUT_2 ;
wire OVERFLOW_2 ;
wire MULTSIGNOUT_2 ;
wire PATTERNBDETECT_2 ;
wire PATTERNDETECT_2 ;
wire UNDERFLOW_2 ;
wire CARRYCASCOUT_3 ;
wire OVERFLOW_3 ;
wire MULTSIGNOUT_3 ;
wire PATTERNBDETECT_3 ;
wire PATTERNDETECT_3 ;
wire UNDERFLOW_3 ;
wire CARRYCASCOUT_4 ;
wire OVERFLOW_4 ;
wire MULTSIGNOUT_4 ;
wire PATTERNBDETECT_4 ;
wire PATTERNDETECT_4 ;
wire UNDERFLOW_4 ;
wire CARRYCASCOUT_5 ;
wire OVERFLOW_5 ;
wire MULTSIGNOUT_5 ;
wire PATTERNBDETECT_5 ;
wire PATTERNDETECT_5 ;
wire UNDERFLOW_5 ;
wire CARRYCASCOUT_6 ;
wire OVERFLOW_6 ;
wire MULTSIGNOUT_6 ;
wire PATTERNBDETECT_6 ;
wire PATTERNDETECT_6 ;
wire UNDERFLOW_6 ;
wire CARRYCASCOUT_7 ;
wire OVERFLOW_7 ;
wire MULTSIGNOUT_7 ;
wire PATTERNBDETECT_7 ;
wire PATTERNDETECT_7 ;
wire UNDERFLOW_7 ;
wire CARRYCASCOUT_8 ;
wire OVERFLOW_8 ;
wire MULTSIGNOUT_8 ;
wire PATTERNBDETECT_8 ;
wire PATTERNDETECT_8 ;
wire UNDERFLOW_8 ;
wire CARRYCASCOUT_9 ;
wire OVERFLOW_9 ;
wire MULTSIGNOUT_9 ;
wire PATTERNBDETECT_9 ;
wire PATTERNDETECT_9 ;
wire UNDERFLOW_9 ;
wire un84_sop_1_6_0_axb_1_lut6_2_O5 ;
wire un84_sop_1_6_0_o5_2 ;
wire un84_sop_1_6_0_o5_3 ;
wire un84_sop_1_6_0_o5_4 ;
wire un84_sop_1_6_0_o5_5 ;
wire un84_sop_1_6_0_o5_6 ;
wire un84_sop_1_6_0_o5_7 ;
wire un84_sop_1_6_0_o5_8 ;
wire un84_sop_1_6_0_o5_9 ;
wire un84_sop_1_6_0_o5_10 ;
wire un84_sop_1_6_0_o5_11 ;
wire un84_sop_0_0_0_1_6_8_axb_2_lut6_2_O5 ;
wire un84_sop_0_0_0_1_6_8_o5_3 ;
wire un84_sop_0_0_0_1_6_8_o5_4 ;
wire un84_sop_0_0_0_1_6_8_o5_5 ;
wire un84_sop_0_0_0_1_6_8_o5_6 ;
wire un84_sop_0_0_0_1_6_8_o5_7 ;
wire un84_sop_0_0_0_6_6_0_axb_1_lut6_2_O5 ;
wire un84_sop_0_0_0_6_6_0_o5_2 ;
wire un84_sop_0_0_0_6_6_0_o5_3 ;
wire un84_sop_0_0_0_6_6_0_o5_4 ;
wire un84_sop_0_0_0_6_6_0_o5_5 ;
wire un84_sop_0_0_0_6_6_0_o5_6 ;
wire un84_sop_0_0_0_6_6_0_o5_7 ;
wire un84_sop_0_0_0_6_6_0_o5_8 ;
wire un84_sop_0_0_0_6_6_0_o5_9 ;
wire un84_sop_0_0_0_6_6_0_o5_10 ;
wire un84_sop_0_0_0_6_6_0_o5_11 ;
wire un84_sop_0_0_0_6_6_0_o5_12 ;
wire un84_sop_0_0_0_11_0_o5_2 ;
wire un84_sop_0_0_0_11_0_o5_3 ;
wire un84_sop_0_0_0_11_0_o5_4 ;
wire un84_sop_0_0_0_11_0_o5_5 ;
wire un84_sop_0_0_0_11_0_o5_6 ;
wire un84_sop_0_0_0_11_0_o5_7 ;
wire un84_sop_0_0_0_11_0_o5_8 ;
wire un84_sop_0_0_0_11_0_o5_9 ;
wire un84_sop_0_0_0_11_0_o5_10 ;
wire un84_sop_0_0_0_11_0_o5_11 ;
wire un84_sop_0_0_0_11_0_o5_12 ;
wire un84_sop_0_0_0_11_6_0_axb_1_lut6_2_O5 ;
wire un84_sop_0_0_0_11_6_0_o5_2 ;
wire un84_sop_0_0_0_11_6_0_o5_3 ;
wire un84_sop_0_0_0_11_6_0_o5_4 ;
wire un84_sop_0_0_0_11_6_0_o5_5 ;
wire un84_sop_0_0_0_11_6_0_o5_6 ;
wire un84_sop_0_0_0_11_6_0_o5_7 ;
wire un84_sop_0_0_0_11_6_0_o5_8 ;
wire un84_sop_0_0_0_11_6_0_o5_9 ;
wire un84_sop_0_0_0_11_6_0_o5_10 ;
wire un84_sop_0_0_0_11_6_0_o5_11 ;
wire un84_sop_0_0_0_11_6_0_cry_0 ;
wire un84_sop_0_0_0_11_6_0_axb_1 ;
wire un84_sop_0_0_0_11_6_0_cry_1 ;
wire un84_sop_0_0_0_11_6_0_axb_2 ;
wire un84_sop_0_0_0_11_6_0_cry_2 ;
wire un84_sop_0_0_0_11_6_0_axb_3 ;
wire un84_sop_0_0_0_11_6_0_cry_3 ;
wire un84_sop_0_0_0_11_6_0_axb_4 ;
wire un84_sop_0_0_0_11_6_0_cry_4 ;
wire un84_sop_0_0_0_11_6_0_axb_5 ;
wire un84_sop_0_0_0_11_6_0_cry_5 ;
wire un84_sop_0_0_0_11_6_0_axb_6 ;
wire un84_sop_0_0_0_11_6_0_cry_6 ;
wire un84_sop_0_0_0_11_6_0_axb_7 ;
wire un84_sop_0_0_0_11_6_0_cry_7 ;
wire un84_sop_0_0_0_11_6_0_axb_8 ;
wire un84_sop_0_0_0_11_6_0_cry_8 ;
wire un84_sop_0_0_0_11_6_0_axb_9 ;
wire un84_sop_0_0_0_11_6_0_cry_9 ;
wire un84_sop_0_0_0_11_6_0_axb_10 ;
wire un84_sop_0_0_0_11_6_0_cry_10 ;
wire un84_sop_0_0_0_11_6_0_axb_11 ;
wire un84_sop_0_0_0_11_6_0_cry_11 ;
wire un84_sop_0_0_0_11_6_0_axb_12 ;
wire un84_sop_0_0_0_11_6_0_cry_12 ;
wire un84_sop_0_0_0_11_6_0_axb_13 ;
wire un84_sop_0_0_0_11_0_axb_0 ;
wire un84_sop_0_0_0_11_0_cry_0 ;
wire un84_sop_0_0_0_11_0_axb_1 ;
wire un84_sop_0_0_0_11_0_cry_1 ;
wire un84_sop_0_0_0_11_0_cry_2_RNO ;
wire un84_sop_0_0_0_11_0_axb_2 ;
wire un84_sop_0_0_0_11_0_cry_2 ;
wire un84_sop_0_0_0_11_0_axb_3 ;
wire un84_sop_0_0_0_11_0_cry_3 ;
wire un84_sop_0_0_0_11_0_axb_4 ;
wire un84_sop_0_0_0_11_0_cry_4 ;
wire un84_sop_0_0_0_11_0_axb_5 ;
wire un84_sop_0_0_0_11_0_cry_5 ;
wire un84_sop_0_0_0_11_0_axb_6 ;
wire un84_sop_0_0_0_11_0_cry_6 ;
wire un84_sop_0_0_0_11_0_axb_7 ;
wire un84_sop_0_0_0_11_0_cry_7 ;
wire un84_sop_0_0_0_11_0_axb_8 ;
wire un84_sop_0_0_0_11_0_cry_8 ;
wire un84_sop_0_0_0_11_0_axb_9 ;
wire un84_sop_0_0_0_11_0_cry_9 ;
wire un84_sop_0_0_0_11_0_axb_10 ;
wire un84_sop_0_0_0_11_0_cry_10 ;
wire un84_sop_0_0_0_11_0_axb_11 ;
wire un84_sop_0_0_0_11_0_cry_11 ;
wire un84_sop_0_0_0_11_0_axb_12 ;
wire un84_sop_0_0_0_11_0_cry_12 ;
wire un84_sop_0_0_0_11_0_axb_13 ;
wire un84_sop_0_0_0_11_0_cry_13 ;
wire un84_sop_0_0_0_11_0_axb_14 ;
wire un84_sop_0_0_0_6_6_0_cry_0 ;
wire un84_sop_0_0_0_6_6_0_axb_1 ;
wire un84_sop_0_0_0_6_6_0_cry_1 ;
wire un84_sop_0_0_0_6_6_0_axb_2 ;
wire un84_sop_0_0_0_6_6_0_cry_2 ;
wire un84_sop_0_0_0_6_6_0_axb_3 ;
wire un84_sop_0_0_0_6_6_0_cry_3 ;
wire un84_sop_0_0_0_6_6_0_axb_4 ;
wire un84_sop_0_0_0_6_6_0_cry_4 ;
wire un84_sop_0_0_0_6_6_0_axb_5 ;
wire un84_sop_0_0_0_6_6_0_cry_5 ;
wire un84_sop_0_0_0_6_6_0_axb_6 ;
wire un84_sop_0_0_0_6_6_0_cry_6 ;
wire un84_sop_0_0_0_6_6_0_axb_7 ;
wire un84_sop_0_0_0_6_6_0_cry_7 ;
wire un84_sop_0_0_0_6_6_0_axb_8 ;
wire un84_sop_0_0_0_6_6_0_cry_8 ;
wire un84_sop_0_0_0_6_6_0_axb_9 ;
wire un84_sop_0_0_0_6_6_0_cry_9 ;
wire un84_sop_0_0_0_6_6_0_axb_10 ;
wire un84_sop_0_0_0_6_6_0_cry_10 ;
wire un84_sop_0_0_0_6_6_0_axb_11 ;
wire un84_sop_0_0_0_6_6_0_cry_11 ;
wire un84_sop_0_0_0_6_6_0_axb_12 ;
wire un84_sop_0_0_0_6_6_0_cry_12 ;
wire un84_sop_0_0_0_6_6_0_axb_13 ;
wire un84_sop_0_0_0_6_6_0_cry_13 ;
wire un84_sop_0_0_0_6_6_0_axb_14 ;
wire un84_sop_0_0_0_1_6_8_cry_0 ;
wire un84_sop_0_0_0_1_6_8_axb_1 ;
wire un84_sop_0_0_0_1_6_8_cry_1 ;
wire un84_sop_0_0_0_1_6_8_axb_2 ;
wire un84_sop_0_0_0_1_6_8_cry_2 ;
wire un84_sop_0_0_0_1_6_8_axb_3 ;
wire un84_sop_0_0_0_1_6_8_cry_3 ;
wire un84_sop_0_0_0_1_6_8_axb_4 ;
wire un84_sop_0_0_0_1_6_8_cry_4 ;
wire un84_sop_0_0_0_1_6_8_axb_5 ;
wire un84_sop_0_0_0_1_6_8_cry_5 ;
wire un84_sop_0_0_0_1_6_8_axb_6 ;
wire un84_sop_0_0_0_1_6_8_cry_6 ;
wire un84_sop_0_0_0_1_6_8_axb_7 ;
wire un84_sop_0_0_0_1_6_8_cry_7 ;
wire un84_sop_0_0_0_1_6_8_axb_8 ;
wire un84_sop_0_0_0_1_6_8_cry_8 ;
wire un84_sop_0_0_0_1_6_8_axb_9 ;
wire un84_sop_0_0_0_1_6_8_cry_9 ;
wire un84_sop_0_0_0_1_6_8_axb_10 ;
wire un84_sop_0_0_0_1_6_8_cry_10 ;
wire un84_sop_0_0_0_1_6_8_axb_11 ;
wire un84_sop_1_6_0_cry_0 ;
wire un84_sop_1_6_0_axb_1 ;
wire un84_sop_1_6_0_cry_1 ;
wire un84_sop_1_6_0_axb_2 ;
wire un84_sop_1_6_0_cry_2 ;
wire un84_sop_1_6_0_axb_3 ;
wire un84_sop_1_6_0_cry_3 ;
wire un84_sop_1_6_0_axb_4 ;
wire un84_sop_1_6_0_cry_4 ;
wire un84_sop_1_6_0_axb_5 ;
wire un84_sop_1_6_0_cry_5 ;
wire un84_sop_1_6_0_axb_6 ;
wire un84_sop_1_6_0_cry_6 ;
wire un84_sop_1_6_0_axb_7 ;
wire un84_sop_1_6_0_cry_7 ;
wire un84_sop_1_6_0_axb_8 ;
wire un84_sop_1_6_0_cry_8 ;
wire un84_sop_1_6_0_axb_9 ;
wire un84_sop_1_6_0_cry_9 ;
wire un84_sop_1_6_0_axb_10 ;
wire un84_sop_1_6_0_cry_10 ;
wire un84_sop_1_6_0_axb_11 ;
wire un84_sop_1_6_0_cry_11 ;
wire un84_sop_1_6_0_axb_12 ;
wire un84_sop_1_6_0_cry_12 ;
wire un84_sop_1_6_0_axb_13 ;
wire un1_x_10_cry_3 ;
wire un1_x_10_axb_4 ;
wire un1_x_10_cry_4 ;
wire un1_x_10_axb_5 ;
wire un1_x_10_cry_5 ;
wire un1_x_10_axb_6 ;
wire un1_x_10_cry_6 ;
wire un1_x_10_axb_7 ;
wire un1_x_10_cry_7 ;
wire un1_x_10_axb_8 ;
wire un1_x_10_cry_8 ;
wire un1_x_10_axb_9 ;
wire un1_x_10_cry_9 ;
wire un1_x_10_axb_10 ;
wire un1_x_10_cry_10 ;
wire un1_x_10_axb_11 ;
wire un84_sop_0_0_0_1_6_4_cry_0 ;
wire un84_sop_0_0_0_1_6_4_axb_1 ;
wire un84_sop_0_0_0_1_6_4_cry_1 ;
wire un84_sop_0_0_0_1_6_4_axb_2 ;
wire un84_sop_0_0_0_1_6_4_cry_2 ;
wire un84_sop_0_0_0_1_6_4_axb_3 ;
wire un84_sop_0_0_0_1_6_4_cry_3 ;
wire un84_sop_0_0_0_1_6_4_axb_4 ;
wire un84_sop_0_0_0_1_6_4_cry_4 ;
wire un84_sop_0_0_0_1_6_4_axb_5 ;
wire un84_sop_0_0_0_1_6_4_cry_5 ;
wire un84_sop_0_0_0_1_6_4_axb_6 ;
wire un84_sop_0_0_0_1_6_4_cry_6 ;
wire un84_sop_0_0_0_1_6_4_axb_7 ;
wire un84_sop_0_0_0_1_6_4_cry_7 ;
wire un84_sop_0_0_0_1_6_4_axb_8 ;
wire un84_sop_0_0_0_1_6_4_cry_8 ;
wire un84_sop_0_0_0_1_6_4_axb_9 ;
wire un84_sop_0_0_0_1_6_4_cry_9 ;
wire un84_sop_0_0_0_1_6_4_axb_10 ;
wire un84_sop_0_0_0_1_6_4_cry_10 ;
wire un84_sop_0_0_0_1_6_4_axb_11 ;
wire un84_sop_0_0_0_1_6_4_cry_11 ;
wire un84_sop_0_0_0_1_6_4_axb_12 ;
wire un84_sop_0_0_0_1_6_4_cry_12 ;
wire un84_sop_0_0_0_1_6_4_axb_13 ;
wire un84_sop_0_0_0_1_6_4_cry_13 ;
wire un84_sop_0_0_0_1_6_4_axb_14 ;
wire un84_sop_0_0_0_1_6_cry_0 ;
wire un84_sop_0_0_0_1_6_axb_1 ;
wire un84_sop_0_0_0_1_6_cry_1 ;
wire un84_sop_0_0_0_1_6_axb_2 ;
wire un84_sop_0_0_0_1_6_cry_2 ;
wire un84_sop_0_0_0_1_6_axb_3 ;
wire un84_sop_0_0_0_1_6_cry_3 ;
wire un84_sop_0_0_0_1_6_axb_4 ;
wire un84_sop_0_0_0_1_6_cry_4 ;
wire un84_sop_0_0_0_1_6_axb_5 ;
wire un84_sop_0_0_0_1_6_cry_5 ;
wire un84_sop_0_0_0_1_6_axb_6 ;
wire un84_sop_0_0_0_1_6_cry_6 ;
wire un84_sop_0_0_0_1_6_axb_7 ;
wire un84_sop_0_0_0_1_6_cry_7 ;
wire un84_sop_0_0_0_1_6_axb_8 ;
wire un84_sop_0_0_0_1_6_cry_8 ;
wire un84_sop_0_0_0_1_6_axb_9 ;
wire un84_sop_0_0_0_1_6_cry_9 ;
wire un84_sop_0_0_0_1_6_axb_10 ;
wire un84_sop_0_0_0_1_6_cry_10 ;
wire un84_sop_0_0_0_1_6_axb_11 ;
wire un84_sop_0_0_0_1_6_cry_11 ;
wire un84_sop_0_0_0_1_6_axb_12 ;
wire un84_sop_0_0_0_1_6_cry_12 ;
wire un84_sop_0_0_0_1_6_axb_13 ;
wire un84_sop_0_0_0_1_6_cry_13 ;
wire un84_sop_0_0_0_1_6_axb_14 ;
wire un1_x_0_0_c4 ;
wire un1_x_10_5_c5 ;
wire un84_sop_1_7_cry_0 ;
wire un84_sop_1_7_axb_1 ;
wire un84_sop_1_7_cry_1 ;
wire un84_sop_1_7_axb_2 ;
wire un84_sop_1_7_cry_2 ;
wire un84_sop_1_7_axb_3 ;
wire un84_sop_1_7_cry_3 ;
wire un84_sop_1_7_axb_4 ;
wire un84_sop_1_7_cry_4 ;
wire un84_sop_1_7_axb_5 ;
wire un84_sop_1_7_cry_5 ;
wire un84_sop_1_7_axb_6 ;
wire un84_sop_1_7_cry_6 ;
wire un84_sop_1_7_axb_7 ;
wire un84_sop_1_7_cry_7 ;
wire un84_sop_1_7_axb_8 ;
wire un84_sop_1_7_cry_8 ;
wire un84_sop_1_7_axb_9 ;
wire un84_sop_1_7_cry_9 ;
wire un84_sop_1_7_axb_10 ;
wire un84_sop_1_7_cry_10 ;
wire un84_sop_1_7_axb_11 ;
wire un84_sop_1_7_cry_11 ;
wire un84_sop_1_7_axb_12 ;
wire un84_sop_1_7_cry_12 ;
wire un84_sop_1_7_axb_13 ;
wire un84_sop_1_7_cry_13 ;
wire un84_sop_1_7_axb_14 ;
wire un84_sop_0_0_0_0_11_7_cry_0 ;
wire un84_sop_0_0_0_0_11_7_axb_1 ;
wire un84_sop_0_0_0_0_11_7_cry_1 ;
wire un84_sop_0_0_0_0_11_7_axb_2 ;
wire un84_sop_0_0_0_0_11_7_cry_2 ;
wire un84_sop_0_0_0_0_11_7_axb_3 ;
wire un84_sop_0_0_0_0_11_7_cry_3 ;
wire un84_sop_0_0_0_0_11_7_axb_4 ;
wire un84_sop_0_0_0_0_11_7_cry_4 ;
wire un84_sop_0_0_0_0_11_7_axb_5 ;
wire un84_sop_0_0_0_0_11_7_cry_5 ;
wire un84_sop_0_0_0_0_11_7_axb_6 ;
wire un84_sop_0_0_0_0_11_7_cry_6 ;
wire un84_sop_0_0_0_0_11_7_axb_7 ;
wire un84_sop_0_0_0_0_11_7_cry_7 ;
wire un84_sop_0_0_0_0_11_7_axb_8 ;
wire un84_sop_0_0_0_0_11_7_cry_8 ;
wire un84_sop_0_0_0_0_11_7_axb_9 ;
wire un84_sop_0_0_0_0_11_7_cry_9 ;
wire un84_sop_0_0_0_0_11_7_axb_10 ;
wire un84_sop_1_4_cry_0 ;
wire un84_sop_1_4_axb_1 ;
wire un84_sop_1_4_cry_1 ;
wire un84_sop_1_4_axb_2 ;
wire un84_sop_1_4_cry_2 ;
wire un84_sop_1_4_axb_3 ;
wire un84_sop_1_4_cry_3 ;
wire un84_sop_1_4_axb_4 ;
wire un84_sop_1_4_cry_4 ;
wire un84_sop_1_4_axb_5 ;
wire un84_sop_1_4_cry_5 ;
wire un84_sop_1_4_axb_6 ;
wire un84_sop_1_4_cry_6 ;
wire un84_sop_1_4_axb_7 ;
wire un84_sop_1_4_cry_7 ;
wire un84_sop_1_4_axb_8 ;
wire un84_sop_1_4_cry_8 ;
wire un84_sop_1_4_axb_9 ;
wire un84_sop_1_4_cry_9 ;
wire un84_sop_1_4_axb_10 ;
wire un84_sop_1_4_cry_10 ;
wire un84_sop_1_4_axb_11 ;
wire un84_sop_1_4_cry_11 ;
wire un84_sop_1_4_axb_12 ;
wire un84_sop_1_4_cry_12 ;
wire un84_sop_1_4_axb_13 ;
wire un84_sop_1_4_cry_13 ;
wire un84_sop_1_4_axb_14 ;
wire un84_sop_1_axb_0 ;
wire un84_sop_1_cry_0 ;
wire un84_sop_1_axb_1 ;
wire un84_sop_1_cry_1 ;
wire un84_sop_1_axb_2 ;
wire un84_sop_1_cry_2 ;
wire un84_sop_1_axb_3 ;
wire un84_sop_1_cry_3 ;
wire un84_sop_1_axb_4 ;
wire un84_sop_1_cry_4 ;
wire un84_sop_1_axb_5 ;
wire un84_sop_1_cry_5 ;
wire un84_sop_1_axb_6 ;
wire un84_sop_1_cry_6 ;
wire un84_sop_1_axb_7 ;
wire un84_sop_1_cry_7 ;
wire un84_sop_1_axb_8 ;
wire un84_sop_1_cry_8 ;
wire un84_sop_1_axb_9 ;
wire un84_sop_1_cry_9 ;
wire un84_sop_1_axb_10 ;
wire un84_sop_1_cry_10 ;
wire un84_sop_1_axb_11 ;
wire un84_sop_1_cry_11 ;
wire un84_sop_1_axb_12 ;
wire un84_sop_1_cry_12 ;
wire un84_sop_1_axb_13 ;
wire un84_sop_1_cry_13 ;
wire un84_sop_1_axb_14 ;
wire un1_x_10_4_cry_1 ;
wire un1_x_10_4_axb_2 ;
wire un1_x_10_4_cry_2 ;
wire un1_x_10_4_axb_3 ;
wire un1_x_10_4_cry_3 ;
wire un1_x_10_4_axb_4 ;
wire un1_x_10_4_cry_4 ;
wire un1_x_10_4_axb_5 ;
wire un1_x_10_4_cry_5 ;
wire un1_x_10_4_axb_6 ;
wire un1_x_10_4_cry_6 ;
wire un1_x_10_4_axb_7 ;
wire un1_x_10_4_cry_7 ;
wire un1_x_15_0_axb_0 ;
wire un1_x_15_0_cry_0 ;
wire un1_x_15_0_axb_1 ;
wire un1_x_15_0_cry_1 ;
wire un1_x_15_0_axb_2 ;
wire un1_x_15_0_cry_2 ;
wire un1_x_15_0_axb_3 ;
wire un1_x_15_0_cry_3 ;
wire un1_x_15_0_axb_4 ;
wire un1_x_15_0_cry_4 ;
wire un1_x_15_0_axb_5 ;
wire un1_x_15_0_cry_5 ;
wire un1_x_15_0_axb_6 ;
wire un1_x_15_0_cry_6 ;
wire un1_x_15_0_axb_7 ;
wire un1_x_15_0_cry_7 ;
wire un1_x_15_0_axb_8 ;
wire un1_x_11_0_axb_0 ;
wire un1_x_11_0_cry_0 ;
wire un1_x_11_0_axb_1 ;
wire un1_x_11_0_cry_1 ;
wire un1_x_11_0_axb_2 ;
wire un1_x_11_0_cry_2 ;
wire un1_x_11_0_axb_3 ;
wire un1_x_11_0_cry_3 ;
wire un1_x_11_0_axb_4 ;
wire un1_x_11_0_cry_4 ;
wire un1_x_11_0_axb_5 ;
wire un1_x_11_0_cry_5 ;
wire un1_x_11_0_axb_6 ;
wire un1_x_11_0_cry_6 ;
wire un1_x_11_0_axb_7 ;
wire un1_x_11_0_cry_7 ;
wire un1_x_11_0_axb_8 ;
wire un1_x_16_0_axb_0 ;
wire un1_x_16_0_cry_0 ;
wire un1_x_16_0_axb_1 ;
wire un1_x_16_0_cry_1 ;
wire un1_x_16_0_axb_2 ;
wire un1_x_16_0_cry_2 ;
wire un1_x_16_0_axb_3 ;
wire un1_x_16_0_cry_3 ;
wire un1_x_16_0_axb_4 ;
wire un1_x_16_0_cry_4 ;
wire un1_x_16_0_axb_5 ;
wire un1_x_16_0_cry_5 ;
wire un1_x_16_0_axb_6 ;
wire un1_x_16_0_cry_6 ;
wire un1_x_16_0_axb_7 ;
wire un1_x_16_0_cry_7 ;
wire un1_x_16_0_axb_8 ;
wire un84_sop_0_0_0_1_cry_0 ;
wire un84_sop_0_0_0_1_axb_1 ;
wire un84_sop_0_0_0_1_cry_1 ;
wire un84_sop_0_0_0_1_axb_2 ;
wire un84_sop_0_0_0_1_cry_2 ;
wire un84_sop_0_0_0_1_axb_3 ;
wire un84_sop_0_0_0_1_cry_3 ;
wire un84_sop_0_0_0_1_axb_4 ;
wire un84_sop_0_0_0_1_cry_4 ;
wire un84_sop_0_0_0_1_axb_5 ;
wire un84_sop_0_0_0_1_cry_5 ;
wire un84_sop_0_0_0_1_axb_6 ;
wire un84_sop_0_0_0_1_cry_6 ;
wire un84_sop_0_0_0_1_axb_7 ;
wire un84_sop_0_0_0_1_cry_7 ;
wire un84_sop_0_0_0_1_axb_8 ;
wire un84_sop_0_0_0_1_cry_8 ;
wire un84_sop_0_0_0_1_axb_9 ;
wire un1_x_10_4_cry_1_sf ;
wire un84_sop_0_0_0_0_11_7_axb_0_ci ;
wire un84_sop_0_0_0_11_0_cry_0_cy ;
wire un84_sop_0_0_0_11_6_0_cry_0_cy ;
wire un84_sop_0_0_0_6_6_0_cry_0_cy ;
wire un84_sop_1_6_0_cry_0_cy ;
wire un84_sop_0_0_0_6_0_axb_0_0 ;
wire un84_sop_0_0_0_6_0_axb_0_1 ;
wire un84_sop_1_6_0_axb_0_0 ;
wire un1_x_10_4_s_8_false ;
wire x_4_x_4_1Q_Q31 ;
wire x_4_0_x_4_1Q_Q31 ;
wire x_4_1_x_4_1Q_Q31 ;
wire x_4_2_x_4_1Q_Q31 ;
wire x_4_3_x_4_1Q_Q31 ;
wire x_4_4_x_4_1Q_Q31 ;
wire x_4_5_x_4_1Q_Q31 ;
wire x_4_6_x_4_1Q_Q31 ;
wire x_7_x_7_1Q_Q31 ;
wire x_7_0_x_7_1Q_Q31 ;
wire x_7_1_x_7_1Q_Q31 ;
wire x_7_2_x_7_1Q_Q31 ;
wire x_7_3_x_7_1Q_Q31 ;
wire x_7_4_x_7_1Q_Q31 ;
wire x_7_5_x_7_1Q_Q31 ;
wire x_7_6_x_7_1Q_Q31 ;
wire x_12_x_4_1Q_Q31 ;
wire x_12_0_x_4_1Q_Q31 ;
wire x_12_1_x_4_1Q_Q31 ;
wire x_12_2_x_4_1Q_Q31 ;
wire x_12_3_x_4_1Q_Q31 ;
wire x_12_4_x_4_1Q_Q31 ;
wire x_12_5_x_4_1Q_Q31 ;
wire x_12_6_x_7_1Q_Q31 ;
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
// @8:21
  SRLC32E x_12_6_x_7_1Q (
	.Q(x_12_6_tmp_d_array_0[0]),
	.Q31(x_12_6_x_7_1Q_Q31),
	.A({GND, GND, GND, GND, VCC}),
	.D(x_9[0]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_12_5_x_4_1Q (
	.Q(x_12_5_tmp_d_array_0[0]),
	.Q31(x_12_5_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_8[1]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_12_4_x_4_1Q (
	.Q(x_12_4_tmp_d_array_0[0]),
	.Q31(x_12_4_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_8[2]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_12_3_x_4_1Q (
	.Q(x_12_3_tmp_d_array_0[0]),
	.Q31(x_12_3_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_8[3]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_12_2_x_4_1Q (
	.Q(x_12_2_tmp_d_array_0[0]),
	.Q31(x_12_2_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_8[4]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_12_1_x_4_1Q (
	.Q(x_12_1_tmp_d_array_0[0]),
	.Q31(x_12_1_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_8[5]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_12_0_x_4_1Q (
	.Q(x_12_0_tmp_d_array_0[0]),
	.Q31(x_12_0_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_8[6]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_12_x_4_1Q (
	.Q(x_12_tmp_d_array_0[0]),
	.Q31(x_12_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_8[7]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_7_6_x_7_1Q (
	.Q(x_7_6_tmp_d_array_0[0]),
	.Q31(x_7_6_x_7_1Q_Q31),
	.A({GND, GND, GND, GND, VCC}),
	.D(x_4[0]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_7_5_x_7_1Q (
	.Q(x_7_5_tmp_d_array_0[0]),
	.Q31(x_7_5_x_7_1Q_Q31),
	.A({GND, GND, GND, GND, VCC}),
	.D(x_4[1]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_7_4_x_7_1Q (
	.Q(x_7_4_tmp_d_array_0[0]),
	.Q31(x_7_4_x_7_1Q_Q31),
	.A({GND, GND, GND, GND, VCC}),
	.D(x_4[2]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_7_3_x_7_1Q (
	.Q(x_7_3_tmp_d_array_0[0]),
	.Q31(x_7_3_x_7_1Q_Q31),
	.A({GND, GND, GND, GND, VCC}),
	.D(x_4[3]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_7_2_x_7_1Q (
	.Q(x_7_2_tmp_d_array_0[0]),
	.Q31(x_7_2_x_7_1Q_Q31),
	.A({GND, GND, GND, GND, VCC}),
	.D(x_4[4]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_7_1_x_7_1Q (
	.Q(x_7_1_tmp_d_array_0[0]),
	.Q31(x_7_1_x_7_1Q_Q31),
	.A({GND, GND, GND, GND, VCC}),
	.D(x_4[5]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_7_0_x_7_1Q (
	.Q(x_7_0_tmp_d_array_0[0]),
	.Q31(x_7_0_x_7_1Q_Q31),
	.A({GND, GND, GND, GND, VCC}),
	.D(x_4[6]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_7_x_7_1Q (
	.Q(x_7_tmp_d_array_0[0]),
	.Q31(x_7_x_7_1Q_Q31),
	.A({GND, GND, GND, GND, VCC}),
	.D(x_4[7]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_4_6_x_4_1Q (
	.Q(x_4_6_tmp_d_array_0[0]),
	.Q31(x_4_6_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_0[0]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_4_5_x_4_1Q (
	.Q(x_4_5_tmp_d_array_0[0]),
	.Q31(x_4_5_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_0[1]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_4_4_x_4_1Q (
	.Q(x_4_4_tmp_d_array_0[0]),
	.Q31(x_4_4_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_0[2]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_4_3_x_4_1Q (
	.Q(x_4_3_tmp_d_array_0[0]),
	.Q31(x_4_3_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_0[3]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_4_2_x_4_1Q (
	.Q(x_4_2_tmp_d_array_0[0]),
	.Q31(x_4_2_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_0[4]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_4_1_x_4_1Q (
	.Q(x_4_1_tmp_d_array_0[0]),
	.Q31(x_4_1_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_0[5]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_4_0_x_4_1Q (
	.Q(x_4_0_tmp_d_array_0[0]),
	.Q31(x_4_0_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_0[6]),
	.CLK(clk),
	.CE(VCC)
);
// @8:21
  SRLC32E x_4_x_4_1Q (
	.Q(x_4_tmp_d_array_0[0]),
	.Q31(x_4_x_4_1Q_Q31),
	.A({GND, GND, GND, VCC, GND}),
	.D(x_0[7]),
	.CLK(clk),
	.CE(VCC)
);
// @8:30
  LUT1 un1_x_10_4_s_8_false_cZ (
	.I0(GND),
	.O(un1_x_10_4_s_8_false)
);
defparam un1_x_10_4_s_8_false_cZ.INIT=2'h0;
  LUT3 un84_sop_1_6_0_s_0_lut (
	.I0(un1_x_1[4]),
	.I1(un1_x_2[5]),
	.I2(un1_x_3[4]),
	.O(un84_sop_1_6[0])
);
defparam un84_sop_1_6_0_s_0_lut.INIT=8'h96;
  LUT3 un84_sop_0_0_0_11_6_0_s_0_lut (
	.I0(un1_x_12_0_0[4]),
	.I1(un1_x_13_0_0[5]),
	.I2(un1_x_14_0_0[4]),
	.O(un84_sop_0_0_0_0_11_6[0])
);
defparam un84_sop_0_0_0_11_6_0_s_0_lut.INIT=8'h96;
  LUT3 un84_sop_0_0_0_6_6_0_s_0_lut (
	.I0(un1_x_7_0[2]),
	.I1(un1_x_8_0[4]),
	.I2(un1_x_9_0[5]),
	.O(un84_sop_0_0_0_1_6_6[0])
);
defparam un84_sop_0_0_0_6_6_0_s_0_lut.INIT=8'h96;
// @8:30
  LUT2 un84_sop_0_0_0_6_0_axb_0_0_cZ (
	.I0(un1_x_12_0_0[4]),
	.I1(un1_x_13_0_0[5]),
	.O(un84_sop_0_0_0_6_0_axb_0_0)
);
defparam un84_sop_0_0_0_6_0_axb_0_0_cZ.INIT=4'h6;
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_axb_12_cZ (
	.I0(un1_x_12_0_0[15]),
	.I1(un1_x_13_0_0[15]),
	.I2(un1_x_14_0_0[15]),
	.O(un84_sop_0_0_0_11_6_0_axb_12)
);
defparam un84_sop_0_0_0_11_6_0_axb_12_cZ.INIT=8'h7E;
// @8:30
  LUT2 un84_sop_0_0_0_6_0_axb_0_1_cZ (
	.I0(un1_x_7_0[2]),
	.I1(un1_x_8_0[4]),
	.O(un84_sop_0_0_0_6_0_axb_0_1)
);
defparam un84_sop_0_0_0_6_0_axb_0_1_cZ.INIT=4'h6;
// @8:30
  LUT4 un84_sop_0_0_0_6_6_0_axb_12_cZ (
	.I0(un1_x_7_0[13]),
	.I1(un1_x_7_0[14]),
	.I2(un1_x_8_0[15]),
	.I3(un1_x_9_0[15]),
	.O(un84_sop_0_0_0_6_6_0_axb_12)
);
defparam un84_sop_0_0_0_6_6_0_axb_12_cZ.INIT=16'h399C;
// @8:30
  LUT4 un84_sop_0_0_0_6_6_0_axb_13_cZ (
	.I0(un1_x_7_0[14]),
	.I1(un1_x_7_0[15]),
	.I2(un1_x_8_0[15]),
	.I3(un1_x_9_0[15]),
	.O(un84_sop_0_0_0_6_6_0_axb_13)
);
defparam un84_sop_0_0_0_6_6_0_axb_13_cZ.INIT=16'h399C;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_8_axb_0 (
	.I0(un84_sop_0_0_0_10_0[3]),
	.I1(x_4[0]),
	.O(un84_sop_0_0_0_1_6_8[3])
);
defparam un84_sop_0_0_0_1_6_8_axb_0.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_8_axb_1_cZ (
	.I0(un84_sop_0_0_0_10_0[4]),
	.I1(x_4[1]),
	.O(un84_sop_0_0_0_1_6_8_axb_1)
);
defparam un84_sop_0_0_0_1_6_8_axb_1_cZ.INIT=4'h6;
// @8:30
  LUT4 un84_sop_0_0_0_1_6_8_axb_9_cZ (
	.I0(un84_sop_0_0_0_10_0[11]),
	.I1(un84_sop_0_0_0_10_0[12]),
	.I2(x_4[6]),
	.I3(x_4[7]),
	.O(un84_sop_0_0_0_1_6_8_axb_9)
);
defparam un84_sop_0_0_0_1_6_8_axb_9_cZ.INIT=16'h366C;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_8_axb_10_cZ (
	.I0(un84_sop_0_0_0_10_0[13]),
	.I1(x_4[7]),
	.O(un84_sop_0_0_0_1_6_8_axb_10)
);
defparam un84_sop_0_0_0_1_6_8_axb_10_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_6_0_axb_0_0_cZ (
	.I0(un1_x_1[4]),
	.I1(un1_x_2[5]),
	.O(un84_sop_1_6_0_axb_0_0)
);
defparam un84_sop_1_6_0_axb_0_0_cZ.INIT=4'h6;
// @8:30
  LUT3 un84_sop_1_6_0_axb_12_cZ (
	.I0(un1_x_1[15]),
	.I1(un1_x_2[15]),
	.I2(un1_x_3[15]),
	.O(un84_sop_1_6_0_axb_12)
);
defparam un84_sop_1_6_0_axb_12_cZ.INIT=8'h7E;
// @8:30
  LUT3 un1_x_10_axb_4_cZ (
	.I0(un1_x_10_4[4]),
	.I1(x_8[0]),
	.I2(x_8[1]),
	.O(un1_x_10_axb_4)
);
defparam un1_x_10_axb_4_cZ.INIT=8'h96;
// @8:30
  LUT4 un1_x_10_axb_5_cZ (
	.I0(un1_x_10_4[5]),
	.I1(x_8[0]),
	.I2(x_8[1]),
	.I3(x_8[2]),
	.O(un1_x_10_axb_5)
);
defparam un1_x_10_axb_5_cZ.INIT=16'hA956;
// @8:30
  LUT3 un1_x_10_axb_8_cZ (
	.I0(un1_x_10_4[8]),
	.I1(un1_x_10_5_c5),
	.I2(x_8[5]),
	.O(un1_x_10_axb_8)
);
defparam un1_x_10_axb_8_cZ.INIT=8'h69;
// @8:30
  LUT4 un1_x_10_axb_9_cZ (
	.I0(un1_x_10_5_c5),
	.I1(x_8[5]),
	.I2(x_8[6]),
	.I3(x_8[7]),
	.O(un1_x_10_axb_9)
);
defparam un1_x_10_axb_9_cZ.INIT=16'hD22D;
// @8:30
  LUT3 un1_x_10_axb_10_cZ (
	.I0(un1_x_10_5_c5),
	.I1(x_8[5]),
	.I2(x_8[6]),
	.O(un1_x_10_axb_10)
);
defparam un1_x_10_axb_10_cZ.INIT=8'hFD;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_0 (
	.I0(un1_x_6_0[1]),
	.I1(un84_sop_0_0_0_10_0[0]),
	.O(un84_sop_0_0_0_1_6_4[0])
);
defparam un84_sop_0_0_0_1_6_4_axb_0.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_1_cZ (
	.I0(un1_x_6_0[2]),
	.I1(un84_sop_0_0_0_10_0[1]),
	.O(un84_sop_0_0_0_1_6_4_axb_1)
);
defparam un84_sop_0_0_0_1_6_4_axb_1_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_2_cZ (
	.I0(un1_x_6_0[3]),
	.I1(un84_sop_0_0_0_10_0[2]),
	.O(un84_sop_0_0_0_1_6_4_axb_2)
);
defparam un84_sop_0_0_0_1_6_4_axb_2_cZ.INIT=4'h6;
// @8:30
  LUT3 un84_sop_0_0_0_1_6_4_axb_3_cZ (
	.I0(un1_x_6_0[4]),
	.I1(un84_sop_0_0_0_10_0[3]),
	.I2(x_4[0]),
	.O(un84_sop_0_0_0_1_6_4_axb_3)
);
defparam un84_sop_0_0_0_1_6_4_axb_3_cZ.INIT=8'h96;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_4_cZ (
	.I0(un1_x_6_0[5]),
	.I1(un84_sop_0_0_0_1_6_8[4]),
	.O(un84_sop_0_0_0_1_6_4_axb_4)
);
defparam un84_sop_0_0_0_1_6_4_axb_4_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_5_cZ (
	.I0(un1_x_6_0[6]),
	.I1(un84_sop_0_0_0_1_6_8[5]),
	.O(un84_sop_0_0_0_1_6_4_axb_5)
);
defparam un84_sop_0_0_0_1_6_4_axb_5_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_6_cZ (
	.I0(un1_x_6_0[7]),
	.I1(un84_sop_0_0_0_1_6_8[6]),
	.O(un84_sop_0_0_0_1_6_4_axb_6)
);
defparam un84_sop_0_0_0_1_6_4_axb_6_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_7_cZ (
	.I0(un1_x_6_0[8]),
	.I1(un84_sop_0_0_0_1_6_8[7]),
	.O(un84_sop_0_0_0_1_6_4_axb_7)
);
defparam un84_sop_0_0_0_1_6_4_axb_7_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_8_cZ (
	.I0(un1_x_6_0[9]),
	.I1(un84_sop_0_0_0_1_6_8[8]),
	.O(un84_sop_0_0_0_1_6_4_axb_8)
);
defparam un84_sop_0_0_0_1_6_4_axb_8_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_9_cZ (
	.I0(un1_x_6_0[10]),
	.I1(un84_sop_0_0_0_1_6_8[9]),
	.O(un84_sop_0_0_0_1_6_4_axb_9)
);
defparam un84_sop_0_0_0_1_6_4_axb_9_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_10_cZ (
	.I0(un1_x_6_0[11]),
	.I1(un84_sop_0_0_0_1_6_8[10]),
	.O(un84_sop_0_0_0_1_6_4_axb_10)
);
defparam un84_sop_0_0_0_1_6_4_axb_10_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_11_cZ (
	.I0(un1_x_6_0[12]),
	.I1(un84_sop_0_0_0_1_6_8[11]),
	.O(un84_sop_0_0_0_1_6_4_axb_11)
);
defparam un84_sop_0_0_0_1_6_4_axb_11_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_12_cZ (
	.I0(un1_x_6_0[13]),
	.I1(un84_sop_0_0_0_1_6_8[12]),
	.O(un84_sop_0_0_0_1_6_4_axb_12)
);
defparam un84_sop_0_0_0_1_6_4_axb_12_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_13_cZ (
	.I0(un1_x_6_0[14]),
	.I1(un84_sop_0_0_0_1_6_8[13]),
	.O(un84_sop_0_0_0_1_6_4_axb_13)
);
defparam un84_sop_0_0_0_1_6_4_axb_13_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_1_cZ (
	.I0(un1_x_4[3]),
	.I1(un84_sop_0_0_0_0_5[1]),
	.O(un84_sop_1_7_axb_1)
);
defparam un84_sop_1_7_axb_1_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_2_cZ (
	.I0(un1_x_4[4]),
	.I1(un84_sop_0_0_0_0_5[2]),
	.O(un84_sop_1_7_axb_2)
);
defparam un84_sop_1_7_axb_2_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_3_cZ (
	.I0(un1_x_4[5]),
	.I1(un84_sop_0_0_0_0_5[3]),
	.O(un84_sop_1_7_axb_3)
);
defparam un84_sop_1_7_axb_3_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_4_cZ (
	.I0(un1_x_4[6]),
	.I1(un84_sop_0_0_0_0_5[4]),
	.O(un84_sop_1_7_axb_4)
);
defparam un84_sop_1_7_axb_4_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_5_cZ (
	.I0(un1_x_4[7]),
	.I1(un84_sop_0_0_0_0_5[5]),
	.O(un84_sop_1_7_axb_5)
);
defparam un84_sop_1_7_axb_5_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_6_cZ (
	.I0(un1_x_4[8]),
	.I1(un84_sop_0_0_0_0_5[6]),
	.O(un84_sop_1_7_axb_6)
);
defparam un84_sop_1_7_axb_6_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_7_cZ (
	.I0(un1_x_4[9]),
	.I1(un84_sop_0_0_0_0_5[7]),
	.O(un84_sop_1_7_axb_7)
);
defparam un84_sop_1_7_axb_7_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_8_cZ (
	.I0(un1_x_4[10]),
	.I1(un84_sop_0_0_0_0_5[8]),
	.O(un84_sop_1_7_axb_8)
);
defparam un84_sop_1_7_axb_8_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_9_cZ (
	.I0(un1_x_4[11]),
	.I1(un84_sop_0_0_0_0_5[9]),
	.O(un84_sop_1_7_axb_9)
);
defparam un84_sop_1_7_axb_9_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_10_cZ (
	.I0(un1_x_4[12]),
	.I1(un84_sop_0_0_0_0_5[10]),
	.O(un84_sop_1_7_axb_10)
);
defparam un84_sop_1_7_axb_10_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_11_cZ (
	.I0(un1_x_4[13]),
	.I1(un84_sop_0_0_0_0_5[11]),
	.O(un84_sop_1_7_axb_11)
);
defparam un84_sop_1_7_axb_11_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_12_cZ (
	.I0(un1_x_4[14]),
	.I1(un84_sop_0_0_0_0_5[12]),
	.O(un84_sop_1_7_axb_12)
);
defparam un84_sop_1_7_axb_12_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_13_cZ (
	.I0(un1_x_4[15]),
	.I1(un84_sop_0_0_0_0_5[13]),
	.O(un84_sop_1_7_axb_13)
);
defparam un84_sop_1_7_axb_13_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_0_11_7_axb_0 (
	.I0(un84_sop_0_0_0_0_0[0]),
	.I1(x_9[0]),
	.O(un84_sop_0_0_0_0_11_7[0])
);
defparam un84_sop_0_0_0_0_11_7_axb_0.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_0_11_7_axb_1_cZ (
	.I0(un1_x_11_0_0[7]),
	.I1(un84_sop_0_0_0_0_0[1]),
	.O(un84_sop_0_0_0_0_11_7_axb_1)
);
defparam un84_sop_0_0_0_0_11_7_axb_1_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_0_11_7_axb_2_cZ (
	.I0(un1_x_11_0_0[8]),
	.I1(un84_sop_0_0_0_0_0[2]),
	.O(un84_sop_0_0_0_0_11_7_axb_2)
);
defparam un84_sop_0_0_0_0_11_7_axb_2_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_0_11_7_axb_3_cZ (
	.I0(un1_x_11_0_0[9]),
	.I1(un84_sop_0_0_0_0_0[3]),
	.O(un84_sop_0_0_0_0_11_7_axb_3)
);
defparam un84_sop_0_0_0_0_11_7_axb_3_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_0_11_7_axb_4_cZ (
	.I0(un1_x_11_0_0[10]),
	.I1(un84_sop_0_0_0_0_0[4]),
	.O(un84_sop_0_0_0_0_11_7_axb_4)
);
defparam un84_sop_0_0_0_0_11_7_axb_4_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_0_11_7_axb_5_cZ (
	.I0(un1_x_11_0_0[11]),
	.I1(un84_sop_0_0_0_0_0[5]),
	.O(un84_sop_0_0_0_0_11_7_axb_5)
);
defparam un84_sop_0_0_0_0_11_7_axb_5_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_0_11_7_axb_6_cZ (
	.I0(un1_x_11_0_0[12]),
	.I1(un84_sop_0_0_0_0_0[6]),
	.O(un84_sop_0_0_0_0_11_7_axb_6)
);
defparam un84_sop_0_0_0_0_11_7_axb_6_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_0_11_7_axb_7_cZ (
	.I0(un1_x_11_0_0[13]),
	.I1(un84_sop_0_0_0_0_0[7]),
	.O(un84_sop_0_0_0_0_11_7_axb_7)
);
defparam un84_sop_0_0_0_0_11_7_axb_7_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_0_11_7_axb_8_cZ (
	.I0(un1_x_11_0_0[14]),
	.I1(un84_sop_0_0_0_0_0[8]),
	.O(un84_sop_0_0_0_0_11_7_axb_8)
);
defparam un84_sop_0_0_0_0_11_7_axb_8_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_0_11_7_axb_9_cZ (
	.I0(un1_x_11_0_0[14]),
	.I1(un84_sop_0_0_0_0_0[9]),
	.O(un84_sop_0_0_0_0_11_7_axb_9)
);
defparam un84_sop_0_0_0_0_11_7_axb_9_cZ.INIT=4'h6;
  LUT3 un84_sop_1_4_cry_0_RNO (
	.I0(un1_x_4[2]),
	.I1(un84_sop_0_0_0_0_5[0]),
	.I2(x_0[0]),
	.O(un84_sop_1_4[0])
);
defparam un84_sop_1_4_cry_0_RNO.INIT=8'h96;
// @8:30
  LUT3 un84_sop_1_4_axb_1_cZ (
	.I0(un84_sop_1_7[1]),
	.I1(x_0[0]),
	.I2(x_0[1]),
	.O(un84_sop_1_4_axb_1)
);
defparam un84_sop_1_4_axb_1_cZ.INIT=8'h96;
// @8:30
  LUT4 un84_sop_1_4_axb_2_cZ (
	.I0(un84_sop_1_7[2]),
	.I1(x_0[0]),
	.I2(x_0[1]),
	.I3(x_0[2]),
	.O(un84_sop_1_4_axb_2)
);
defparam un84_sop_1_4_axb_2_cZ.INIT=16'hA956;
// @8:30
  LUT4 un84_sop_1_4_axb_5_cZ (
	.I0(un1_x_0_0_c4),
	.I1(un84_sop_1_7[5]),
	.I2(x_0[4]),
	.I3(x_0[5]),
	.O(un84_sop_1_4_axb_5)
);
defparam un84_sop_1_4_axb_5_cZ.INIT=16'hC639;
// @8:30
  LUT4 un84_sop_1_axb_0_cZ (
	.I0(un1_x_4[2]),
	.I1(un84_sop_0_0_0_0_5[0]),
	.I2(un84_sop_1_6[0]),
	.I3(x_0[0]),
	.O(un84_sop_1_axb_0)
);
defparam un84_sop_1_axb_0_cZ.INIT=16'h6996;
// @8:30
  LUT2 un84_sop_1_axb_1_cZ (
	.I0(un84_sop_1_4[1]),
	.I1(un84_sop_1_6[1]),
	.O(un84_sop_1_axb_1)
);
defparam un84_sop_1_axb_1_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_axb_2_cZ (
	.I0(un84_sop_1_4[2]),
	.I1(un84_sop_1_6[2]),
	.O(un84_sop_1_axb_2)
);
defparam un84_sop_1_axb_2_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_axb_3_cZ (
	.I0(un84_sop_1_4[3]),
	.I1(un84_sop_1_6[3]),
	.O(un84_sop_1_axb_3)
);
defparam un84_sop_1_axb_3_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_axb_4_cZ (
	.I0(un84_sop_1_4[4]),
	.I1(un84_sop_1_6[4]),
	.O(un84_sop_1_axb_4)
);
defparam un84_sop_1_axb_4_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_axb_5_cZ (
	.I0(un84_sop_1_4[5]),
	.I1(un84_sop_1_6[5]),
	.O(un84_sop_1_axb_5)
);
defparam un84_sop_1_axb_5_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_axb_6_cZ (
	.I0(un84_sop_1_4[6]),
	.I1(un84_sop_1_6[6]),
	.O(un84_sop_1_axb_6)
);
defparam un84_sop_1_axb_6_cZ.INIT=4'h6;
  LUT2 un1_x_10_4_cry_1_RNO (
	.I0(x_8[0]),
	.I1(x_8[1]),
	.O(un1_x_10_4_cry_1_sf)
);
defparam un1_x_10_4_cry_1_RNO.INIT=4'h6;
// @8:30
  LUT2 un1_x_10_4_axb_2_cZ (
	.I0(x_8[1]),
	.I1(x_8[2]),
	.O(un1_x_10_4_axb_2)
);
defparam un1_x_10_4_axb_2_cZ.INIT=4'h6;
// @8:30
  LUT2 un1_x_10_4_axb_3_cZ (
	.I0(x_8[2]),
	.I1(x_8[3]),
	.O(un1_x_10_4_axb_3)
);
defparam un1_x_10_4_axb_3_cZ.INIT=4'h6;
// @8:30
  LUT2 un1_x_10_4_axb_4_cZ (
	.I0(x_8[3]),
	.I1(x_8[4]),
	.O(un1_x_10_4_axb_4)
);
defparam un1_x_10_4_axb_4_cZ.INIT=4'h6;
// @8:30
  LUT2 un1_x_10_4_axb_5_cZ (
	.I0(x_8[4]),
	.I1(x_8[5]),
	.O(un1_x_10_4_axb_5)
);
defparam un1_x_10_4_axb_5_cZ.INIT=4'h6;
// @8:30
  LUT2 un1_x_10_4_axb_6_cZ (
	.I0(x_8[5]),
	.I1(x_8[6]),
	.O(un1_x_10_4_axb_6)
);
defparam un1_x_10_4_axb_6_cZ.INIT=4'h6;
// @8:30
  LUT2 un1_x_10_4_axb_7_cZ (
	.I0(x_8[6]),
	.I1(x_8[7]),
	.O(un1_x_10_4_axb_7)
);
defparam un1_x_10_4_axb_7_cZ.INIT=4'h6;
// @8:30
  LUT1 un1_x_15_0_axb_0_cZ (
	.I0(x_12[0]),
	.O(un1_x_15_0_axb_0)
);
defparam un1_x_15_0_axb_0_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_15_0_axb_1_cZ (
	.I0(x_12[1]),
	.O(un1_x_15_0_axb_1)
);
defparam un1_x_15_0_axb_1_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_15_0_axb_2_cZ (
	.I0(x_12[2]),
	.O(un1_x_15_0_axb_2)
);
defparam un1_x_15_0_axb_2_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_15_0_axb_3_cZ (
	.I0(x_12[3]),
	.O(un1_x_15_0_axb_3)
);
defparam un1_x_15_0_axb_3_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_15_0_axb_4_cZ (
	.I0(x_12[4]),
	.O(un1_x_15_0_axb_4)
);
defparam un1_x_15_0_axb_4_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_15_0_axb_5_cZ (
	.I0(x_12[5]),
	.O(un1_x_15_0_axb_5)
);
defparam un1_x_15_0_axb_5_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_15_0_axb_6_cZ (
	.I0(x_12[6]),
	.O(un1_x_15_0_axb_6)
);
defparam un1_x_15_0_axb_6_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_15_0_axb_7_cZ (
	.I0(x_12[7]),
	.O(un1_x_15_0_axb_7)
);
defparam un1_x_15_0_axb_7_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_11_0_axb_0_cZ (
	.I0(x_8[0]),
	.O(un1_x_11_0_axb_0)
);
defparam un1_x_11_0_axb_0_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_16_0_axb_0_cZ (
	.I0(x_13[0]),
	.O(un1_x_16_0_axb_0)
);
defparam un1_x_16_0_axb_0_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_16_0_axb_1_cZ (
	.I0(x_13[1]),
	.O(un1_x_16_0_axb_1)
);
defparam un1_x_16_0_axb_1_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_16_0_axb_2_cZ (
	.I0(x_13[2]),
	.O(un1_x_16_0_axb_2)
);
defparam un1_x_16_0_axb_2_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_16_0_axb_3_cZ (
	.I0(x_13[3]),
	.O(un1_x_16_0_axb_3)
);
defparam un1_x_16_0_axb_3_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_16_0_axb_4_cZ (
	.I0(x_13[4]),
	.O(un1_x_16_0_axb_4)
);
defparam un1_x_16_0_axb_4_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_16_0_axb_5_cZ (
	.I0(x_13[5]),
	.O(un1_x_16_0_axb_5)
);
defparam un1_x_16_0_axb_5_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_16_0_axb_6_cZ (
	.I0(x_13[6]),
	.O(un1_x_16_0_axb_6)
);
defparam un1_x_16_0_axb_6_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_16_0_axb_7_cZ (
	.I0(x_13[7]),
	.O(un1_x_16_0_axb_7)
);
defparam un1_x_16_0_axb_7_cZ.INIT=2'h1;
// @8:30
  LUT2 un84_sop_0_0_0_0_11_7_axb_0_ci_cZ (
	.I0(un84_sop_0_0_0_0_0[0]),
	.I1(x_9[0]),
	.O(un84_sop_0_0_0_0_11_7_axb_0_ci)
);
defparam un84_sop_0_0_0_0_11_7_axb_0_ci_cZ.INIT=4'h6;
// @8:30
  LUT1 un84_sop_0_0_0_11_6_0_cry_0_thru (
	.I0(un1_x_14_0_0[4]),
	.O(un1_x_14_0_0_0[4])
);
defparam un84_sop_0_0_0_11_6_0_cry_0_thru.INIT=2'h2;
// @8:30
  LUT1 un84_sop_0_0_0_6_6_0_cry_0_thru (
	.I0(un1_x_9_0[5]),
	.O(un1_x_9_0_0[5])
);
defparam un84_sop_0_0_0_6_6_0_cry_0_thru.INIT=2'h2;
// @8:30
  LUT1 un84_sop_1_6_0_cry_0_thru (
	.I0(un1_x_3[4]),
	.O(un1_x_3_0[4])
);
defparam un84_sop_1_6_0_cry_0_thru.INIT=2'h2;
// @8:21
  FD \x_0_Z[0]  (
	.Q(x_0[0]),
	.D(x_in[0]),
	.C(clk)
);
// @8:21
  FD \x_0_Z[1]  (
	.Q(x_0[1]),
	.D(x_in[1]),
	.C(clk)
);
// @8:21
  FD \x_0_Z[2]  (
	.Q(x_0[2]),
	.D(x_in[2]),
	.C(clk)
);
// @8:21
  FD \x_0_Z[3]  (
	.Q(x_0[3]),
	.D(x_in[3]),
	.C(clk)
);
// @8:21
  FD \x_0_Z[4]  (
	.Q(x_0[4]),
	.D(x_in[4]),
	.C(clk)
);
// @8:21
  FD \x_0_Z[5]  (
	.Q(x_0[5]),
	.D(x_in[5]),
	.C(clk)
);
// @8:21
  FD \x_0_Z[6]  (
	.Q(x_0[6]),
	.D(x_in[6]),
	.C(clk)
);
// @8:21
  FD \x_0_Z[7]  (
	.Q(x_0[7]),
	.D(x_in[7]),
	.C(clk)
);
// @8:21
  FD \y_Z[7]  (
	.Q(y[7]),
	.D(un84_sop_1_s_14),
	.C(clk)
);
// @8:21
  FD \y_Z[0]  (
	.Q(y[0]),
	.D(un84_sop_1_s_7),
	.C(clk)
);
// @8:21
  FD \y_Z[1]  (
	.Q(y[1]),
	.D(un84_sop_1_s_8),
	.C(clk)
);
// @8:21
  FD \y_Z[2]  (
	.Q(y[2]),
	.D(un84_sop_1_s_9),
	.C(clk)
);
// @8:21
  FD \y_Z[3]  (
	.Q(y[3]),
	.D(un84_sop_1_s_10),
	.C(clk)
);
// @8:21
  FD \y_Z[4]  (
	.Q(y[4]),
	.D(un84_sop_1_s_11),
	.C(clk)
);
// @8:21
  FD \y_Z[5]  (
	.Q(y[5]),
	.D(un84_sop_1_s_12),
	.C(clk)
);
// @8:21
  FD \y_Z[6]  (
	.Q(y[6]),
	.D(un84_sop_1_s_13),
	.C(clk)
);
// @8:21
  FD \x_8_Z[7]  (
	.Q(x_8[7]),
	.D(x_7[7]),
	.C(clk)
);
// @8:21
  FD \x_8_Z[6]  (
	.Q(x_8[6]),
	.D(x_7[6]),
	.C(clk)
);
// @8:21
  FD \x_8_Z[5]  (
	.Q(x_8[5]),
	.D(x_7[5]),
	.C(clk)
);
// @8:21
  FD \x_8_Z[4]  (
	.Q(x_8[4]),
	.D(x_7[4]),
	.C(clk)
);
// @8:21
  FD \x_8_Z[3]  (
	.Q(x_8[3]),
	.D(x_7[3]),
	.C(clk)
);
// @8:21
  FD \x_8_Z[2]  (
	.Q(x_8[2]),
	.D(x_7[2]),
	.C(clk)
);
// @8:21
  FD \x_8_Z[1]  (
	.Q(x_8[1]),
	.D(x_7[1]),
	.C(clk)
);
// @8:21
  FD \x_8_Z[0]  (
	.Q(x_8[0]),
	.D(x_7[0]),
	.C(clk)
);
// @8:21
  FD \x_9_Z[0]  (
	.Q(x_9[0]),
	.D(x_8[0]),
	.C(clk)
);
// @8:21
  FD \x_13_Z[7]  (
	.Q(x_13[7]),
	.D(x_12[7]),
	.C(clk)
);
// @8:21
  FD \x_13_Z[6]  (
	.Q(x_13[6]),
	.D(x_12[6]),
	.C(clk)
);
// @8:21
  FD \x_13_Z[5]  (
	.Q(x_13[5]),
	.D(x_12[5]),
	.C(clk)
);
// @8:21
  FD \x_13_Z[4]  (
	.Q(x_13[4]),
	.D(x_12[4]),
	.C(clk)
);
// @8:21
  FD \x_13_Z[3]  (
	.Q(x_13[3]),
	.D(x_12[3]),
	.C(clk)
);
// @8:21
  FD \x_13_Z[2]  (
	.Q(x_13[2]),
	.D(x_12[2]),
	.C(clk)
);
// @8:21
  FD \x_13_Z[1]  (
	.Q(x_13[1]),
	.D(x_12[1]),
	.C(clk)
);
// @8:21
  FD \x_13_Z[0]  (
	.Q(x_13[0]),
	.D(x_12[0]),
	.C(clk)
);
  FD x_14_pipe_0_Z (
	.Q(un84_sop_0_0_0_0_0[0]),
	.D(un84_sop_0_0_0_0_1[0]),
	.C(clk)
);
  FD x_14_pipe_9_Z (
	.Q(un84_sop_0_0_0_0_0[1]),
	.D(un84_sop_0_0_0_0_1[1]),
	.C(clk)
);
  FD x_14_pipe_10_Z (
	.Q(un84_sop_0_0_0_0_0[2]),
	.D(un84_sop_0_0_0_0_1[2]),
	.C(clk)
);
  FD x_14_pipe_11_Z (
	.Q(un84_sop_0_0_0_0_0[3]),
	.D(un84_sop_0_0_0_0_1[3]),
	.C(clk)
);
  FD x_14_pipe_12_Z (
	.Q(un84_sop_0_0_0_0_0[4]),
	.D(un84_sop_0_0_0_0_1[4]),
	.C(clk)
);
  FD x_14_pipe_13_Z (
	.Q(un84_sop_0_0_0_0_0[5]),
	.D(un84_sop_0_0_0_0_1[5]),
	.C(clk)
);
  FD x_14_pipe_14_Z (
	.Q(un84_sop_0_0_0_0_0[6]),
	.D(un84_sop_0_0_0_0_1[6]),
	.C(clk)
);
  FD x_14_pipe_15_Z (
	.Q(un84_sop_0_0_0_0_0[7]),
	.D(un84_sop_0_0_0_0_1[7]),
	.C(clk)
);
  FD x_14_pipe_16_Z (
	.Q(un84_sop_0_0_0_0_0[8]),
	.D(un84_sop_0_0_0_0_1[8]),
	.C(clk)
);
  FD x_14_pipe_17_Z (
	.Q(un84_sop_0_0_0_0_0[9]),
	.D(un84_sop_0_0_0_0_1[9]),
	.C(clk)
);
  FD x_9_pipe_1_Z (
	.Q(un1_x_11_0_0[7]),
	.D(un1_x_11_0_0_0[7]),
	.C(clk)
);
  FD x_9_pipe_2_Z (
	.Q(un1_x_11_0_0[8]),
	.D(un1_x_11_0_0_0[8]),
	.C(clk)
);
  FD x_9_pipe_3_Z (
	.Q(un1_x_11_0_0[9]),
	.D(un1_x_11_0_0_0[9]),
	.C(clk)
);
  FD x_9_pipe_4_Z (
	.Q(un1_x_11_0_0[10]),
	.D(un1_x_11_0_0_0[10]),
	.C(clk)
);
  FD x_9_pipe_5_Z (
	.Q(un1_x_11_0_0[11]),
	.D(un1_x_11_0_0_0[11]),
	.C(clk)
);
  FD x_9_pipe_6_Z (
	.Q(un1_x_11_0_0[12]),
	.D(un1_x_11_0_0_0[12]),
	.C(clk)
);
  FD x_9_pipe_7_Z (
	.Q(un1_x_11_0_0[13]),
	.D(un1_x_11_0_0_0[13]),
	.C(clk)
);
  FD x_9_pipe_8_Z (
	.Q(un1_x_11_0_0[14]),
	.D(un1_x_11_0_0_0[14]),
	.C(clk)
);
  FD x_15_pipe_0_0_15_Z (
	.Q(un84_sop_0_0_0_10_0[0]),
	.D(un84_sop_0_0_0_0_8[0]),
	.C(clk)
);
  FD x_15_pipe_0_0_16_Z (
	.Q(un84_sop_0_0_0_10_0[1]),
	.D(un84_sop_0_0_0_0_8[1]),
	.C(clk)
);
  FD x_15_pipe_0_0_17_Z (
	.Q(un84_sop_0_0_0_10_0[2]),
	.D(un84_sop_0_0_0_0_8[2]),
	.C(clk)
);
  FD x_15_pipe_0_0_18_Z (
	.Q(un84_sop_0_0_0_10_0[3]),
	.D(un84_sop_0_0_0_0_8[3]),
	.C(clk)
);
  FD x_15_pipe_0_0_19_Z (
	.Q(un84_sop_0_0_0_10_0[4]),
	.D(un84_sop_0_0_0_0_8[4]),
	.C(clk)
);
  FD x_15_pipe_0_0_20_Z (
	.Q(un84_sop_0_0_0_10_0[5]),
	.D(un84_sop_0_0_0_0_8[5]),
	.C(clk)
);
  FD x_15_pipe_0_0_21_Z (
	.Q(un84_sop_0_0_0_10_0[6]),
	.D(un84_sop_0_0_0_0_8[6]),
	.C(clk)
);
  FD x_15_pipe_0_0_22_Z (
	.Q(un84_sop_0_0_0_10_0[7]),
	.D(un84_sop_0_0_0_0_8[7]),
	.C(clk)
);
  FD x_15_pipe_0_0_23_Z (
	.Q(un84_sop_0_0_0_10_0[8]),
	.D(un84_sop_0_0_0_0_8[8]),
	.C(clk)
);
  FD x_15_pipe_0_0_24_Z (
	.Q(un84_sop_0_0_0_10_0[9]),
	.D(un84_sop_0_0_0_0_8[9]),
	.C(clk)
);
  FD x_15_pipe_0_0_25_Z (
	.Q(un84_sop_0_0_0_10_0[10]),
	.D(un84_sop_0_0_0_0_8[10]),
	.C(clk)
);
  FD x_15_pipe_0_0_26_Z (
	.Q(un84_sop_0_0_0_10_0[11]),
	.D(un84_sop_0_0_0_0_8[11]),
	.C(clk)
);
  FD x_15_pipe_0_0_27_Z (
	.Q(un84_sop_0_0_0_10_0[12]),
	.D(un84_sop_0_0_0_0_8[12]),
	.C(clk)
);
  FD x_15_pipe_0_0_28_Z (
	.Q(un84_sop_0_0_0_10_0[13]),
	.D(un84_sop_0_0_0_0_8[13]),
	.C(clk)
);
  FD x_15_pipe_0_0_29_Z (
	.Q(un84_sop_0_0_0_10_0[14]),
	.D(un84_sop_0_0_0_0_8[14]),
	.C(clk)
);
  FD x_16_pipe_0_0_0_Z (
	.Q(un84_sop_0_0_0_0_5[0]),
	.D(un84_sop_0_0_0_5_0[0]),
	.C(clk)
);
  FD x_16_pipe_0_0_1_Z (
	.Q(un84_sop_0_0_0_0_5[1]),
	.D(un84_sop_0_0_0_5_0[1]),
	.C(clk)
);
  FD x_16_pipe_0_0_2_Z (
	.Q(un84_sop_0_0_0_0_5[2]),
	.D(un84_sop_0_0_0_5_0[2]),
	.C(clk)
);
  FD x_16_pipe_0_0_3_Z (
	.Q(un84_sop_0_0_0_0_5[3]),
	.D(un84_sop_0_0_0_5_0[3]),
	.C(clk)
);
  FD x_16_pipe_0_0_4_Z (
	.Q(un84_sop_0_0_0_0_5[4]),
	.D(un84_sop_0_0_0_5_0[4]),
	.C(clk)
);
  FD x_16_pipe_0_0_5_Z (
	.Q(un84_sop_0_0_0_0_5[5]),
	.D(un84_sop_0_0_0_5_0[5]),
	.C(clk)
);
  FD x_16_pipe_0_0_6_Z (
	.Q(un84_sop_0_0_0_0_5[6]),
	.D(un84_sop_0_0_0_5_0[6]),
	.C(clk)
);
  FD x_16_pipe_0_0_7_Z (
	.Q(un84_sop_0_0_0_0_5[7]),
	.D(un84_sop_0_0_0_5_0[7]),
	.C(clk)
);
  FD x_16_pipe_0_0_8_Z (
	.Q(un84_sop_0_0_0_0_5[8]),
	.D(un84_sop_0_0_0_5_0[8]),
	.C(clk)
);
  FD x_16_pipe_0_0_9_Z (
	.Q(un84_sop_0_0_0_0_5[9]),
	.D(un84_sop_0_0_0_5_0[9]),
	.C(clk)
);
  FD x_16_pipe_0_0_10_Z (
	.Q(un84_sop_0_0_0_0_5[10]),
	.D(un84_sop_0_0_0_5_0[10]),
	.C(clk)
);
  FD x_16_pipe_0_0_11_Z (
	.Q(un84_sop_0_0_0_0_5[11]),
	.D(un84_sop_0_0_0_5_0[11]),
	.C(clk)
);
  FD x_16_pipe_0_0_12_Z (
	.Q(un84_sop_0_0_0_0_5[12]),
	.D(un84_sop_0_0_0_5_0[12]),
	.C(clk)
);
  FD x_16_pipe_0_0_13_Z (
	.Q(un84_sop_0_0_0_0_5[13]),
	.D(un84_sop_0_0_0_5_0[13]),
	.C(clk)
);
  FD x_16_pipe_0_0_14_Z (
	.Q(un84_sop_0_0_0_0_5[14]),
	.D(un84_sop_0_0_0_5_0[14]),
	.C(clk)
);
// @8:21
  FD \x_4_DOUT_Z[0]  (
	.Q(x_4[7]),
	.D(x_4_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_4_0_DOUT_Z[0]  (
	.Q(x_4[6]),
	.D(x_4_0_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_4_1_DOUT_Z[0]  (
	.Q(x_4[5]),
	.D(x_4_1_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_4_2_DOUT_Z[0]  (
	.Q(x_4[4]),
	.D(x_4_2_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_4_3_DOUT_Z[0]  (
	.Q(x_4[3]),
	.D(x_4_3_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_4_4_DOUT_Z[0]  (
	.Q(x_4[2]),
	.D(x_4_4_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_4_5_DOUT_Z[0]  (
	.Q(x_4[1]),
	.D(x_4_5_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_4_6_DOUT_Z[0]  (
	.Q(x_4[0]),
	.D(x_4_6_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_7_DOUT_Z[0]  (
	.Q(x_7[7]),
	.D(x_7_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_7_0_DOUT_Z[0]  (
	.Q(x_7[6]),
	.D(x_7_0_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_7_1_DOUT_Z[0]  (
	.Q(x_7[5]),
	.D(x_7_1_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_7_2_DOUT_Z[0]  (
	.Q(x_7[4]),
	.D(x_7_2_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_7_3_DOUT_Z[0]  (
	.Q(x_7[3]),
	.D(x_7_3_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_7_4_DOUT_Z[0]  (
	.Q(x_7[2]),
	.D(x_7_4_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_7_5_DOUT_Z[0]  (
	.Q(x_7[1]),
	.D(x_7_5_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_7_6_DOUT_Z[0]  (
	.Q(x_7[0]),
	.D(x_7_6_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_12_DOUT_Z[0]  (
	.Q(x_12[7]),
	.D(x_12_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_12_0_DOUT_Z[0]  (
	.Q(x_12[6]),
	.D(x_12_0_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_12_1_DOUT_Z[0]  (
	.Q(x_12[5]),
	.D(x_12_1_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_12_2_DOUT_Z[0]  (
	.Q(x_12[4]),
	.D(x_12_2_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_12_3_DOUT_Z[0]  (
	.Q(x_12[3]),
	.D(x_12_3_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_12_4_DOUT_Z[0]  (
	.Q(x_12[2]),
	.D(x_12_4_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_12_5_DOUT_Z[0]  (
	.Q(x_12[1]),
	.D(x_12_5_tmp_d_array_0[0]),
	.C(clk)
);
// @8:21
  FD \x_12_6_DOUT_Z[0]  (
	.Q(x_12[0]),
	.D(x_12_6_tmp_d_array_0[0]),
	.C(clk)
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_0_cy_cZ (
	.DI(GND),
	.CI(VCC),
	.S(un1_x_3_0[4]),
	.LO(un84_sop_1_6_0_cry_0_cy)
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_0_cy_cZ (
	.DI(GND),
	.CI(VCC),
	.S(un1_x_9_0_0[5]),
	.LO(un84_sop_0_0_0_6_6_0_cry_0_cy)
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_0_cy_cZ (
	.DI(GND),
	.CI(VCC),
	.S(un1_x_14_0_0_0[4]),
	.LO(un84_sop_0_0_0_11_6_0_cry_0_cy)
);
  LUT3 un84_sop_0_0_0_11_0_cry_2_RNO_cZ (
	.I0(x_8[1]),
	.I1(x_8[0]),
	.I2(un84_sop_0_0_0_0_11_7[1]),
	.O(un84_sop_0_0_0_11_0_cry_2_RNO)
);
defparam un84_sop_0_0_0_11_0_cry_2_RNO_cZ.INIT=8'h60;
// @8:30
  LUT6 un84_sop_0_0_0_11_6_0_axb_8_cZ (
	.I0(un1_x_12_0_0[11]),
	.I1(un1_x_12_0_0[12]),
	.I2(un1_x_13_0_0[12]),
	.I3(un1_x_13_0_0[13]),
	.I4(un1_x_14_0_0[11]),
	.I5(un1_x_14_0_0[12]),
	.O(un84_sop_0_0_0_11_6_0_axb_8)
);
defparam un84_sop_0_0_0_11_6_0_axb_8_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_11_6_0_axb_3_cZ (
	.I0(un1_x_12_0_0[6]),
	.I1(un1_x_12_0_0[7]),
	.I2(un1_x_13_0_0[7]),
	.I3(un1_x_13_0_0[8]),
	.I4(un1_x_14_0_0[6]),
	.I5(un1_x_14_0_0[7]),
	.O(un84_sop_0_0_0_11_6_0_axb_3)
);
defparam un84_sop_0_0_0_11_6_0_axb_3_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_11_6_0_axb_4_cZ (
	.I0(un1_x_12_0_0[7]),
	.I1(un1_x_12_0_0[8]),
	.I2(un1_x_13_0_0[8]),
	.I3(un1_x_13_0_0[9]),
	.I4(un1_x_14_0_0[7]),
	.I5(un1_x_14_0_0[8]),
	.O(un84_sop_0_0_0_11_6_0_axb_4)
);
defparam un84_sop_0_0_0_11_6_0_axb_4_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_11_6_0_axb_9_cZ (
	.I0(un1_x_12_0_0[12]),
	.I1(un1_x_12_0_0[13]),
	.I2(un1_x_13_0_0[13]),
	.I3(un1_x_13_0_0[14]),
	.I4(un1_x_14_0_0[12]),
	.I5(un1_x_14_0_0[13]),
	.O(un84_sop_0_0_0_11_6_0_axb_9)
);
defparam un84_sop_0_0_0_11_6_0_axb_9_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT5 un84_sop_0_0_0_11_6_0_axb_11_cZ (
	.I0(un1_x_12_0_0[14]),
	.I1(un1_x_14_0_0[14]),
	.I2(un1_x_12_0_0[15]),
	.I3(un1_x_14_0_0[15]),
	.I4(un1_x_13_0_0[15]),
	.O(un84_sop_0_0_0_11_6_0_axb_11)
);
defparam un84_sop_0_0_0_11_6_0_axb_11_cZ.INIT=32'h1EE18778;
// @8:30
  LUT6 un84_sop_1_6_0_axb_4_cZ (
	.I0(un1_x_1[7]),
	.I1(un1_x_1[8]),
	.I2(un1_x_2[8]),
	.I3(un1_x_2[9]),
	.I4(un1_x_3[7]),
	.I5(un1_x_3[8]),
	.O(un84_sop_1_6_0_axb_4)
);
defparam un84_sop_1_6_0_axb_4_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_11_6_0_axb_10_cZ (
	.I0(un1_x_12_0_0[13]),
	.I1(un1_x_12_0_0[14]),
	.I2(un1_x_13_0_0[14]),
	.I3(un1_x_14_0_0[13]),
	.I4(un1_x_14_0_0[14]),
	.I5(un1_x_13_0_0[15]),
	.O(un84_sop_0_0_0_11_6_0_axb_10)
);
defparam un84_sop_0_0_0_11_6_0_axb_10_cZ.INIT=64'h366CC993C993366C;
// @8:30
  LUT6 un84_sop_0_0_0_11_6_0_axb_2_cZ (
	.I0(un1_x_12_0_0[5]),
	.I1(un1_x_12_0_0[6]),
	.I2(un1_x_13_0_0[6]),
	.I3(un1_x_13_0_0[7]),
	.I4(un1_x_14_0_0[5]),
	.I5(un1_x_14_0_0[6]),
	.O(un84_sop_0_0_0_11_6_0_axb_2)
);
defparam un84_sop_0_0_0_11_6_0_axb_2_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6_L un84_sop_0_0_0_11_0_axb_5_cZ (
	.I0(un84_sop_0_0_0_0_11_7[4]),
	.I1(un84_sop_0_0_0_0_11_7[5]),
	.I2(un84_sop_0_0_0_0_11_6[4]),
	.I3(un84_sop_0_0_0_0_11_6[5]),
	.I4(un1_x_10_0_0[8]),
	.I5(un1_x_10_0_0[9]),
	.LO(un84_sop_0_0_0_11_0_axb_5)
);
defparam un84_sop_0_0_0_11_0_axb_5_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6_L un84_sop_0_0_0_11_0_axb_6_cZ (
	.I0(un84_sop_0_0_0_0_11_7[5]),
	.I1(un84_sop_0_0_0_0_11_7[6]),
	.I2(un84_sop_0_0_0_0_11_6[5]),
	.I3(un84_sop_0_0_0_0_11_6[6]),
	.I4(un1_x_10_0_0[9]),
	.I5(un1_x_10_0_0[10]),
	.LO(un84_sop_0_0_0_11_0_axb_6)
);
defparam un84_sop_0_0_0_11_0_axb_6_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_11_6_0_axb_6_cZ (
	.I0(un1_x_12_0_0[9]),
	.I1(un1_x_12_0_0[10]),
	.I2(un1_x_13_0_0[10]),
	.I3(un1_x_13_0_0[11]),
	.I4(un1_x_14_0_0[9]),
	.I5(un1_x_14_0_0[10]),
	.O(un84_sop_0_0_0_11_6_0_axb_6)
);
defparam un84_sop_0_0_0_11_6_0_axb_6_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_11_6_0_axb_7_cZ (
	.I0(un1_x_12_0_0[10]),
	.I1(un1_x_12_0_0[11]),
	.I2(un1_x_13_0_0[11]),
	.I3(un1_x_13_0_0[12]),
	.I4(un1_x_14_0_0[10]),
	.I5(un1_x_14_0_0[11]),
	.O(un84_sop_0_0_0_11_6_0_axb_7)
);
defparam un84_sop_0_0_0_11_6_0_axb_7_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6_L un84_sop_0_0_0_11_0_axb_10_cZ (
	.I0(un84_sop_0_0_0_0_11_7[9]),
	.I1(un84_sop_0_0_0_0_11_7[14]),
	.I2(un84_sop_0_0_0_0_11_6[9]),
	.I3(un84_sop_0_0_0_0_11_6[10]),
	.I4(un1_x_10_0_0[13]),
	.I5(un1_x_10_0_0[14]),
	.LO(un84_sop_0_0_0_11_0_axb_10)
);
defparam un84_sop_0_0_0_11_0_axb_10_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT4_L un84_sop_0_0_0_11_0_axb_12_cZ (
	.I0(un84_sop_0_0_0_0_11_7[14]),
	.I1(un84_sop_0_0_0_0_11_6[11]),
	.I2(un84_sop_0_0_0_0_11_6[12]),
	.I3(un1_x_10_0_0[15]),
	.LO(un84_sop_0_0_0_11_0_axb_12)
);
defparam un84_sop_0_0_0_11_0_axb_12_cZ.INIT=16'h4BD2;
// @8:30
  LUT4_L un84_sop_0_0_0_11_0_axb_13_cZ (
	.I0(un84_sop_0_0_0_0_11_7[14]),
	.I1(un84_sop_0_0_0_0_11_6[14]),
	.I2(un84_sop_0_0_0_0_11_6[12]),
	.I3(un1_x_10_0_0[15]),
	.LO(un84_sop_0_0_0_11_0_axb_13)
);
defparam un84_sop_0_0_0_11_0_axb_13_cZ.INIT=16'h63C6;
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_axb_13_cZ (
	.I0(un1_x_12_0_0[15]),
	.I1(un1_x_14_0_0[15]),
	.I2(un1_x_13_0_0[15]),
	.O(un84_sop_0_0_0_11_6_0_axb_13)
);
defparam un84_sop_0_0_0_11_6_0_axb_13_cZ.INIT=8'h7E;
// @8:30
  LUT6_L un84_sop_0_0_0_11_0_axb_3_cZ (
	.I0(un84_sop_0_0_0_0_11_7[2]),
	.I1(un84_sop_0_0_0_0_11_7[3]),
	.I2(un84_sop_0_0_0_0_11_6[2]),
	.I3(un1_x_10_s_2_sf),
	.I4(un1_x_10_axb_3),
	.I5(un84_sop_0_0_0_0_11_6[3]),
	.LO(un84_sop_0_0_0_11_0_axb_3)
);
defparam un84_sop_0_0_0_11_0_axb_3_cZ.INIT=64'h366CC993C993366C;
// @8:30
  LUT6_L un84_sop_0_0_0_11_0_axb_4_cZ (
	.I0(un84_sop_0_0_0_0_11_7[3]),
	.I1(un84_sop_0_0_0_0_11_7[4]),
	.I2(un1_x_10_axb_3),
	.I3(un84_sop_0_0_0_0_11_6[3]),
	.I4(un84_sop_0_0_0_0_11_6[4]),
	.I5(un1_x_10_0_0[8]),
	.LO(un84_sop_0_0_0_11_0_axb_4)
);
defparam un84_sop_0_0_0_11_0_axb_4_cZ.INIT=64'h366CC993C993366C;
// @8:30
  LUT6 un84_sop_0_0_0_6_6_0_axb_5_cZ (
	.I0(un1_x_7_0[6]),
	.I1(un1_x_7_0[7]),
	.I2(un1_x_8_0[8]),
	.I3(un1_x_8_0[9]),
	.I4(un1_x_9_0[9]),
	.I5(un1_x_9_0[10]),
	.O(un84_sop_0_0_0_6_6_0_axb_5)
);
defparam un84_sop_0_0_0_6_6_0_axb_5_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_6_6_0_axb_6_cZ (
	.I0(un1_x_7_0[7]),
	.I1(un1_x_7_0[8]),
	.I2(un1_x_8_0[9]),
	.I3(un1_x_8_0[10]),
	.I4(un1_x_9_0[10]),
	.I5(un1_x_9_0[11]),
	.O(un84_sop_0_0_0_6_6_0_axb_6)
);
defparam un84_sop_0_0_0_6_6_0_axb_6_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_6_6_0_axb_10_cZ (
	.I0(un1_x_7_0[11]),
	.I1(un1_x_7_0[12]),
	.I2(un1_x_8_0[13]),
	.I3(un1_x_8_0[14]),
	.I4(un1_x_9_0[14]),
	.I5(un1_x_9_0[15]),
	.O(un84_sop_0_0_0_6_6_0_axb_10)
);
defparam un84_sop_0_0_0_6_6_0_axb_10_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT5 un84_sop_0_0_0_6_6_0_axb_11_cZ (
	.I0(un1_x_7_0[12]),
	.I1(un1_x_7_0[13]),
	.I2(un1_x_8_0[14]),
	.I3(un1_x_8_0[15]),
	.I4(un1_x_9_0[15]),
	.O(un84_sop_0_0_0_6_6_0_axb_11)
);
defparam un84_sop_0_0_0_6_6_0_axb_11_cZ.INIT=32'h36C9936C;
// @8:30
  LUT6 un84_sop_0_0_0_1_6_8_axb_3_cZ (
	.I0(un84_sop_0_0_0_10_0[5]),
	.I1(un84_sop_0_0_0_10_0[6]),
	.I2(x_4[1]),
	.I3(x_4[0]),
	.I4(x_4[2]),
	.I5(x_4[3]),
	.O(un84_sop_0_0_0_1_6_8_axb_3)
);
defparam un84_sop_0_0_0_1_6_8_axb_3_cZ.INIT=64'h3C6969C3C396963C;
// @8:30
  LUT6 un84_sop_0_0_0_1_6_8_axb_4_cZ (
	.I0(un84_sop_0_0_0_10_0[6]),
	.I1(un84_sop_0_0_0_10_0[7]),
	.I2(x_4[1]),
	.I3(x_4[2]),
	.I4(x_4[3]),
	.I5(x_4[4]),
	.O(un84_sop_0_0_0_1_6_8_axb_4)
);
defparam un84_sop_0_0_0_1_6_8_axb_4_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_1_6_8_axb_5_cZ (
	.I0(un84_sop_0_0_0_10_0[7]),
	.I1(un84_sop_0_0_0_10_0[8]),
	.I2(x_4[2]),
	.I3(x_4[3]),
	.I4(x_4[4]),
	.I5(x_4[5]),
	.O(un84_sop_0_0_0_1_6_8_axb_5)
);
defparam un84_sop_0_0_0_1_6_8_axb_5_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_1_6_8_axb_6_cZ (
	.I0(un84_sop_0_0_0_10_0[8]),
	.I1(un84_sop_0_0_0_10_0[9]),
	.I2(x_4[6]),
	.I3(x_4[3]),
	.I4(x_4[4]),
	.I5(x_4[5]),
	.O(un84_sop_0_0_0_1_6_8_axb_6)
);
defparam un84_sop_0_0_0_1_6_8_axb_6_cZ.INIT=64'h3C69C39669C3963C;
// @8:30
  LUT6 un84_sop_0_0_0_1_6_8_axb_7_cZ (
	.I0(un84_sop_0_0_0_10_0[9]),
	.I1(un84_sop_0_0_0_10_0[10]),
	.I2(x_4[6]),
	.I3(x_4[4]),
	.I4(x_4[5]),
	.I5(x_4[7]),
	.O(un84_sop_0_0_0_1_6_8_axb_7)
);
defparam un84_sop_0_0_0_1_6_8_axb_7_cZ.INIT=64'h366CC993C993366C;
// @8:30
  LUT5 un84_sop_0_0_0_1_6_8_axb_8_cZ (
	.I0(un84_sop_0_0_0_10_0[11]),
	.I1(un84_sop_0_0_0_10_0[10]),
	.I2(x_4[6]),
	.I3(x_4[5]),
	.I4(x_4[7]),
	.O(un84_sop_0_0_0_1_6_8_axb_8)
);
defparam un84_sop_0_0_0_1_6_8_axb_8_cZ.INIT=32'h5A69965A;
// @8:30
  LUT6 un84_sop_0_0_0_11_6_0_axb_5_cZ (
	.I0(un1_x_12_0_0[8]),
	.I1(un1_x_12_0_0[9]),
	.I2(un1_x_13_0_0[9]),
	.I3(un1_x_13_0_0[10]),
	.I4(un1_x_14_0_0[8]),
	.I5(un1_x_14_0_0[9]),
	.O(un84_sop_0_0_0_11_6_0_axb_5)
);
defparam un84_sop_0_0_0_11_6_0_axb_5_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_1_6_0_axb_2_cZ (
	.I0(un1_x_1[5]),
	.I1(un1_x_1[6]),
	.I2(un1_x_2[6]),
	.I3(un1_x_2[7]),
	.I4(un1_x_3[5]),
	.I5(un1_x_3[6]),
	.O(un84_sop_1_6_0_axb_2)
);
defparam un84_sop_1_6_0_axb_2_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_1_6_0_axb_3_cZ (
	.I0(un1_x_1[6]),
	.I1(un1_x_1[7]),
	.I2(un1_x_2[7]),
	.I3(un1_x_2[8]),
	.I4(un1_x_3[6]),
	.I5(un1_x_3[7]),
	.O(un84_sop_1_6_0_axb_3)
);
defparam un84_sop_1_6_0_axb_3_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_1_6_0_axb_5_cZ (
	.I0(un1_x_1[8]),
	.I1(un1_x_1[9]),
	.I2(un1_x_2[9]),
	.I3(un1_x_2[10]),
	.I4(un1_x_3[8]),
	.I5(un1_x_3[9]),
	.O(un84_sop_1_6_0_axb_5)
);
defparam un84_sop_1_6_0_axb_5_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_1_6_0_axb_6_cZ (
	.I0(un1_x_1[9]),
	.I1(un1_x_1[10]),
	.I2(un1_x_2[10]),
	.I3(un1_x_2[11]),
	.I4(un1_x_3[9]),
	.I5(un1_x_3[10]),
	.O(un84_sop_1_6_0_axb_6)
);
defparam un84_sop_1_6_0_axb_6_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_1_6_0_axb_7_cZ (
	.I0(un1_x_1[10]),
	.I1(un1_x_1[11]),
	.I2(un1_x_2[11]),
	.I3(un1_x_2[12]),
	.I4(un1_x_3[10]),
	.I5(un1_x_3[11]),
	.O(un84_sop_1_6_0_axb_7)
);
defparam un84_sop_1_6_0_axb_7_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_1_6_0_axb_8_cZ (
	.I0(un1_x_1[11]),
	.I1(un1_x_1[12]),
	.I2(un1_x_2[12]),
	.I3(un1_x_2[13]),
	.I4(un1_x_3[11]),
	.I5(un1_x_3[12]),
	.O(un84_sop_1_6_0_axb_8)
);
defparam un84_sop_1_6_0_axb_8_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_1_6_0_axb_9_cZ (
	.I0(un1_x_1[12]),
	.I1(un1_x_1[13]),
	.I2(un1_x_2[13]),
	.I3(un1_x_2[14]),
	.I4(un1_x_3[12]),
	.I5(un1_x_3[13]),
	.O(un84_sop_1_6_0_axb_9)
);
defparam un84_sop_1_6_0_axb_9_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_1_6_0_axb_10_cZ (
	.I0(un1_x_1[13]),
	.I1(un1_x_1[14]),
	.I2(un1_x_2[14]),
	.I3(un1_x_3[13]),
	.I4(un1_x_3[14]),
	.I5(un1_x_2[15]),
	.O(un84_sop_1_6_0_axb_10)
);
defparam un84_sop_1_6_0_axb_10_cZ.INIT=64'h366CC993C993366C;
// @8:30
  LUT5 un84_sop_1_6_0_axb_11_cZ (
	.I0(un1_x_1[14]),
	.I1(un1_x_3[14]),
	.I2(un1_x_1[15]),
	.I3(un1_x_3[15]),
	.I4(un1_x_2[15]),
	.O(un84_sop_1_6_0_axb_11)
);
defparam un84_sop_1_6_0_axb_11_cZ.INIT=32'h1EE18778;
// @8:30
  LUT3 un84_sop_1_6_0_axb_13_cZ (
	.I0(un1_x_1[15]),
	.I1(un1_x_3[15]),
	.I2(un1_x_2[15]),
	.O(un84_sop_1_6_0_axb_13)
);
defparam un84_sop_1_6_0_axb_13_cZ.INIT=8'h7E;
// @8:30
  LUT6_L un84_sop_0_0_0_11_0_axb_7_cZ (
	.I0(un84_sop_0_0_0_0_11_7[6]),
	.I1(un84_sop_0_0_0_0_11_7[7]),
	.I2(un84_sop_0_0_0_0_11_6[6]),
	.I3(un84_sop_0_0_0_0_11_6[7]),
	.I4(un1_x_10_0_0[10]),
	.I5(un1_x_10_0_0[11]),
	.LO(un84_sop_0_0_0_11_0_axb_7)
);
defparam un84_sop_0_0_0_11_0_axb_7_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6_L un84_sop_0_0_0_11_0_axb_8_cZ (
	.I0(un84_sop_0_0_0_0_11_7[7]),
	.I1(un84_sop_0_0_0_0_11_7[8]),
	.I2(un84_sop_0_0_0_0_11_6[7]),
	.I3(un84_sop_0_0_0_0_11_6[8]),
	.I4(un1_x_10_0_0[11]),
	.I5(un1_x_10_0_0[12]),
	.LO(un84_sop_0_0_0_11_0_axb_8)
);
defparam un84_sop_0_0_0_11_0_axb_8_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6_L un84_sop_0_0_0_11_0_axb_9_cZ (
	.I0(un84_sop_0_0_0_0_11_7[8]),
	.I1(un84_sop_0_0_0_0_11_7[9]),
	.I2(un84_sop_0_0_0_0_11_6[8]),
	.I3(un84_sop_0_0_0_0_11_6[9]),
	.I4(un1_x_10_0_0[12]),
	.I5(un1_x_10_0_0[13]),
	.LO(un84_sop_0_0_0_11_0_axb_9)
);
defparam un84_sop_0_0_0_11_0_axb_9_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT4_L un84_sop_0_0_0_11_0_axb_1_cZ (
	.I0(x_8[1]),
	.I1(x_8[0]),
	.I2(un84_sop_0_0_0_0_11_7[1]),
	.I3(un84_sop_0_0_0_0_11_6[1]),
	.LO(un84_sop_0_0_0_11_0_axb_1)
);
defparam un84_sop_0_0_0_11_0_axb_1_cZ.INIT=16'h6996;
// @8:30
  LUT5_L un84_sop_0_0_0_11_0_axb_11_cZ (
	.I0(un84_sop_0_0_0_0_11_7[14]),
	.I1(un84_sop_0_0_0_0_11_6[10]),
	.I2(un84_sop_0_0_0_0_11_6[11]),
	.I3(un1_x_10_0_0[14]),
	.I4(un1_x_10_0_0[15]),
	.LO(un84_sop_0_0_0_11_0_axb_11)
);
defparam un84_sop_0_0_0_11_0_axb_11_cZ.INIT=32'h4B2DB4D2;
// @8:30
  LUT3 un84_sop_0_0_0_1_6_axb_0 (
	.I0(un84_sop_0_0_0_10_0[0]),
	.I1(un1_x_6_0[1]),
	.I2(un84_sop_0_0_0_1_6_6[0]),
	.O(un84_sop_0_0_0_5_0[0])
);
defparam un84_sop_0_0_0_1_6_axb_0.INIT=8'h96;
// @8:30
  LUT6 un84_sop_1_4_axb_4_cZ (
	.I0(x_0[3]),
	.I1(x_0[2]),
	.I2(x_0[1]),
	.I3(x_0[0]),
	.I4(x_0[4]),
	.I5(un84_sop_1_7[4]),
	.O(un84_sop_1_4_axb_4)
);
defparam un84_sop_1_4_axb_4_cZ.INIT=64'hFFFE00010001FFFE;
// @8:30
  LUT6 un84_sop_0_0_0_6_6_0_axb_2_cZ (
	.I0(un1_x_7_0[3]),
	.I1(un1_x_7_0[4]),
	.I2(un1_x_8_0[5]),
	.I3(un1_x_8_0[6]),
	.I4(un1_x_9_0[6]),
	.I5(un1_x_9_0[7]),
	.O(un84_sop_0_0_0_6_6_0_axb_2)
);
defparam un84_sop_0_0_0_6_6_0_axb_2_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_6_6_0_axb_3_cZ (
	.I0(un1_x_7_0[4]),
	.I1(un1_x_7_0[5]),
	.I2(un1_x_8_0[6]),
	.I3(un1_x_8_0[7]),
	.I4(un1_x_9_0[7]),
	.I5(un1_x_9_0[8]),
	.O(un84_sop_0_0_0_6_6_0_axb_3)
);
defparam un84_sop_0_0_0_6_6_0_axb_3_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_6_6_0_axb_4_cZ (
	.I0(un1_x_7_0[5]),
	.I1(un1_x_7_0[6]),
	.I2(un1_x_8_0[7]),
	.I3(un1_x_8_0[8]),
	.I4(un1_x_9_0[8]),
	.I5(un1_x_9_0[9]),
	.O(un84_sop_0_0_0_6_6_0_axb_4)
);
defparam un84_sop_0_0_0_6_6_0_axb_4_cZ.INIT=64'h36C96C93C936936C;
  LUT6_L un84_sop_0_0_0_11_6_0_s_2_RNIGK751 (
	.I0(x_8[1]),
	.I1(x_8[0]),
	.I2(un84_sop_0_0_0_0_11_7[1]),
	.I3(un84_sop_0_0_0_0_11_7[2]),
	.I4(un84_sop_0_0_0_0_11_6[2]),
	.I5(un1_x_10_s_2_sf),
	.LO(un84_sop_0_0_0_11_0_axb_2)
);
defparam un84_sop_0_0_0_11_6_0_s_2_RNIGK751.INIT=64'h9F60609F609F9F60;
// @8:30
  LUT6 un84_sop_0_0_0_6_6_0_axb_7_cZ (
	.I0(un1_x_7_0[8]),
	.I1(un1_x_7_0[9]),
	.I2(un1_x_8_0[10]),
	.I3(un1_x_8_0[11]),
	.I4(un1_x_9_0[11]),
	.I5(un1_x_9_0[12]),
	.O(un84_sop_0_0_0_6_6_0_axb_7)
);
defparam un84_sop_0_0_0_6_6_0_axb_7_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_6_6_0_axb_8_cZ (
	.I0(un1_x_7_0[9]),
	.I1(un1_x_7_0[10]),
	.I2(un1_x_8_0[11]),
	.I3(un1_x_8_0[12]),
	.I4(un1_x_9_0[12]),
	.I5(un1_x_9_0[13]),
	.O(un84_sop_0_0_0_6_6_0_axb_8)
);
defparam un84_sop_0_0_0_6_6_0_axb_8_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT6 un84_sop_0_0_0_6_6_0_axb_9_cZ (
	.I0(un1_x_7_0[10]),
	.I1(un1_x_7_0[11]),
	.I2(un1_x_8_0[12]),
	.I3(un1_x_8_0[13]),
	.I4(un1_x_9_0[13]),
	.I5(un1_x_9_0[14]),
	.O(un84_sop_0_0_0_6_6_0_axb_9)
);
defparam un84_sop_0_0_0_6_6_0_axb_9_cZ.INIT=64'h36C96C93C936936C;
// @8:30
  LUT4 un1_x_10_axb_11_cZ (
	.I0(x_8[6]),
	.I1(x_8[7]),
	.I2(x_8[5]),
	.I3(un1_x_10_5_c5),
	.O(un1_x_10_axb_11)
);
defparam un1_x_10_axb_11_cZ.INIT=16'hFEFF;
// @8:30
  LUT3_L un84_sop_0_0_0_11_0_axb_14_cZ (
	.I0(un84_sop_0_0_0_0_11_7[14]),
	.I1(un84_sop_0_0_0_0_11_6[14]),
	.I2(un1_x_10_0_0[15]),
	.LO(un84_sop_0_0_0_11_0_axb_14)
);
defparam un84_sop_0_0_0_11_0_axb_14_cZ.INIT=8'h7E;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_axb_14_cZ (
	.I0(un1_x_7_0[15]),
	.I1(un1_x_8_0[15]),
	.I2(un1_x_9_0[15]),
	.O(un84_sop_0_0_0_6_6_0_axb_14)
);
defparam un84_sop_0_0_0_6_6_0_axb_14_cZ.INIT=8'h7E;
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_0_cy_cZ (
	.DI(GND),
	.CI(VCC),
	.S(un84_sop_0_0_0_0_11_7_axb_0_ci),
	.LO(un84_sop_0_0_0_11_0_cry_0_cy)
);
  LUT1 un1_x_10_4_s_2_RNI13H1 (
	.I0(un1_x_10_4[2]),
	.O(un1_x_10_s_2_sf)
);
defparam un1_x_10_4_s_2_RNI13H1.INIT=2'h2;
// @8:30
  LUT2_L un84_sop_0_0_0_1_axb_9_cZ (
	.I0(un1_x_16_0_0_0[14]),
	.I1(un1_x_15_0_0_0[14]),
	.LO(un84_sop_0_0_0_1_axb_9)
);
defparam un84_sop_0_0_0_1_axb_9_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_axb_8_cZ (
	.I0(un1_x_16_0_0_0[14]),
	.I1(un1_x_15_0_0_0[14]),
	.LO(un84_sop_0_0_0_1_axb_8)
);
defparam un84_sop_0_0_0_1_axb_8_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_axb_7_cZ (
	.I0(un1_x_16_0_0_0[13]),
	.I1(un1_x_15_0_0_0[13]),
	.LO(un84_sop_0_0_0_1_axb_7)
);
defparam un84_sop_0_0_0_1_axb_7_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_axb_6_cZ (
	.I0(un1_x_16_0_0_0[12]),
	.I1(un1_x_15_0_0_0[12]),
	.LO(un84_sop_0_0_0_1_axb_6)
);
defparam un84_sop_0_0_0_1_axb_6_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_axb_5_cZ (
	.I0(un1_x_16_0_0_0[11]),
	.I1(un1_x_15_0_0_0[11]),
	.LO(un84_sop_0_0_0_1_axb_5)
);
defparam un84_sop_0_0_0_1_axb_5_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_axb_4_cZ (
	.I0(un1_x_16_0_0_0[10]),
	.I1(un1_x_15_0_0_0[10]),
	.LO(un84_sop_0_0_0_1_axb_4)
);
defparam un84_sop_0_0_0_1_axb_4_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_axb_3_cZ (
	.I0(un1_x_16_0_0_0[9]),
	.I1(un1_x_15_0_0_0[9]),
	.LO(un84_sop_0_0_0_1_axb_3)
);
defparam un84_sop_0_0_0_1_axb_3_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_axb_2_cZ (
	.I0(un1_x_16_0_0_0[8]),
	.I1(un1_x_15_0_0_0[8]),
	.LO(un84_sop_0_0_0_1_axb_2)
);
defparam un84_sop_0_0_0_1_axb_2_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_axb_1_cZ (
	.I0(un1_x_16_0_0_0[7]),
	.I1(un1_x_15_0_0_0[7]),
	.LO(un84_sop_0_0_0_1_axb_1)
);
defparam un84_sop_0_0_0_1_axb_1_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_axb_0 (
	.I0(x_12[0]),
	.I1(x_13[0]),
	.O(un84_sop_0_0_0_0_1[0])
);
defparam un84_sop_0_0_0_1_axb_0.INIT=4'h6;
// @8:30
  LUT1 un1_x_16_0_axb_8_cZ (
	.I0(x_13[7]),
	.O(un1_x_16_0_axb_8)
);
defparam un1_x_16_0_axb_8_cZ.INIT=2'h1;
// @8:30
  LUT1_L un1_x_11_0_axb_8_cZ (
	.I0(x_8[7]),
	.LO(un1_x_11_0_axb_8)
);
defparam un1_x_11_0_axb_8_cZ.INIT=2'h1;
// @8:30
  LUT1_L un1_x_11_0_axb_7_cZ (
	.I0(x_8[7]),
	.LO(un1_x_11_0_axb_7)
);
defparam un1_x_11_0_axb_7_cZ.INIT=2'h1;
// @8:30
  LUT1_L un1_x_11_0_axb_6_cZ (
	.I0(x_8[6]),
	.LO(un1_x_11_0_axb_6)
);
defparam un1_x_11_0_axb_6_cZ.INIT=2'h1;
// @8:30
  LUT1_L un1_x_11_0_axb_5_cZ (
	.I0(x_8[5]),
	.LO(un1_x_11_0_axb_5)
);
defparam un1_x_11_0_axb_5_cZ.INIT=2'h1;
// @8:30
  LUT1_L un1_x_11_0_axb_4_cZ (
	.I0(x_8[4]),
	.LO(un1_x_11_0_axb_4)
);
defparam un1_x_11_0_axb_4_cZ.INIT=2'h1;
// @8:30
  LUT1_L un1_x_11_0_axb_3_cZ (
	.I0(x_8[3]),
	.LO(un1_x_11_0_axb_3)
);
defparam un1_x_11_0_axb_3_cZ.INIT=2'h1;
// @8:30
  LUT1_L un1_x_11_0_axb_2_cZ (
	.I0(x_8[2]),
	.LO(un1_x_11_0_axb_2)
);
defparam un1_x_11_0_axb_2_cZ.INIT=2'h1;
// @8:30
  LUT1_L un1_x_11_0_axb_1_cZ (
	.I0(x_8[1]),
	.LO(un1_x_11_0_axb_1)
);
defparam un1_x_11_0_axb_1_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_15_0_axb_8_cZ (
	.I0(x_12[7]),
	.O(un1_x_15_0_axb_8)
);
defparam un1_x_15_0_axb_8_cZ.INIT=2'h1;
// @8:30
  LUT1 un1_x_10_4_axb_10 (
	.I0(x_8[7]),
	.O(un1_x_10_4[10])
);
defparam un1_x_10_4_axb_10.INIT=2'h2;
// @8:30
  LUT1 un1_x_10_4_axb_9 (
	.I0(x_8[7]),
	.O(un1_x_10_4[9])
);
defparam un1_x_10_4_axb_9.INIT=2'h2;
// @8:30
  LUT2_L un84_sop_1_axb_14_cZ (
	.I0(un84_sop_1_6[14]),
	.I1(un84_sop_1_4[14]),
	.LO(un84_sop_1_axb_14)
);
defparam un84_sop_1_axb_14_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_1_axb_13_cZ (
	.I0(un84_sop_1_6[14]),
	.I1(un84_sop_1_4[13]),
	.LO(un84_sop_1_axb_13)
);
defparam un84_sop_1_axb_13_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_1_axb_12_cZ (
	.I0(un84_sop_1_6[12]),
	.I1(un84_sop_1_4[12]),
	.LO(un84_sop_1_axb_12)
);
defparam un84_sop_1_axb_12_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_1_axb_11_cZ (
	.I0(un84_sop_1_6[11]),
	.I1(un84_sop_1_4[11]),
	.LO(un84_sop_1_axb_11)
);
defparam un84_sop_1_axb_11_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_1_axb_10_cZ (
	.I0(un84_sop_1_6[10]),
	.I1(un84_sop_1_4[10]),
	.LO(un84_sop_1_axb_10)
);
defparam un84_sop_1_axb_10_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_1_axb_9_cZ (
	.I0(un84_sop_1_6[9]),
	.I1(un84_sop_1_4[9]),
	.LO(un84_sop_1_axb_9)
);
defparam un84_sop_1_axb_9_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_1_axb_8_cZ (
	.I0(un84_sop_1_6[8]),
	.I1(un84_sop_1_4[8]),
	.LO(un84_sop_1_axb_8)
);
defparam un84_sop_1_axb_8_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_1_axb_7_cZ (
	.I0(un84_sop_1_6[7]),
	.I1(un84_sop_1_4[7]),
	.LO(un84_sop_1_axb_7)
);
defparam un84_sop_1_axb_7_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_0_11_7_axb_10_cZ (
	.I0(un1_x_11_0_0[14]),
	.I1(un84_sop_0_0_0_0_0[9]),
	.O(un84_sop_0_0_0_0_11_7_axb_10)
);
defparam un84_sop_0_0_0_0_11_7_axb_10_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_1_7_axb_14_cZ (
	.I0(un84_sop_0_0_0_0_5[14]),
	.I1(un1_x_4[15]),
	.O(un84_sop_1_7_axb_14)
);
defparam un84_sop_1_7_axb_14_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_14_cZ (
	.I0(un84_sop_0_0_0_1_6_6[14]),
	.I1(un84_sop_0_0_0_1_6_4[14]),
	.LO(un84_sop_0_0_0_1_6_axb_14)
);
defparam un84_sop_0_0_0_1_6_axb_14_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_13_cZ (
	.I0(un84_sop_0_0_0_1_6_6[13]),
	.I1(un84_sop_0_0_0_1_6_4[13]),
	.LO(un84_sop_0_0_0_1_6_axb_13)
);
defparam un84_sop_0_0_0_1_6_axb_13_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_12_cZ (
	.I0(un84_sop_0_0_0_1_6_6[12]),
	.I1(un84_sop_0_0_0_1_6_4[12]),
	.LO(un84_sop_0_0_0_1_6_axb_12)
);
defparam un84_sop_0_0_0_1_6_axb_12_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_11_cZ (
	.I0(un84_sop_0_0_0_1_6_6[11]),
	.I1(un84_sop_0_0_0_1_6_4[11]),
	.LO(un84_sop_0_0_0_1_6_axb_11)
);
defparam un84_sop_0_0_0_1_6_axb_11_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_10_cZ (
	.I0(un84_sop_0_0_0_1_6_6[10]),
	.I1(un84_sop_0_0_0_1_6_4[10]),
	.LO(un84_sop_0_0_0_1_6_axb_10)
);
defparam un84_sop_0_0_0_1_6_axb_10_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_9_cZ (
	.I0(un84_sop_0_0_0_1_6_6[9]),
	.I1(un84_sop_0_0_0_1_6_4[9]),
	.LO(un84_sop_0_0_0_1_6_axb_9)
);
defparam un84_sop_0_0_0_1_6_axb_9_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_8_cZ (
	.I0(un84_sop_0_0_0_1_6_6[8]),
	.I1(un84_sop_0_0_0_1_6_4[8]),
	.LO(un84_sop_0_0_0_1_6_axb_8)
);
defparam un84_sop_0_0_0_1_6_axb_8_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_7_cZ (
	.I0(un84_sop_0_0_0_1_6_6[7]),
	.I1(un84_sop_0_0_0_1_6_4[7]),
	.LO(un84_sop_0_0_0_1_6_axb_7)
);
defparam un84_sop_0_0_0_1_6_axb_7_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_6_cZ (
	.I0(un84_sop_0_0_0_1_6_6[6]),
	.I1(un84_sop_0_0_0_1_6_4[6]),
	.LO(un84_sop_0_0_0_1_6_axb_6)
);
defparam un84_sop_0_0_0_1_6_axb_6_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_5_cZ (
	.I0(un84_sop_0_0_0_1_6_6[5]),
	.I1(un84_sop_0_0_0_1_6_4[5]),
	.LO(un84_sop_0_0_0_1_6_axb_5)
);
defparam un84_sop_0_0_0_1_6_axb_5_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_4_cZ (
	.I0(un84_sop_0_0_0_1_6_6[4]),
	.I1(un84_sop_0_0_0_1_6_4[4]),
	.LO(un84_sop_0_0_0_1_6_axb_4)
);
defparam un84_sop_0_0_0_1_6_axb_4_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_3_cZ (
	.I0(un84_sop_0_0_0_1_6_4[3]),
	.I1(un84_sop_0_0_0_1_6_6[3]),
	.LO(un84_sop_0_0_0_1_6_axb_3)
);
defparam un84_sop_0_0_0_1_6_axb_3_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_2_cZ (
	.I0(un84_sop_0_0_0_1_6_4[2]),
	.I1(un84_sop_0_0_0_1_6_6[2]),
	.LO(un84_sop_0_0_0_1_6_axb_2)
);
defparam un84_sop_0_0_0_1_6_axb_2_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_1_6_axb_1_cZ (
	.I0(un84_sop_0_0_0_1_6_4[1]),
	.I1(un84_sop_0_0_0_1_6_6[1]),
	.LO(un84_sop_0_0_0_1_6_axb_1)
);
defparam un84_sop_0_0_0_1_6_axb_1_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_4_axb_14_cZ (
	.I0(un1_x_6_0[15]),
	.I1(un84_sop_0_0_0_1_6_8[14]),
	.O(un84_sop_0_0_0_1_6_4_axb_14)
);
defparam un84_sop_0_0_0_1_6_4_axb_14_cZ.INIT=4'h6;
// @8:30
  LUT2 un1_x_10_axb_3_cZ (
	.I0(x_8[0]),
	.I1(un1_x_10_4[3]),
	.O(un1_x_10_axb_3)
);
defparam un1_x_10_axb_3_cZ.INIT=4'h6;
// @8:30
  LUT2 un84_sop_0_0_0_1_6_8_axb_11_cZ (
	.I0(un84_sop_0_0_0_10_0[14]),
	.I1(x_4[7]),
	.O(un84_sop_0_0_0_1_6_8_axb_11)
);
defparam un84_sop_0_0_0_1_6_8_axb_11_cZ.INIT=4'h6;
// @8:30
  LUT2_L un84_sop_0_0_0_11_0_axb_0_cZ (
	.I0(x_8[0]),
	.I1(un84_sop_0_0_0_0_11_6[0]),
	.LO(un84_sop_0_0_0_11_0_axb_0)
);
defparam un84_sop_0_0_0_11_0_axb_0_cZ.INIT=4'h6;
// @8:30
  LUT4 un1_x_0_0_ac0_5 (
	.I0(x_0[3]),
	.I1(x_0[2]),
	.I2(x_0[1]),
	.I3(x_0[0]),
	.O(un1_x_0_0_c4)
);
defparam un1_x_0_0_ac0_5.INIT=16'h0001;
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_o5_11_cZ (
	.I0(un1_x_12_0_0[15]),
	.I1(un1_x_14_0_0[15]),
	.I2(un1_x_13_0_0[15]),
	.O(un84_sop_0_0_0_11_6_0_o5_11)
);
defparam un84_sop_0_0_0_11_6_0_o5_11_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_o5_10_cZ (
	.I0(un1_x_12_0_0[14]),
	.I1(un1_x_14_0_0[14]),
	.I2(un1_x_13_0_0[15]),
	.O(un84_sop_0_0_0_11_6_0_o5_10)
);
defparam un84_sop_0_0_0_11_6_0_o5_10_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_o5_9_cZ (
	.I0(un1_x_12_0_0[13]),
	.I1(un1_x_13_0_0[14]),
	.I2(un1_x_14_0_0[13]),
	.O(un84_sop_0_0_0_11_6_0_o5_9)
);
defparam un84_sop_0_0_0_11_6_0_o5_9_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_o5_8_cZ (
	.I0(un1_x_12_0_0[12]),
	.I1(un1_x_13_0_0[13]),
	.I2(un1_x_14_0_0[12]),
	.O(un84_sop_0_0_0_11_6_0_o5_8)
);
defparam un84_sop_0_0_0_11_6_0_o5_8_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_o5_7_cZ (
	.I0(un1_x_12_0_0[11]),
	.I1(un1_x_13_0_0[12]),
	.I2(un1_x_14_0_0[11]),
	.O(un84_sop_0_0_0_11_6_0_o5_7)
);
defparam un84_sop_0_0_0_11_6_0_o5_7_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_o5_6_cZ (
	.I0(un1_x_12_0_0[10]),
	.I1(un1_x_13_0_0[11]),
	.I2(un1_x_14_0_0[10]),
	.O(un84_sop_0_0_0_11_6_0_o5_6)
);
defparam un84_sop_0_0_0_11_6_0_o5_6_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_o5_5_cZ (
	.I0(un1_x_12_0_0[9]),
	.I1(un1_x_13_0_0[10]),
	.I2(un1_x_14_0_0[9]),
	.O(un84_sop_0_0_0_11_6_0_o5_5)
);
defparam un84_sop_0_0_0_11_6_0_o5_5_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_o5_4_cZ (
	.I0(un1_x_12_0_0[8]),
	.I1(un1_x_13_0_0[9]),
	.I2(un1_x_14_0_0[8]),
	.O(un84_sop_0_0_0_11_6_0_o5_4)
);
defparam un84_sop_0_0_0_11_6_0_o5_4_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_o5_3_cZ (
	.I0(un1_x_12_0_0[7]),
	.I1(un1_x_13_0_0[8]),
	.I2(un1_x_14_0_0[7]),
	.O(un84_sop_0_0_0_11_6_0_o5_3)
);
defparam un84_sop_0_0_0_11_6_0_o5_3_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_o5_2_cZ (
	.I0(un1_x_12_0_0[6]),
	.I1(un1_x_13_0_0[7]),
	.I2(un1_x_14_0_0[6]),
	.O(un84_sop_0_0_0_11_6_0_o5_2)
);
defparam un84_sop_0_0_0_11_6_0_o5_2_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_0_o5_12_cZ (
	.I0(un84_sop_0_0_0_0_11_7[14]),
	.I1(un84_sop_0_0_0_0_11_6[12]),
	.I2(un1_x_10_0_0[15]),
	.O(un84_sop_0_0_0_11_0_o5_12)
);
defparam un84_sop_0_0_0_11_0_o5_12_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_0_o5_11_cZ (
	.I0(un84_sop_0_0_0_0_11_7[14]),
	.I1(un84_sop_0_0_0_0_11_6[11]),
	.I2(un1_x_10_0_0[15]),
	.O(un84_sop_0_0_0_11_0_o5_11)
);
defparam un84_sop_0_0_0_11_0_o5_11_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_0_o5_10_cZ (
	.I0(un84_sop_0_0_0_0_11_7[14]),
	.I1(un84_sop_0_0_0_0_11_6[10]),
	.I2(un1_x_10_0_0[14]),
	.O(un84_sop_0_0_0_11_0_o5_10)
);
defparam un84_sop_0_0_0_11_0_o5_10_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_0_o5_9_cZ (
	.I0(un84_sop_0_0_0_0_11_7[9]),
	.I1(un84_sop_0_0_0_0_11_6[9]),
	.I2(un1_x_10_0_0[13]),
	.O(un84_sop_0_0_0_11_0_o5_9)
);
defparam un84_sop_0_0_0_11_0_o5_9_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_0_o5_8_cZ (
	.I0(un84_sop_0_0_0_0_11_7[8]),
	.I1(un84_sop_0_0_0_0_11_6[8]),
	.I2(un1_x_10_0_0[12]),
	.O(un84_sop_0_0_0_11_0_o5_8)
);
defparam un84_sop_0_0_0_11_0_o5_8_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_0_o5_7_cZ (
	.I0(un84_sop_0_0_0_0_11_7[7]),
	.I1(un84_sop_0_0_0_0_11_6[7]),
	.I2(un1_x_10_0_0[11]),
	.O(un84_sop_0_0_0_11_0_o5_7)
);
defparam un84_sop_0_0_0_11_0_o5_7_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_0_o5_6_cZ (
	.I0(un84_sop_0_0_0_0_11_7[6]),
	.I1(un84_sop_0_0_0_0_11_6[6]),
	.I2(un1_x_10_0_0[10]),
	.O(un84_sop_0_0_0_11_0_o5_6)
);
defparam un84_sop_0_0_0_11_0_o5_6_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_0_o5_5_cZ (
	.I0(un84_sop_0_0_0_0_11_7[5]),
	.I1(un84_sop_0_0_0_0_11_6[5]),
	.I2(un1_x_10_0_0[9]),
	.O(un84_sop_0_0_0_11_0_o5_5)
);
defparam un84_sop_0_0_0_11_0_o5_5_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_0_o5_4_cZ (
	.I0(un84_sop_0_0_0_0_11_7[4]),
	.I1(un84_sop_0_0_0_0_11_6[4]),
	.I2(un1_x_10_0_0[8]),
	.O(un84_sop_0_0_0_11_0_o5_4)
);
defparam un84_sop_0_0_0_11_0_o5_4_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_0_o5_3_cZ (
	.I0(un84_sop_0_0_0_0_11_7[3]),
	.I1(un1_x_10_axb_3),
	.I2(un84_sop_0_0_0_0_11_6[3]),
	.O(un84_sop_0_0_0_11_0_o5_3)
);
defparam un84_sop_0_0_0_11_0_o5_3_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_11_0_o5_2_cZ (
	.I0(un84_sop_0_0_0_0_11_7[2]),
	.I1(un84_sop_0_0_0_0_11_6[2]),
	.I2(un1_x_10_s_2_sf),
	.O(un84_sop_0_0_0_11_0_o5_2)
);
defparam un84_sop_0_0_0_11_0_o5_2_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_o5_12_cZ (
	.I0(un1_x_7_0[14]),
	.I1(un1_x_8_0[15]),
	.I2(un1_x_9_0[15]),
	.O(un84_sop_0_0_0_6_6_0_o5_12)
);
defparam un84_sop_0_0_0_6_6_0_o5_12_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_o5_11_cZ (
	.I0(un1_x_7_0[13]),
	.I1(un1_x_8_0[15]),
	.I2(un1_x_9_0[15]),
	.O(un84_sop_0_0_0_6_6_0_o5_11)
);
defparam un84_sop_0_0_0_6_6_0_o5_11_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_o5_10_cZ (
	.I0(un1_x_7_0[12]),
	.I1(un1_x_8_0[14]),
	.I2(un1_x_9_0[15]),
	.O(un84_sop_0_0_0_6_6_0_o5_10)
);
defparam un84_sop_0_0_0_6_6_0_o5_10_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_o5_9_cZ (
	.I0(un1_x_7_0[11]),
	.I1(un1_x_8_0[13]),
	.I2(un1_x_9_0[14]),
	.O(un84_sop_0_0_0_6_6_0_o5_9)
);
defparam un84_sop_0_0_0_6_6_0_o5_9_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_o5_8_cZ (
	.I0(un1_x_7_0[10]),
	.I1(un1_x_8_0[12]),
	.I2(un1_x_9_0[13]),
	.O(un84_sop_0_0_0_6_6_0_o5_8)
);
defparam un84_sop_0_0_0_6_6_0_o5_8_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_o5_7_cZ (
	.I0(un1_x_7_0[9]),
	.I1(un1_x_8_0[11]),
	.I2(un1_x_9_0[12]),
	.O(un84_sop_0_0_0_6_6_0_o5_7)
);
defparam un84_sop_0_0_0_6_6_0_o5_7_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_o5_6_cZ (
	.I0(un1_x_7_0[8]),
	.I1(un1_x_8_0[10]),
	.I2(un1_x_9_0[11]),
	.O(un84_sop_0_0_0_6_6_0_o5_6)
);
defparam un84_sop_0_0_0_6_6_0_o5_6_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_o5_5_cZ (
	.I0(un1_x_7_0[7]),
	.I1(un1_x_8_0[9]),
	.I2(un1_x_9_0[10]),
	.O(un84_sop_0_0_0_6_6_0_o5_5)
);
defparam un84_sop_0_0_0_6_6_0_o5_5_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_o5_4_cZ (
	.I0(un1_x_7_0[6]),
	.I1(un1_x_8_0[8]),
	.I2(un1_x_9_0[9]),
	.O(un84_sop_0_0_0_6_6_0_o5_4)
);
defparam un84_sop_0_0_0_6_6_0_o5_4_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_o5_3_cZ (
	.I0(un1_x_7_0[5]),
	.I1(un1_x_8_0[7]),
	.I2(un1_x_9_0[8]),
	.O(un84_sop_0_0_0_6_6_0_o5_3)
);
defparam un84_sop_0_0_0_6_6_0_o5_3_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_o5_2_cZ (
	.I0(un1_x_7_0[4]),
	.I1(un1_x_8_0[6]),
	.I2(un1_x_9_0[7]),
	.O(un84_sop_0_0_0_6_6_0_o5_2)
);
defparam un84_sop_0_0_0_6_6_0_o5_2_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_1_6_8_o5_7_cZ (
	.I0(un84_sop_0_0_0_10_0[10]),
	.I1(x_4[5]),
	.I2(x_4[7]),
	.O(un84_sop_0_0_0_1_6_8_o5_7)
);
defparam un84_sop_0_0_0_1_6_8_o5_7_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_1_6_8_o5_6_cZ (
	.I0(un84_sop_0_0_0_10_0[9]),
	.I1(x_4[6]),
	.I2(x_4[4]),
	.O(un84_sop_0_0_0_1_6_8_o5_6)
);
defparam un84_sop_0_0_0_1_6_8_o5_6_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_1_6_8_o5_5_cZ (
	.I0(un84_sop_0_0_0_10_0[8]),
	.I1(x_4[3]),
	.I2(x_4[5]),
	.O(un84_sop_0_0_0_1_6_8_o5_5)
);
defparam un84_sop_0_0_0_1_6_8_o5_5_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_1_6_8_o5_4_cZ (
	.I0(un84_sop_0_0_0_10_0[7]),
	.I1(x_4[2]),
	.I2(x_4[4]),
	.O(un84_sop_0_0_0_1_6_8_o5_4)
);
defparam un84_sop_0_0_0_1_6_8_o5_4_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_1_6_8_o5_3_cZ (
	.I0(un84_sop_0_0_0_10_0[6]),
	.I1(x_4[1]),
	.I2(x_4[3]),
	.O(un84_sop_0_0_0_1_6_8_o5_3)
);
defparam un84_sop_0_0_0_1_6_8_o5_3_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_1_6_0_o5_11_cZ (
	.I0(un1_x_1[15]),
	.I1(un1_x_3[15]),
	.I2(un1_x_2[15]),
	.O(un84_sop_1_6_0_o5_11)
);
defparam un84_sop_1_6_0_o5_11_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_1_6_0_o5_10_cZ (
	.I0(un1_x_1[14]),
	.I1(un1_x_3[14]),
	.I2(un1_x_2[15]),
	.O(un84_sop_1_6_0_o5_10)
);
defparam un84_sop_1_6_0_o5_10_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_1_6_0_o5_9_cZ (
	.I0(un1_x_1[13]),
	.I1(un1_x_2[14]),
	.I2(un1_x_3[13]),
	.O(un84_sop_1_6_0_o5_9)
);
defparam un84_sop_1_6_0_o5_9_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_1_6_0_o5_8_cZ (
	.I0(un1_x_1[12]),
	.I1(un1_x_2[13]),
	.I2(un1_x_3[12]),
	.O(un84_sop_1_6_0_o5_8)
);
defparam un84_sop_1_6_0_o5_8_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_1_6_0_o5_7_cZ (
	.I0(un1_x_1[11]),
	.I1(un1_x_2[12]),
	.I2(un1_x_3[11]),
	.O(un84_sop_1_6_0_o5_7)
);
defparam un84_sop_1_6_0_o5_7_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_1_6_0_o5_6_cZ (
	.I0(un1_x_1[10]),
	.I1(un1_x_2[11]),
	.I2(un1_x_3[10]),
	.O(un84_sop_1_6_0_o5_6)
);
defparam un84_sop_1_6_0_o5_6_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_1_6_0_o5_5_cZ (
	.I0(un1_x_1[9]),
	.I1(un1_x_2[10]),
	.I2(un1_x_3[9]),
	.O(un84_sop_1_6_0_o5_5)
);
defparam un84_sop_1_6_0_o5_5_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_1_6_0_o5_4_cZ (
	.I0(un1_x_1[8]),
	.I1(un1_x_2[9]),
	.I2(un1_x_3[8]),
	.O(un84_sop_1_6_0_o5_4)
);
defparam un84_sop_1_6_0_o5_4_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_1_6_0_o5_3_cZ (
	.I0(un1_x_1[7]),
	.I1(un1_x_2[8]),
	.I2(un1_x_3[7]),
	.O(un84_sop_1_6_0_o5_3)
);
defparam un84_sop_1_6_0_o5_3_cZ.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_1_6_0_o5_2_cZ (
	.I0(un1_x_1[6]),
	.I1(un1_x_2[7]),
	.I2(un1_x_3[6]),
	.O(un84_sop_1_6_0_o5_2)
);
defparam un84_sop_1_6_0_o5_2_cZ.INIT=8'hE8;
// @8:30
  LUT5 un84_sop_1_4_axb_3_cZ (
	.I0(x_0[3]),
	.I1(x_0[2]),
	.I2(x_0[1]),
	.I3(x_0[0]),
	.I4(un84_sop_1_7[3]),
	.O(un84_sop_1_4_axb_3)
);
defparam un84_sop_1_4_axb_3_cZ.INIT=32'hAAA95556;
// @8:30
  LUT5 un1_x_10_5_ac0_7 (
	.I0(x_8[4]),
	.I1(x_8[3]),
	.I2(x_8[2]),
	.I3(x_8[1]),
	.I4(x_8[0]),
	.O(un1_x_10_5_c5)
);
defparam un1_x_10_5_ac0_7.INIT=32'h00000001;
// @8:30
  LUT5 un1_x_10_axb_6_cZ (
	.I0(x_8[3]),
	.I1(x_8[2]),
	.I2(x_8[1]),
	.I3(x_8[0]),
	.I4(un1_x_10_4[6]),
	.O(un1_x_10_axb_6)
);
defparam un1_x_10_axb_6_cZ.INIT=32'hAAA95556;
// @8:30
  LUT6 un1_x_10_axb_7_cZ (
	.I0(x_8[4]),
	.I1(x_8[3]),
	.I2(x_8[2]),
	.I3(x_8[1]),
	.I4(x_8[0]),
	.I5(un1_x_10_4[7]),
	.O(un1_x_10_axb_7)
);
defparam un1_x_10_axb_7_cZ.INIT=64'hAAAAAAA955555556;
// @8:30
  LUT5 un84_sop_1_4_axb_6_cZ (
	.I0(x_0[6]),
	.I1(x_0[5]),
	.I2(x_0[4]),
	.I3(un1_x_0_0_c4),
	.I4(un84_sop_1_7[6]),
	.O(un84_sop_1_4_axb_6)
);
defparam un84_sop_1_4_axb_6_cZ.INIT=32'hA9AA5655;
// @8:30
  LUT6 un84_sop_1_4_axb_7_cZ (
	.I0(x_0[7]),
	.I1(x_0[6]),
	.I2(x_0[5]),
	.I3(x_0[4]),
	.I4(un1_x_0_0_c4),
	.I5(un84_sop_1_7[7]),
	.O(un84_sop_1_4_axb_7)
);
defparam un84_sop_1_4_axb_7_cZ.INIT=64'hAAA9AAAA55565555;
// @8:30
  LUT6 un84_sop_1_4_axb_14_cZ (
	.I0(x_0[7]),
	.I1(x_0[6]),
	.I2(x_0[5]),
	.I3(x_0[4]),
	.I4(un1_x_0_0_c4),
	.I5(un84_sop_1_7[14]),
	.O(un84_sop_1_4_axb_14)
);
defparam un84_sop_1_4_axb_14_cZ.INIT=64'hAAABAAAA55545555;
// @8:30
  LUT6 un84_sop_1_4_axb_13_cZ (
	.I0(x_0[7]),
	.I1(x_0[6]),
	.I2(x_0[5]),
	.I3(x_0[4]),
	.I4(un1_x_0_0_c4),
	.I5(un84_sop_1_7[13]),
	.O(un84_sop_1_4_axb_13)
);
defparam un84_sop_1_4_axb_13_cZ.INIT=64'hAAABAAAA55545555;
// @8:30
  LUT6 un84_sop_1_4_axb_12_cZ (
	.I0(x_0[7]),
	.I1(x_0[6]),
	.I2(x_0[5]),
	.I3(x_0[4]),
	.I4(un1_x_0_0_c4),
	.I5(un84_sop_1_7[12]),
	.O(un84_sop_1_4_axb_12)
);
defparam un84_sop_1_4_axb_12_cZ.INIT=64'hAAABAAAA55545555;
// @8:30
  LUT6 un84_sop_1_4_axb_11_cZ (
	.I0(x_0[7]),
	.I1(x_0[6]),
	.I2(x_0[5]),
	.I3(x_0[4]),
	.I4(un1_x_0_0_c4),
	.I5(un84_sop_1_7[11]),
	.O(un84_sop_1_4_axb_11)
);
defparam un84_sop_1_4_axb_11_cZ.INIT=64'hAAABAAAA55545555;
// @8:30
  LUT6 un84_sop_1_4_axb_10_cZ (
	.I0(x_0[7]),
	.I1(x_0[6]),
	.I2(x_0[5]),
	.I3(x_0[4]),
	.I4(un1_x_0_0_c4),
	.I5(un84_sop_1_7[10]),
	.O(un84_sop_1_4_axb_10)
);
defparam un84_sop_1_4_axb_10_cZ.INIT=64'hAAABAAAA55545555;
// @8:30
  LUT6 un84_sop_1_4_axb_9_cZ (
	.I0(x_0[7]),
	.I1(x_0[6]),
	.I2(x_0[5]),
	.I3(x_0[4]),
	.I4(un1_x_0_0_c4),
	.I5(un84_sop_1_7[9]),
	.O(un84_sop_1_4_axb_9)
);
defparam un84_sop_1_4_axb_9_cZ.INIT=64'hAAABAAAA55545555;
// @8:30
  LUT6 un84_sop_1_4_axb_8_cZ (
	.I0(x_0[7]),
	.I1(x_0[6]),
	.I2(x_0[5]),
	.I3(x_0[4]),
	.I4(un1_x_0_0_c4),
	.I5(un84_sop_1_7[8]),
	.O(un84_sop_1_4_axb_8)
);
defparam un84_sop_1_4_axb_8_cZ.INIT=64'hAAABAAAA55545555;
  LUT2 x_16_pipe_0_0_0_RNI0KBH (
	.I0(un84_sop_0_0_0_0_5[0]),
	.I1(un1_x_4[2]),
	.O(un84_sop_1_7[0])
);
defparam x_16_pipe_0_0_0_RNI0KBH.INIT=4'h6;
// @8:30
  XORCY un84_sop_0_0_0_1_s_9 (
	.LI(un84_sop_0_0_0_1_axb_9),
	.CI(un84_sop_0_0_0_1_cry_8),
	.O(un84_sop_0_0_0_0_1[9])
);
// @8:30
  XORCY un84_sop_0_0_0_1_s_8 (
	.LI(un84_sop_0_0_0_1_axb_8),
	.CI(un84_sop_0_0_0_1_cry_7),
	.O(un84_sop_0_0_0_0_1[8])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_cry_8_cZ (
	.DI(un1_x_15_0_0_0[14]),
	.CI(un84_sop_0_0_0_1_cry_7),
	.S(un84_sop_0_0_0_1_axb_8),
	.LO(un84_sop_0_0_0_1_cry_8)
);
// @8:30
  XORCY un84_sop_0_0_0_1_s_7 (
	.LI(un84_sop_0_0_0_1_axb_7),
	.CI(un84_sop_0_0_0_1_cry_6),
	.O(un84_sop_0_0_0_0_1[7])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_cry_7_cZ (
	.DI(un1_x_15_0_0_0[13]),
	.CI(un84_sop_0_0_0_1_cry_6),
	.S(un84_sop_0_0_0_1_axb_7),
	.LO(un84_sop_0_0_0_1_cry_7)
);
// @8:30
  XORCY un84_sop_0_0_0_1_s_6 (
	.LI(un84_sop_0_0_0_1_axb_6),
	.CI(un84_sop_0_0_0_1_cry_5),
	.O(un84_sop_0_0_0_0_1[6])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_cry_6_cZ (
	.DI(un1_x_15_0_0_0[12]),
	.CI(un84_sop_0_0_0_1_cry_5),
	.S(un84_sop_0_0_0_1_axb_6),
	.LO(un84_sop_0_0_0_1_cry_6)
);
// @8:30
  XORCY un84_sop_0_0_0_1_s_5 (
	.LI(un84_sop_0_0_0_1_axb_5),
	.CI(un84_sop_0_0_0_1_cry_4),
	.O(un84_sop_0_0_0_0_1[5])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_cry_5_cZ (
	.DI(un1_x_15_0_0_0[11]),
	.CI(un84_sop_0_0_0_1_cry_4),
	.S(un84_sop_0_0_0_1_axb_5),
	.LO(un84_sop_0_0_0_1_cry_5)
);
// @8:30
  XORCY un84_sop_0_0_0_1_s_4 (
	.LI(un84_sop_0_0_0_1_axb_4),
	.CI(un84_sop_0_0_0_1_cry_3),
	.O(un84_sop_0_0_0_0_1[4])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_cry_4_cZ (
	.DI(un1_x_15_0_0_0[10]),
	.CI(un84_sop_0_0_0_1_cry_3),
	.S(un84_sop_0_0_0_1_axb_4),
	.LO(un84_sop_0_0_0_1_cry_4)
);
// @8:30
  XORCY un84_sop_0_0_0_1_s_3 (
	.LI(un84_sop_0_0_0_1_axb_3),
	.CI(un84_sop_0_0_0_1_cry_2),
	.O(un84_sop_0_0_0_0_1[3])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_cry_3_cZ (
	.DI(un1_x_15_0_0_0[9]),
	.CI(un84_sop_0_0_0_1_cry_2),
	.S(un84_sop_0_0_0_1_axb_3),
	.LO(un84_sop_0_0_0_1_cry_3)
);
// @8:30
  XORCY un84_sop_0_0_0_1_s_2 (
	.LI(un84_sop_0_0_0_1_axb_2),
	.CI(un84_sop_0_0_0_1_cry_1),
	.O(un84_sop_0_0_0_0_1[2])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_cry_2_cZ (
	.DI(un1_x_15_0_0_0[8]),
	.CI(un84_sop_0_0_0_1_cry_1),
	.S(un84_sop_0_0_0_1_axb_2),
	.LO(un84_sop_0_0_0_1_cry_2)
);
// @8:30
  XORCY un84_sop_0_0_0_1_s_1 (
	.LI(un84_sop_0_0_0_1_axb_1),
	.CI(un84_sop_0_0_0_1_cry_0),
	.O(un84_sop_0_0_0_0_1[1])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_cry_1_cZ (
	.DI(un1_x_15_0_0_0[7]),
	.CI(un84_sop_0_0_0_1_cry_0),
	.S(un84_sop_0_0_0_1_axb_1),
	.LO(un84_sop_0_0_0_1_cry_1)
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_cry_0_cZ (
	.DI(x_13[0]),
	.CI(GND),
	.S(un84_sop_0_0_0_0_1[0]),
	.LO(un84_sop_0_0_0_1_cry_0)
);
// @8:30
  XORCY un1_x_16_0_s_8 (
	.LI(un1_x_16_0_axb_8),
	.CI(un1_x_16_0_cry_7),
	.O(un1_x_16_0_0_0[14])
);
// @8:30
  XORCY un1_x_16_0_s_7 (
	.LI(un1_x_16_0_axb_7),
	.CI(un1_x_16_0_cry_6),
	.O(un1_x_16_0_0_0[13])
);
// @8:30
  MUXCY_L un1_x_16_0_cry_7_cZ (
	.DI(GND),
	.CI(un1_x_16_0_cry_6),
	.S(un1_x_16_0_axb_7),
	.LO(un1_x_16_0_cry_7)
);
// @8:30
  XORCY un1_x_16_0_s_6 (
	.LI(un1_x_16_0_axb_6),
	.CI(un1_x_16_0_cry_5),
	.O(un1_x_16_0_0_0[12])
);
// @8:30
  MUXCY_L un1_x_16_0_cry_6_cZ (
	.DI(GND),
	.CI(un1_x_16_0_cry_5),
	.S(un1_x_16_0_axb_6),
	.LO(un1_x_16_0_cry_6)
);
// @8:30
  XORCY un1_x_16_0_s_5 (
	.LI(un1_x_16_0_axb_5),
	.CI(un1_x_16_0_cry_4),
	.O(un1_x_16_0_0_0[11])
);
// @8:30
  MUXCY_L un1_x_16_0_cry_5_cZ (
	.DI(GND),
	.CI(un1_x_16_0_cry_4),
	.S(un1_x_16_0_axb_5),
	.LO(un1_x_16_0_cry_5)
);
// @8:30
  XORCY un1_x_16_0_s_4 (
	.LI(un1_x_16_0_axb_4),
	.CI(un1_x_16_0_cry_3),
	.O(un1_x_16_0_0_0[10])
);
// @8:30
  MUXCY_L un1_x_16_0_cry_4_cZ (
	.DI(GND),
	.CI(un1_x_16_0_cry_3),
	.S(un1_x_16_0_axb_4),
	.LO(un1_x_16_0_cry_4)
);
// @8:30
  XORCY un1_x_16_0_s_3 (
	.LI(un1_x_16_0_axb_3),
	.CI(un1_x_16_0_cry_2),
	.O(un1_x_16_0_0_0[9])
);
// @8:30
  MUXCY_L un1_x_16_0_cry_3_cZ (
	.DI(GND),
	.CI(un1_x_16_0_cry_2),
	.S(un1_x_16_0_axb_3),
	.LO(un1_x_16_0_cry_3)
);
// @8:30
  XORCY un1_x_16_0_s_2 (
	.LI(un1_x_16_0_axb_2),
	.CI(un1_x_16_0_cry_1),
	.O(un1_x_16_0_0_0[8])
);
// @8:30
  MUXCY_L un1_x_16_0_cry_2_cZ (
	.DI(GND),
	.CI(un1_x_16_0_cry_1),
	.S(un1_x_16_0_axb_2),
	.LO(un1_x_16_0_cry_2)
);
// @8:30
  XORCY un1_x_16_0_s_1 (
	.LI(un1_x_16_0_axb_1),
	.CI(un1_x_16_0_cry_0),
	.O(un1_x_16_0_0_0[7])
);
// @8:30
  MUXCY_L un1_x_16_0_cry_1_cZ (
	.DI(GND),
	.CI(un1_x_16_0_cry_0),
	.S(un1_x_16_0_axb_1),
	.LO(un1_x_16_0_cry_1)
);
// @8:30
  MUXCY_L un1_x_16_0_cry_0_cZ (
	.DI(GND),
	.CI(VCC),
	.S(un1_x_16_0_axb_0),
	.LO(un1_x_16_0_cry_0)
);
// @8:30
  XORCY un1_x_11_0_s_8 (
	.LI(un1_x_11_0_axb_8),
	.CI(un1_x_11_0_cry_7),
	.O(un1_x_11_0_0_0[14])
);
// @8:30
  XORCY un1_x_11_0_s_7 (
	.LI(un1_x_11_0_axb_7),
	.CI(un1_x_11_0_cry_6),
	.O(un1_x_11_0_0_0[13])
);
// @8:30
  MUXCY_L un1_x_11_0_cry_7_cZ (
	.DI(GND),
	.CI(un1_x_11_0_cry_6),
	.S(un1_x_11_0_axb_7),
	.LO(un1_x_11_0_cry_7)
);
// @8:30
  XORCY un1_x_11_0_s_6 (
	.LI(un1_x_11_0_axb_6),
	.CI(un1_x_11_0_cry_5),
	.O(un1_x_11_0_0_0[12])
);
// @8:30
  MUXCY_L un1_x_11_0_cry_6_cZ (
	.DI(GND),
	.CI(un1_x_11_0_cry_5),
	.S(un1_x_11_0_axb_6),
	.LO(un1_x_11_0_cry_6)
);
// @8:30
  XORCY un1_x_11_0_s_5 (
	.LI(un1_x_11_0_axb_5),
	.CI(un1_x_11_0_cry_4),
	.O(un1_x_11_0_0_0[11])
);
// @8:30
  MUXCY_L un1_x_11_0_cry_5_cZ (
	.DI(GND),
	.CI(un1_x_11_0_cry_4),
	.S(un1_x_11_0_axb_5),
	.LO(un1_x_11_0_cry_5)
);
// @8:30
  XORCY un1_x_11_0_s_4 (
	.LI(un1_x_11_0_axb_4),
	.CI(un1_x_11_0_cry_3),
	.O(un1_x_11_0_0_0[10])
);
// @8:30
  MUXCY_L un1_x_11_0_cry_4_cZ (
	.DI(GND),
	.CI(un1_x_11_0_cry_3),
	.S(un1_x_11_0_axb_4),
	.LO(un1_x_11_0_cry_4)
);
// @8:30
  XORCY un1_x_11_0_s_3 (
	.LI(un1_x_11_0_axb_3),
	.CI(un1_x_11_0_cry_2),
	.O(un1_x_11_0_0_0[9])
);
// @8:30
  MUXCY_L un1_x_11_0_cry_3_cZ (
	.DI(GND),
	.CI(un1_x_11_0_cry_2),
	.S(un1_x_11_0_axb_3),
	.LO(un1_x_11_0_cry_3)
);
// @8:30
  XORCY un1_x_11_0_s_2 (
	.LI(un1_x_11_0_axb_2),
	.CI(un1_x_11_0_cry_1),
	.O(un1_x_11_0_0_0[8])
);
// @8:30
  MUXCY_L un1_x_11_0_cry_2_cZ (
	.DI(GND),
	.CI(un1_x_11_0_cry_1),
	.S(un1_x_11_0_axb_2),
	.LO(un1_x_11_0_cry_2)
);
// @8:30
  XORCY un1_x_11_0_s_1 (
	.LI(un1_x_11_0_axb_1),
	.CI(un1_x_11_0_cry_0),
	.O(un1_x_11_0_0_0[7])
);
// @8:30
  MUXCY_L un1_x_11_0_cry_1_cZ (
	.DI(GND),
	.CI(un1_x_11_0_cry_0),
	.S(un1_x_11_0_axb_1),
	.LO(un1_x_11_0_cry_1)
);
// @8:30
  MUXCY_L un1_x_11_0_cry_0_cZ (
	.DI(GND),
	.CI(VCC),
	.S(un1_x_11_0_axb_0),
	.LO(un1_x_11_0_cry_0)
);
// @8:30
  XORCY un1_x_15_0_s_8 (
	.LI(un1_x_15_0_axb_8),
	.CI(un1_x_15_0_cry_7),
	.O(un1_x_15_0_0_0[14])
);
// @8:30
  XORCY un1_x_15_0_s_7 (
	.LI(un1_x_15_0_axb_7),
	.CI(un1_x_15_0_cry_6),
	.O(un1_x_15_0_0_0[13])
);
// @8:30
  MUXCY_L un1_x_15_0_cry_7_cZ (
	.DI(GND),
	.CI(un1_x_15_0_cry_6),
	.S(un1_x_15_0_axb_7),
	.LO(un1_x_15_0_cry_7)
);
// @8:30
  XORCY un1_x_15_0_s_6 (
	.LI(un1_x_15_0_axb_6),
	.CI(un1_x_15_0_cry_5),
	.O(un1_x_15_0_0_0[12])
);
// @8:30
  MUXCY_L un1_x_15_0_cry_6_cZ (
	.DI(GND),
	.CI(un1_x_15_0_cry_5),
	.S(un1_x_15_0_axb_6),
	.LO(un1_x_15_0_cry_6)
);
// @8:30
  XORCY un1_x_15_0_s_5 (
	.LI(un1_x_15_0_axb_5),
	.CI(un1_x_15_0_cry_4),
	.O(un1_x_15_0_0_0[11])
);
// @8:30
  MUXCY_L un1_x_15_0_cry_5_cZ (
	.DI(GND),
	.CI(un1_x_15_0_cry_4),
	.S(un1_x_15_0_axb_5),
	.LO(un1_x_15_0_cry_5)
);
// @8:30
  XORCY un1_x_15_0_s_4 (
	.LI(un1_x_15_0_axb_4),
	.CI(un1_x_15_0_cry_3),
	.O(un1_x_15_0_0_0[10])
);
// @8:30
  MUXCY_L un1_x_15_0_cry_4_cZ (
	.DI(GND),
	.CI(un1_x_15_0_cry_3),
	.S(un1_x_15_0_axb_4),
	.LO(un1_x_15_0_cry_4)
);
// @8:30
  XORCY un1_x_15_0_s_3 (
	.LI(un1_x_15_0_axb_3),
	.CI(un1_x_15_0_cry_2),
	.O(un1_x_15_0_0_0[9])
);
// @8:30
  MUXCY_L un1_x_15_0_cry_3_cZ (
	.DI(GND),
	.CI(un1_x_15_0_cry_2),
	.S(un1_x_15_0_axb_3),
	.LO(un1_x_15_0_cry_3)
);
// @8:30
  XORCY un1_x_15_0_s_2 (
	.LI(un1_x_15_0_axb_2),
	.CI(un1_x_15_0_cry_1),
	.O(un1_x_15_0_0_0[8])
);
// @8:30
  MUXCY_L un1_x_15_0_cry_2_cZ (
	.DI(GND),
	.CI(un1_x_15_0_cry_1),
	.S(un1_x_15_0_axb_2),
	.LO(un1_x_15_0_cry_2)
);
// @8:30
  XORCY un1_x_15_0_s_1 (
	.LI(un1_x_15_0_axb_1),
	.CI(un1_x_15_0_cry_0),
	.O(un1_x_15_0_0_0[7])
);
// @8:30
  MUXCY_L un1_x_15_0_cry_1_cZ (
	.DI(GND),
	.CI(un1_x_15_0_cry_0),
	.S(un1_x_15_0_axb_1),
	.LO(un1_x_15_0_cry_1)
);
// @8:30
  MUXCY_L un1_x_15_0_cry_0_cZ (
	.DI(GND),
	.CI(VCC),
	.S(un1_x_15_0_axb_0),
	.LO(un1_x_15_0_cry_0)
);
// @8:30
  XORCY un1_x_10_4_s_8 (
	.LI(un1_x_10_4_s_8_false),
	.CI(un1_x_10_4_cry_7),
	.O(un1_x_10_4[8])
);
// @8:30
  XORCY un1_x_10_4_s_7 (
	.LI(un1_x_10_4_axb_7),
	.CI(un1_x_10_4_cry_6),
	.O(un1_x_10_4[7])
);
// @8:30
  MUXCY_L un1_x_10_4_cry_7_cZ (
	.DI(x_8[6]),
	.CI(un1_x_10_4_cry_6),
	.S(un1_x_10_4_axb_7),
	.LO(un1_x_10_4_cry_7)
);
// @8:30
  XORCY un1_x_10_4_s_6 (
	.LI(un1_x_10_4_axb_6),
	.CI(un1_x_10_4_cry_5),
	.O(un1_x_10_4[6])
);
// @8:30
  MUXCY_L un1_x_10_4_cry_6_cZ (
	.DI(x_8[5]),
	.CI(un1_x_10_4_cry_5),
	.S(un1_x_10_4_axb_6),
	.LO(un1_x_10_4_cry_6)
);
// @8:30
  XORCY un1_x_10_4_s_5 (
	.LI(un1_x_10_4_axb_5),
	.CI(un1_x_10_4_cry_4),
	.O(un1_x_10_4[5])
);
// @8:30
  MUXCY_L un1_x_10_4_cry_5_cZ (
	.DI(x_8[4]),
	.CI(un1_x_10_4_cry_4),
	.S(un1_x_10_4_axb_5),
	.LO(un1_x_10_4_cry_5)
);
// @8:30
  XORCY un1_x_10_4_s_4 (
	.LI(un1_x_10_4_axb_4),
	.CI(un1_x_10_4_cry_3),
	.O(un1_x_10_4[4])
);
// @8:30
  MUXCY_L un1_x_10_4_cry_4_cZ (
	.DI(x_8[3]),
	.CI(un1_x_10_4_cry_3),
	.S(un1_x_10_4_axb_4),
	.LO(un1_x_10_4_cry_4)
);
// @8:30
  XORCY un1_x_10_4_s_3 (
	.LI(un1_x_10_4_axb_3),
	.CI(un1_x_10_4_cry_2),
	.O(un1_x_10_4[3])
);
// @8:30
  MUXCY_L un1_x_10_4_cry_3_cZ (
	.DI(x_8[2]),
	.CI(un1_x_10_4_cry_2),
	.S(un1_x_10_4_axb_3),
	.LO(un1_x_10_4_cry_3)
);
// @8:30
  XORCY un1_x_10_4_s_2 (
	.LI(un1_x_10_4_axb_2),
	.CI(un1_x_10_4_cry_1),
	.O(un1_x_10_4[2])
);
// @8:30
  MUXCY_L un1_x_10_4_cry_2_cZ (
	.DI(x_8[1]),
	.CI(un1_x_10_4_cry_1),
	.S(un1_x_10_4_axb_2),
	.LO(un1_x_10_4_cry_2)
);
// @8:30
  MUXCY_L un1_x_10_4_cry_1_cZ (
	.DI(x_8[0]),
	.CI(GND),
	.S(un1_x_10_4_cry_1_sf),
	.LO(un1_x_10_4_cry_1)
);
// @8:30
  XORCY un84_sop_1_s_14_cZ (
	.LI(un84_sop_1_axb_14),
	.CI(un84_sop_1_cry_13),
	.O(un84_sop_1_s_14)
);
// @8:30
  XORCY un84_sop_1_s_13_cZ (
	.LI(un84_sop_1_axb_13),
	.CI(un84_sop_1_cry_12),
	.O(un84_sop_1_s_13)
);
// @8:30
  MUXCY_L un84_sop_1_cry_13_cZ (
	.DI(un84_sop_1_4[13]),
	.CI(un84_sop_1_cry_12),
	.S(un84_sop_1_axb_13),
	.LO(un84_sop_1_cry_13)
);
// @8:30
  XORCY un84_sop_1_s_12_cZ (
	.LI(un84_sop_1_axb_12),
	.CI(un84_sop_1_cry_11),
	.O(un84_sop_1_s_12)
);
// @8:30
  MUXCY_L un84_sop_1_cry_12_cZ (
	.DI(un84_sop_1_4[12]),
	.CI(un84_sop_1_cry_11),
	.S(un84_sop_1_axb_12),
	.LO(un84_sop_1_cry_12)
);
// @8:30
  XORCY un84_sop_1_s_11_cZ (
	.LI(un84_sop_1_axb_11),
	.CI(un84_sop_1_cry_10),
	.O(un84_sop_1_s_11)
);
// @8:30
  MUXCY_L un84_sop_1_cry_11_cZ (
	.DI(un84_sop_1_4[11]),
	.CI(un84_sop_1_cry_10),
	.S(un84_sop_1_axb_11),
	.LO(un84_sop_1_cry_11)
);
// @8:30
  XORCY un84_sop_1_s_10_cZ (
	.LI(un84_sop_1_axb_10),
	.CI(un84_sop_1_cry_9),
	.O(un84_sop_1_s_10)
);
// @8:30
  MUXCY_L un84_sop_1_cry_10_cZ (
	.DI(un84_sop_1_4[10]),
	.CI(un84_sop_1_cry_9),
	.S(un84_sop_1_axb_10),
	.LO(un84_sop_1_cry_10)
);
// @8:30
  XORCY un84_sop_1_s_9_cZ (
	.LI(un84_sop_1_axb_9),
	.CI(un84_sop_1_cry_8),
	.O(un84_sop_1_s_9)
);
// @8:30
  MUXCY_L un84_sop_1_cry_9_cZ (
	.DI(un84_sop_1_4[9]),
	.CI(un84_sop_1_cry_8),
	.S(un84_sop_1_axb_9),
	.LO(un84_sop_1_cry_9)
);
// @8:30
  XORCY un84_sop_1_s_8_cZ (
	.LI(un84_sop_1_axb_8),
	.CI(un84_sop_1_cry_7),
	.O(un84_sop_1_s_8)
);
// @8:30
  MUXCY_L un84_sop_1_cry_8_cZ (
	.DI(un84_sop_1_4[8]),
	.CI(un84_sop_1_cry_7),
	.S(un84_sop_1_axb_8),
	.LO(un84_sop_1_cry_8)
);
// @8:30
  XORCY un84_sop_1_s_7_cZ (
	.LI(un84_sop_1_axb_7),
	.CI(un84_sop_1_cry_6),
	.O(un84_sop_1_s_7)
);
// @8:30
  MUXCY_L un84_sop_1_cry_7_cZ (
	.DI(un84_sop_1_4[7]),
	.CI(un84_sop_1_cry_6),
	.S(un84_sop_1_axb_7),
	.LO(un84_sop_1_cry_7)
);
// @8:30
  MUXCY_L un84_sop_1_cry_6_cZ (
	.DI(un84_sop_1_4[6]),
	.CI(un84_sop_1_cry_5),
	.S(un84_sop_1_axb_6),
	.LO(un84_sop_1_cry_6)
);
// @8:30
  MUXCY_L un84_sop_1_cry_5_cZ (
	.DI(un84_sop_1_4[5]),
	.CI(un84_sop_1_cry_4),
	.S(un84_sop_1_axb_5),
	.LO(un84_sop_1_cry_5)
);
// @8:30
  MUXCY_L un84_sop_1_cry_4_cZ (
	.DI(un84_sop_1_4[4]),
	.CI(un84_sop_1_cry_3),
	.S(un84_sop_1_axb_4),
	.LO(un84_sop_1_cry_4)
);
// @8:30
  MUXCY_L un84_sop_1_cry_3_cZ (
	.DI(un84_sop_1_4[3]),
	.CI(un84_sop_1_cry_2),
	.S(un84_sop_1_axb_3),
	.LO(un84_sop_1_cry_3)
);
// @8:30
  MUXCY_L un84_sop_1_cry_2_cZ (
	.DI(un84_sop_1_4[2]),
	.CI(un84_sop_1_cry_1),
	.S(un84_sop_1_axb_2),
	.LO(un84_sop_1_cry_2)
);
// @8:30
  MUXCY_L un84_sop_1_cry_1_cZ (
	.DI(un84_sop_1_4[1]),
	.CI(un84_sop_1_cry_0),
	.S(un84_sop_1_axb_1),
	.LO(un84_sop_1_cry_1)
);
// @8:30
  MUXCY_L un84_sop_1_cry_0_cZ (
	.DI(un84_sop_1_6[0]),
	.CI(GND),
	.S(un84_sop_1_axb_0),
	.LO(un84_sop_1_cry_0)
);
// @8:30
  XORCY un84_sop_1_4_s_14 (
	.LI(un84_sop_1_4_axb_14),
	.CI(un84_sop_1_4_cry_13),
	.O(un84_sop_1_4[14])
);
// @8:30
  XORCY un84_sop_1_4_s_13 (
	.LI(un84_sop_1_4_axb_13),
	.CI(un84_sop_1_4_cry_12),
	.O(un84_sop_1_4[13])
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_13_cZ (
	.DI(un84_sop_1_7[13]),
	.CI(un84_sop_1_4_cry_12),
	.S(un84_sop_1_4_axb_13),
	.LO(un84_sop_1_4_cry_13)
);
// @8:30
  XORCY un84_sop_1_4_s_12 (
	.LI(un84_sop_1_4_axb_12),
	.CI(un84_sop_1_4_cry_11),
	.O(un84_sop_1_4[12])
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_12_cZ (
	.DI(un84_sop_1_7[12]),
	.CI(un84_sop_1_4_cry_11),
	.S(un84_sop_1_4_axb_12),
	.LO(un84_sop_1_4_cry_12)
);
// @8:30
  XORCY un84_sop_1_4_s_11 (
	.LI(un84_sop_1_4_axb_11),
	.CI(un84_sop_1_4_cry_10),
	.O(un84_sop_1_4[11])
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_11_cZ (
	.DI(un84_sop_1_7[11]),
	.CI(un84_sop_1_4_cry_10),
	.S(un84_sop_1_4_axb_11),
	.LO(un84_sop_1_4_cry_11)
);
// @8:30
  XORCY un84_sop_1_4_s_10 (
	.LI(un84_sop_1_4_axb_10),
	.CI(un84_sop_1_4_cry_9),
	.O(un84_sop_1_4[10])
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_10_cZ (
	.DI(un84_sop_1_7[10]),
	.CI(un84_sop_1_4_cry_9),
	.S(un84_sop_1_4_axb_10),
	.LO(un84_sop_1_4_cry_10)
);
// @8:30
  XORCY un84_sop_1_4_s_9 (
	.LI(un84_sop_1_4_axb_9),
	.CI(un84_sop_1_4_cry_8),
	.O(un84_sop_1_4[9])
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_9_cZ (
	.DI(un84_sop_1_7[9]),
	.CI(un84_sop_1_4_cry_8),
	.S(un84_sop_1_4_axb_9),
	.LO(un84_sop_1_4_cry_9)
);
// @8:30
  XORCY un84_sop_1_4_s_8 (
	.LI(un84_sop_1_4_axb_8),
	.CI(un84_sop_1_4_cry_7),
	.O(un84_sop_1_4[8])
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_8_cZ (
	.DI(un84_sop_1_7[8]),
	.CI(un84_sop_1_4_cry_7),
	.S(un84_sop_1_4_axb_8),
	.LO(un84_sop_1_4_cry_8)
);
// @8:30
  XORCY un84_sop_1_4_s_7 (
	.LI(un84_sop_1_4_axb_7),
	.CI(un84_sop_1_4_cry_6),
	.O(un84_sop_1_4[7])
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_7_cZ (
	.DI(un84_sop_1_7[7]),
	.CI(un84_sop_1_4_cry_6),
	.S(un84_sop_1_4_axb_7),
	.LO(un84_sop_1_4_cry_7)
);
// @8:30
  XORCY un84_sop_1_4_s_6 (
	.LI(un84_sop_1_4_axb_6),
	.CI(un84_sop_1_4_cry_5),
	.O(un84_sop_1_4[6])
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_6_cZ (
	.DI(un84_sop_1_7[6]),
	.CI(un84_sop_1_4_cry_5),
	.S(un84_sop_1_4_axb_6),
	.LO(un84_sop_1_4_cry_6)
);
// @8:30
  XORCY un84_sop_1_4_s_5 (
	.LI(un84_sop_1_4_axb_5),
	.CI(un84_sop_1_4_cry_4),
	.O(un84_sop_1_4[5])
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_5_cZ (
	.DI(un84_sop_1_7[5]),
	.CI(un84_sop_1_4_cry_4),
	.S(un84_sop_1_4_axb_5),
	.LO(un84_sop_1_4_cry_5)
);
// @8:30
  XORCY un84_sop_1_4_s_4 (
	.LI(un84_sop_1_4_axb_4),
	.CI(un84_sop_1_4_cry_3),
	.O(un84_sop_1_4[4])
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_4_cZ (
	.DI(un84_sop_1_7[4]),
	.CI(un84_sop_1_4_cry_3),
	.S(un84_sop_1_4_axb_4),
	.LO(un84_sop_1_4_cry_4)
);
// @8:30
  XORCY un84_sop_1_4_s_3 (
	.LI(un84_sop_1_4_axb_3),
	.CI(un84_sop_1_4_cry_2),
	.O(un84_sop_1_4[3])
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_3_cZ (
	.DI(un84_sop_1_7[3]),
	.CI(un84_sop_1_4_cry_2),
	.S(un84_sop_1_4_axb_3),
	.LO(un84_sop_1_4_cry_3)
);
// @8:30
  XORCY un84_sop_1_4_s_2 (
	.LI(un84_sop_1_4_axb_2),
	.CI(un84_sop_1_4_cry_1),
	.O(un84_sop_1_4[2])
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_2_cZ (
	.DI(un84_sop_1_7[2]),
	.CI(un84_sop_1_4_cry_1),
	.S(un84_sop_1_4_axb_2),
	.LO(un84_sop_1_4_cry_2)
);
// @8:30
  XORCY un84_sop_1_4_s_1 (
	.LI(un84_sop_1_4_axb_1),
	.CI(un84_sop_1_4_cry_0),
	.O(un84_sop_1_4[1])
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_1_cZ (
	.DI(un84_sop_1_7[1]),
	.CI(un84_sop_1_4_cry_0),
	.S(un84_sop_1_4_axb_1),
	.LO(un84_sop_1_4_cry_1)
);
// @8:30
  MUXCY_L un84_sop_1_4_cry_0_cZ (
	.DI(un84_sop_1_7[0]),
	.CI(GND),
	.S(un84_sop_1_4[0]),
	.LO(un84_sop_1_4_cry_0)
);
// @8:30
  XORCY un84_sop_0_0_0_0_11_7_s_10 (
	.LI(un84_sop_0_0_0_0_11_7_axb_10),
	.CI(un84_sop_0_0_0_0_11_7_cry_9),
	.O(un84_sop_0_0_0_0_11_7[14])
);
// @8:30
  XORCY un84_sop_0_0_0_0_11_7_s_9 (
	.LI(un84_sop_0_0_0_0_11_7_axb_9),
	.CI(un84_sop_0_0_0_0_11_7_cry_8),
	.O(un84_sop_0_0_0_0_11_7[9])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_0_11_7_cry_9_cZ (
	.DI(un84_sop_0_0_0_0_0[9]),
	.CI(un84_sop_0_0_0_0_11_7_cry_8),
	.S(un84_sop_0_0_0_0_11_7_axb_9),
	.LO(un84_sop_0_0_0_0_11_7_cry_9)
);
// @8:30
  XORCY un84_sop_0_0_0_0_11_7_s_8 (
	.LI(un84_sop_0_0_0_0_11_7_axb_8),
	.CI(un84_sop_0_0_0_0_11_7_cry_7),
	.O(un84_sop_0_0_0_0_11_7[8])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_0_11_7_cry_8_cZ (
	.DI(un84_sop_0_0_0_0_0[8]),
	.CI(un84_sop_0_0_0_0_11_7_cry_7),
	.S(un84_sop_0_0_0_0_11_7_axb_8),
	.LO(un84_sop_0_0_0_0_11_7_cry_8)
);
// @8:30
  XORCY un84_sop_0_0_0_0_11_7_s_7 (
	.LI(un84_sop_0_0_0_0_11_7_axb_7),
	.CI(un84_sop_0_0_0_0_11_7_cry_6),
	.O(un84_sop_0_0_0_0_11_7[7])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_0_11_7_cry_7_cZ (
	.DI(un84_sop_0_0_0_0_0[7]),
	.CI(un84_sop_0_0_0_0_11_7_cry_6),
	.S(un84_sop_0_0_0_0_11_7_axb_7),
	.LO(un84_sop_0_0_0_0_11_7_cry_7)
);
// @8:30
  XORCY un84_sop_0_0_0_0_11_7_s_6 (
	.LI(un84_sop_0_0_0_0_11_7_axb_6),
	.CI(un84_sop_0_0_0_0_11_7_cry_5),
	.O(un84_sop_0_0_0_0_11_7[6])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_0_11_7_cry_6_cZ (
	.DI(un84_sop_0_0_0_0_0[6]),
	.CI(un84_sop_0_0_0_0_11_7_cry_5),
	.S(un84_sop_0_0_0_0_11_7_axb_6),
	.LO(un84_sop_0_0_0_0_11_7_cry_6)
);
// @8:30
  XORCY un84_sop_0_0_0_0_11_7_s_5 (
	.LI(un84_sop_0_0_0_0_11_7_axb_5),
	.CI(un84_sop_0_0_0_0_11_7_cry_4),
	.O(un84_sop_0_0_0_0_11_7[5])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_0_11_7_cry_5_cZ (
	.DI(un84_sop_0_0_0_0_0[5]),
	.CI(un84_sop_0_0_0_0_11_7_cry_4),
	.S(un84_sop_0_0_0_0_11_7_axb_5),
	.LO(un84_sop_0_0_0_0_11_7_cry_5)
);
// @8:30
  XORCY un84_sop_0_0_0_0_11_7_s_4 (
	.LI(un84_sop_0_0_0_0_11_7_axb_4),
	.CI(un84_sop_0_0_0_0_11_7_cry_3),
	.O(un84_sop_0_0_0_0_11_7[4])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_0_11_7_cry_4_cZ (
	.DI(un84_sop_0_0_0_0_0[4]),
	.CI(un84_sop_0_0_0_0_11_7_cry_3),
	.S(un84_sop_0_0_0_0_11_7_axb_4),
	.LO(un84_sop_0_0_0_0_11_7_cry_4)
);
// @8:30
  XORCY un84_sop_0_0_0_0_11_7_s_3 (
	.LI(un84_sop_0_0_0_0_11_7_axb_3),
	.CI(un84_sop_0_0_0_0_11_7_cry_2),
	.O(un84_sop_0_0_0_0_11_7[3])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_0_11_7_cry_3_cZ (
	.DI(un84_sop_0_0_0_0_0[3]),
	.CI(un84_sop_0_0_0_0_11_7_cry_2),
	.S(un84_sop_0_0_0_0_11_7_axb_3),
	.LO(un84_sop_0_0_0_0_11_7_cry_3)
);
// @8:30
  XORCY un84_sop_0_0_0_0_11_7_s_2 (
	.LI(un84_sop_0_0_0_0_11_7_axb_2),
	.CI(un84_sop_0_0_0_0_11_7_cry_1),
	.O(un84_sop_0_0_0_0_11_7[2])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_0_11_7_cry_2_cZ (
	.DI(un84_sop_0_0_0_0_0[2]),
	.CI(un84_sop_0_0_0_0_11_7_cry_1),
	.S(un84_sop_0_0_0_0_11_7_axb_2),
	.LO(un84_sop_0_0_0_0_11_7_cry_2)
);
// @8:30
  XORCY un84_sop_0_0_0_0_11_7_s_1 (
	.LI(un84_sop_0_0_0_0_11_7_axb_1),
	.CI(un84_sop_0_0_0_0_11_7_cry_0),
	.O(un84_sop_0_0_0_0_11_7[1])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_0_11_7_cry_1_cZ (
	.DI(un84_sop_0_0_0_0_0[1]),
	.CI(un84_sop_0_0_0_0_11_7_cry_0),
	.S(un84_sop_0_0_0_0_11_7_axb_1),
	.LO(un84_sop_0_0_0_0_11_7_cry_1)
);
// @8:30
  MUXCY_L un84_sop_0_0_0_0_11_7_cry_0_cZ (
	.DI(un84_sop_0_0_0_0_0[0]),
	.CI(GND),
	.S(un84_sop_0_0_0_0_11_7[0]),
	.LO(un84_sop_0_0_0_0_11_7_cry_0)
);
// @8:30
  XORCY un84_sop_1_7_s_14 (
	.LI(un84_sop_1_7_axb_14),
	.CI(un84_sop_1_7_cry_13),
	.O(un84_sop_1_7[14])
);
// @8:30
  XORCY un84_sop_1_7_s_13 (
	.LI(un84_sop_1_7_axb_13),
	.CI(un84_sop_1_7_cry_12),
	.O(un84_sop_1_7[13])
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_13_cZ (
	.DI(un84_sop_0_0_0_0_5[13]),
	.CI(un84_sop_1_7_cry_12),
	.S(un84_sop_1_7_axb_13),
	.LO(un84_sop_1_7_cry_13)
);
// @8:30
  XORCY un84_sop_1_7_s_12 (
	.LI(un84_sop_1_7_axb_12),
	.CI(un84_sop_1_7_cry_11),
	.O(un84_sop_1_7[12])
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_12_cZ (
	.DI(un84_sop_0_0_0_0_5[12]),
	.CI(un84_sop_1_7_cry_11),
	.S(un84_sop_1_7_axb_12),
	.LO(un84_sop_1_7_cry_12)
);
// @8:30
  XORCY un84_sop_1_7_s_11 (
	.LI(un84_sop_1_7_axb_11),
	.CI(un84_sop_1_7_cry_10),
	.O(un84_sop_1_7[11])
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_11_cZ (
	.DI(un84_sop_0_0_0_0_5[11]),
	.CI(un84_sop_1_7_cry_10),
	.S(un84_sop_1_7_axb_11),
	.LO(un84_sop_1_7_cry_11)
);
// @8:30
  XORCY un84_sop_1_7_s_10 (
	.LI(un84_sop_1_7_axb_10),
	.CI(un84_sop_1_7_cry_9),
	.O(un84_sop_1_7[10])
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_10_cZ (
	.DI(un84_sop_0_0_0_0_5[10]),
	.CI(un84_sop_1_7_cry_9),
	.S(un84_sop_1_7_axb_10),
	.LO(un84_sop_1_7_cry_10)
);
// @8:30
  XORCY un84_sop_1_7_s_9 (
	.LI(un84_sop_1_7_axb_9),
	.CI(un84_sop_1_7_cry_8),
	.O(un84_sop_1_7[9])
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_9_cZ (
	.DI(un84_sop_0_0_0_0_5[9]),
	.CI(un84_sop_1_7_cry_8),
	.S(un84_sop_1_7_axb_9),
	.LO(un84_sop_1_7_cry_9)
);
// @8:30
  XORCY un84_sop_1_7_s_8 (
	.LI(un84_sop_1_7_axb_8),
	.CI(un84_sop_1_7_cry_7),
	.O(un84_sop_1_7[8])
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_8_cZ (
	.DI(un84_sop_0_0_0_0_5[8]),
	.CI(un84_sop_1_7_cry_7),
	.S(un84_sop_1_7_axb_8),
	.LO(un84_sop_1_7_cry_8)
);
// @8:30
  XORCY un84_sop_1_7_s_7 (
	.LI(un84_sop_1_7_axb_7),
	.CI(un84_sop_1_7_cry_6),
	.O(un84_sop_1_7[7])
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_7_cZ (
	.DI(un84_sop_0_0_0_0_5[7]),
	.CI(un84_sop_1_7_cry_6),
	.S(un84_sop_1_7_axb_7),
	.LO(un84_sop_1_7_cry_7)
);
// @8:30
  XORCY un84_sop_1_7_s_6 (
	.LI(un84_sop_1_7_axb_6),
	.CI(un84_sop_1_7_cry_5),
	.O(un84_sop_1_7[6])
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_6_cZ (
	.DI(un84_sop_0_0_0_0_5[6]),
	.CI(un84_sop_1_7_cry_5),
	.S(un84_sop_1_7_axb_6),
	.LO(un84_sop_1_7_cry_6)
);
// @8:30
  XORCY un84_sop_1_7_s_5 (
	.LI(un84_sop_1_7_axb_5),
	.CI(un84_sop_1_7_cry_4),
	.O(un84_sop_1_7[5])
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_5_cZ (
	.DI(un84_sop_0_0_0_0_5[5]),
	.CI(un84_sop_1_7_cry_4),
	.S(un84_sop_1_7_axb_5),
	.LO(un84_sop_1_7_cry_5)
);
// @8:30
  XORCY un84_sop_1_7_s_4 (
	.LI(un84_sop_1_7_axb_4),
	.CI(un84_sop_1_7_cry_3),
	.O(un84_sop_1_7[4])
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_4_cZ (
	.DI(un84_sop_0_0_0_0_5[4]),
	.CI(un84_sop_1_7_cry_3),
	.S(un84_sop_1_7_axb_4),
	.LO(un84_sop_1_7_cry_4)
);
// @8:30
  XORCY un84_sop_1_7_s_3 (
	.LI(un84_sop_1_7_axb_3),
	.CI(un84_sop_1_7_cry_2),
	.O(un84_sop_1_7[3])
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_3_cZ (
	.DI(un84_sop_0_0_0_0_5[3]),
	.CI(un84_sop_1_7_cry_2),
	.S(un84_sop_1_7_axb_3),
	.LO(un84_sop_1_7_cry_3)
);
// @8:30
  XORCY un84_sop_1_7_s_2 (
	.LI(un84_sop_1_7_axb_2),
	.CI(un84_sop_1_7_cry_1),
	.O(un84_sop_1_7[2])
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_2_cZ (
	.DI(un84_sop_0_0_0_0_5[2]),
	.CI(un84_sop_1_7_cry_1),
	.S(un84_sop_1_7_axb_2),
	.LO(un84_sop_1_7_cry_2)
);
// @8:30
  XORCY un84_sop_1_7_s_1 (
	.LI(un84_sop_1_7_axb_1),
	.CI(un84_sop_1_7_cry_0),
	.O(un84_sop_1_7[1])
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_1_cZ (
	.DI(un84_sop_0_0_0_0_5[1]),
	.CI(un84_sop_1_7_cry_0),
	.S(un84_sop_1_7_axb_1),
	.LO(un84_sop_1_7_cry_1)
);
// @8:30
  MUXCY_L un84_sop_1_7_cry_0_cZ (
	.DI(un84_sop_0_0_0_0_5[0]),
	.CI(GND),
	.S(un84_sop_1_7[0]),
	.LO(un84_sop_1_7_cry_0)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_14 (
	.LI(un84_sop_0_0_0_1_6_axb_14),
	.CI(un84_sop_0_0_0_1_6_cry_13),
	.O(un84_sop_0_0_0_5_0[14])
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_13 (
	.LI(un84_sop_0_0_0_1_6_axb_13),
	.CI(un84_sop_0_0_0_1_6_cry_12),
	.O(un84_sop_0_0_0_5_0[13])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_13_cZ (
	.DI(un84_sop_0_0_0_1_6_4[13]),
	.CI(un84_sop_0_0_0_1_6_cry_12),
	.S(un84_sop_0_0_0_1_6_axb_13),
	.LO(un84_sop_0_0_0_1_6_cry_13)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_12 (
	.LI(un84_sop_0_0_0_1_6_axb_12),
	.CI(un84_sop_0_0_0_1_6_cry_11),
	.O(un84_sop_0_0_0_5_0[12])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_12_cZ (
	.DI(un84_sop_0_0_0_1_6_4[12]),
	.CI(un84_sop_0_0_0_1_6_cry_11),
	.S(un84_sop_0_0_0_1_6_axb_12),
	.LO(un84_sop_0_0_0_1_6_cry_12)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_11 (
	.LI(un84_sop_0_0_0_1_6_axb_11),
	.CI(un84_sop_0_0_0_1_6_cry_10),
	.O(un84_sop_0_0_0_5_0[11])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_11_cZ (
	.DI(un84_sop_0_0_0_1_6_4[11]),
	.CI(un84_sop_0_0_0_1_6_cry_10),
	.S(un84_sop_0_0_0_1_6_axb_11),
	.LO(un84_sop_0_0_0_1_6_cry_11)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_10 (
	.LI(un84_sop_0_0_0_1_6_axb_10),
	.CI(un84_sop_0_0_0_1_6_cry_9),
	.O(un84_sop_0_0_0_5_0[10])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_10_cZ (
	.DI(un84_sop_0_0_0_1_6_4[10]),
	.CI(un84_sop_0_0_0_1_6_cry_9),
	.S(un84_sop_0_0_0_1_6_axb_10),
	.LO(un84_sop_0_0_0_1_6_cry_10)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_9 (
	.LI(un84_sop_0_0_0_1_6_axb_9),
	.CI(un84_sop_0_0_0_1_6_cry_8),
	.O(un84_sop_0_0_0_5_0[9])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_9_cZ (
	.DI(un84_sop_0_0_0_1_6_4[9]),
	.CI(un84_sop_0_0_0_1_6_cry_8),
	.S(un84_sop_0_0_0_1_6_axb_9),
	.LO(un84_sop_0_0_0_1_6_cry_9)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_8 (
	.LI(un84_sop_0_0_0_1_6_axb_8),
	.CI(un84_sop_0_0_0_1_6_cry_7),
	.O(un84_sop_0_0_0_5_0[8])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_8_cZ (
	.DI(un84_sop_0_0_0_1_6_4[8]),
	.CI(un84_sop_0_0_0_1_6_cry_7),
	.S(un84_sop_0_0_0_1_6_axb_8),
	.LO(un84_sop_0_0_0_1_6_cry_8)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_7 (
	.LI(un84_sop_0_0_0_1_6_axb_7),
	.CI(un84_sop_0_0_0_1_6_cry_6),
	.O(un84_sop_0_0_0_5_0[7])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_7_cZ (
	.DI(un84_sop_0_0_0_1_6_4[7]),
	.CI(un84_sop_0_0_0_1_6_cry_6),
	.S(un84_sop_0_0_0_1_6_axb_7),
	.LO(un84_sop_0_0_0_1_6_cry_7)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_6 (
	.LI(un84_sop_0_0_0_1_6_axb_6),
	.CI(un84_sop_0_0_0_1_6_cry_5),
	.O(un84_sop_0_0_0_5_0[6])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_6_cZ (
	.DI(un84_sop_0_0_0_1_6_4[6]),
	.CI(un84_sop_0_0_0_1_6_cry_5),
	.S(un84_sop_0_0_0_1_6_axb_6),
	.LO(un84_sop_0_0_0_1_6_cry_6)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_5 (
	.LI(un84_sop_0_0_0_1_6_axb_5),
	.CI(un84_sop_0_0_0_1_6_cry_4),
	.O(un84_sop_0_0_0_5_0[5])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_5_cZ (
	.DI(un84_sop_0_0_0_1_6_4[5]),
	.CI(un84_sop_0_0_0_1_6_cry_4),
	.S(un84_sop_0_0_0_1_6_axb_5),
	.LO(un84_sop_0_0_0_1_6_cry_5)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_4 (
	.LI(un84_sop_0_0_0_1_6_axb_4),
	.CI(un84_sop_0_0_0_1_6_cry_3),
	.O(un84_sop_0_0_0_5_0[4])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_4_cZ (
	.DI(un84_sop_0_0_0_1_6_4[4]),
	.CI(un84_sop_0_0_0_1_6_cry_3),
	.S(un84_sop_0_0_0_1_6_axb_4),
	.LO(un84_sop_0_0_0_1_6_cry_4)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_3 (
	.LI(un84_sop_0_0_0_1_6_axb_3),
	.CI(un84_sop_0_0_0_1_6_cry_2),
	.O(un84_sop_0_0_0_5_0[3])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_3_cZ (
	.DI(un84_sop_0_0_0_1_6_4[3]),
	.CI(un84_sop_0_0_0_1_6_cry_2),
	.S(un84_sop_0_0_0_1_6_axb_3),
	.LO(un84_sop_0_0_0_1_6_cry_3)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_2 (
	.LI(un84_sop_0_0_0_1_6_axb_2),
	.CI(un84_sop_0_0_0_1_6_cry_1),
	.O(un84_sop_0_0_0_5_0[2])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_2_cZ (
	.DI(un84_sop_0_0_0_1_6_4[2]),
	.CI(un84_sop_0_0_0_1_6_cry_1),
	.S(un84_sop_0_0_0_1_6_axb_2),
	.LO(un84_sop_0_0_0_1_6_cry_2)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_s_1 (
	.LI(un84_sop_0_0_0_1_6_axb_1),
	.CI(un84_sop_0_0_0_1_6_cry_0),
	.O(un84_sop_0_0_0_5_0[1])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_1_cZ (
	.DI(un84_sop_0_0_0_1_6_4[1]),
	.CI(un84_sop_0_0_0_1_6_cry_0),
	.S(un84_sop_0_0_0_1_6_axb_1),
	.LO(un84_sop_0_0_0_1_6_cry_1)
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_cry_0_cZ (
	.DI(un84_sop_0_0_0_1_6_6[0]),
	.CI(GND),
	.S(un84_sop_0_0_0_5_0[0]),
	.LO(un84_sop_0_0_0_1_6_cry_0)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_14 (
	.LI(un84_sop_0_0_0_1_6_4_axb_14),
	.CI(un84_sop_0_0_0_1_6_4_cry_13),
	.O(un84_sop_0_0_0_1_6_4[14])
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_13 (
	.LI(un84_sop_0_0_0_1_6_4_axb_13),
	.CI(un84_sop_0_0_0_1_6_4_cry_12),
	.O(un84_sop_0_0_0_1_6_4[13])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_13_cZ (
	.DI(un84_sop_0_0_0_1_6_8[13]),
	.CI(un84_sop_0_0_0_1_6_4_cry_12),
	.S(un84_sop_0_0_0_1_6_4_axb_13),
	.LO(un84_sop_0_0_0_1_6_4_cry_13)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_12 (
	.LI(un84_sop_0_0_0_1_6_4_axb_12),
	.CI(un84_sop_0_0_0_1_6_4_cry_11),
	.O(un84_sop_0_0_0_1_6_4[12])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_12_cZ (
	.DI(un84_sop_0_0_0_1_6_8[12]),
	.CI(un84_sop_0_0_0_1_6_4_cry_11),
	.S(un84_sop_0_0_0_1_6_4_axb_12),
	.LO(un84_sop_0_0_0_1_6_4_cry_12)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_11 (
	.LI(un84_sop_0_0_0_1_6_4_axb_11),
	.CI(un84_sop_0_0_0_1_6_4_cry_10),
	.O(un84_sop_0_0_0_1_6_4[11])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_11_cZ (
	.DI(un84_sop_0_0_0_1_6_8[11]),
	.CI(un84_sop_0_0_0_1_6_4_cry_10),
	.S(un84_sop_0_0_0_1_6_4_axb_11),
	.LO(un84_sop_0_0_0_1_6_4_cry_11)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_10 (
	.LI(un84_sop_0_0_0_1_6_4_axb_10),
	.CI(un84_sop_0_0_0_1_6_4_cry_9),
	.O(un84_sop_0_0_0_1_6_4[10])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_10_cZ (
	.DI(un84_sop_0_0_0_1_6_8[10]),
	.CI(un84_sop_0_0_0_1_6_4_cry_9),
	.S(un84_sop_0_0_0_1_6_4_axb_10),
	.LO(un84_sop_0_0_0_1_6_4_cry_10)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_9 (
	.LI(un84_sop_0_0_0_1_6_4_axb_9),
	.CI(un84_sop_0_0_0_1_6_4_cry_8),
	.O(un84_sop_0_0_0_1_6_4[9])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_9_cZ (
	.DI(un84_sop_0_0_0_1_6_8[9]),
	.CI(un84_sop_0_0_0_1_6_4_cry_8),
	.S(un84_sop_0_0_0_1_6_4_axb_9),
	.LO(un84_sop_0_0_0_1_6_4_cry_9)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_8 (
	.LI(un84_sop_0_0_0_1_6_4_axb_8),
	.CI(un84_sop_0_0_0_1_6_4_cry_7),
	.O(un84_sop_0_0_0_1_6_4[8])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_8_cZ (
	.DI(un84_sop_0_0_0_1_6_8[8]),
	.CI(un84_sop_0_0_0_1_6_4_cry_7),
	.S(un84_sop_0_0_0_1_6_4_axb_8),
	.LO(un84_sop_0_0_0_1_6_4_cry_8)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_7 (
	.LI(un84_sop_0_0_0_1_6_4_axb_7),
	.CI(un84_sop_0_0_0_1_6_4_cry_6),
	.O(un84_sop_0_0_0_1_6_4[7])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_7_cZ (
	.DI(un84_sop_0_0_0_1_6_8[7]),
	.CI(un84_sop_0_0_0_1_6_4_cry_6),
	.S(un84_sop_0_0_0_1_6_4_axb_7),
	.LO(un84_sop_0_0_0_1_6_4_cry_7)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_6 (
	.LI(un84_sop_0_0_0_1_6_4_axb_6),
	.CI(un84_sop_0_0_0_1_6_4_cry_5),
	.O(un84_sop_0_0_0_1_6_4[6])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_6_cZ (
	.DI(un84_sop_0_0_0_1_6_8[6]),
	.CI(un84_sop_0_0_0_1_6_4_cry_5),
	.S(un84_sop_0_0_0_1_6_4_axb_6),
	.LO(un84_sop_0_0_0_1_6_4_cry_6)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_5 (
	.LI(un84_sop_0_0_0_1_6_4_axb_5),
	.CI(un84_sop_0_0_0_1_6_4_cry_4),
	.O(un84_sop_0_0_0_1_6_4[5])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_5_cZ (
	.DI(un84_sop_0_0_0_1_6_8[5]),
	.CI(un84_sop_0_0_0_1_6_4_cry_4),
	.S(un84_sop_0_0_0_1_6_4_axb_5),
	.LO(un84_sop_0_0_0_1_6_4_cry_5)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_4 (
	.LI(un84_sop_0_0_0_1_6_4_axb_4),
	.CI(un84_sop_0_0_0_1_6_4_cry_3),
	.O(un84_sop_0_0_0_1_6_4[4])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_4_cZ (
	.DI(un84_sop_0_0_0_1_6_8[4]),
	.CI(un84_sop_0_0_0_1_6_4_cry_3),
	.S(un84_sop_0_0_0_1_6_4_axb_4),
	.LO(un84_sop_0_0_0_1_6_4_cry_4)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_3 (
	.LI(un84_sop_0_0_0_1_6_4_axb_3),
	.CI(un84_sop_0_0_0_1_6_4_cry_2),
	.O(un84_sop_0_0_0_1_6_4[3])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_3_cZ (
	.DI(un1_x_6_0[4]),
	.CI(un84_sop_0_0_0_1_6_4_cry_2),
	.S(un84_sop_0_0_0_1_6_4_axb_3),
	.LO(un84_sop_0_0_0_1_6_4_cry_3)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_2 (
	.LI(un84_sop_0_0_0_1_6_4_axb_2),
	.CI(un84_sop_0_0_0_1_6_4_cry_1),
	.O(un84_sop_0_0_0_1_6_4[2])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_2_cZ (
	.DI(un1_x_6_0[3]),
	.CI(un84_sop_0_0_0_1_6_4_cry_1),
	.S(un84_sop_0_0_0_1_6_4_axb_2),
	.LO(un84_sop_0_0_0_1_6_4_cry_2)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_4_s_1 (
	.LI(un84_sop_0_0_0_1_6_4_axb_1),
	.CI(un84_sop_0_0_0_1_6_4_cry_0),
	.O(un84_sop_0_0_0_1_6_4[1])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_1_cZ (
	.DI(un1_x_6_0[2]),
	.CI(un84_sop_0_0_0_1_6_4_cry_0),
	.S(un84_sop_0_0_0_1_6_4_axb_1),
	.LO(un84_sop_0_0_0_1_6_4_cry_1)
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_4_cry_0_cZ (
	.DI(un1_x_6_0[1]),
	.CI(GND),
	.S(un84_sop_0_0_0_1_6_4[0]),
	.LO(un84_sop_0_0_0_1_6_4_cry_0)
);
// @8:30
  XORCY un1_x_10_s_11 (
	.LI(un1_x_10_axb_11),
	.CI(un1_x_10_cry_10),
	.O(un1_x_10_0_0[15])
);
// @8:30
  XORCY un1_x_10_s_10 (
	.LI(un1_x_10_axb_10),
	.CI(un1_x_10_cry_9),
	.O(un1_x_10_0_0[14])
);
// @8:30
  MUXCY_L un1_x_10_cry_10_cZ (
	.DI(un1_x_10_4[10]),
	.CI(un1_x_10_cry_9),
	.S(un1_x_10_axb_10),
	.LO(un1_x_10_cry_10)
);
// @8:30
  XORCY un1_x_10_s_9 (
	.LI(un1_x_10_axb_9),
	.CI(un1_x_10_cry_8),
	.O(un1_x_10_0_0[13])
);
// @8:30
  MUXCY_L un1_x_10_cry_9_cZ (
	.DI(un1_x_10_4[9]),
	.CI(un1_x_10_cry_8),
	.S(un1_x_10_axb_9),
	.LO(un1_x_10_cry_9)
);
// @8:30
  XORCY un1_x_10_s_8 (
	.LI(un1_x_10_axb_8),
	.CI(un1_x_10_cry_7),
	.O(un1_x_10_0_0[12])
);
// @8:30
  MUXCY_L un1_x_10_cry_8_cZ (
	.DI(un1_x_10_4[8]),
	.CI(un1_x_10_cry_7),
	.S(un1_x_10_axb_8),
	.LO(un1_x_10_cry_8)
);
// @8:30
  XORCY un1_x_10_s_7 (
	.LI(un1_x_10_axb_7),
	.CI(un1_x_10_cry_6),
	.O(un1_x_10_0_0[11])
);
// @8:30
  MUXCY_L un1_x_10_cry_7_cZ (
	.DI(un1_x_10_4[7]),
	.CI(un1_x_10_cry_6),
	.S(un1_x_10_axb_7),
	.LO(un1_x_10_cry_7)
);
// @8:30
  XORCY un1_x_10_s_6 (
	.LI(un1_x_10_axb_6),
	.CI(un1_x_10_cry_5),
	.O(un1_x_10_0_0[10])
);
// @8:30
  MUXCY_L un1_x_10_cry_6_cZ (
	.DI(un1_x_10_4[6]),
	.CI(un1_x_10_cry_5),
	.S(un1_x_10_axb_6),
	.LO(un1_x_10_cry_6)
);
// @8:30
  XORCY un1_x_10_s_5 (
	.LI(un1_x_10_axb_5),
	.CI(un1_x_10_cry_4),
	.O(un1_x_10_0_0[9])
);
// @8:30
  MUXCY_L un1_x_10_cry_5_cZ (
	.DI(un1_x_10_4[5]),
	.CI(un1_x_10_cry_4),
	.S(un1_x_10_axb_5),
	.LO(un1_x_10_cry_5)
);
// @8:30
  XORCY un1_x_10_s_4 (
	.LI(un1_x_10_axb_4),
	.CI(un1_x_10_cry_3),
	.O(un1_x_10_0_0[8])
);
// @8:30
  MUXCY_L un1_x_10_cry_4_cZ (
	.DI(un1_x_10_4[4]),
	.CI(un1_x_10_cry_3),
	.S(un1_x_10_axb_4),
	.LO(un1_x_10_cry_4)
);
// @8:30
  MUXCY_L un1_x_10_cry_3_cZ (
	.DI(un1_x_10_4[3]),
	.CI(GND),
	.S(un1_x_10_axb_3),
	.LO(un1_x_10_cry_3)
);
// @8:30
  XORCY un84_sop_1_6_0_s_13 (
	.LI(un84_sop_1_6_0_axb_13),
	.CI(un84_sop_1_6_0_cry_12),
	.O(un84_sop_1_6[14])
);
// @8:30
  XORCY un84_sop_1_6_0_s_12 (
	.LI(un84_sop_1_6_0_axb_12),
	.CI(un84_sop_1_6_0_cry_11),
	.O(un84_sop_1_6[12])
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_12_cZ (
	.DI(un84_sop_1_6_0_o5_11),
	.CI(un84_sop_1_6_0_cry_11),
	.S(un84_sop_1_6_0_axb_12),
	.LO(un84_sop_1_6_0_cry_12)
);
// @8:30
  XORCY un84_sop_1_6_0_s_11 (
	.LI(un84_sop_1_6_0_axb_11),
	.CI(un84_sop_1_6_0_cry_10),
	.O(un84_sop_1_6[11])
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_11_cZ (
	.DI(un84_sop_1_6_0_o5_10),
	.CI(un84_sop_1_6_0_cry_10),
	.S(un84_sop_1_6_0_axb_11),
	.LO(un84_sop_1_6_0_cry_11)
);
// @8:30
  XORCY un84_sop_1_6_0_s_10 (
	.LI(un84_sop_1_6_0_axb_10),
	.CI(un84_sop_1_6_0_cry_9),
	.O(un84_sop_1_6[10])
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_10_cZ (
	.DI(un84_sop_1_6_0_o5_9),
	.CI(un84_sop_1_6_0_cry_9),
	.S(un84_sop_1_6_0_axb_10),
	.LO(un84_sop_1_6_0_cry_10)
);
// @8:30
  XORCY un84_sop_1_6_0_s_9 (
	.LI(un84_sop_1_6_0_axb_9),
	.CI(un84_sop_1_6_0_cry_8),
	.O(un84_sop_1_6[9])
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_9_cZ (
	.DI(un84_sop_1_6_0_o5_8),
	.CI(un84_sop_1_6_0_cry_8),
	.S(un84_sop_1_6_0_axb_9),
	.LO(un84_sop_1_6_0_cry_9)
);
// @8:30
  XORCY un84_sop_1_6_0_s_8 (
	.LI(un84_sop_1_6_0_axb_8),
	.CI(un84_sop_1_6_0_cry_7),
	.O(un84_sop_1_6[8])
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_8_cZ (
	.DI(un84_sop_1_6_0_o5_7),
	.CI(un84_sop_1_6_0_cry_7),
	.S(un84_sop_1_6_0_axb_8),
	.LO(un84_sop_1_6_0_cry_8)
);
// @8:30
  XORCY un84_sop_1_6_0_s_7 (
	.LI(un84_sop_1_6_0_axb_7),
	.CI(un84_sop_1_6_0_cry_6),
	.O(un84_sop_1_6[7])
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_7_cZ (
	.DI(un84_sop_1_6_0_o5_6),
	.CI(un84_sop_1_6_0_cry_6),
	.S(un84_sop_1_6_0_axb_7),
	.LO(un84_sop_1_6_0_cry_7)
);
// @8:30
  XORCY un84_sop_1_6_0_s_6 (
	.LI(un84_sop_1_6_0_axb_6),
	.CI(un84_sop_1_6_0_cry_5),
	.O(un84_sop_1_6[6])
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_6_cZ (
	.DI(un84_sop_1_6_0_o5_5),
	.CI(un84_sop_1_6_0_cry_5),
	.S(un84_sop_1_6_0_axb_6),
	.LO(un84_sop_1_6_0_cry_6)
);
// @8:30
  XORCY un84_sop_1_6_0_s_5 (
	.LI(un84_sop_1_6_0_axb_5),
	.CI(un84_sop_1_6_0_cry_4),
	.O(un84_sop_1_6[5])
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_5_cZ (
	.DI(un84_sop_1_6_0_o5_4),
	.CI(un84_sop_1_6_0_cry_4),
	.S(un84_sop_1_6_0_axb_5),
	.LO(un84_sop_1_6_0_cry_5)
);
// @8:30
  XORCY un84_sop_1_6_0_s_4 (
	.LI(un84_sop_1_6_0_axb_4),
	.CI(un84_sop_1_6_0_cry_3),
	.O(un84_sop_1_6[4])
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_4_cZ (
	.DI(un84_sop_1_6_0_o5_3),
	.CI(un84_sop_1_6_0_cry_3),
	.S(un84_sop_1_6_0_axb_4),
	.LO(un84_sop_1_6_0_cry_4)
);
// @8:30
  XORCY un84_sop_1_6_0_s_3 (
	.LI(un84_sop_1_6_0_axb_3),
	.CI(un84_sop_1_6_0_cry_2),
	.O(un84_sop_1_6[3])
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_3_cZ (
	.DI(un84_sop_1_6_0_o5_2),
	.CI(un84_sop_1_6_0_cry_2),
	.S(un84_sop_1_6_0_axb_3),
	.LO(un84_sop_1_6_0_cry_3)
);
// @8:30
  XORCY un84_sop_1_6_0_s_2 (
	.LI(un84_sop_1_6_0_axb_2),
	.CI(un84_sop_1_6_0_cry_1),
	.O(un84_sop_1_6[2])
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_2_cZ (
	.DI(un84_sop_1_6_0_axb_1_lut6_2_O5),
	.CI(un84_sop_1_6_0_cry_1),
	.S(un84_sop_1_6_0_axb_2),
	.LO(un84_sop_1_6_0_cry_2)
);
// @8:30
  XORCY un84_sop_1_6_0_s_1 (
	.LI(un84_sop_1_6_0_axb_1),
	.CI(un84_sop_1_6_0_cry_0),
	.O(un84_sop_1_6[1])
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_1_cZ (
	.DI(GND),
	.CI(un84_sop_1_6_0_cry_0),
	.S(un84_sop_1_6_0_axb_1),
	.LO(un84_sop_1_6_0_cry_1)
);
// @8:30
  MUXCY_L un84_sop_1_6_0_cry_0_cZ (
	.DI(un1_x_2[5]),
	.CI(un84_sop_1_6_0_cry_0_cy),
	.S(un84_sop_1_6_0_axb_0_0),
	.LO(un84_sop_1_6_0_cry_0)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_8_s_11 (
	.LI(un84_sop_0_0_0_1_6_8_axb_11),
	.CI(un84_sop_0_0_0_1_6_8_cry_10),
	.O(un84_sop_0_0_0_1_6_8[14])
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_8_s_10 (
	.LI(un84_sop_0_0_0_1_6_8_axb_10),
	.CI(un84_sop_0_0_0_1_6_8_cry_9),
	.O(un84_sop_0_0_0_1_6_8[13])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_8_cry_10_cZ (
	.DI(un84_sop_0_0_0_10_0[13]),
	.CI(un84_sop_0_0_0_1_6_8_cry_9),
	.S(un84_sop_0_0_0_1_6_8_axb_10),
	.LO(un84_sop_0_0_0_1_6_8_cry_10)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_8_s_9 (
	.LI(un84_sop_0_0_0_1_6_8_axb_9),
	.CI(un84_sop_0_0_0_1_6_8_cry_8),
	.O(un84_sop_0_0_0_1_6_8[12])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_8_cry_9_cZ (
	.DI(un84_sop_0_0_0_10_0[12]),
	.CI(un84_sop_0_0_0_1_6_8_cry_8),
	.S(un84_sop_0_0_0_1_6_8_axb_9),
	.LO(un84_sop_0_0_0_1_6_8_cry_9)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_8_s_8 (
	.LI(un84_sop_0_0_0_1_6_8_axb_8),
	.CI(un84_sop_0_0_0_1_6_8_cry_7),
	.O(un84_sop_0_0_0_1_6_8[11])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_8_cry_8_cZ (
	.DI(un84_sop_0_0_0_1_6_8_o5_7),
	.CI(un84_sop_0_0_0_1_6_8_cry_7),
	.S(un84_sop_0_0_0_1_6_8_axb_8),
	.LO(un84_sop_0_0_0_1_6_8_cry_8)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_8_s_7 (
	.LI(un84_sop_0_0_0_1_6_8_axb_7),
	.CI(un84_sop_0_0_0_1_6_8_cry_6),
	.O(un84_sop_0_0_0_1_6_8[10])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_8_cry_7_cZ (
	.DI(un84_sop_0_0_0_1_6_8_o5_6),
	.CI(un84_sop_0_0_0_1_6_8_cry_6),
	.S(un84_sop_0_0_0_1_6_8_axb_7),
	.LO(un84_sop_0_0_0_1_6_8_cry_7)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_8_s_6 (
	.LI(un84_sop_0_0_0_1_6_8_axb_6),
	.CI(un84_sop_0_0_0_1_6_8_cry_5),
	.O(un84_sop_0_0_0_1_6_8[9])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_8_cry_6_cZ (
	.DI(un84_sop_0_0_0_1_6_8_o5_5),
	.CI(un84_sop_0_0_0_1_6_8_cry_5),
	.S(un84_sop_0_0_0_1_6_8_axb_6),
	.LO(un84_sop_0_0_0_1_6_8_cry_6)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_8_s_5 (
	.LI(un84_sop_0_0_0_1_6_8_axb_5),
	.CI(un84_sop_0_0_0_1_6_8_cry_4),
	.O(un84_sop_0_0_0_1_6_8[8])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_8_cry_5_cZ (
	.DI(un84_sop_0_0_0_1_6_8_o5_4),
	.CI(un84_sop_0_0_0_1_6_8_cry_4),
	.S(un84_sop_0_0_0_1_6_8_axb_5),
	.LO(un84_sop_0_0_0_1_6_8_cry_5)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_8_s_4 (
	.LI(un84_sop_0_0_0_1_6_8_axb_4),
	.CI(un84_sop_0_0_0_1_6_8_cry_3),
	.O(un84_sop_0_0_0_1_6_8[7])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_8_cry_4_cZ (
	.DI(un84_sop_0_0_0_1_6_8_o5_3),
	.CI(un84_sop_0_0_0_1_6_8_cry_3),
	.S(un84_sop_0_0_0_1_6_8_axb_4),
	.LO(un84_sop_0_0_0_1_6_8_cry_4)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_8_s_3 (
	.LI(un84_sop_0_0_0_1_6_8_axb_3),
	.CI(un84_sop_0_0_0_1_6_8_cry_2),
	.O(un84_sop_0_0_0_1_6_8[6])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_8_cry_3_cZ (
	.DI(un84_sop_0_0_0_1_6_8_axb_2_lut6_2_O5),
	.CI(un84_sop_0_0_0_1_6_8_cry_2),
	.S(un84_sop_0_0_0_1_6_8_axb_3),
	.LO(un84_sop_0_0_0_1_6_8_cry_3)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_8_s_2 (
	.LI(un84_sop_0_0_0_1_6_8_axb_2),
	.CI(un84_sop_0_0_0_1_6_8_cry_1),
	.O(un84_sop_0_0_0_1_6_8[5])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_8_cry_2_cZ (
	.DI(GND),
	.CI(un84_sop_0_0_0_1_6_8_cry_1),
	.S(un84_sop_0_0_0_1_6_8_axb_2),
	.LO(un84_sop_0_0_0_1_6_8_cry_2)
);
// @8:30
  XORCY un84_sop_0_0_0_1_6_8_s_1 (
	.LI(un84_sop_0_0_0_1_6_8_axb_1),
	.CI(un84_sop_0_0_0_1_6_8_cry_0),
	.O(un84_sop_0_0_0_1_6_8[4])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_8_cry_1_cZ (
	.DI(un84_sop_0_0_0_10_0[4]),
	.CI(un84_sop_0_0_0_1_6_8_cry_0),
	.S(un84_sop_0_0_0_1_6_8_axb_1),
	.LO(un84_sop_0_0_0_1_6_8_cry_1)
);
// @8:30
  MUXCY_L un84_sop_0_0_0_1_6_8_cry_0_cZ (
	.DI(un84_sop_0_0_0_10_0[3]),
	.CI(GND),
	.S(un84_sop_0_0_0_1_6_8[3]),
	.LO(un84_sop_0_0_0_1_6_8_cry_0)
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_14 (
	.LI(un84_sop_0_0_0_6_6_0_axb_14),
	.CI(un84_sop_0_0_0_6_6_0_cry_13),
	.O(un84_sop_0_0_0_1_6_6[14])
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_13 (
	.LI(un84_sop_0_0_0_6_6_0_axb_13),
	.CI(un84_sop_0_0_0_6_6_0_cry_12),
	.O(un84_sop_0_0_0_1_6_6[13])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_13_cZ (
	.DI(un84_sop_0_0_0_6_6_0_o5_12),
	.CI(un84_sop_0_0_0_6_6_0_cry_12),
	.S(un84_sop_0_0_0_6_6_0_axb_13),
	.LO(un84_sop_0_0_0_6_6_0_cry_13)
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_12 (
	.LI(un84_sop_0_0_0_6_6_0_axb_12),
	.CI(un84_sop_0_0_0_6_6_0_cry_11),
	.O(un84_sop_0_0_0_1_6_6[12])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_12_cZ (
	.DI(un84_sop_0_0_0_6_6_0_o5_11),
	.CI(un84_sop_0_0_0_6_6_0_cry_11),
	.S(un84_sop_0_0_0_6_6_0_axb_12),
	.LO(un84_sop_0_0_0_6_6_0_cry_12)
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_11 (
	.LI(un84_sop_0_0_0_6_6_0_axb_11),
	.CI(un84_sop_0_0_0_6_6_0_cry_10),
	.O(un84_sop_0_0_0_1_6_6[11])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_11_cZ (
	.DI(un84_sop_0_0_0_6_6_0_o5_10),
	.CI(un84_sop_0_0_0_6_6_0_cry_10),
	.S(un84_sop_0_0_0_6_6_0_axb_11),
	.LO(un84_sop_0_0_0_6_6_0_cry_11)
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_10 (
	.LI(un84_sop_0_0_0_6_6_0_axb_10),
	.CI(un84_sop_0_0_0_6_6_0_cry_9),
	.O(un84_sop_0_0_0_1_6_6[10])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_10_cZ (
	.DI(un84_sop_0_0_0_6_6_0_o5_9),
	.CI(un84_sop_0_0_0_6_6_0_cry_9),
	.S(un84_sop_0_0_0_6_6_0_axb_10),
	.LO(un84_sop_0_0_0_6_6_0_cry_10)
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_9 (
	.LI(un84_sop_0_0_0_6_6_0_axb_9),
	.CI(un84_sop_0_0_0_6_6_0_cry_8),
	.O(un84_sop_0_0_0_1_6_6[9])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_9_cZ (
	.DI(un84_sop_0_0_0_6_6_0_o5_8),
	.CI(un84_sop_0_0_0_6_6_0_cry_8),
	.S(un84_sop_0_0_0_6_6_0_axb_9),
	.LO(un84_sop_0_0_0_6_6_0_cry_9)
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_8 (
	.LI(un84_sop_0_0_0_6_6_0_axb_8),
	.CI(un84_sop_0_0_0_6_6_0_cry_7),
	.O(un84_sop_0_0_0_1_6_6[8])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_8_cZ (
	.DI(un84_sop_0_0_0_6_6_0_o5_7),
	.CI(un84_sop_0_0_0_6_6_0_cry_7),
	.S(un84_sop_0_0_0_6_6_0_axb_8),
	.LO(un84_sop_0_0_0_6_6_0_cry_8)
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_7 (
	.LI(un84_sop_0_0_0_6_6_0_axb_7),
	.CI(un84_sop_0_0_0_6_6_0_cry_6),
	.O(un84_sop_0_0_0_1_6_6[7])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_7_cZ (
	.DI(un84_sop_0_0_0_6_6_0_o5_6),
	.CI(un84_sop_0_0_0_6_6_0_cry_6),
	.S(un84_sop_0_0_0_6_6_0_axb_7),
	.LO(un84_sop_0_0_0_6_6_0_cry_7)
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_6 (
	.LI(un84_sop_0_0_0_6_6_0_axb_6),
	.CI(un84_sop_0_0_0_6_6_0_cry_5),
	.O(un84_sop_0_0_0_1_6_6[6])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_6_cZ (
	.DI(un84_sop_0_0_0_6_6_0_o5_5),
	.CI(un84_sop_0_0_0_6_6_0_cry_5),
	.S(un84_sop_0_0_0_6_6_0_axb_6),
	.LO(un84_sop_0_0_0_6_6_0_cry_6)
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_5 (
	.LI(un84_sop_0_0_0_6_6_0_axb_5),
	.CI(un84_sop_0_0_0_6_6_0_cry_4),
	.O(un84_sop_0_0_0_1_6_6[5])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_5_cZ (
	.DI(un84_sop_0_0_0_6_6_0_o5_4),
	.CI(un84_sop_0_0_0_6_6_0_cry_4),
	.S(un84_sop_0_0_0_6_6_0_axb_5),
	.LO(un84_sop_0_0_0_6_6_0_cry_5)
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_4 (
	.LI(un84_sop_0_0_0_6_6_0_axb_4),
	.CI(un84_sop_0_0_0_6_6_0_cry_3),
	.O(un84_sop_0_0_0_1_6_6[4])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_4_cZ (
	.DI(un84_sop_0_0_0_6_6_0_o5_3),
	.CI(un84_sop_0_0_0_6_6_0_cry_3),
	.S(un84_sop_0_0_0_6_6_0_axb_4),
	.LO(un84_sop_0_0_0_6_6_0_cry_4)
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_3 (
	.LI(un84_sop_0_0_0_6_6_0_axb_3),
	.CI(un84_sop_0_0_0_6_6_0_cry_2),
	.O(un84_sop_0_0_0_1_6_6[3])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_3_cZ (
	.DI(un84_sop_0_0_0_6_6_0_o5_2),
	.CI(un84_sop_0_0_0_6_6_0_cry_2),
	.S(un84_sop_0_0_0_6_6_0_axb_3),
	.LO(un84_sop_0_0_0_6_6_0_cry_3)
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_2 (
	.LI(un84_sop_0_0_0_6_6_0_axb_2),
	.CI(un84_sop_0_0_0_6_6_0_cry_1),
	.O(un84_sop_0_0_0_1_6_6[2])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_2_cZ (
	.DI(un84_sop_0_0_0_6_6_0_axb_1_lut6_2_O5),
	.CI(un84_sop_0_0_0_6_6_0_cry_1),
	.S(un84_sop_0_0_0_6_6_0_axb_2),
	.LO(un84_sop_0_0_0_6_6_0_cry_2)
);
// @8:30
  XORCY un84_sop_0_0_0_6_6_0_s_1 (
	.LI(un84_sop_0_0_0_6_6_0_axb_1),
	.CI(un84_sop_0_0_0_6_6_0_cry_0),
	.O(un84_sop_0_0_0_1_6_6[1])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_1_cZ (
	.DI(GND),
	.CI(un84_sop_0_0_0_6_6_0_cry_0),
	.S(un84_sop_0_0_0_6_6_0_axb_1),
	.LO(un84_sop_0_0_0_6_6_0_cry_1)
);
// @8:30
  MUXCY_L un84_sop_0_0_0_6_6_0_cry_0_cZ (
	.DI(un1_x_8_0[4]),
	.CI(un84_sop_0_0_0_6_6_0_cry_0_cy),
	.S(un84_sop_0_0_0_6_0_axb_0_1),
	.LO(un84_sop_0_0_0_6_6_0_cry_0)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_14 (
	.LI(un84_sop_0_0_0_11_0_axb_14),
	.CI(un84_sop_0_0_0_11_0_cry_13),
	.O(un84_sop_0_0_0_0_8[14])
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_13 (
	.LI(un84_sop_0_0_0_11_0_axb_13),
	.CI(un84_sop_0_0_0_11_0_cry_12),
	.O(un84_sop_0_0_0_0_8[13])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_13_cZ (
	.DI(un84_sop_0_0_0_11_0_o5_12),
	.CI(un84_sop_0_0_0_11_0_cry_12),
	.S(un84_sop_0_0_0_11_0_axb_13),
	.LO(un84_sop_0_0_0_11_0_cry_13)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_12 (
	.LI(un84_sop_0_0_0_11_0_axb_12),
	.CI(un84_sop_0_0_0_11_0_cry_11),
	.O(un84_sop_0_0_0_0_8[12])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_12_cZ (
	.DI(un84_sop_0_0_0_11_0_o5_11),
	.CI(un84_sop_0_0_0_11_0_cry_11),
	.S(un84_sop_0_0_0_11_0_axb_12),
	.LO(un84_sop_0_0_0_11_0_cry_12)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_11 (
	.LI(un84_sop_0_0_0_11_0_axb_11),
	.CI(un84_sop_0_0_0_11_0_cry_10),
	.O(un84_sop_0_0_0_0_8[11])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_11_cZ (
	.DI(un84_sop_0_0_0_11_0_o5_10),
	.CI(un84_sop_0_0_0_11_0_cry_10),
	.S(un84_sop_0_0_0_11_0_axb_11),
	.LO(un84_sop_0_0_0_11_0_cry_11)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_10 (
	.LI(un84_sop_0_0_0_11_0_axb_10),
	.CI(un84_sop_0_0_0_11_0_cry_9),
	.O(un84_sop_0_0_0_0_8[10])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_10_cZ (
	.DI(un84_sop_0_0_0_11_0_o5_9),
	.CI(un84_sop_0_0_0_11_0_cry_9),
	.S(un84_sop_0_0_0_11_0_axb_10),
	.LO(un84_sop_0_0_0_11_0_cry_10)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_9 (
	.LI(un84_sop_0_0_0_11_0_axb_9),
	.CI(un84_sop_0_0_0_11_0_cry_8),
	.O(un84_sop_0_0_0_0_8[9])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_9_cZ (
	.DI(un84_sop_0_0_0_11_0_o5_8),
	.CI(un84_sop_0_0_0_11_0_cry_8),
	.S(un84_sop_0_0_0_11_0_axb_9),
	.LO(un84_sop_0_0_0_11_0_cry_9)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_8 (
	.LI(un84_sop_0_0_0_11_0_axb_8),
	.CI(un84_sop_0_0_0_11_0_cry_7),
	.O(un84_sop_0_0_0_0_8[8])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_8_cZ (
	.DI(un84_sop_0_0_0_11_0_o5_7),
	.CI(un84_sop_0_0_0_11_0_cry_7),
	.S(un84_sop_0_0_0_11_0_axb_8),
	.LO(un84_sop_0_0_0_11_0_cry_8)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_7 (
	.LI(un84_sop_0_0_0_11_0_axb_7),
	.CI(un84_sop_0_0_0_11_0_cry_6),
	.O(un84_sop_0_0_0_0_8[7])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_7_cZ (
	.DI(un84_sop_0_0_0_11_0_o5_6),
	.CI(un84_sop_0_0_0_11_0_cry_6),
	.S(un84_sop_0_0_0_11_0_axb_7),
	.LO(un84_sop_0_0_0_11_0_cry_7)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_6 (
	.LI(un84_sop_0_0_0_11_0_axb_6),
	.CI(un84_sop_0_0_0_11_0_cry_5),
	.O(un84_sop_0_0_0_0_8[6])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_6_cZ (
	.DI(un84_sop_0_0_0_11_0_o5_5),
	.CI(un84_sop_0_0_0_11_0_cry_5),
	.S(un84_sop_0_0_0_11_0_axb_6),
	.LO(un84_sop_0_0_0_11_0_cry_6)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_5 (
	.LI(un84_sop_0_0_0_11_0_axb_5),
	.CI(un84_sop_0_0_0_11_0_cry_4),
	.O(un84_sop_0_0_0_0_8[5])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_5_cZ (
	.DI(un84_sop_0_0_0_11_0_o5_4),
	.CI(un84_sop_0_0_0_11_0_cry_4),
	.S(un84_sop_0_0_0_11_0_axb_5),
	.LO(un84_sop_0_0_0_11_0_cry_5)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_4 (
	.LI(un84_sop_0_0_0_11_0_axb_4),
	.CI(un84_sop_0_0_0_11_0_cry_3),
	.O(un84_sop_0_0_0_0_8[4])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_4_cZ (
	.DI(un84_sop_0_0_0_11_0_o5_3),
	.CI(un84_sop_0_0_0_11_0_cry_3),
	.S(un84_sop_0_0_0_11_0_axb_4),
	.LO(un84_sop_0_0_0_11_0_cry_4)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_3 (
	.LI(un84_sop_0_0_0_11_0_axb_3),
	.CI(un84_sop_0_0_0_11_0_cry_2),
	.O(un84_sop_0_0_0_0_8[3])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_3_cZ (
	.DI(un84_sop_0_0_0_11_0_o5_2),
	.CI(un84_sop_0_0_0_11_0_cry_2),
	.S(un84_sop_0_0_0_11_0_axb_3),
	.LO(un84_sop_0_0_0_11_0_cry_3)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_2 (
	.LI(un84_sop_0_0_0_11_0_axb_2),
	.CI(un84_sop_0_0_0_11_0_cry_1),
	.O(un84_sop_0_0_0_0_8[2])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_2_cZ (
	.DI(un84_sop_0_0_0_11_0_cry_2_RNO),
	.CI(un84_sop_0_0_0_11_0_cry_1),
	.S(un84_sop_0_0_0_11_0_axb_2),
	.LO(un84_sop_0_0_0_11_0_cry_2)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_1 (
	.LI(un84_sop_0_0_0_11_0_axb_1),
	.CI(un84_sop_0_0_0_11_0_cry_0),
	.O(un84_sop_0_0_0_0_8[1])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_1_cZ (
	.DI(un84_sop_0_0_0_0_11_6[1]),
	.CI(un84_sop_0_0_0_11_0_cry_0),
	.S(un84_sop_0_0_0_11_0_axb_1),
	.LO(un84_sop_0_0_0_11_0_cry_1)
);
// @8:30
  XORCY un84_sop_0_0_0_11_0_s_0 (
	.LI(un84_sop_0_0_0_11_0_axb_0),
	.CI(un84_sop_0_0_0_11_0_cry_0_cy),
	.O(un84_sop_0_0_0_0_8[0])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_0_cry_0_cZ (
	.DI(un84_sop_0_0_0_0_11_6[0]),
	.CI(un84_sop_0_0_0_11_0_cry_0_cy),
	.S(un84_sop_0_0_0_11_0_axb_0),
	.LO(un84_sop_0_0_0_11_0_cry_0)
);
// @8:30
  XORCY un84_sop_0_0_0_11_6_0_s_13 (
	.LI(un84_sop_0_0_0_11_6_0_axb_13),
	.CI(un84_sop_0_0_0_11_6_0_cry_12),
	.O(un84_sop_0_0_0_0_11_6[14])
);
// @8:30
  XORCY un84_sop_0_0_0_11_6_0_s_12 (
	.LI(un84_sop_0_0_0_11_6_0_axb_12),
	.CI(un84_sop_0_0_0_11_6_0_cry_11),
	.O(un84_sop_0_0_0_0_11_6[12])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_12_cZ (
	.DI(un84_sop_0_0_0_11_6_0_o5_11),
	.CI(un84_sop_0_0_0_11_6_0_cry_11),
	.S(un84_sop_0_0_0_11_6_0_axb_12),
	.LO(un84_sop_0_0_0_11_6_0_cry_12)
);
// @8:30
  XORCY un84_sop_0_0_0_11_6_0_s_11 (
	.LI(un84_sop_0_0_0_11_6_0_axb_11),
	.CI(un84_sop_0_0_0_11_6_0_cry_10),
	.O(un84_sop_0_0_0_0_11_6[11])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_11_cZ (
	.DI(un84_sop_0_0_0_11_6_0_o5_10),
	.CI(un84_sop_0_0_0_11_6_0_cry_10),
	.S(un84_sop_0_0_0_11_6_0_axb_11),
	.LO(un84_sop_0_0_0_11_6_0_cry_11)
);
// @8:30
  XORCY un84_sop_0_0_0_11_6_0_s_10 (
	.LI(un84_sop_0_0_0_11_6_0_axb_10),
	.CI(un84_sop_0_0_0_11_6_0_cry_9),
	.O(un84_sop_0_0_0_0_11_6[10])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_10_cZ (
	.DI(un84_sop_0_0_0_11_6_0_o5_9),
	.CI(un84_sop_0_0_0_11_6_0_cry_9),
	.S(un84_sop_0_0_0_11_6_0_axb_10),
	.LO(un84_sop_0_0_0_11_6_0_cry_10)
);
// @8:30
  XORCY un84_sop_0_0_0_11_6_0_s_9 (
	.LI(un84_sop_0_0_0_11_6_0_axb_9),
	.CI(un84_sop_0_0_0_11_6_0_cry_8),
	.O(un84_sop_0_0_0_0_11_6[9])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_9_cZ (
	.DI(un84_sop_0_0_0_11_6_0_o5_8),
	.CI(un84_sop_0_0_0_11_6_0_cry_8),
	.S(un84_sop_0_0_0_11_6_0_axb_9),
	.LO(un84_sop_0_0_0_11_6_0_cry_9)
);
// @8:30
  XORCY un84_sop_0_0_0_11_6_0_s_8 (
	.LI(un84_sop_0_0_0_11_6_0_axb_8),
	.CI(un84_sop_0_0_0_11_6_0_cry_7),
	.O(un84_sop_0_0_0_0_11_6[8])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_8_cZ (
	.DI(un84_sop_0_0_0_11_6_0_o5_7),
	.CI(un84_sop_0_0_0_11_6_0_cry_7),
	.S(un84_sop_0_0_0_11_6_0_axb_8),
	.LO(un84_sop_0_0_0_11_6_0_cry_8)
);
// @8:30
  XORCY un84_sop_0_0_0_11_6_0_s_7 (
	.LI(un84_sop_0_0_0_11_6_0_axb_7),
	.CI(un84_sop_0_0_0_11_6_0_cry_6),
	.O(un84_sop_0_0_0_0_11_6[7])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_7_cZ (
	.DI(un84_sop_0_0_0_11_6_0_o5_6),
	.CI(un84_sop_0_0_0_11_6_0_cry_6),
	.S(un84_sop_0_0_0_11_6_0_axb_7),
	.LO(un84_sop_0_0_0_11_6_0_cry_7)
);
// @8:30
  XORCY un84_sop_0_0_0_11_6_0_s_6 (
	.LI(un84_sop_0_0_0_11_6_0_axb_6),
	.CI(un84_sop_0_0_0_11_6_0_cry_5),
	.O(un84_sop_0_0_0_0_11_6[6])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_6_cZ (
	.DI(un84_sop_0_0_0_11_6_0_o5_5),
	.CI(un84_sop_0_0_0_11_6_0_cry_5),
	.S(un84_sop_0_0_0_11_6_0_axb_6),
	.LO(un84_sop_0_0_0_11_6_0_cry_6)
);
// @8:30
  XORCY un84_sop_0_0_0_11_6_0_s_5 (
	.LI(un84_sop_0_0_0_11_6_0_axb_5),
	.CI(un84_sop_0_0_0_11_6_0_cry_4),
	.O(un84_sop_0_0_0_0_11_6[5])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_5_cZ (
	.DI(un84_sop_0_0_0_11_6_0_o5_4),
	.CI(un84_sop_0_0_0_11_6_0_cry_4),
	.S(un84_sop_0_0_0_11_6_0_axb_5),
	.LO(un84_sop_0_0_0_11_6_0_cry_5)
);
// @8:30
  XORCY un84_sop_0_0_0_11_6_0_s_4 (
	.LI(un84_sop_0_0_0_11_6_0_axb_4),
	.CI(un84_sop_0_0_0_11_6_0_cry_3),
	.O(un84_sop_0_0_0_0_11_6[4])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_4_cZ (
	.DI(un84_sop_0_0_0_11_6_0_o5_3),
	.CI(un84_sop_0_0_0_11_6_0_cry_3),
	.S(un84_sop_0_0_0_11_6_0_axb_4),
	.LO(un84_sop_0_0_0_11_6_0_cry_4)
);
// @8:30
  XORCY un84_sop_0_0_0_11_6_0_s_3 (
	.LI(un84_sop_0_0_0_11_6_0_axb_3),
	.CI(un84_sop_0_0_0_11_6_0_cry_2),
	.O(un84_sop_0_0_0_0_11_6[3])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_3_cZ (
	.DI(un84_sop_0_0_0_11_6_0_o5_2),
	.CI(un84_sop_0_0_0_11_6_0_cry_2),
	.S(un84_sop_0_0_0_11_6_0_axb_3),
	.LO(un84_sop_0_0_0_11_6_0_cry_3)
);
// @8:30
  XORCY un84_sop_0_0_0_11_6_0_s_2 (
	.LI(un84_sop_0_0_0_11_6_0_axb_2),
	.CI(un84_sop_0_0_0_11_6_0_cry_1),
	.O(un84_sop_0_0_0_0_11_6[2])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_2_cZ (
	.DI(un84_sop_0_0_0_11_6_0_axb_1_lut6_2_O5),
	.CI(un84_sop_0_0_0_11_6_0_cry_1),
	.S(un84_sop_0_0_0_11_6_0_axb_2),
	.LO(un84_sop_0_0_0_11_6_0_cry_2)
);
// @8:30
  XORCY un84_sop_0_0_0_11_6_0_s_1 (
	.LI(un84_sop_0_0_0_11_6_0_axb_1),
	.CI(un84_sop_0_0_0_11_6_0_cry_0),
	.O(un84_sop_0_0_0_0_11_6[1])
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_1_cZ (
	.DI(GND),
	.CI(un84_sop_0_0_0_11_6_0_cry_0),
	.S(un84_sop_0_0_0_11_6_0_axb_1),
	.LO(un84_sop_0_0_0_11_6_0_cry_1)
);
// @8:30
  MUXCY_L un84_sop_0_0_0_11_6_0_cry_0_cZ (
	.DI(un1_x_13_0_0[5]),
	.CI(un84_sop_0_0_0_11_6_0_cry_0_cy),
	.S(un84_sop_0_0_0_6_0_axb_0_0),
	.LO(un84_sop_0_0_0_11_6_0_cry_0)
);
// @8:30
  DSP48E1 \un1_x_1[15:4]  (
	.ACOUT(ACOUT[29:0]),
	.BCOUT({x_0_10[7], x_0_9[7], x_0_8[7], x_0_7[7], x_0_6[7], x_0_5[7], x_0_4[7], x_0_3[7], x_0_2[7], x_0_1[7], x_0_0[7:0]}),
	.CARRYCASCOUT(CARRYCASCOUT),
	.CARRYOUT(CARRYOUT[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT),
	.OVERFLOW(OVERFLOW),
	.P({P_uc[47:12], un1_x_1[15:4]}),
	.PATTERNBDETECT(PATTERNBDETECT),
	.PATTERNDETECT(PATTERNDETECT),
	.PCOUT(PCOUT[47:0]),
	.UNDERFLOW(UNDERFLOW),
	.A({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, GND, VCC, VCC}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({x_in[7], x_in[7], x_in[7], x_in[7], x_in[7], x_in[7], x_in[7], x_in[7], x_in[7], x_in[7], x_in[7:0]}),
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
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un1_x_1[15:4] .ACASCREG=0;
defparam \un1_x_1[15:4] .ADREG=0;
defparam \un1_x_1[15:4] .ALUMODEREG=0;
defparam \un1_x_1[15:4] .AREG=0;
defparam \un1_x_1[15:4] .AUTORESET_PATDET="NO_RESET";
defparam \un1_x_1[15:4] .A_INPUT="DIRECT";
defparam \un1_x_1[15:4] .BCASCREG=1;
defparam \un1_x_1[15:4] .BREG=1;
defparam \un1_x_1[15:4] .B_INPUT="DIRECT";
defparam \un1_x_1[15:4] .CARRYINREG=0;
defparam \un1_x_1[15:4] .CARRYINSELREG=0;
defparam \un1_x_1[15:4] .CREG=1;
defparam \un1_x_1[15:4] .DREG=0;
defparam \un1_x_1[15:4] .INMODEREG=0;
defparam \un1_x_1[15:4] .MREG=0;
defparam \un1_x_1[15:4] .OPMODEREG=0;
defparam \un1_x_1[15:4] .PREG=1;
defparam \un1_x_1[15:4] .USE_DPORT="FALSE";
defparam \un1_x_1[15:4] .USE_MULT="MULTIPLY";
defparam \un1_x_1[15:4] .USE_SIMD="ONE48";
// @8:30
  DSP48E1 \un1_x_12[15:4]  (
	.ACOUT(ACOUT_0[29:0]),
	.BCOUT({x_9_10[7], x_9_9[7], x_9_8[7], x_9_7[7], x_9_6[7], x_9_5[7], x_9_4[7], x_9_3[7], x_9_2[7], x_9_1[7], x_9_0[7:0]}),
	.CARRYCASCOUT(CARRYCASCOUT_0),
	.CARRYOUT(CARRYOUT_0[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_0),
	.OVERFLOW(OVERFLOW_0),
	.P({P_uc_0[47:12], un1_x_12_0_0[15:4]}),
	.PATTERNBDETECT(PATTERNBDETECT_0),
	.PATTERNDETECT(PATTERNDETECT_0),
	.PCOUT(PCOUT_0[47:0]),
	.UNDERFLOW(UNDERFLOW_0),
	.A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, VCC, VCC, VCC}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({x_7[7], x_7[7], x_7[7], x_7[7], x_7[7], x_7[7], x_7[7], x_7[7], x_7[7], x_7[7], x_7[7:0]}),
	.BCIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(VCC),
	.CEA2(VCC),
	.CEAD(GND),
	.CEALUMODE(GND),
	.CEB1(VCC),
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
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un1_x_12[15:4] .ACASCREG=2;
defparam \un1_x_12[15:4] .ADREG=0;
defparam \un1_x_12[15:4] .ALUMODEREG=0;
defparam \un1_x_12[15:4] .AREG=2;
defparam \un1_x_12[15:4] .AUTORESET_PATDET="NO_RESET";
defparam \un1_x_12[15:4] .A_INPUT="DIRECT";
defparam \un1_x_12[15:4] .BCASCREG=2;
defparam \un1_x_12[15:4] .BREG=2;
defparam \un1_x_12[15:4] .B_INPUT="DIRECT";
defparam \un1_x_12[15:4] .CARRYINREG=0;
defparam \un1_x_12[15:4] .CARRYINSELREG=0;
defparam \un1_x_12[15:4] .CREG=1;
defparam \un1_x_12[15:4] .DREG=0;
defparam \un1_x_12[15:4] .INMODEREG=0;
defparam \un1_x_12[15:4] .MREG=0;
defparam \un1_x_12[15:4] .OPMODEREG=0;
defparam \un1_x_12[15:4] .PREG=1;
defparam \un1_x_12[15:4] .USE_DPORT="FALSE";
defparam \un1_x_12[15:4] .USE_MULT="MULTIPLY";
defparam \un1_x_12[15:4] .USE_SIMD="ONE48";
// @8:30
  DSP48E1 \un1_x_14[15:4]  (
	.ACOUT(ACOUT_1[29:0]),
	.BCOUT(BCOUT_1[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_1),
	.CARRYOUT(CARRYOUT_1[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_1),
	.OVERFLOW(OVERFLOW_1),
	.P({P_uc_1[47:12], un1_x_14_0_0[15:4]}),
	.PATTERNBDETECT(PATTERNBDETECT_1),
	.PATTERNDETECT(PATTERNDETECT_1),
	.PCOUT(PCOUT_1[47:0]),
	.UNDERFLOW(UNDERFLOW_1),
	.A({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, GND, VCC, VCC}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.BCIN({x_10_10[7], x_10_9[7], x_10_8[7], x_10_7[7], x_10_6[7], x_10_5[7], x_10_4[7], x_10_3[7], x_10_2[7], x_10_1[7], x_10_0[7:0]}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
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
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un1_x_14[15:4] .ACASCREG=0;
defparam \un1_x_14[15:4] .ADREG=0;
defparam \un1_x_14[15:4] .ALUMODEREG=0;
defparam \un1_x_14[15:4] .AREG=0;
defparam \un1_x_14[15:4] .AUTORESET_PATDET="NO_RESET";
defparam \un1_x_14[15:4] .A_INPUT="DIRECT";
defparam \un1_x_14[15:4] .BCASCREG=1;
defparam \un1_x_14[15:4] .BREG=1;
defparam \un1_x_14[15:4] .B_INPUT="CASCADE";
defparam \un1_x_14[15:4] .CARRYINREG=0;
defparam \un1_x_14[15:4] .CARRYINSELREG=0;
defparam \un1_x_14[15:4] .CREG=1;
defparam \un1_x_14[15:4] .DREG=0;
defparam \un1_x_14[15:4] .INMODEREG=0;
defparam \un1_x_14[15:4] .MREG=0;
defparam \un1_x_14[15:4] .OPMODEREG=0;
defparam \un1_x_14[15:4] .PREG=1;
defparam \un1_x_14[15:4] .USE_DPORT="FALSE";
defparam \un1_x_14[15:4] .USE_MULT="MULTIPLY";
defparam \un1_x_14[15:4] .USE_SIMD="ONE48";
// @8:30
  DSP48E1 \un1_x_3[15:4]  (
	.ACOUT(ACOUT_2[29:0]),
	.BCOUT({x_2_10[7], x_2_9[7], x_2_8[7], x_2_7[7], x_2_6[7], x_2_5[7], x_2_4[7], x_2_3[7], x_2_2[7], x_2_1[7], x_2_0[7:0]}),
	.CARRYCASCOUT(CARRYCASCOUT_2),
	.CARRYOUT(CARRYOUT_2[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_2),
	.OVERFLOW(OVERFLOW_2),
	.P({P_uc_2[47:12], un1_x_3[15:4]}),
	.PATTERNBDETECT(PATTERNBDETECT_2),
	.PATTERNDETECT(PATTERNDETECT_2),
	.PCOUT(PCOUT_2[47:0]),
	.UNDERFLOW(UNDERFLOW_2),
	.A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, VCC, VCC, VCC}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.BCIN({x_1_10[7], x_1_9[7], x_1_8[7], x_1_7[7], x_1_6[7], x_1_5[7], x_1_4[7], x_1_3[7], x_1_2[7], x_1_1[7], x_1_0[7:0]}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
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
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un1_x_3[15:4] .ACASCREG=0;
defparam \un1_x_3[15:4] .ADREG=0;
defparam \un1_x_3[15:4] .ALUMODEREG=0;
defparam \un1_x_3[15:4] .AREG=0;
defparam \un1_x_3[15:4] .AUTORESET_PATDET="NO_RESET";
defparam \un1_x_3[15:4] .A_INPUT="DIRECT";
defparam \un1_x_3[15:4] .BCASCREG=1;
defparam \un1_x_3[15:4] .BREG=1;
defparam \un1_x_3[15:4] .B_INPUT="CASCADE";
defparam \un1_x_3[15:4] .CARRYINREG=0;
defparam \un1_x_3[15:4] .CARRYINSELREG=0;
defparam \un1_x_3[15:4] .CREG=1;
defparam \un1_x_3[15:4] .DREG=0;
defparam \un1_x_3[15:4] .INMODEREG=0;
defparam \un1_x_3[15:4] .MREG=0;
defparam \un1_x_3[15:4] .OPMODEREG=0;
defparam \un1_x_3[15:4] .PREG=1;
defparam \un1_x_3[15:4] .USE_DPORT="FALSE";
defparam \un1_x_3[15:4] .USE_MULT="MULTIPLY";
defparam \un1_x_3[15:4] .USE_SIMD="ONE48";
// @8:30
  DSP48E1 \un1_x_8[15:4]  (
	.ACOUT(ACOUT_3[29:0]),
	.BCOUT({x_6_10[7], x_6_9[7], x_6_8[7], x_6_7[7], x_6_6[7], x_6_5[7], x_6_4[7], x_6_3[7], x_6_2[7], x_6_1[7], x_6_0[7:0]}),
	.CARRYCASCOUT(CARRYCASCOUT_3),
	.CARRYOUT(CARRYOUT_3[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_3),
	.OVERFLOW(OVERFLOW_3),
	.P({P_uc_3[47:12], un1_x_8_0[15:4]}),
	.PATTERNBDETECT(PATTERNBDETECT_3),
	.PATTERNDETECT(PATTERNDETECT_3),
	.PCOUT(PCOUT_3[47:0]),
	.UNDERFLOW(UNDERFLOW_3),
	.A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, VCC, VCC, VCC}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.BCIN({x_5_10[7], x_5_9[7], x_5_8[7], x_5_7[7], x_5_6[7], x_5_5[7], x_5_4[7], x_5_3[7], x_5_2[7], x_5_1[7], x_5_0[7:0]}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
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
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un1_x_8[15:4] .ACASCREG=0;
defparam \un1_x_8[15:4] .ADREG=0;
defparam \un1_x_8[15:4] .ALUMODEREG=0;
defparam \un1_x_8[15:4] .AREG=0;
defparam \un1_x_8[15:4] .AUTORESET_PATDET="NO_RESET";
defparam \un1_x_8[15:4] .A_INPUT="DIRECT";
defparam \un1_x_8[15:4] .BCASCREG=1;
defparam \un1_x_8[15:4] .BREG=1;
defparam \un1_x_8[15:4] .B_INPUT="CASCADE";
defparam \un1_x_8[15:4] .CARRYINREG=0;
defparam \un1_x_8[15:4] .CARRYINSELREG=0;
defparam \un1_x_8[15:4] .CREG=1;
defparam \un1_x_8[15:4] .DREG=0;
defparam \un1_x_8[15:4] .INMODEREG=0;
defparam \un1_x_8[15:4] .MREG=0;
defparam \un1_x_8[15:4] .OPMODEREG=0;
defparam \un1_x_8[15:4] .PREG=1;
defparam \un1_x_8[15:4] .USE_DPORT="FALSE";
defparam \un1_x_8[15:4] .USE_MULT="MULTIPLY";
defparam \un1_x_8[15:4] .USE_SIMD="ONE48";
// @8:30
  DSP48E1 \un1_x_6[15:1]  (
	.ACOUT(ACOUT_4[29:0]),
	.BCOUT({x_4_10[7], x_4_9[7], x_4_8[7], x_4_7[7], x_4_6[7], x_4_5[7], x_4_4[7], x_4_3[7], x_4_2[7], x_4_1[7], x_4_0[7:0]}),
	.CARRYCASCOUT(CARRYCASCOUT_4),
	.CARRYOUT(CARRYOUT_4[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_4),
	.OVERFLOW(OVERFLOW_4),
	.P({P_uc_4[47:15], un1_x_6_0[15:1]}),
	.PATTERNBDETECT(PATTERNBDETECT_4),
	.PATTERNDETECT(PATTERNDETECT_4),
	.PCOUT(PCOUT_4[47:0]),
	.UNDERFLOW(UNDERFLOW_4),
	.A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, VCC, GND, VCC, GND, GND, GND}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.BCIN({x_3_10[7], x_3_9[7], x_3_8[7], x_3_7[7], x_3_6[7], x_3_5[7], x_3_4[7], x_3_3[7], x_3_2[7], x_3_1[7], x_3_0[7:0]}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
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
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un1_x_6[15:1] .ACASCREG=0;
defparam \un1_x_6[15:1] .ADREG=0;
defparam \un1_x_6[15:1] .ALUMODEREG=0;
defparam \un1_x_6[15:1] .AREG=0;
defparam \un1_x_6[15:1] .AUTORESET_PATDET="NO_RESET";
defparam \un1_x_6[15:1] .A_INPUT="DIRECT";
defparam \un1_x_6[15:1] .BCASCREG=1;
defparam \un1_x_6[15:1] .BREG=1;
defparam \un1_x_6[15:1] .B_INPUT="CASCADE";
defparam \un1_x_6[15:1] .CARRYINREG=0;
defparam \un1_x_6[15:1] .CARRYINSELREG=0;
defparam \un1_x_6[15:1] .CREG=1;
defparam \un1_x_6[15:1] .DREG=0;
defparam \un1_x_6[15:1] .INMODEREG=0;
defparam \un1_x_6[15:1] .MREG=0;
defparam \un1_x_6[15:1] .OPMODEREG=0;
defparam \un1_x_6[15:1] .PREG=1;
defparam \un1_x_6[15:1] .USE_DPORT="FALSE";
defparam \un1_x_6[15:1] .USE_MULT="MULTIPLY";
defparam \un1_x_6[15:1] .USE_SIMD="ONE48";
// @8:30
  DSP48E1 \un1_x_4[15:2]  (
	.ACOUT(ACOUT_5[29:0]),
	.BCOUT({x_3_10[7], x_3_9[7], x_3_8[7], x_3_7[7], x_3_6[7], x_3_5[7], x_3_4[7], x_3_3[7], x_3_2[7], x_3_1[7], x_3_0[7:0]}),
	.CARRYCASCOUT(CARRYCASCOUT_5),
	.CARRYOUT(CARRYOUT_5[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_5),
	.OVERFLOW(OVERFLOW_5),
	.P({P_uc_5[47:15], P_uc_4[14], un1_x_4[15:2]}),
	.PATTERNBDETECT(PATTERNBDETECT_5),
	.PATTERNDETECT(PATTERNDETECT_5),
	.PCOUT(PCOUT_5[47:0]),
	.UNDERFLOW(UNDERFLOW_5),
	.A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, VCC, VCC, GND, GND, VCC}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.BCIN({x_2_10[7], x_2_9[7], x_2_8[7], x_2_7[7], x_2_6[7], x_2_5[7], x_2_4[7], x_2_3[7], x_2_2[7], x_2_1[7], x_2_0[7:0]}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
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
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un1_x_4[15:2] .ACASCREG=0;
defparam \un1_x_4[15:2] .ADREG=0;
defparam \un1_x_4[15:2] .ALUMODEREG=0;
defparam \un1_x_4[15:2] .AREG=0;
defparam \un1_x_4[15:2] .AUTORESET_PATDET="NO_RESET";
defparam \un1_x_4[15:2] .A_INPUT="DIRECT";
defparam \un1_x_4[15:2] .BCASCREG=1;
defparam \un1_x_4[15:2] .BREG=1;
defparam \un1_x_4[15:2] .B_INPUT="CASCADE";
defparam \un1_x_4[15:2] .CARRYINREG=0;
defparam \un1_x_4[15:2] .CARRYINSELREG=0;
defparam \un1_x_4[15:2] .CREG=1;
defparam \un1_x_4[15:2] .DREG=0;
defparam \un1_x_4[15:2] .INMODEREG=0;
defparam \un1_x_4[15:2] .MREG=0;
defparam \un1_x_4[15:2] .OPMODEREG=0;
defparam \un1_x_4[15:2] .PREG=1;
defparam \un1_x_4[15:2] .USE_DPORT="FALSE";
defparam \un1_x_4[15:2] .USE_MULT="MULTIPLY";
defparam \un1_x_4[15:2] .USE_SIMD="ONE48";
// @8:30
  DSP48E1 \un1_x_7[15:2]  (
	.ACOUT(ACOUT_6[29:0]),
	.BCOUT({x_5_10[7], x_5_9[7], x_5_8[7], x_5_7[7], x_5_6[7], x_5_5[7], x_5_4[7], x_5_3[7], x_5_2[7], x_5_1[7], x_5_0[7:0]}),
	.CARRYCASCOUT(CARRYCASCOUT_6),
	.CARRYOUT(CARRYOUT_6[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_6),
	.OVERFLOW(OVERFLOW_6),
	.P({P_uc_6[47:15], P_uc_5[14], un1_x_7_0[15:2]}),
	.PATTERNBDETECT(PATTERNBDETECT_6),
	.PATTERNDETECT(PATTERNDETECT_6),
	.PCOUT(PCOUT_6[47:0]),
	.UNDERFLOW(UNDERFLOW_6),
	.A({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, VCC, VCC, GND, GND, VCC}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.BCIN({x_4_10[7], x_4_9[7], x_4_8[7], x_4_7[7], x_4_6[7], x_4_5[7], x_4_4[7], x_4_3[7], x_4_2[7], x_4_1[7], x_4_0[7:0]}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
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
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un1_x_7[15:2] .ACASCREG=0;
defparam \un1_x_7[15:2] .ADREG=0;
defparam \un1_x_7[15:2] .ALUMODEREG=0;
defparam \un1_x_7[15:2] .AREG=0;
defparam \un1_x_7[15:2] .AUTORESET_PATDET="NO_RESET";
defparam \un1_x_7[15:2] .A_INPUT="DIRECT";
defparam \un1_x_7[15:2] .BCASCREG=1;
defparam \un1_x_7[15:2] .BREG=1;
defparam \un1_x_7[15:2] .B_INPUT="CASCADE";
defparam \un1_x_7[15:2] .CARRYINREG=0;
defparam \un1_x_7[15:2] .CARRYINSELREG=0;
defparam \un1_x_7[15:2] .CREG=1;
defparam \un1_x_7[15:2] .DREG=0;
defparam \un1_x_7[15:2] .INMODEREG=0;
defparam \un1_x_7[15:2] .MREG=0;
defparam \un1_x_7[15:2] .OPMODEREG=0;
defparam \un1_x_7[15:2] .PREG=1;
defparam \un1_x_7[15:2] .USE_DPORT="FALSE";
defparam \un1_x_7[15:2] .USE_MULT="MULTIPLY";
defparam \un1_x_7[15:2] .USE_SIMD="ONE48";
// @8:30
  DSP48E1 \un1_x_13[15:5]  (
	.ACOUT(ACOUT_7[29:0]),
	.BCOUT({x_10_10[7], x_10_9[7], x_10_8[7], x_10_7[7], x_10_6[7], x_10_5[7], x_10_4[7], x_10_3[7], x_10_2[7], x_10_1[7], x_10_0[7:0]}),
	.CARRYCASCOUT(CARRYCASCOUT_7),
	.CARRYOUT(CARRYOUT_7[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_7),
	.OVERFLOW(OVERFLOW_7),
	.P({P_uc_7[47:15], P_uc_6[14], P_uc_4[13:12], P_uc[11], un1_x_13_0_0[15:5]}),
	.PATTERNBDETECT(PATTERNBDETECT_7),
	.PATTERNDETECT(PATTERNDETECT_7),
	.PCOUT(PCOUT_7[47:0]),
	.UNDERFLOW(UNDERFLOW_7),
	.A({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, GND, VCC}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.BCIN({x_9_10[7], x_9_9[7], x_9_8[7], x_9_7[7], x_9_6[7], x_9_5[7], x_9_4[7], x_9_3[7], x_9_2[7], x_9_1[7], x_9_0[7:0]}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
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
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un1_x_13[15:5] .ACASCREG=0;
defparam \un1_x_13[15:5] .ADREG=0;
defparam \un1_x_13[15:5] .ALUMODEREG=0;
defparam \un1_x_13[15:5] .AREG=0;
defparam \un1_x_13[15:5] .AUTORESET_PATDET="NO_RESET";
defparam \un1_x_13[15:5] .A_INPUT="DIRECT";
defparam \un1_x_13[15:5] .BCASCREG=1;
defparam \un1_x_13[15:5] .BREG=1;
defparam \un1_x_13[15:5] .B_INPUT="CASCADE";
defparam \un1_x_13[15:5] .CARRYINREG=0;
defparam \un1_x_13[15:5] .CARRYINSELREG=0;
defparam \un1_x_13[15:5] .CREG=1;
defparam \un1_x_13[15:5] .DREG=0;
defparam \un1_x_13[15:5] .INMODEREG=0;
defparam \un1_x_13[15:5] .MREG=0;
defparam \un1_x_13[15:5] .OPMODEREG=0;
defparam \un1_x_13[15:5] .PREG=1;
defparam \un1_x_13[15:5] .USE_DPORT="FALSE";
defparam \un1_x_13[15:5] .USE_MULT="MULTIPLY";
defparam \un1_x_13[15:5] .USE_SIMD="ONE48";
// @8:30
  DSP48E1 \un1_x_2[15:5]  (
	.ACOUT(ACOUT_8[29:0]),
	.BCOUT({x_1_10[7], x_1_9[7], x_1_8[7], x_1_7[7], x_1_6[7], x_1_5[7], x_1_4[7], x_1_3[7], x_1_2[7], x_1_1[7], x_1_0[7:0]}),
	.CARRYCASCOUT(CARRYCASCOUT_8),
	.CARRYOUT(CARRYOUT_8[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_8),
	.OVERFLOW(OVERFLOW_8),
	.P({P_uc_8[47:15], P_uc_7[14], P_uc_5[13:12], P_uc_0[11], un1_x_2[15:5]}),
	.PATTERNBDETECT(PATTERNBDETECT_8),
	.PATTERNDETECT(PATTERNDETECT_8),
	.PCOUT(PCOUT_8[47:0]),
	.UNDERFLOW(UNDERFLOW_8),
	.A({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, GND, VCC}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.BCIN({x_0_10[7], x_0_9[7], x_0_8[7], x_0_7[7], x_0_6[7], x_0_5[7], x_0_4[7], x_0_3[7], x_0_2[7], x_0_1[7], x_0_0[7:0]}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
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
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un1_x_2[15:5] .ACASCREG=0;
defparam \un1_x_2[15:5] .ADREG=0;
defparam \un1_x_2[15:5] .ALUMODEREG=0;
defparam \un1_x_2[15:5] .AREG=0;
defparam \un1_x_2[15:5] .AUTORESET_PATDET="NO_RESET";
defparam \un1_x_2[15:5] .A_INPUT="DIRECT";
defparam \un1_x_2[15:5] .BCASCREG=1;
defparam \un1_x_2[15:5] .BREG=1;
defparam \un1_x_2[15:5] .B_INPUT="CASCADE";
defparam \un1_x_2[15:5] .CARRYINREG=0;
defparam \un1_x_2[15:5] .CARRYINSELREG=0;
defparam \un1_x_2[15:5] .CREG=1;
defparam \un1_x_2[15:5] .DREG=0;
defparam \un1_x_2[15:5] .INMODEREG=0;
defparam \un1_x_2[15:5] .MREG=0;
defparam \un1_x_2[15:5] .OPMODEREG=0;
defparam \un1_x_2[15:5] .PREG=1;
defparam \un1_x_2[15:5] .USE_DPORT="FALSE";
defparam \un1_x_2[15:5] .USE_MULT="MULTIPLY";
defparam \un1_x_2[15:5] .USE_SIMD="ONE48";
// @8:30
  DSP48E1 \un1_x_9[15:5]  (
	.ACOUT(ACOUT_9[29:0]),
	.BCOUT(BCOUT_9[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_9),
	.CARRYOUT(CARRYOUT_9[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_9),
	.OVERFLOW(OVERFLOW_9),
	.P({P_uc_9[47:15], P_uc_8[14], P_uc_6[13:12], P_uc_1[11], un1_x_9_0[15:5]}),
	.PATTERNBDETECT(PATTERNBDETECT_9),
	.PATTERNDETECT(PATTERNDETECT_9),
	.PCOUT(PCOUT_9[47:0]),
	.UNDERFLOW(UNDERFLOW_9),
	.A({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, GND, VCC}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.BCIN({x_6_10[7], x_6_9[7], x_6_8[7], x_6_7[7], x_6_6[7], x_6_5[7], x_6_4[7], x_6_3[7], x_6_2[7], x_6_1[7], x_6_0[7:0]}),
	.C({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.CARRYCASCIN(GND),
	.CARRYIN(GND),
	.CARRYINSEL({GND, GND, GND}),
	.CEA1(GND),
	.CEA2(GND),
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
	.RSTB(GND),
	.RSTC(GND),
	.RSTCTRL(GND),
	.RSTD(GND),
	.RSTINMODE(GND),
	.RSTM(GND),
	.RSTP(GND)
);
defparam \un1_x_9[15:5] .ACASCREG=0;
defparam \un1_x_9[15:5] .ADREG=0;
defparam \un1_x_9[15:5] .ALUMODEREG=0;
defparam \un1_x_9[15:5] .AREG=0;
defparam \un1_x_9[15:5] .AUTORESET_PATDET="NO_RESET";
defparam \un1_x_9[15:5] .A_INPUT="DIRECT";
defparam \un1_x_9[15:5] .BCASCREG=1;
defparam \un1_x_9[15:5] .BREG=1;
defparam \un1_x_9[15:5] .B_INPUT="CASCADE";
defparam \un1_x_9[15:5] .CARRYINREG=0;
defparam \un1_x_9[15:5] .CARRYINSELREG=0;
defparam \un1_x_9[15:5] .CREG=1;
defparam \un1_x_9[15:5] .DREG=0;
defparam \un1_x_9[15:5] .INMODEREG=0;
defparam \un1_x_9[15:5] .MREG=0;
defparam \un1_x_9[15:5] .OPMODEREG=0;
defparam \un1_x_9[15:5] .PREG=1;
defparam \un1_x_9[15:5] .USE_DPORT="FALSE";
defparam \un1_x_9[15:5] .USE_MULT="MULTIPLY";
defparam \un1_x_9[15:5] .USE_SIMD="ONE48";
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_axb_1_lut6_2_o6 (
	.I0(un1_x_12_0_0[5]),
	.I1(un1_x_13_0_0[6]),
	.I2(un1_x_14_0_0[5]),
	.O(un84_sop_0_0_0_11_6_0_axb_1)
);
defparam un84_sop_0_0_0_11_6_0_axb_1_lut6_2_o6.INIT=8'h96;
// @8:30
  LUT3 un84_sop_0_0_0_11_6_0_axb_1_lut6_2_o5 (
	.I0(un1_x_12_0_0[5]),
	.I1(un1_x_13_0_0[6]),
	.I2(un1_x_14_0_0[5]),
	.O(un84_sop_0_0_0_11_6_0_axb_1_lut6_2_O5)
);
defparam un84_sop_0_0_0_11_6_0_axb_1_lut6_2_o5.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_axb_1_lut6_2_o6 (
	.I0(un1_x_7_0[3]),
	.I1(un1_x_8_0[5]),
	.I2(un1_x_9_0[6]),
	.O(un84_sop_0_0_0_6_6_0_axb_1)
);
defparam un84_sop_0_0_0_6_6_0_axb_1_lut6_2_o6.INIT=8'h96;
// @8:30
  LUT3 un84_sop_0_0_0_6_6_0_axb_1_lut6_2_o5 (
	.I0(un1_x_7_0[3]),
	.I1(un1_x_8_0[5]),
	.I2(un1_x_9_0[6]),
	.O(un84_sop_0_0_0_6_6_0_axb_1_lut6_2_O5)
);
defparam un84_sop_0_0_0_6_6_0_axb_1_lut6_2_o5.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_0_0_0_1_6_8_axb_2_lut6_2_o6 (
	.I0(un84_sop_0_0_0_10_0[5]),
	.I1(x_4[0]),
	.I2(x_4[2]),
	.O(un84_sop_0_0_0_1_6_8_axb_2)
);
defparam un84_sop_0_0_0_1_6_8_axb_2_lut6_2_o6.INIT=8'h96;
// @8:30
  LUT3 un84_sop_0_0_0_1_6_8_axb_2_lut6_2_o5 (
	.I0(un84_sop_0_0_0_10_0[5]),
	.I1(x_4[0]),
	.I2(x_4[2]),
	.O(un84_sop_0_0_0_1_6_8_axb_2_lut6_2_O5)
);
defparam un84_sop_0_0_0_1_6_8_axb_2_lut6_2_o5.INIT=8'hE8;
// @8:30
  LUT3 un84_sop_1_6_0_axb_1_lut6_2_o6 (
	.I0(un1_x_1[5]),
	.I1(un1_x_2[6]),
	.I2(un1_x_3[5]),
	.O(un84_sop_1_6_0_axb_1)
);
defparam un84_sop_1_6_0_axb_1_lut6_2_o6.INIT=8'h96;
// @8:30
  LUT3 un84_sop_1_6_0_axb_1_lut6_2_o5 (
	.I0(un1_x_1[5]),
	.I1(un1_x_2[6]),
	.I2(un1_x_3[5]),
	.O(un84_sop_1_6_0_axb_1_lut6_2_O5)
);
defparam un84_sop_1_6_0_axb_1_lut6_2_o5.INIT=8'hE8;
endmodule /* fir */

