//
// Written by Synplify
// Product Version "H-2013.03-SP1-1 "
// Program "Synplify Premier", Mapper "map201303sp1_1rc, Build 007R"
// Thu Feb  5 15:49:20 2015
//
// Source file index table:
// Object locations will have the form <file>:<line>
// file 0 "noname"
// file 1 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/xilinx/unisim_m10i.v "
// file 2 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/xilinx/unisim.v "
// file 3 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vlog/umr_capim.v "
// file 4 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vlog/scemi_objects.v "
// file 5 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vlog/scemi_pipes.svh "
// file 6 "\/opt/tools/synopsys/fpga/H-2013.03-SP1/lib/vlog/hypermods.v "
// file 7 "\/home/david/projects/faultify_github/faultify/hardware/testcases/DCT4/src/dct4.v "
// file 8 "\/home/david/projects/faultify_github/faultify/hardware/testcases/DCT4/src/dct_coefs.v "
// file 9 "\/home/david/projects/faultify_github/faultify/hardware/testcases/DCT4/fpga_syn/rev_1/syntmp/multadd.v "
// file 10 "\/home/david/projects/faultify_github/faultify/hardware/testcases/DCT4/fpga_syn/rev_1/syntmp/unisim.v "

`timescale 100 ps/100 ps
module dct4 (
  CK,
  inp,
  outp,
  outi
)
;

/*  Synopsys
.origName=dct4
.langParams="in out csize"
in=8
out=20
csize=12
 */
input CK ;
input [63:0] inp ;
output [19:0] outp ;
output [2:0] outi ;
wire CK ;
wire [2:0] i;
wire [6:3] t5_2;
wire [8:7] t5_1;
wire [9:0] t5_5;
wire [9:0] t5_3;
wire [10:3] t5_4;
wire [19:0] \_l3.un17_t1 ;
wire [19:0] un16_t1_1_1;
wire [19:0] un16_t1_1_0_2;
wire [47:20] P_uc;
wire [29:0] ACOUT;
wire [17:0] BCOUT;
wire [3:0] CARRYOUT;
wire [47:20] P_uc_0;
wire [29:0] ACOUT_0;
wire [17:0] BCOUT_0;
wire [3:0] CARRYOUT_0;
wire [47:20] P_uc_1;
wire [29:0] ACOUT_1;
wire [17:0] BCOUT_1;
wire [3:0] CARRYOUT_1;
wire [47:0] PCOUT_1;
wire [47:20] P_uc_2;
wire [29:0] ACOUT_2;
wire [17:0] BCOUT_2;
wire [3:0] CARRYOUT_2;
wire [19:0] \_l3.un17_t1_0 ;
wire [47:20] P_uc_2_0;
wire [19:0] un16_t1_1_0_2_0;
wire [47:20] P_uc_3;
wire [19:0] un16_t1_1_1_0;
wire [47:20] P_uc_0_0;
wire [8:7] t5_1_i;
wire [0:0] i_i;
wire [0:0] t5_3_i;
wire [2:0] i_fast;
wire VCC ;
wire GND ;
wire un1_i_8_0 ;
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
wire N_101_i ;
wire N_57_i ;
wire N_60_i ;
wire N_62_i ;
wire N_73_i ;
wire un1_i_8_1_i ;
wire \t5_4_6_0_.N_4_i  ;
wire \t5_4_6_0_.N_5_i  ;
wire \t5_4_6_0_.N_7_i  ;
wire \t5_4_6_0_.N_10_i  ;
wire \t5_5_9_.N_5_i  ;
wire \t5_4_10_8_.N_3_i  ;
wire \t5_4_10_8_.N_7_mux_i  ;
wire \t5_3_10_0_.N_9_i  ;
wire N_71_i_i ;
wire \t5_3_10_0_.N_14_i  ;
wire \t5_3_10_0_.N_17_i  ;
wire \t5_5_3_2_.N_4_i  ;
wire un1_i_1_i ;
wire N_87_i ;
wire i_1_rep1 ;
wire i_1_rep2 ;
wire i_2_rep1 ;
wire i_0_rep1 ;
wire \t5_4_6_0_.SUM2  ;
wire \t5_4_6_0_.SUM2_fast  ;
wire \t5_4_6_0_.SUM2_rep1  ;
wire \t5_4_6_0_.SUM1  ;
wire \t5_4_6_0_.SUM1_fast  ;
wire \t5_4_6_0_.SUM1_rep1  ;
wire \t5_4_6_0_.SUM1_rep2  ;
  GND GND_cZ (
	.G(GND)
);
  VCC VCC_cZ (
	.P(VCC)
);
// @7:43
  FD \i_Z[2]  (
	.Q(i[2]),
	.D(\t5_4_6_0_.SUM2 ),
	.C(CK)
);
// @7:43
  FD \i_Z[1]  (
	.Q(i[1]),
	.D(\t5_4_6_0_.SUM1 ),
	.C(CK)
);
// @7:43
  FD \i_fast_Z[1]  (
	.Q(i_fast[1]),
	.D(\t5_4_6_0_.SUM1_fast ),
	.C(CK)
);
// @7:43
  FD i_1_rep1_Z (
	.Q(i_1_rep1),
	.D(\t5_4_6_0_.SUM1_rep1 ),
	.C(CK)
);
// @7:43
  FD i_1_rep2_Z (
	.Q(i_1_rep2),
	.D(\t5_4_6_0_.SUM1_rep2 ),
	.C(CK)
);
// @7:43
  FD \i_fast_Z[2]  (
	.Q(i_fast[2]),
	.D(\t5_4_6_0_.SUM2_fast ),
	.C(CK)
);
// @7:43
  FD i_2_rep1_Z (
	.Q(i_2_rep1),
	.D(\t5_4_6_0_.SUM2_rep1 ),
	.C(CK)
);
// @7:86
  LUT2 \t5_4_6_0_.SUM1_rep2_cZ  (
	.I0(i_1_rep2),
	.I1(i[0]),
	.O(\t5_4_6_0_.SUM1_rep2 )
);
defparam \t5_4_6_0_.SUM1_rep2_cZ .INIT=4'h6;
// @7:86
  LUT2 \t5_4_6_0_.SUM1_rep1_cZ  (
	.I0(i_1_rep1),
	.I1(i[0]),
	.O(\t5_4_6_0_.SUM1_rep1 )
);
defparam \t5_4_6_0_.SUM1_rep1_cZ .INIT=4'h6;
// @7:86
  LUT2 \t5_4_6_0_.SUM1_fast_cZ  (
	.I0(i_fast[1]),
	.I1(i[0]),
	.O(\t5_4_6_0_.SUM1_fast )
);
defparam \t5_4_6_0_.SUM1_fast_cZ .INIT=4'h6;
// @7:86
  LUT2 \t5_4_6_0_.SUM1_cZ  (
	.I0(i[1]),
	.I1(i[0]),
	.O(\t5_4_6_0_.SUM1 )
);
defparam \t5_4_6_0_.SUM1_cZ .INIT=4'h6;
// @7:79
  INV \i_RNIHB76[0]  (
	.I(i[0]),
	.O(i_i[0])
);
// @7:43
  FD \outi_Z[0]  (
	.Q(outi[0]),
	.D(i[0]),
	.C(CK)
);
// @7:43
  FD \outi_Z[1]  (
	.Q(outi[1]),
	.D(i[1]),
	.C(CK)
);
// @7:43
  FD \outi_Z[2]  (
	.Q(outi[2]),
	.D(i[2]),
	.C(CK)
);
// @7:43
  FD \i_Z[0]  (
	.Q(i[0]),
	.D(i_i[0]),
	.C(CK)
);
// @7:43
  FD \i_fast_Z[0]  (
	.Q(i_fast[0]),
	.D(i_i[0]),
	.C(CK)
);
// @7:43
  FD i_0_rep1_Z (
	.Q(i_0_rep1),
	.D(i_i[0]),
	.C(CK)
);
// @7:75
  LUT3 un1_i_8 (
	.I0(i_0_rep1),
	.I1(i_1_rep1),
	.I2(i_2_rep1),
	.O(un1_i_8_0)
);
defparam un1_i_8.INIT=8'h40;
// @7:75
  LUT3 \t5_5_0_.m2  (
	.I0(i_fast[0]),
	.I1(i_fast[1]),
	.I2(i_fast[2]),
	.O(t5_5[0])
);
defparam \t5_5_0_.m2 .INIT=8'h62;
// @7:75
  LUT3 \t5_5_3_2_.m4  (
	.I0(i_0_rep1),
	.I1(i_1_rep1),
	.I2(i_2_rep1),
	.O(t5_5[3])
);
defparam \t5_5_3_2_.m4 .INIT=8'h4C;
// @7:75
  LUT3 \t5_2_i_a2[7]  (
	.I0(i_fast[0]),
	.I1(i_fast[1]),
	.I2(i_fast[2]),
	.O(t5_1[7])
);
defparam \t5_2_i_a2[7] .INIT=8'h28;
// @7:80
  LUT3 \i_fast_RNITRJI_0[0]  (
	.I0(i_fast[0]),
	.I1(i_fast[1]),
	.I2(i_fast[2]),
	.O(N_87_i)
);
defparam \i_fast_RNITRJI_0[0] .INIT=8'h1B;
// @7:75
  LUT3 \t5_5_9_.m3  (
	.I0(i_0_rep1),
	.I1(i_1_rep1),
	.I2(i_2_rep1),
	.O(t5_5[9])
);
defparam \t5_5_9_.m3 .INIT=8'h71;
// @7:79
  LUT3 \i_fast_RNITRJI[0]  (
	.I0(i_fast[0]),
	.I1(i_fast[1]),
	.I2(i_fast[2]),
	.O(N_62_i)
);
defparam \i_fast_RNITRJI[0] .INIT=8'h26;
// @7:80
  LUT3 \t5_4_10_8_.N_7_mux_i_cZ  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(\t5_4_10_8_.N_7_mux_i )
);
defparam \t5_4_10_8_.N_7_mux_i_cZ .INIT=8'h9D;
// @7:80
  LUT3 i_1_rep1_RNIGHRL (
	.I0(i_0_rep1),
	.I1(i_1_rep1),
	.I2(i_2_rep1),
	.O(un1_i_1_i)
);
defparam i_1_rep1_RNIGHRL.INIT=8'h7F;
// @7:80
  LUT3 \t5_3_10_0_.t5_3_i[0]  (
	.I0(i_fast[0]),
	.I1(i_fast[1]),
	.I2(i_fast[2]),
	.O(t5_3_i[0])
);
defparam \t5_3_10_0_.t5_3_i[0] .INIT=8'hF1;
// @7:80
  LUT3 \t5_5_3_2_.N_4_i_cZ  (
	.I0(i_0_rep1),
	.I1(i_1_rep1),
	.I2(i_2_rep1),
	.O(\t5_5_3_2_.N_4_i )
);
defparam \t5_5_3_2_.N_4_i_cZ .INIT=8'h97;
// @7:79
  DSP48E1 \un16_t1_1_0_0[19:0]  (
	.ACOUT(ACOUT[29:0]),
	.BCOUT(BCOUT[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT),
	.CARRYOUT(CARRYOUT[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT),
	.OVERFLOW(OVERFLOW),
	.P({P_uc[47:20], un16_t1_1_0_2[19:0]}),
	.PATTERNBDETECT(PATTERNBDETECT),
	.PATTERNDETECT(PATTERNDETECT),
	.PCOUT({P_uc_3[47:20], un16_t1_1_0_2_0[19:0]}),
	.UNDERFLOW(UNDERFLOW),
	.A({inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7], inp[7:0]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({GND, GND, GND, GND, GND, GND, GND, GND, un1_i_8_1_i, N_73_i, t5_1_i[7], t5_2[6], N_62_i, N_60_i, t5_2[3], N_57_i, i[1], N_101_i}),
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
	.CEINMODE(VCC),
	.CEM(GND),
	.CEP(GND),
	.CLK(CK),
	.D({inp[63], inp[63], inp[63], inp[63], inp[63], inp[63], inp[63], inp[63], inp[63], inp[63], inp[63], inp[63], inp[63], inp[63], inp[63], inp[63], inp[63], inp[63:56]}),
	.INMODE({GND, i_i[0], VCC, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, VCC, GND, VCC, GND, VCC}),
	.PCIN({P_uc_2_0[47:20], \_l3.un17_t1_0 [19:0]}),
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
defparam \un16_t1_1_0_0[19:0] .ACASCREG=0;
defparam \un16_t1_1_0_0[19:0] .ADREG=0;
defparam \un16_t1_1_0_0[19:0] .ALUMODEREG=0;
defparam \un16_t1_1_0_0[19:0] .AREG=0;
defparam \un16_t1_1_0_0[19:0] .AUTORESET_PATDET="NO_RESET";
defparam \un16_t1_1_0_0[19:0] .A_INPUT="DIRECT";
defparam \un16_t1_1_0_0[19:0] .BCASCREG=0;
defparam \un16_t1_1_0_0[19:0] .BREG=0;
defparam \un16_t1_1_0_0[19:0] .B_INPUT="DIRECT";
defparam \un16_t1_1_0_0[19:0] .CARRYINREG=0;
defparam \un16_t1_1_0_0[19:0] .CARRYINSELREG=0;
defparam \un16_t1_1_0_0[19:0] .CREG=1;
defparam \un16_t1_1_0_0[19:0] .DREG=0;
defparam \un16_t1_1_0_0[19:0] .INMODEREG=1;
defparam \un16_t1_1_0_0[19:0] .MREG=0;
defparam \un16_t1_1_0_0[19:0] .OPMODEREG=0;
defparam \un16_t1_1_0_0[19:0] .PREG=0;
defparam \un16_t1_1_0_0[19:0] .USE_DPORT="TRUE";
defparam \un16_t1_1_0_0[19:0] .USE_MULT="MULTIPLY";
defparam \un16_t1_1_0_0[19:0] .USE_SIMD="ONE48";
// @7:80
  DSP48E1 \un16_t1_1_0_2[19:0]  (
	.ACOUT(ACOUT_0[29:0]),
	.BCOUT(BCOUT_0[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_0),
	.CARRYOUT(CARRYOUT_0[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_0),
	.OVERFLOW(OVERFLOW_0),
	.P({P_uc_0[47:20], un16_t1_1_1[19:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_0),
	.PATTERNDETECT(PATTERNDETECT_0),
	.PCOUT({P_uc_0_0[47:20], un16_t1_1_1_0[19:0]}),
	.UNDERFLOW(UNDERFLOW_0),
	.A({inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23], inp[23:16]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({t5_4[10], t5_4[10], t5_4[10], t5_4[10], t5_4[10], t5_4[10], t5_4[10], t5_4[10], \t5_4_10_8_.N_7_mux_i , \t5_4_10_8_.N_3_i , t5_1[8], \t5_5_9_.N_5_i , t5_4[5], \t5_4_6_0_.N_10_i , t5_4[3], \t5_4_6_0_.N_7_i , \t5_4_6_0_.N_5_i , \t5_4_6_0_.N_4_i }),
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
	.CEINMODE(VCC),
	.CEM(GND),
	.CEP(GND),
	.CLK(CK),
	.D({inp[47], inp[47], inp[47], inp[47], inp[47], inp[47], inp[47], inp[47], inp[47], inp[47], inp[47], inp[47], inp[47], inp[47], inp[47], inp[47], inp[47], inp[47:40]}),
	.INMODE({GND, i_i[0], VCC, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, VCC, GND, VCC, GND, VCC}),
	.PCIN({P_uc_3[47:20], un16_t1_1_0_2_0[19:0]}),
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
defparam \un16_t1_1_0_2[19:0] .ACASCREG=0;
defparam \un16_t1_1_0_2[19:0] .ADREG=0;
defparam \un16_t1_1_0_2[19:0] .ALUMODEREG=0;
defparam \un16_t1_1_0_2[19:0] .AREG=0;
defparam \un16_t1_1_0_2[19:0] .AUTORESET_PATDET="NO_RESET";
defparam \un16_t1_1_0_2[19:0] .A_INPUT="DIRECT";
defparam \un16_t1_1_0_2[19:0] .BCASCREG=0;
defparam \un16_t1_1_0_2[19:0] .BREG=0;
defparam \un16_t1_1_0_2[19:0] .B_INPUT="DIRECT";
defparam \un16_t1_1_0_2[19:0] .CARRYINREG=0;
defparam \un16_t1_1_0_2[19:0] .CARRYINSELREG=0;
defparam \un16_t1_1_0_2[19:0] .CREG=1;
defparam \un16_t1_1_0_2[19:0] .DREG=0;
defparam \un16_t1_1_0_2[19:0] .INMODEREG=1;
defparam \un16_t1_1_0_2[19:0] .MREG=0;
defparam \un16_t1_1_0_2[19:0] .OPMODEREG=0;
defparam \un16_t1_1_0_2[19:0] .PREG=0;
defparam \un16_t1_1_0_2[19:0] .USE_DPORT="TRUE";
defparam \un16_t1_1_0_2[19:0] .USE_MULT="MULTIPLY";
defparam \un16_t1_1_0_2[19:0] .USE_SIMD="ONE48";
// @7:80
  DSP48E1 \un16_t1_1_1[19:0]  (
	.ACOUT(ACOUT_1[29:0]),
	.BCOUT(BCOUT_1[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_1),
	.CARRYOUT(CARRYOUT_1[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_1),
	.OVERFLOW(OVERFLOW_1),
	.P({P_uc_1[47:20], outp[19:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_1),
	.PATTERNDETECT(PATTERNDETECT_1),
	.PCOUT(PCOUT_1[47:0]),
	.UNDERFLOW(UNDERFLOW_1),
	.A({inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15], inp[15:8]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({\t5_3_10_0_.N_17_i , \t5_3_10_0_.N_17_i , \t5_3_10_0_.N_17_i , \t5_3_10_0_.N_17_i , \t5_3_10_0_.N_17_i , \t5_3_10_0_.N_17_i , \t5_3_10_0_.N_17_i , \t5_3_10_0_.N_17_i , t5_3[9], t5_1_i[8], \t5_3_10_0_.N_14_i , N_71_i_i, t5_3[5:4], \t5_3_10_0_.N_9_i , t5_3[2:0]}),
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
	.CEINMODE(VCC),
	.CEM(GND),
	.CEP(VCC),
	.CLK(CK),
	.D({inp[55], inp[55], inp[55], inp[55], inp[55], inp[55], inp[55], inp[55], inp[55], inp[55], inp[55], inp[55], inp[55], inp[55], inp[55], inp[55], inp[55], inp[55:48]}),
	.INMODE({GND, i_i[0], VCC, GND, GND}),
	.MULTSIGNIN(GND),
	.OPMODE({GND, GND, VCC, GND, VCC, GND, VCC}),
	.PCIN({P_uc_0_0[47:20], un16_t1_1_1_0[19:0]}),
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
defparam \un16_t1_1_1[19:0] .ACASCREG=0;
defparam \un16_t1_1_1[19:0] .ADREG=0;
defparam \un16_t1_1_1[19:0] .ALUMODEREG=0;
defparam \un16_t1_1_1[19:0] .AREG=0;
defparam \un16_t1_1_1[19:0] .AUTORESET_PATDET="NO_RESET";
defparam \un16_t1_1_1[19:0] .A_INPUT="DIRECT";
defparam \un16_t1_1_1[19:0] .BCASCREG=0;
defparam \un16_t1_1_1[19:0] .BREG=0;
defparam \un16_t1_1_1[19:0] .B_INPUT="DIRECT";
defparam \un16_t1_1_1[19:0] .CARRYINREG=0;
defparam \un16_t1_1_1[19:0] .CARRYINSELREG=0;
defparam \un16_t1_1_1[19:0] .CREG=1;
defparam \un16_t1_1_1[19:0] .DREG=0;
defparam \un16_t1_1_1[19:0] .INMODEREG=1;
defparam \un16_t1_1_1[19:0] .MREG=0;
defparam \un16_t1_1_1[19:0] .OPMODEREG=0;
defparam \un16_t1_1_1[19:0] .PREG=1;
defparam \un16_t1_1_1[19:0] .USE_DPORT="TRUE";
defparam \un16_t1_1_1[19:0] .USE_MULT="MULTIPLY";
defparam \un16_t1_1_1[19:0] .USE_SIMD="ONE48";
// @7:80
  DSP48E1 \_l3.un17_t1[19:0]  (
	.ACOUT(ACOUT_2[29:0]),
	.BCOUT(BCOUT_2[17:0]),
	.CARRYCASCOUT(CARRYCASCOUT_2),
	.CARRYOUT(CARRYOUT_2[3:0]),
	.MULTSIGNOUT(MULTSIGNOUT_2),
	.OVERFLOW(OVERFLOW_2),
	.P({P_uc_2[47:20], \_l3.un17_t1 [19:0]}),
	.PATTERNBDETECT(PATTERNBDETECT_2),
	.PATTERNDETECT(PATTERNDETECT_2),
	.PCOUT({P_uc_2_0[47:20], \_l3.un17_t1_0 [19:0]}),
	.UNDERFLOW(UNDERFLOW_2),
	.A({inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31], inp[31:24]}),
	.ACIN({VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC, VCC}),
	.ALUMODE({GND, GND, GND, GND}),
	.B({i_1_rep2, i_1_rep2, i_1_rep2, i_1_rep2, i_1_rep2, i_1_rep2, i_1_rep2, i_1_rep2, t5_5[9], t5_1[7], N_87_i, un1_i_1_i, un1_i_8_0, t5_3_i[0], t5_5[3], \t5_5_3_2_.N_4_i , N_62_i, t5_5[0]}),
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
	.CEINMODE(VCC),
	.CEM(GND),
	.CEP(GND),
	.CLK(CK),
	.D({inp[39], inp[39], inp[39], inp[39], inp[39], inp[39], inp[39], inp[39], inp[39], inp[39], inp[39], inp[39], inp[39], inp[39], inp[39], inp[39], inp[39], inp[39:32]}),
	.INMODE({GND, i_i[0], VCC, GND, GND}),
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
defparam \_l3.un17_t1[19:0] .ACASCREG=0;
defparam \_l3.un17_t1[19:0] .ADREG=0;
defparam \_l3.un17_t1[19:0] .ALUMODEREG=0;
defparam \_l3.un17_t1[19:0] .AREG=0;
defparam \_l3.un17_t1[19:0] .AUTORESET_PATDET="NO_RESET";
defparam \_l3.un17_t1[19:0] .A_INPUT="DIRECT";
defparam \_l3.un17_t1[19:0] .BCASCREG=0;
defparam \_l3.un17_t1[19:0] .BREG=0;
defparam \_l3.un17_t1[19:0] .B_INPUT="DIRECT";
defparam \_l3.un17_t1[19:0] .CARRYINREG=0;
defparam \_l3.un17_t1[19:0] .CARRYINSELREG=0;
defparam \_l3.un17_t1[19:0] .CREG=1;
defparam \_l3.un17_t1[19:0] .DREG=0;
defparam \_l3.un17_t1[19:0] .INMODEREG=1;
defparam \_l3.un17_t1[19:0] .MREG=0;
defparam \_l3.un17_t1[19:0] .OPMODEREG=0;
defparam \_l3.un17_t1[19:0] .PREG=0;
defparam \_l3.un17_t1[19:0] .USE_DPORT="TRUE";
defparam \_l3.un17_t1[19:0] .USE_MULT="MULTIPLY";
defparam \_l3.un17_t1[19:0] .USE_SIMD="ONE48";
// @7:86
  LUT3 \t5_4_6_0_.SUM2_lut6_2_o6  (
	.I0(i[0]),
	.I1(i[2]),
	.I2(i[1]),
	.O(\t5_4_6_0_.SUM2 )
);
defparam \t5_4_6_0_.SUM2_lut6_2_o6 .INIT=8'h6C;
// @7:86
  LUT3 \t5_4_6_0_.SUM2_lut6_2_o5  (
	.I0(i[0]),
	.I1(i[1]),
	.I2(i_2_rep1),
	.O(\t5_4_6_0_.SUM2_rep1 )
);
defparam \t5_4_6_0_.SUM2_lut6_2_o5 .INIT=8'h78;
// @7:75
  LUT2 \t5_2_0_a4_lut6_2_o6[3]  (
	.I0(i[1]),
	.I1(i[0]),
	.O(t5_2[3])
);
defparam \t5_2_0_a4_lut6_2_o6[3] .INIT=4'h4;
// @7:75
  LUT2 \t5_2_0_a4_lut6_2_o5[3]  (
	.I0(i[2]),
	.I1(i[0]),
	.O(\t5_5_9_.N_5_i )
);
defparam \t5_2_0_a4_lut6_2_o5[3] .INIT=4'h9;
// @7:79
  LUT2 \i_RNI5QEC_o6[2]  (
	.I0(i[2]),
	.I1(i[1]),
	.O(un1_i_8_1_i)
);
defparam \i_RNI5QEC_o6[2] .INIT=4'h7;
// @7:79
  LUT2 \i_RNI5QEC_o5[2]  (
	.I0(i[2]),
	.I1(i[1]),
	.O(\t5_4_6_0_.N_10_i )
);
defparam \i_RNI5QEC_o5[2] .INIT=4'hD;
// @7:80
  LUT2 \t5_4_6_0_.N_71_i_i_lut6_2_o6  (
	.I0(i[2]),
	.I1(i[1]),
	.O(N_71_i_i)
);
defparam \t5_4_6_0_.N_71_i_i_lut6_2_o6 .INIT=4'h9;
// @7:80
  LUT3 \t5_4_6_0_.N_71_i_i_lut6_2_o5  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(t5_1_i[8])
);
defparam \t5_4_6_0_.N_71_i_i_lut6_2_o5 .INIT=8'hD6;
// @7:75
  LUT3 \t5_4_6_0_.m11_lut6_2_o6  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(t5_4[5])
);
defparam \t5_4_6_0_.m11_lut6_2_o6 .INIT=8'h1E;
// @7:75
  LUT3 \t5_4_6_0_.m11_lut6_2_o5  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(t5_3[4])
);
defparam \t5_4_6_0_.m11_lut6_2_o5 .INIT=8'h71;
// @7:75
  LUT3 \t5_4_10_8_.m5_lut6_2_o6  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(t5_4[10])
);
defparam \t5_4_10_8_.m5_lut6_2_o6 .INIT=8'h46;
// @7:75
  LUT3 \t5_4_10_8_.m5_lut6_2_o5  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(t5_3[2])
);
defparam \t5_4_10_8_.m5_lut6_2_o5 .INIT=8'h2F;
// @7:79
  LUT3 i_0_rep1_RNI5HAQ_o6 (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(t5_1_i[7])
);
defparam i_0_rep1_RNI5HAQ_o6.INIT=8'h9F;
// @7:79
  LUT3 i_0_rep1_RNI5HAQ_o5 (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i_0_rep1),
	.O(N_73_i)
);
defparam i_0_rep1_RNI5HAQ_o5.INIT=8'h5C;
// @7:79
  LUT3 \i_fast_RNIMQSO_o6[2]  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(N_101_i)
);
defparam \i_fast_RNIMQSO_o6[2] .INIT=8'hC8;
// @7:79
  LUT3 \i_fast_RNIMQSO_o5[2]  (
	.I0(i[1]),
	.I1(i_fast[2]),
	.I2(i[0]),
	.O(\t5_4_6_0_.SUM2_fast )
);
defparam \i_fast_RNIMQSO_o5[2] .INIT=8'h6C;
// @7:80
  LUT3 \t5_4_6_0_.N_7_i_lut6_2_o6  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(\t5_4_6_0_.N_7_i )
);
defparam \t5_4_6_0_.N_7_i_lut6_2_o6 .INIT=8'h63;
// @7:80
  LUT3 \t5_4_6_0_.N_7_i_lut6_2_o5  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(t5_3[0])
);
defparam \t5_4_6_0_.N_7_i_lut6_2_o5 .INIT=8'h54;
// @7:80
  LUT3 \t5_4_6_0_.N_5_i_lut6_2_o6  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(\t5_4_6_0_.N_5_i )
);
defparam \t5_4_6_0_.N_5_i_lut6_2_o6 .INIT=8'hA8;
// @7:80
  LUT3 \t5_4_6_0_.N_5_i_lut6_2_o5  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(t5_3[5])
);
defparam \t5_4_6_0_.N_5_i_lut6_2_o5 .INIT=8'h42;
// @7:80
  LUT3 \t5_4_6_0_.N_4_i_lut6_2_o6  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(\t5_4_6_0_.N_4_i )
);
defparam \t5_4_6_0_.N_4_i_lut6_2_o6 .INIT=8'hA4;
// @7:80
  LUT3 \t5_4_6_0_.N_4_i_lut6_2_o5  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(t5_1[8])
);
defparam \t5_4_6_0_.N_4_i_lut6_2_o5 .INIT=8'h29;
// @7:80
  LUT3 \t5_3_10_0_.N_17_i_lut6_2_o6  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(\t5_3_10_0_.N_17_i )
);
defparam \t5_3_10_0_.N_17_i_lut6_2_o6 .INIT=8'hEA;
// @7:80
  LUT3 \t5_3_10_0_.N_17_i_lut6_2_o5  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(t5_3[9])
);
defparam \t5_3_10_0_.N_17_i_lut6_2_o5 .INIT=8'h51;
// @7:80
  LUT3 \t5_3_10_0_.N_14_i_lut6_2_o6  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(\t5_3_10_0_.N_14_i )
);
defparam \t5_3_10_0_.N_14_i_lut6_2_o6 .INIT=8'h85;
// @7:80
  LUT3 \t5_3_10_0_.N_14_i_lut6_2_o5  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(t5_3[1])
);
defparam \t5_3_10_0_.N_14_i_lut6_2_o5 .INIT=8'h1C;
// @7:75
  LUT3 \t5_4_6_0_.m8_lut6_2_o6  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(t5_4[3])
);
defparam \t5_4_6_0_.m8_lut6_2_o6 .INIT=8'h16;
// @7:75
  LUT3 \t5_4_6_0_.m8_lut6_2_o5  (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(\t5_3_10_0_.N_9_i )
);
defparam \t5_4_6_0_.m8_lut6_2_o5 .INIT=8'hCA;
// @7:79
  LUT3 i_1_rep2_RNI7MKK_0_o6 (
	.I0(i_1_rep2),
	.I1(i[2]),
	.I2(i[0]),
	.O(N_60_i)
);
defparam i_1_rep2_RNI7MKK_0_o6.INIT=8'h67;
// @7:79
  LUT3 i_1_rep2_RNI7MKK_0_o5 (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(t5_2[6])
);
defparam i_1_rep2_RNI7MKK_0_o5.INIT=8'hD3;
// @7:79
  LUT3 i_1_rep2_RNI7MKK_o6 (
	.I0(i_1_rep2),
	.I1(i[2]),
	.I2(i[0]),
	.O(N_57_i)
);
defparam i_1_rep2_RNI7MKK_o6.INIT=8'h9D;
// @7:79
  LUT3 i_1_rep2_RNI7MKK_o5 (
	.I0(i[2]),
	.I1(i[1]),
	.I2(i[0]),
	.O(\t5_4_10_8_.N_3_i )
);
defparam i_1_rep2_RNI7MKK_o5.INIT=8'h8A;
endmodule /* dct4 */

