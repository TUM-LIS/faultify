//
// Written by Synplify
// Product Version "H-2013.03-SP1-1 "
// Program "Synplify Premier", Mapper "map201303sp1_1rc, Build 007R"
// Sat Feb 21 13:19:01 2015
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
// file 8 "\/home/david/projects/faultify_github/faultify/hardware/testcases/fpu100_mul/fpga_sim/xpsLibraryPath_asic/libFaultify/pcores/faultify_axi_wrapper_v1_00_a/hdl/vhdl/faultify_binomial_gen.vhd "

`timescale 100 ps/100 ps
module faultify_binomial_gen (
  clk,
  rst_n,
  seed_in_en,
  seed_in,
  seed_out_c,
  prob_in_en,
  prob_in,
  prob_out_c,
  shift_en,
  data_out,
  data_out_valid
)
;

/*  Synopsys
.origName=faultify_binomial_gen
.langParams="width"
width=32
 */
input clk ;
input rst_n ;
input seed_in_en ;
input seed_in ;
output seed_out_c ;
input prob_in_en ;
input prob_in ;
output prob_out_c ;
input shift_en ;
output data_out ;
output data_out_valid ;
wire clk ;
wire rst_n ;
wire seed_in_en ;
wire seed_in ;
wire seed_out_c ;
wire prob_in_en ;
wire prob_in ;
wire prob_out_c ;
wire shift_en ;
wire data_out ;
wire data_out_valid ;
wire [62:0] prsn_srl;
wire [4:0] cnt;
wire [31:31] prob_srl;
wire [4:0] cnt_4;
wire [0:0] prob_srl_tmp_d_array_0;
wire [0:0] prob_srl_tmp_array_1;
wire [0:0] prsn_srl_tmp_d_array_0;
wire [0:0] prsn_srl_tmp_array_1;
wire [0:0] prsn_srl_tmp_d_array_1;
wire [0:0] prsn_srl_tmp_array_2;
wire done ;
wire VCC ;
wire prob_srl_0_sqmuxa ;
wire prsn_srl_in ;
wire rst_n_i ;
wire done_0 ;
wire data_out_0 ;
wire N_6 ;
wire N_5_i ;
wire g0_0 ;
wire g0_1 ;
wire GND ;
wire prob_srl_in_0 ;
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
// @8:47
  FD \prob_srl_Z[31]  (
	.Q(prob_srl[31]),
	.D(prob_srl_in_0),
	.C(clk)
);
// @8:59
  LUT5 prob_srl_in (
	.I0(prob_in),
	.I1(prob_in_en),
	.I2(prob_out_c),
	.I3(prob_srl[31]),
	.I4(prob_srl_0_sqmuxa),
	.O(prob_srl_in_0)
);
defparam prob_srl_in.INIT=32'hB8B8FF00;
// @8:70
  INV rst_n_RNI6PSF (
	.I(rst_n),
	.O(rst_n_i)
);
// @8:70
  FDC data_out_Z (
	.Q(data_out),
	.D(data_out_0),
	.C(clk),
	.CLR(rst_n_i)
);
// @8:70
  FD done_Z (
	.Q(done),
	.D(done_0),
	.C(clk)
);
// @8:47
  FDE \prsn_srl_Z[0]  (
	.Q(prsn_srl[0]),
	.D(prsn_srl_in),
	.C(clk),
	.CE(prob_srl_0_sqmuxa)
);
// @8:47
  FDE \prsn_srl_Z[60]  (
	.Q(prsn_srl[60]),
	.D(prsn_srl[59]),
	.C(clk),
	.CE(prob_srl_0_sqmuxa)
);
// @8:47
  FDE \prsn_srl_Z[61]  (
	.Q(prsn_srl[61]),
	.D(prsn_srl[60]),
	.C(clk),
	.CE(prob_srl_0_sqmuxa)
);
// @8:47
  FDE \prsn_srl_Z[62]  (
	.Q(prsn_srl[62]),
	.D(prsn_srl[61]),
	.C(clk),
	.CE(prob_srl_0_sqmuxa)
);
// @8:47
  FDE \prsn_srl_Z[63]  (
	.Q(seed_out_c),
	.D(prsn_srl[62]),
	.C(clk),
	.CE(prob_srl_0_sqmuxa)
);
// @8:70
  FDC \cnt_Z[0]  (
	.Q(cnt[0]),
	.D(cnt_4[0]),
	.C(clk),
	.CLR(rst_n_i)
);
// @8:70
  FDC \cnt_Z[1]  (
	.Q(cnt[1]),
	.D(cnt_4[1]),
	.C(clk),
	.CLR(rst_n_i)
);
// @8:70
  FDC \cnt_Z[2]  (
	.Q(cnt[2]),
	.D(cnt_4[2]),
	.C(clk),
	.CLR(rst_n_i)
);
// @8:70
  FDC \cnt_Z[3]  (
	.Q(cnt[3]),
	.D(cnt_4[3]),
	.C(clk),
	.CLR(rst_n_i)
);
// @8:70
  FDC \cnt_Z[4]  (
	.Q(cnt[4]),
	.D(cnt_4[4]),
	.C(clk),
	.CLR(rst_n_i)
);
// @8:47
  FDE \prsn_srl_DOUT_Z[0]  (
	.Q(prsn_srl[59]),
	.D(prsn_srl_tmp_d_array_1[0]),
	.C(clk),
	.CE(prob_srl_0_sqmuxa)
);
// @8:47
  FDE \prob_srl_DOUT_Z[0]  (
	.Q(prob_out_c),
	.D(prob_srl_tmp_d_array_0[0]),
	.C(clk),
	.CE(prob_srl_0_sqmuxa)
);
// @8:47
  SRLC32E prob_srl_prob_srl_1 (
	.Q(prob_srl_tmp_d_array_0[0]),
	.Q31(prob_srl_tmp_array_1[0]),
	.A({VCC, VCC, VCC, GND, VCC}),
	.D(prob_srl[31]),
	.CLK(clk),
	.CE(prob_srl_0_sqmuxa)
);
// @8:47
  SRLC32E prsn_srl_prsn_srl_2 (
	.Q(prsn_srl_tmp_d_array_1[0]),
	.Q31(prsn_srl_tmp_array_2[0]),
	.A({VCC, VCC, GND, GND, VCC}),
	.D(prsn_srl_tmp_array_1[0]),
	.CLK(clk),
	.CE(prob_srl_0_sqmuxa)
);
// @8:47
  SRLC32E prsn_srl_prsn_srl_1 (
	.Q(prsn_srl_tmp_d_array_0[0]),
	.Q31(prsn_srl_tmp_array_1[0]),
	.A({VCC, VCC, VCC, VCC, VCC}),
	.D(prsn_srl[0]),
	.CLK(clk),
	.CE(prob_srl_0_sqmuxa)
);
  LUT2_L done_RNO_2 (
	.I0(cnt[2]),
	.I1(cnt[1]),
	.LO(g0_1)
);
defparam done_RNO_2.INIT=4'h8;
  LUT2 done_RNO_0 (
	.I0(cnt[4]),
	.I1(cnt[3]),
	.O(g0_0)
);
defparam done_RNO_0.INIT=4'h8;
// @8:70
  LUT2 done_RNO_1 (
	.I0(prob_out_c),
	.I1(seed_out_c),
	.O(N_5_i)
);
defparam done_RNO_1.INIT=4'h6;
// @8:70
  LUT6_L done_RNO (
	.I0(N_6),
	.I1(done),
	.I2(cnt[0]),
	.I3(g0_0),
	.I4(N_5_i),
	.I5(g0_1),
	.LO(done_0)
);
defparam done_RNO.INIT=64'h8DDD8CCCDDDDCCCC;
// @8:58
  LUT6_L prsn_srl_in_cZ (
	.I0(seed_in),
	.I1(seed_in_en),
	.I2(prsn_srl[59]),
	.I3(prsn_srl[60]),
	.I4(prsn_srl[62]),
	.I5(seed_out_c),
	.LO(prsn_srl_in)
);
defparam prsn_srl_in_cZ.INIT=64'h8BB8B88BB88B8BB8;
// @8:74
  LUT6_L \cnt_RNO[4]  (
	.I0(shift_en),
	.I1(cnt[4]),
	.I2(cnt[3]),
	.I3(cnt[2]),
	.I4(cnt[1]),
	.I5(cnt[0]),
	.LO(cnt_4[4])
);
defparam \cnt_RNO[4] .INIT=64'h6CCCCCCCCCCCCCCC;
// @8:70
  LUT5_L data_out_e (
	.I0(shift_en),
	.I1(data_out),
	.I2(done),
	.I3(prob_out_c),
	.I4(seed_out_c),
	.LO(data_out_0)
);
defparam data_out_e.INIT=32'hCCC4CECC;
// @8:74
  LUT2 rst_n_RNI37KC1_o6 (
	.I0(shift_en),
	.I1(cnt[0]),
	.O(cnt_4[0])
);
defparam rst_n_RNI37KC1_o6.INIT=4'h6;
// @8:74
  LUT2 rst_n_RNI37KC1_o5 (
	.I0(rst_n),
	.I1(shift_en),
	.O(prob_srl_0_sqmuxa)
);
defparam rst_n_RNI37KC1_o5.INIT=4'h8;
// @8:70
  LUT2 rst_n_RNI0V562_o6 (
	.I0(shift_en),
	.I1(rst_n),
	.O(N_6)
);
defparam rst_n_RNI0V562_o6.INIT=4'h7;
// @8:70
  LUT4 rst_n_RNI0V562_o5 (
	.I0(shift_en),
	.I1(cnt[2]),
	.I2(cnt[1]),
	.I3(cnt[0]),
	.O(cnt_4[2])
);
defparam rst_n_RNI0V562_o5.INIT=16'h6CCC;
// @8:74
  LUT5 \cnt_RNIA3232_o6[3]  (
	.I0(shift_en),
	.I1(cnt[3]),
	.I2(cnt[2]),
	.I3(cnt[1]),
	.I4(cnt[0]),
	.O(cnt_4[3])
);
defparam \cnt_RNIA3232_o6[3] .INIT=32'h6CCCCCCC;
// @8:74
  LUT3 \cnt_RNIA3232_o5[3]  (
	.I0(shift_en),
	.I1(cnt[1]),
	.I2(cnt[0]),
	.O(cnt_4[1])
);
defparam \cnt_RNIA3232_o5[3] .INIT=8'h6C;
assign data_out_valid = GND;
endmodule /* faultify_binomial_gen */

