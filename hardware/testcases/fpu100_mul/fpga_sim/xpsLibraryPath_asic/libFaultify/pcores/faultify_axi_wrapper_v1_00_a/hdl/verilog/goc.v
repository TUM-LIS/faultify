
module pre_norm_addsub_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  FADDX1 U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n4), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1 U2_2 ( .A(A[2]), .B(n3), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1 U2_1 ( .A(A[1]), .B(n2), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FADDX1 U2_0 ( .A(A[0]), .B(n1), .CI(n9), .CO(carry[1]), .S(DIFF[0]) );
  XOR3X1 U2_7 ( .IN1(A[7]), .IN2(n8), .IN3(carry[7]), .Q(DIFF[7]) );
  INVX0 U1 ( .INP(CI), .ZN(n9) );
  INVX0 U2 ( .INP(B[0]), .ZN(n1) );
  INVX0 U3 ( .INP(B[1]), .ZN(n2) );
  INVX0 U4 ( .INP(B[2]), .ZN(n3) );
  INVX0 U5 ( .INP(B[3]), .ZN(n4) );
  INVX0 U6 ( .INP(B[4]), .ZN(n5) );
  INVX0 U7 ( .INP(B[5]), .ZN(n6) );
  INVX0 U8 ( .INP(B[6]), .ZN(n7) );
  INVX0 U9 ( .INP(B[7]), .ZN(n8) );
endmodule


module pre_norm_addsub_1 ( clk_i, opa_i, opb_i, fracta_28_o, fractb_28_o, 
        exp_o );
  input [31:0] opa_i;
  input [31:0] opb_i;
  output [27:0] fracta_28_o;
  output [27:0] fractb_28_o;
  output [7:0] exp_o;
  input clk_i;
  wire   N109, N187, N188, N189, N190, N191, N192, N193, N194, \U3/U1/Z_0 ,
         \U3/U1/Z_1 , \U3/U1/Z_2 , \U3/U1/Z_3 , \U3/U1/Z_4 , \U3/U1/Z_5 ,
         \U3/U1/Z_6 , \U3/U1/Z_7 , \U3/U2/Z_0 , \U3/U2/Z_1 , \U3/U2/Z_2 ,
         \U3/U2/Z_3 , \U3/U2/Z_4 , \U3/U2/Z_5 , \U3/U2/Z_6 , \U3/U2/Z_7 ,
         \U3/U3/Z_0 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262;
  wire   [7:0] s_exp_o;
  wire   [26:0] s_fracta_28_o;
  wire   [26:0] s_fractb_28_o;
  wire   [7:0] s_exp_diff;
  wire   [26:0] s_fract_shr_28;
  assign fracta_28_o[27] = 1'b0;
  assign fractb_28_o[27] = 1'b0;

  DFFX1 \s_exp_o_reg[7]  ( .D(\U3/U1/Z_7 ), .CLK(clk_i), .Q(s_exp_o[7]) );
  DFFX1 \exp_o_reg[7]  ( .D(s_exp_o[7]), .CLK(clk_i), .Q(exp_o[7]) );
  DFFX1 \s_exp_o_reg[6]  ( .D(\U3/U1/Z_6 ), .CLK(clk_i), .Q(s_exp_o[6]) );
  DFFX1 \exp_o_reg[6]  ( .D(s_exp_o[6]), .CLK(clk_i), .Q(exp_o[6]) );
  DFFX1 \s_exp_o_reg[5]  ( .D(\U3/U1/Z_5 ), .CLK(clk_i), .Q(s_exp_o[5]) );
  DFFX1 \exp_o_reg[5]  ( .D(s_exp_o[5]), .CLK(clk_i), .Q(exp_o[5]) );
  DFFX1 \s_exp_o_reg[4]  ( .D(\U3/U1/Z_4 ), .CLK(clk_i), .Q(s_exp_o[4]) );
  DFFX1 \exp_o_reg[4]  ( .D(s_exp_o[4]), .CLK(clk_i), .Q(exp_o[4]) );
  DFFX1 \s_exp_o_reg[3]  ( .D(\U3/U1/Z_3 ), .CLK(clk_i), .Q(s_exp_o[3]) );
  DFFX1 \exp_o_reg[3]  ( .D(s_exp_o[3]), .CLK(clk_i), .Q(exp_o[3]) );
  DFFX1 \s_exp_o_reg[2]  ( .D(\U3/U1/Z_2 ), .CLK(clk_i), .Q(s_exp_o[2]) );
  DFFX1 \exp_o_reg[2]  ( .D(s_exp_o[2]), .CLK(clk_i), .Q(exp_o[2]) );
  DFFX1 \s_exp_o_reg[1]  ( .D(\U3/U1/Z_1 ), .CLK(clk_i), .Q(s_exp_o[1]) );
  DFFX1 \exp_o_reg[1]  ( .D(s_exp_o[1]), .CLK(clk_i), .Q(exp_o[1]) );
  DFFX1 \s_exp_o_reg[0]  ( .D(\U3/U1/Z_0 ), .CLK(clk_i), .Q(s_exp_o[0]) );
  DFFX1 \exp_o_reg[0]  ( .D(s_exp_o[0]), .CLK(clk_i), .Q(exp_o[0]) );
  DFFX1 \s_exp_diff_reg[7]  ( .D(N194), .CLK(clk_i), .QN(n4) );
  DFFX1 \s_exp_diff_reg[6]  ( .D(N193), .CLK(clk_i), .QN(n8) );
  DFFX1 \s_exp_diff_reg[5]  ( .D(N192), .CLK(clk_i), .QN(n1) );
  DFFX1 \s_exp_diff_reg[4]  ( .D(N191), .CLK(clk_i), .Q(s_exp_diff[4]), .QN(n6) );
  DFFX1 \s_exp_diff_reg[3]  ( .D(N190), .CLK(clk_i), .Q(s_exp_diff[3]), .QN(n2) );
  DFFX1 \s_exp_diff_reg[2]  ( .D(N189), .CLK(clk_i), .Q(s_exp_diff[2]), .QN(n5) );
  DFFX1 \s_exp_diff_reg[1]  ( .D(N188), .CLK(clk_i), .Q(s_exp_diff[1]), .QN(n7) );
  DFFX1 \s_exp_diff_reg[0]  ( .D(N187), .CLK(clk_i), .Q(s_exp_diff[0]), .QN(n3) );
  DFFSSRX1 \fractb_28_o_reg[1]  ( .D(N109), .RSTB(s_fract_shr_28[1]), .SETB(
        1'b1), .CLK(clk_i), .Q(fractb_28_o[1]) );
  DFFSSRX1 \fracta_28_o_reg[1]  ( .D(n262), .RSTB(s_fract_shr_28[1]), .SETB(
        1'b1), .CLK(clk_i), .Q(fracta_28_o[1]) );
  DFFSSRX1 \fractb_28_o_reg[2]  ( .D(N109), .RSTB(s_fract_shr_28[2]), .SETB(
        1'b1), .CLK(clk_i), .Q(fractb_28_o[2]) );
  DFFSSRX1 \fracta_28_o_reg[2]  ( .D(n262), .RSTB(s_fract_shr_28[2]), .SETB(
        1'b1), .CLK(clk_i), .Q(fracta_28_o[2]) );
  DFFX1 \fracta_28_o_reg[3]  ( .D(s_fracta_28_o[3]), .CLK(clk_i), .Q(
        fracta_28_o[3]) );
  DFFX1 \fractb_28_o_reg[3]  ( .D(s_fractb_28_o[3]), .CLK(clk_i), .Q(
        fractb_28_o[3]) );
  DFFX1 \fracta_28_o_reg[4]  ( .D(s_fracta_28_o[4]), .CLK(clk_i), .Q(
        fracta_28_o[4]) );
  DFFX1 \fractb_28_o_reg[4]  ( .D(s_fractb_28_o[4]), .CLK(clk_i), .Q(
        fractb_28_o[4]) );
  DFFX1 \fracta_28_o_reg[5]  ( .D(s_fracta_28_o[5]), .CLK(clk_i), .Q(
        fracta_28_o[5]) );
  DFFX1 \fractb_28_o_reg[5]  ( .D(s_fractb_28_o[5]), .CLK(clk_i), .Q(
        fractb_28_o[5]) );
  DFFX1 \fracta_28_o_reg[6]  ( .D(s_fracta_28_o[6]), .CLK(clk_i), .Q(
        fracta_28_o[6]) );
  DFFX1 \fractb_28_o_reg[6]  ( .D(s_fractb_28_o[6]), .CLK(clk_i), .Q(
        fractb_28_o[6]) );
  DFFX1 \fracta_28_o_reg[7]  ( .D(s_fracta_28_o[7]), .CLK(clk_i), .Q(
        fracta_28_o[7]) );
  DFFX1 \fractb_28_o_reg[7]  ( .D(s_fractb_28_o[7]), .CLK(clk_i), .Q(
        fractb_28_o[7]) );
  DFFX1 \fracta_28_o_reg[8]  ( .D(s_fracta_28_o[8]), .CLK(clk_i), .Q(
        fracta_28_o[8]) );
  DFFX1 \fractb_28_o_reg[8]  ( .D(s_fractb_28_o[8]), .CLK(clk_i), .Q(
        fractb_28_o[8]) );
  DFFX1 \fracta_28_o_reg[9]  ( .D(s_fracta_28_o[9]), .CLK(clk_i), .Q(
        fracta_28_o[9]) );
  DFFX1 \fractb_28_o_reg[9]  ( .D(s_fractb_28_o[9]), .CLK(clk_i), .Q(
        fractb_28_o[9]) );
  DFFX1 \fracta_28_o_reg[10]  ( .D(s_fracta_28_o[10]), .CLK(clk_i), .Q(
        fracta_28_o[10]) );
  DFFX1 \fractb_28_o_reg[10]  ( .D(s_fractb_28_o[10]), .CLK(clk_i), .Q(
        fractb_28_o[10]) );
  DFFX1 \fracta_28_o_reg[11]  ( .D(s_fracta_28_o[11]), .CLK(clk_i), .Q(
        fracta_28_o[11]) );
  DFFX1 \fractb_28_o_reg[11]  ( .D(s_fractb_28_o[11]), .CLK(clk_i), .Q(
        fractb_28_o[11]) );
  DFFX1 \fracta_28_o_reg[12]  ( .D(s_fracta_28_o[12]), .CLK(clk_i), .Q(
        fracta_28_o[12]) );
  DFFX1 \fractb_28_o_reg[12]  ( .D(s_fractb_28_o[12]), .CLK(clk_i), .Q(
        fractb_28_o[12]) );
  DFFX1 \fracta_28_o_reg[13]  ( .D(s_fracta_28_o[13]), .CLK(clk_i), .Q(
        fracta_28_o[13]) );
  DFFX1 \fractb_28_o_reg[13]  ( .D(s_fractb_28_o[13]), .CLK(clk_i), .Q(
        fractb_28_o[13]) );
  DFFX1 \fracta_28_o_reg[14]  ( .D(s_fracta_28_o[14]), .CLK(clk_i), .Q(
        fracta_28_o[14]) );
  DFFX1 \fractb_28_o_reg[14]  ( .D(s_fractb_28_o[14]), .CLK(clk_i), .Q(
        fractb_28_o[14]) );
  DFFX1 \fracta_28_o_reg[15]  ( .D(s_fracta_28_o[15]), .CLK(clk_i), .Q(
        fracta_28_o[15]) );
  DFFX1 \fractb_28_o_reg[15]  ( .D(s_fractb_28_o[15]), .CLK(clk_i), .Q(
        fractb_28_o[15]) );
  DFFX1 \fracta_28_o_reg[16]  ( .D(s_fracta_28_o[16]), .CLK(clk_i), .Q(
        fracta_28_o[16]) );
  DFFX1 \fractb_28_o_reg[16]  ( .D(s_fractb_28_o[16]), .CLK(clk_i), .Q(
        fractb_28_o[16]) );
  DFFX1 \fracta_28_o_reg[17]  ( .D(s_fracta_28_o[17]), .CLK(clk_i), .Q(
        fracta_28_o[17]) );
  DFFX1 \fractb_28_o_reg[17]  ( .D(s_fractb_28_o[17]), .CLK(clk_i), .Q(
        fractb_28_o[17]) );
  DFFX1 \fracta_28_o_reg[18]  ( .D(s_fracta_28_o[18]), .CLK(clk_i), .Q(
        fracta_28_o[18]) );
  DFFX1 \fractb_28_o_reg[18]  ( .D(s_fractb_28_o[18]), .CLK(clk_i), .Q(
        fractb_28_o[18]) );
  DFFX1 \fracta_28_o_reg[19]  ( .D(s_fracta_28_o[19]), .CLK(clk_i), .Q(
        fracta_28_o[19]) );
  DFFX1 \fractb_28_o_reg[19]  ( .D(s_fractb_28_o[19]), .CLK(clk_i), .Q(
        fractb_28_o[19]) );
  DFFX1 \fracta_28_o_reg[20]  ( .D(s_fracta_28_o[20]), .CLK(clk_i), .Q(
        fracta_28_o[20]) );
  DFFX1 \fractb_28_o_reg[20]  ( .D(s_fractb_28_o[20]), .CLK(clk_i), .Q(
        fractb_28_o[20]) );
  DFFX1 \fracta_28_o_reg[21]  ( .D(s_fracta_28_o[21]), .CLK(clk_i), .Q(
        fracta_28_o[21]) );
  DFFX1 \fractb_28_o_reg[21]  ( .D(s_fractb_28_o[21]), .CLK(clk_i), .Q(
        fractb_28_o[21]) );
  DFFX1 \fracta_28_o_reg[22]  ( .D(s_fracta_28_o[22]), .CLK(clk_i), .Q(
        fracta_28_o[22]) );
  DFFX1 \fractb_28_o_reg[22]  ( .D(s_fractb_28_o[22]), .CLK(clk_i), .Q(
        fractb_28_o[22]) );
  DFFX1 \fracta_28_o_reg[23]  ( .D(s_fracta_28_o[23]), .CLK(clk_i), .Q(
        fracta_28_o[23]) );
  DFFX1 \fractb_28_o_reg[23]  ( .D(s_fractb_28_o[23]), .CLK(clk_i), .Q(
        fractb_28_o[23]) );
  DFFX1 \fracta_28_o_reg[24]  ( .D(s_fracta_28_o[24]), .CLK(clk_i), .Q(
        fracta_28_o[24]) );
  DFFX1 \fractb_28_o_reg[24]  ( .D(s_fractb_28_o[24]), .CLK(clk_i), .Q(
        fractb_28_o[24]) );
  DFFX1 \fracta_28_o_reg[25]  ( .D(s_fracta_28_o[25]), .CLK(clk_i), .Q(
        fracta_28_o[25]) );
  DFFX1 \fractb_28_o_reg[25]  ( .D(s_fractb_28_o[25]), .CLK(clk_i), .Q(
        fractb_28_o[25]) );
  DFFX1 \fracta_28_o_reg[26]  ( .D(s_fracta_28_o[26]), .CLK(clk_i), .Q(
        fracta_28_o[26]) );
  DFFX1 \fractb_28_o_reg[26]  ( .D(s_fractb_28_o[26]), .CLK(clk_i), .Q(
        fractb_28_o[26]) );
  DFFX1 \fractb_28_o_reg[0]  ( .D(s_fractb_28_o[0]), .CLK(clk_i), .Q(
        fractb_28_o[0]) );
  DFFX1 \fracta_28_o_reg[0]  ( .D(s_fracta_28_o[0]), .CLK(clk_i), .Q(
        fracta_28_o[0]) );
  pre_norm_addsub_1_DW01_sub_0 r132 ( .A({\U3/U1/Z_7 , \U3/U1/Z_6 , 
        \U3/U1/Z_5 , \U3/U1/Z_4 , \U3/U1/Z_3 , \U3/U1/Z_2 , \U3/U1/Z_1 , 
        \U3/U1/Z_0 }), .B({\U3/U2/Z_7 , \U3/U2/Z_6 , \U3/U2/Z_5 , \U3/U2/Z_4 , 
        \U3/U2/Z_3 , \U3/U2/Z_2 , \U3/U2/Z_1 , \U3/U2/Z_0 }), .CI(\U3/U3/Z_0 ), 
        .DIFF({N194, N193, N192, N191, N190, N189, N188, N187}) );
  AO21X2 U9 ( .IN1(opa_i[30]), .IN2(n247), .IN3(n248), .Q(N109) );
  MUX21X1 U10 ( .IN1(opb_i[6]), .IN2(n9), .S(N109), .Q(s_fractb_28_o[9]) );
  MUX21X1 U11 ( .IN1(opb_i[5]), .IN2(n10), .S(N109), .Q(s_fractb_28_o[8]) );
  MUX21X1 U12 ( .IN1(opb_i[4]), .IN2(n11), .S(N109), .Q(s_fractb_28_o[7]) );
  MUX21X1 U13 ( .IN1(opb_i[3]), .IN2(n12), .S(N109), .Q(s_fractb_28_o[6]) );
  MUX21X1 U14 ( .IN1(opb_i[2]), .IN2(n13), .S(N109), .Q(s_fractb_28_o[5]) );
  MUX21X1 U15 ( .IN1(opb_i[1]), .IN2(n14), .S(N109), .Q(s_fractb_28_o[4]) );
  MUX21X1 U16 ( .IN1(opb_i[0]), .IN2(n15), .S(N109), .Q(s_fractb_28_o[3]) );
  AO22X1 U17 ( .IN1(n16), .IN2(n262), .IN3(n17), .IN4(n18), .Q(
        s_fractb_28_o[26]) );
  AO22X1 U18 ( .IN1(opb_i[22]), .IN2(n262), .IN3(n19), .IN4(n20), .Q(
        s_fractb_28_o[25]) );
  AO22X1 U19 ( .IN1(opb_i[21]), .IN2(n262), .IN3(n19), .IN4(n21), .Q(
        s_fractb_28_o[24]) );
  AO22X1 U20 ( .IN1(opb_i[20]), .IN2(n262), .IN3(n19), .IN4(n22), .Q(
        s_fractb_28_o[23]) );
  AND2X1 U21 ( .IN1(n23), .IN2(N109), .Q(n19) );
  MUX21X1 U22 ( .IN1(opb_i[19]), .IN2(n24), .S(N109), .Q(s_fractb_28_o[22]) );
  AO22X1 U23 ( .IN1(opb_i[18]), .IN2(n262), .IN3(n25), .IN4(n26), .Q(
        s_fractb_28_o[21]) );
  AO22X1 U24 ( .IN1(opb_i[17]), .IN2(n262), .IN3(n25), .IN4(n27), .Q(
        s_fractb_28_o[20]) );
  AO22X1 U25 ( .IN1(opb_i[16]), .IN2(n262), .IN3(n28), .IN4(n25), .Q(
        s_fractb_28_o[19]) );
  AO22X1 U26 ( .IN1(opb_i[15]), .IN2(n262), .IN3(n29), .IN4(n25), .Q(
        s_fractb_28_o[18]) );
  AO22X1 U27 ( .IN1(opb_i[14]), .IN2(n262), .IN3(n30), .IN4(n25), .Q(
        s_fractb_28_o[17]) );
  AO22X1 U28 ( .IN1(opb_i[13]), .IN2(n262), .IN3(n31), .IN4(n25), .Q(
        s_fractb_28_o[16]) );
  AND2X1 U29 ( .IN1(n32), .IN2(N109), .Q(n25) );
  MUX21X1 U30 ( .IN1(opb_i[12]), .IN2(n33), .S(N109), .Q(s_fractb_28_o[15]) );
  MUX21X1 U31 ( .IN1(opb_i[11]), .IN2(n34), .S(N109), .Q(s_fractb_28_o[14]) );
  MUX21X1 U32 ( .IN1(opb_i[10]), .IN2(n35), .S(N109), .Q(s_fractb_28_o[13]) );
  MUX21X1 U33 ( .IN1(opb_i[9]), .IN2(n36), .S(N109), .Q(s_fractb_28_o[12]) );
  MUX21X1 U34 ( .IN1(opb_i[8]), .IN2(n37), .S(N109), .Q(s_fractb_28_o[11]) );
  MUX21X1 U35 ( .IN1(opb_i[7]), .IN2(n38), .S(N109), .Q(s_fractb_28_o[10]) );
  NOR2X0 U36 ( .IN1(n262), .IN2(n39), .QN(s_fractb_28_o[0]) );
  MUX21X1 U37 ( .IN1(n9), .IN2(opa_i[6]), .S(N109), .Q(s_fracta_28_o[9]) );
  AO221X1 U38 ( .IN1(n40), .IN2(n41), .IN3(n23), .IN4(n42), .IN5(n43), .Q(n9)
         );
  AO222X1 U39 ( .IN1(n44), .IN2(n45), .IN3(n46), .IN4(n20), .IN5(n47), .IN6(
        n48), .Q(n43) );
  MUX21X1 U40 ( .IN1(n10), .IN2(opa_i[5]), .S(N109), .Q(s_fracta_28_o[8]) );
  AO221X1 U41 ( .IN1(n49), .IN2(n40), .IN3(n50), .IN4(n23), .IN5(n51), .Q(n10)
         );
  AO222X1 U42 ( .IN1(n52), .IN2(n44), .IN3(n21), .IN4(n46), .IN5(n57), .IN6(
        n47), .Q(n51) );
  MUX21X1 U43 ( .IN1(n11), .IN2(opa_i[4]), .S(N109), .Q(s_fracta_28_o[7]) );
  AO221X1 U44 ( .IN1(n58), .IN2(n40), .IN3(n59), .IN4(n23), .IN5(n60), .Q(n11)
         );
  AO222X1 U45 ( .IN1(n44), .IN2(n61), .IN3(n46), .IN4(n22), .IN5(n62), .IN6(
        n47), .Q(n60) );
  NOR2X0 U46 ( .IN1(n63), .IN2(n64), .QN(n46) );
  INVX0 U47 ( .INP(n65), .ZN(n59) );
  MUX21X1 U48 ( .IN1(n12), .IN2(opa_i[3]), .S(N109), .Q(s_fracta_28_o[6]) );
  AO221X1 U49 ( .IN1(n66), .IN2(n40), .IN3(n67), .IN4(n23), .IN5(n68), .Q(n12)
         );
  AO222X1 U50 ( .IN1(n69), .IN2(n44), .IN3(n70), .IN4(n71), .IN5(n72), .IN6(
        n47), .Q(n68) );
  MUX21X1 U51 ( .IN1(n13), .IN2(opa_i[2]), .S(N109), .Q(s_fracta_28_o[5]) );
  AO221X1 U52 ( .IN1(n42), .IN2(n40), .IN3(n23), .IN4(n73), .IN5(n74), .Q(n13)
         );
  AO222X1 U53 ( .IN1(n44), .IN2(n48), .IN3(n26), .IN4(n75), .IN5(n41), .IN6(
        n47), .Q(n74) );
  MUX21X1 U54 ( .IN1(n14), .IN2(opa_i[1]), .S(N109), .Q(s_fracta_28_o[4]) );
  AO221X1 U55 ( .IN1(n50), .IN2(n40), .IN3(n76), .IN4(n23), .IN5(n77), .Q(n14)
         );
  AO222X1 U56 ( .IN1(n57), .IN2(n44), .IN3(n27), .IN4(n75), .IN5(n49), .IN6(
        n47), .Q(n77) );
  MUX21X1 U57 ( .IN1(n15), .IN2(opa_i[0]), .S(N109), .Q(s_fracta_28_o[3]) );
  NOR2X0 U58 ( .IN1(n78), .IN2(n79), .QN(n15) );
  INVX0 U59 ( .INP(n80), .ZN(n78) );
  MUX21X1 U60 ( .IN1(n28), .IN2(n81), .S(n6), .Q(n80) );
  OA221X1 U61 ( .IN1(n82), .IN2(n64), .IN3(n62), .IN4(n83), .IN5(n84), .Q(n81)
         );
  MUX21X1 U62 ( .IN1(n85), .IN2(n86), .S(n2), .Q(n84) );
  NAND2X0 U63 ( .IN1(s_exp_diff[2]), .IN2(n65), .QN(n86) );
  AO221X1 U64 ( .IN1(n87), .IN2(n88), .IN3(n89), .IN4(n90), .IN5(n91), .Q(n65)
         );
  AO22X1 U65 ( .IN1(n92), .IN2(n93), .IN3(n94), .IN4(n95), .Q(n91) );
  NAND2X0 U66 ( .IN1(n96), .IN2(n5), .QN(n85) );
  OA221X1 U67 ( .IN1(n97), .IN2(n98), .IN3(n99), .IN4(n100), .IN5(n101), .Q(
        n82) );
  OA22X1 U68 ( .IN1(n102), .IN2(n103), .IN3(n104), .IN4(n105), .Q(n101) );
  AO21X1 U69 ( .IN1(n17), .IN2(n18), .IN3(N109), .Q(s_fracta_28_o[26]) );
  INVX0 U70 ( .INP(n106), .ZN(n18) );
  AO22X1 U71 ( .IN1(opa_i[22]), .IN2(N109), .IN3(n107), .IN4(n20), .Q(
        s_fracta_28_o[25]) );
  AO22X1 U72 ( .IN1(opa_i[21]), .IN2(N109), .IN3(n107), .IN4(n21), .Q(
        s_fracta_28_o[24]) );
  AO22X1 U73 ( .IN1(opa_i[20]), .IN2(N109), .IN3(n107), .IN4(n22), .Q(
        s_fracta_28_o[23]) );
  AND2X1 U74 ( .IN1(n23), .IN2(n262), .Q(n107) );
  MUX21X1 U75 ( .IN1(n24), .IN2(opa_i[19]), .S(N109), .Q(s_fracta_28_o[22]) );
  NOR2X0 U76 ( .IN1(n108), .IN2(n106), .QN(n24) );
  INVX0 U77 ( .INP(n71), .ZN(n108) );
  AO22X1 U78 ( .IN1(opa_i[18]), .IN2(N109), .IN3(n109), .IN4(n26), .Q(
        s_fracta_28_o[21]) );
  AND2X1 U79 ( .IN1(n110), .IN2(n2), .Q(n26) );
  MUX21X1 U80 ( .IN1(n20), .IN2(n45), .S(n5), .Q(n110) );
  AO22X1 U81 ( .IN1(opa_i[17]), .IN2(N109), .IN3(n109), .IN4(n27), .Q(
        s_fracta_28_o[20]) );
  AND2X1 U82 ( .IN1(n111), .IN2(n2), .Q(n27) );
  MUX21X1 U83 ( .IN1(n21), .IN2(n52), .S(n5), .Q(n111) );
  AO22X1 U84 ( .IN1(opa_i[16]), .IN2(N109), .IN3(n109), .IN4(n28), .Q(
        s_fracta_28_o[19]) );
  AND2X1 U85 ( .IN1(n112), .IN2(n2), .Q(n28) );
  MUX21X1 U86 ( .IN1(n22), .IN2(n61), .S(n5), .Q(n112) );
  AO22X1 U87 ( .IN1(opa_i[15]), .IN2(N109), .IN3(n109), .IN4(n29), .Q(
        s_fracta_28_o[18]) );
  AO22X1 U88 ( .IN1(opa_i[14]), .IN2(N109), .IN3(n109), .IN4(n30), .Q(
        s_fracta_28_o[17]) );
  AO22X1 U89 ( .IN1(opa_i[13]), .IN2(N109), .IN3(n109), .IN4(n31), .Q(
        s_fracta_28_o[16]) );
  AND2X1 U90 ( .IN1(n32), .IN2(n262), .Q(n109) );
  MUX21X1 U91 ( .IN1(n33), .IN2(opa_i[12]), .S(N109), .Q(s_fracta_28_o[15]) );
  AO222X1 U92 ( .IN1(n40), .IN2(n61), .IN3(n47), .IN4(n22), .IN5(n62), .IN6(
        n23), .Q(n33) );
  MUX21X1 U93 ( .IN1(n34), .IN2(opa_i[11]), .S(N109), .Q(s_fracta_28_o[14]) );
  AO222X1 U94 ( .IN1(n72), .IN2(n23), .IN3(n69), .IN4(n40), .IN5(n71), .IN6(
        n113), .Q(n34) );
  MUX21X1 U95 ( .IN1(n114), .IN2(n115), .S(n5), .Q(n71) );
  NOR2X0 U96 ( .IN1(n116), .IN2(n97), .QN(n114) );
  MUX21X1 U97 ( .IN1(n35), .IN2(opa_i[10]), .S(N109), .Q(s_fracta_28_o[13]) );
  AO221X1 U98 ( .IN1(n44), .IN2(n20), .IN3(n47), .IN4(n45), .IN5(n117), .Q(n35) );
  AO22X1 U99 ( .IN1(n23), .IN2(n41), .IN3(n40), .IN4(n48), .Q(n117) );
  MUX21X1 U100 ( .IN1(n36), .IN2(opa_i[9]), .S(N109), .Q(s_fracta_28_o[12]) );
  AO221X1 U101 ( .IN1(n21), .IN2(n44), .IN3(n52), .IN4(n47), .IN5(n118), .Q(
        n36) );
  AO22X1 U102 ( .IN1(n49), .IN2(n23), .IN3(n57), .IN4(n40), .Q(n118) );
  INVX0 U103 ( .INP(n119), .ZN(n52) );
  INVX0 U104 ( .INP(n120), .ZN(n21) );
  MUX21X1 U105 ( .IN1(n37), .IN2(opa_i[8]), .S(N109), .Q(s_fracta_28_o[11]) );
  AO221X1 U106 ( .IN1(n44), .IN2(n22), .IN3(n47), .IN4(n61), .IN5(n121), .Q(
        n37) );
  AO22X1 U107 ( .IN1(n58), .IN2(n23), .IN3(n62), .IN4(n40), .Q(n121) );
  AOI221X1 U108 ( .IN1(n122), .IN2(n88), .IN3(n123), .IN4(n90), .IN5(n124), 
        .QN(n62) );
  AO22X1 U109 ( .IN1(n125), .IN2(n93), .IN3(n126), .IN4(n95), .Q(n124) );
  INVX0 U110 ( .INP(n96), .ZN(n58) );
  AO221X1 U111 ( .IN1(n127), .IN2(n88), .IN3(n128), .IN4(n90), .IN5(n129), .Q(
        n96) );
  AO22X1 U112 ( .IN1(n130), .IN2(n93), .IN3(n131), .IN4(n95), .Q(n129) );
  AO221X1 U113 ( .IN1(n95), .IN2(n132), .IN3(n93), .IN4(n133), .IN5(n134), .Q(
        n61) );
  AO22X1 U114 ( .IN1(n90), .IN2(n135), .IN3(n88), .IN4(n136), .Q(n134) );
  AO221X1 U115 ( .IN1(n95), .IN2(n137), .IN3(n93), .IN4(n138), .IN5(n139), .Q(
        n22) );
  AO22X1 U116 ( .IN1(n90), .IN2(n140), .IN3(n88), .IN4(n141), .Q(n139) );
  MUX21X1 U117 ( .IN1(n38), .IN2(opa_i[7]), .S(N109), .Q(s_fracta_28_o[10]) );
  AO221X1 U118 ( .IN1(n72), .IN2(n40), .IN3(n66), .IN4(n23), .IN5(n142), .Q(
        n38) );
  AO222X1 U119 ( .IN1(n115), .IN2(n44), .IN3(n70), .IN4(n17), .IN5(n69), .IN6(
        n47), .Q(n142) );
  NOR2X0 U120 ( .IN1(s_exp_diff[3]), .IN2(n63), .QN(n70) );
  INVX0 U121 ( .INP(n75), .ZN(n63) );
  NOR2X0 U122 ( .IN1(N109), .IN2(n39), .QN(s_fracta_28_o[0]) );
  AOI221X1 U123 ( .IN1(n76), .IN2(n40), .IN3(n143), .IN4(n144), .IN5(n145), 
        .QN(n39) );
  AO222X1 U124 ( .IN1(n49), .IN2(n44), .IN3(n31), .IN4(n75), .IN5(n50), .IN6(
        n47), .Q(n145) );
  AOI221X1 U125 ( .IN1(n92), .IN2(n95), .IN3(n128), .IN4(n93), .IN5(n146), 
        .QN(n50) );
  AO22X1 U126 ( .IN1(n87), .IN2(n90), .IN3(n94), .IN4(n88), .Q(n146) );
  AOI221X1 U127 ( .IN1(s_exp_diff[2]), .IN2(n119), .IN3(s_exp_diff[3]), .IN4(
        n120), .IN5(n147), .QN(n31) );
  OAI21X1 U128 ( .IN1(n64), .IN2(n57), .IN3(n83), .QN(n147) );
  AOI221X1 U129 ( .IN1(n125), .IN2(n95), .IN3(n148), .IN4(n93), .IN5(n149), 
        .QN(n57) );
  AO22X1 U130 ( .IN1(n122), .IN2(n90), .IN3(n126), .IN4(n88), .Q(n149) );
  AO221X1 U131 ( .IN1(n150), .IN2(s_exp_diff[0]), .IN3(s_exp_diff[1]), .IN4(
        n116), .IN5(n151), .Q(n120) );
  AO21X1 U132 ( .IN1(n152), .IN2(n90), .IN3(n93), .Q(n151) );
  AO221X1 U133 ( .IN1(n153), .IN2(n95), .IN3(n154), .IN4(n93), .IN5(n155), .Q(
        n119) );
  AO22X1 U134 ( .IN1(n156), .IN2(n90), .IN3(n157), .IN4(n88), .Q(n155) );
  AOI221X1 U135 ( .IN1(n130), .IN2(n95), .IN3(n123), .IN4(n93), .IN5(n158), 
        .QN(n49) );
  AO22X1 U136 ( .IN1(n127), .IN2(n90), .IN3(n131), .IN4(n88), .Q(n158) );
  NAND4X0 U137 ( .IN1(n152), .IN2(n159), .IN3(n150), .IN4(n116), .QN(n144) );
  NAND4X0 U138 ( .IN1(n8), .IN2(n4), .IN3(n1), .IN4(n160), .QN(n143) );
  OA21X1 U139 ( .IN1(n161), .IN2(n6), .IN3(n162), .Q(n160) );
  AO221X1 U140 ( .IN1(n161), .IN2(n6), .IN3(n2), .IN4(n163), .IN5(n164), .Q(
        n162) );
  OA222X1 U141 ( .IN1(n2), .IN2(n163), .IN3(n165), .IN4(n5), .IN5(n166), .IN6(
        n167), .Q(n164) );
  AND2X1 U142 ( .IN1(n167), .IN2(n166), .Q(n165) );
  OA21X1 U143 ( .IN1(n168), .IN2(n169), .IN3(n104), .Q(n166) );
  INVX0 U144 ( .INP(n93), .ZN(n104) );
  AO221X1 U145 ( .IN1(n170), .IN2(n171), .IN3(n172), .IN4(n7), .IN5(n98), .Q(
        n169) );
  NAND4X0 U146 ( .IN1(n173), .IN2(n174), .IN3(n175), .IN4(n176), .QN(n172) );
  OA22X1 U147 ( .IN1(n126), .IN2(n177), .IN3(n178), .IN4(n179), .Q(n176) );
  NOR2X0 U148 ( .IN1(n152), .IN2(n132), .QN(n178) );
  INVX0 U149 ( .INP(n161), .ZN(n177) );
  INVX0 U150 ( .INP(n180), .ZN(n175) );
  NAND3X0 U151 ( .IN1(n123), .IN2(n181), .IN3(n182), .QN(n171) );
  MUX21X1 U152 ( .IN1(n183), .IN2(n148), .S(n184), .Q(n182) );
  NAND2X0 U153 ( .IN1(n185), .IN2(n186), .QN(n181) );
  INVX0 U154 ( .INP(n187), .ZN(n170) );
  NAND4X0 U155 ( .IN1(n188), .IN2(n189), .IN3(n190), .IN4(n191), .QN(n168) );
  NAND2X0 U156 ( .IN1(n192), .IN2(n193), .QN(n191) );
  NAND4X0 U157 ( .IN1(n189), .IN2(n174), .IN3(n194), .IN4(n195), .QN(n167) );
  OA22X1 U158 ( .IN1(n196), .IN2(n187), .IN3(n197), .IN4(n98), .Q(n195) );
  NOR4X0 U159 ( .IN1(n180), .IN2(n198), .IN3(n105), .IN4(n100), .QN(n197) );
  NOR2X0 U160 ( .IN1(n100), .IN2(n192), .QN(n180) );
  NOR2X0 U161 ( .IN1(n199), .IN2(n200), .QN(n196) );
  MUX21X1 U162 ( .IN1(n186), .IN2(n201), .S(n179), .Q(n200) );
  AND2X1 U163 ( .IN1(n148), .IN2(n184), .Q(n201) );
  NAND4X0 U164 ( .IN1(n188), .IN2(n173), .IN3(n202), .IN4(n203), .QN(n163) );
  AND4X1 U165 ( .IN1(n190), .IN2(n174), .IN3(n189), .IN4(n194), .Q(n203) );
  NAND3X0 U166 ( .IN1(n128), .IN2(n204), .IN3(n205), .QN(n194) );
  NAND3X0 U167 ( .IN1(n131), .IN2(n187), .IN3(n206), .QN(n189) );
  NAND2X0 U168 ( .IN1(n206), .IN2(n207), .QN(n174) );
  NAND2X0 U169 ( .IN1(n205), .IN2(n208), .QN(n190) );
  OA22X1 U170 ( .IN1(n209), .IN2(n193), .IN3(n210), .IN4(n187), .Q(n202) );
  NOR2X0 U171 ( .IN1(n159), .IN2(n199), .QN(n210) );
  INVX0 U172 ( .INP(n186), .ZN(n159) );
  NAND3X0 U173 ( .IN1(n154), .IN2(n153), .IN3(n185), .QN(n186) );
  NOR2X0 U174 ( .IN1(n179), .IN2(n132), .QN(n185) );
  NAND3X0 U175 ( .IN1(n156), .IN2(n148), .IN3(n184), .QN(n179) );
  NOR2X0 U176 ( .IN1(n183), .IN2(n211), .QN(n184) );
  NAND3X0 U177 ( .IN1(n122), .IN2(n126), .IN3(n161), .QN(n183) );
  NAND2X0 U178 ( .IN1(n209), .IN2(n212), .QN(n173) );
  NAND3X0 U179 ( .IN1(n94), .IN2(n213), .IN3(n209), .QN(n188) );
  NOR2X0 U180 ( .IN1(n187), .IN2(n199), .QN(n161) );
  NAND3X0 U181 ( .IN1(n131), .IN2(n130), .IN3(n206), .QN(n187) );
  INVX0 U182 ( .INP(n204), .ZN(n206) );
  NAND3X0 U183 ( .IN1(n127), .IN2(n128), .IN3(n205), .QN(n204) );
  INVX0 U184 ( .INP(n213), .ZN(n205) );
  NAND3X0 U185 ( .IN1(n94), .IN2(n92), .IN3(n209), .QN(n213) );
  NOR2X0 U186 ( .IN1(n193), .IN2(n214), .QN(n209) );
  NAND3X0 U187 ( .IN1(n215), .IN2(n89), .IN3(n192), .QN(n193) );
  NOR3X0 U188 ( .IN1(n100), .IN2(n103), .IN3(n98), .QN(n192) );
  AOI221X1 U189 ( .IN1(n215), .IN2(n95), .IN3(n89), .IN4(n93), .IN5(n216), 
        .QN(n76) );
  OAI22X1 U190 ( .IN1(n100), .IN2(n97), .IN3(n103), .IN4(n99), .QN(n216) );
  INVX0 U191 ( .INP(n88), .ZN(n99) );
  AO221X1 U192 ( .IN1(n66), .IN2(n47), .IN3(n67), .IN4(n40), .IN5(n217), .Q(
        s_fract_shr_28[2]) );
  AO222X1 U193 ( .IN1(n23), .IN2(n218), .IN3(n29), .IN4(n75), .IN5(n72), .IN6(
        n44), .Q(n217) );
  AOI221X1 U194 ( .IN1(n122), .IN2(n95), .IN3(n126), .IN4(n93), .IN5(n219), 
        .QN(n72) );
  AO22X1 U195 ( .IN1(n130), .IN2(n90), .IN3(n123), .IN4(n88), .Q(n219) );
  INVX0 U196 ( .INP(n220), .ZN(n126) );
  OA222X1 U197 ( .IN1(n5), .IN2(n115), .IN3(n64), .IN4(n69), .IN5(n2), .IN6(
        n17), .Q(n29) );
  NOR3X0 U198 ( .IN1(n116), .IN2(s_exp_diff[2]), .IN3(n97), .QN(n17) );
  INVX0 U199 ( .INP(n90), .ZN(n97) );
  INVX0 U200 ( .INP(n138), .ZN(n116) );
  AOI221X1 U201 ( .IN1(n156), .IN2(n95), .IN3(n157), .IN4(n93), .IN5(n221), 
        .QN(n69) );
  AO22X1 U202 ( .IN1(n125), .IN2(n90), .IN3(n148), .IN4(n88), .Q(n221) );
  INVX0 U203 ( .INP(n135), .ZN(n148) );
  INVX0 U204 ( .INP(n211), .ZN(n125) );
  INVX0 U205 ( .INP(n132), .ZN(n157) );
  INVX0 U206 ( .INP(n136), .ZN(n156) );
  AOI221X1 U207 ( .IN1(n154), .IN2(n88), .IN3(n153), .IN4(n90), .IN5(n222), 
        .QN(n115) );
  AO22X1 U208 ( .IN1(n93), .IN2(n150), .IN3(n152), .IN4(n95), .Q(n222) );
  INVX0 U209 ( .INP(n141), .ZN(n152) );
  INVX0 U210 ( .INP(n137), .ZN(n150) );
  INVX0 U211 ( .INP(n133), .ZN(n153) );
  INVX0 U212 ( .INP(n140), .ZN(n154) );
  AO222X1 U213 ( .IN1(n95), .IN2(n100), .IN3(n88), .IN4(n98), .IN5(n93), .IN6(
        n103), .Q(n218) );
  AOI221X1 U214 ( .IN1(n87), .IN2(n95), .IN3(n94), .IN4(n93), .IN5(n223), .QN(
        n67) );
  AO22X1 U215 ( .IN1(n215), .IN2(n90), .IN3(n89), .IN4(n88), .Q(n223) );
  INVX0 U216 ( .INP(n198), .ZN(n89) );
  INVX0 U217 ( .INP(n105), .ZN(n215) );
  INVX0 U218 ( .INP(n214), .ZN(n87) );
  AOI221X1 U219 ( .IN1(n127), .IN2(n95), .IN3(n131), .IN4(n93), .IN5(n224), 
        .QN(n66) );
  AO22X1 U220 ( .IN1(n92), .IN2(n90), .IN3(n128), .IN4(n88), .Q(n224) );
  AO221X1 U221 ( .IN1(n42), .IN2(n47), .IN3(n40), .IN4(n73), .IN5(n225), .Q(
        s_fract_shr_28[1]) );
  AO222X1 U222 ( .IN1(n30), .IN2(n75), .IN3(n23), .IN4(n226), .IN5(n41), .IN6(
        n44), .Q(n225) );
  AND2X1 U223 ( .IN1(s_exp_diff[2]), .IN2(n113), .Q(n44) );
  AOI221X1 U224 ( .IN1(n130), .IN2(n88), .IN3(n131), .IN4(n90), .IN5(n227), 
        .QN(n41) );
  AO22X1 U225 ( .IN1(n122), .IN2(n93), .IN3(n123), .IN4(n95), .Q(n227) );
  INVX0 U226 ( .INP(n199), .ZN(n123) );
  MUX21X1 U227 ( .IN1(opa_i[12]), .IN2(opb_i[12]), .S(N109), .Q(n199) );
  INVX0 U228 ( .INP(n228), .ZN(n122) );
  MUX21X1 U229 ( .IN1(opa_i[13]), .IN2(opb_i[13]), .S(N109), .Q(n228) );
  INVX0 U230 ( .INP(n207), .ZN(n131) );
  MUX21X1 U231 ( .IN1(opa_i[10]), .IN2(opb_i[10]), .S(N109), .Q(n207) );
  INVX0 U232 ( .INP(n229), .ZN(n130) );
  MUX21X1 U233 ( .IN1(opa_i[11]), .IN2(opb_i[11]), .S(N109), .Q(n229) );
  AO22X1 U234 ( .IN1(n93), .IN2(n100), .IN3(n95), .IN4(n98), .Q(n226) );
  MUX21X1 U235 ( .IN1(opa_i[0]), .IN2(opb_i[0]), .S(N109), .Q(n98) );
  MUX21X1 U236 ( .IN1(opa_i[1]), .IN2(opb_i[1]), .S(N109), .Q(n100) );
  NOR2X0 U237 ( .IN1(n106), .IN2(s_exp_diff[2]), .QN(n23) );
  NOR2X0 U238 ( .IN1(n6), .IN2(n79), .QN(n75) );
  OA221X1 U239 ( .IN1(n45), .IN2(n5), .IN3(n2), .IN4(n20), .IN5(n230), .Q(n30)
         );
  OA21X1 U240 ( .IN1(n48), .IN2(n64), .IN3(n83), .Q(n230) );
  NAND2X0 U241 ( .IN1(s_exp_diff[2]), .IN2(s_exp_diff[3]), .QN(n83) );
  NAND2X0 U242 ( .IN1(n5), .IN2(n2), .QN(n64) );
  AO221X1 U243 ( .IN1(n88), .IN2(n211), .IN3(n90), .IN4(n220), .IN5(n231), .Q(
        n48) );
  AO22X1 U244 ( .IN1(n93), .IN2(n136), .IN3(n95), .IN4(n135), .Q(n231) );
  MUX21X1 U245 ( .IN1(opa_i[16]), .IN2(opb_i[16]), .S(N109), .Q(n135) );
  MUX21X1 U246 ( .IN1(opa_i[17]), .IN2(opb_i[17]), .S(N109), .Q(n136) );
  MUX21X1 U247 ( .IN1(opa_i[14]), .IN2(opb_i[14]), .S(N109), .Q(n220) );
  MUX21X1 U248 ( .IN1(opa_i[15]), .IN2(opb_i[15]), .S(N109), .Q(n211) );
  AND2X1 U249 ( .IN1(n232), .IN2(n7), .Q(n20) );
  MUX21X1 U250 ( .IN1(n138), .IN2(n137), .S(n3), .Q(n232) );
  MUX21X1 U251 ( .IN1(opa_i[22]), .IN2(opb_i[22]), .S(N109), .Q(n137) );
  MUX21X1 U252 ( .IN1(n233), .IN2(n16), .S(N109), .Q(n138) );
  AO221X1 U253 ( .IN1(n95), .IN2(n140), .IN3(n93), .IN4(n141), .IN5(n234), .Q(
        n45) );
  AO22X1 U254 ( .IN1(n90), .IN2(n132), .IN3(n88), .IN4(n133), .Q(n234) );
  MUX21X1 U255 ( .IN1(opa_i[19]), .IN2(opb_i[19]), .S(N109), .Q(n133) );
  MUX21X1 U256 ( .IN1(opa_i[18]), .IN2(opb_i[18]), .S(N109), .Q(n132) );
  MUX21X1 U257 ( .IN1(opa_i[21]), .IN2(opb_i[21]), .S(N109), .Q(n141) );
  MUX21X1 U258 ( .IN1(opa_i[20]), .IN2(opb_i[20]), .S(N109), .Q(n140) );
  AO221X1 U259 ( .IN1(n95), .IN2(n198), .IN3(n93), .IN4(n214), .IN5(n235), .Q(
        n73) );
  AO22X1 U260 ( .IN1(n90), .IN2(n103), .IN3(n88), .IN4(n105), .Q(n235) );
  MUX21X1 U261 ( .IN1(opa_i[3]), .IN2(opb_i[3]), .S(N109), .Q(n105) );
  MUX21X1 U262 ( .IN1(opa_i[2]), .IN2(opb_i[2]), .S(N109), .Q(n103) );
  MUX21X1 U263 ( .IN1(opa_i[5]), .IN2(opb_i[5]), .S(N109), .Q(n214) );
  MUX21X1 U264 ( .IN1(opa_i[4]), .IN2(opb_i[4]), .S(N109), .Q(n198) );
  NOR2X0 U265 ( .IN1(n106), .IN2(n5), .QN(n40) );
  NAND2X0 U266 ( .IN1(n32), .IN2(n2), .QN(n106) );
  AND2X1 U267 ( .IN1(n113), .IN2(n5), .Q(n47) );
  AND2X1 U268 ( .IN1(s_exp_diff[3]), .IN2(n32), .Q(n113) );
  NOR2X0 U269 ( .IN1(n79), .IN2(s_exp_diff[4]), .QN(n32) );
  NAND3X0 U270 ( .IN1(n8), .IN2(n4), .IN3(n1), .QN(n79) );
  AOI221X1 U271 ( .IN1(n92), .IN2(n88), .IN3(n94), .IN4(n90), .IN5(n236), .QN(
        n42) );
  AO22X1 U272 ( .IN1(n127), .IN2(n93), .IN3(n128), .IN4(n95), .Q(n236) );
  INVX0 U273 ( .INP(n102), .ZN(n95) );
  NAND2X0 U274 ( .IN1(s_exp_diff[1]), .IN2(n3), .QN(n102) );
  INVX0 U275 ( .INP(n208), .ZN(n128) );
  MUX21X1 U276 ( .IN1(opa_i[8]), .IN2(opb_i[8]), .S(N109), .Q(n208) );
  NOR2X0 U277 ( .IN1(n7), .IN2(n3), .QN(n93) );
  INVX0 U278 ( .INP(n237), .ZN(n127) );
  MUX21X1 U279 ( .IN1(opa_i[9]), .IN2(opb_i[9]), .S(N109), .Q(n237) );
  NOR2X0 U280 ( .IN1(s_exp_diff[0]), .IN2(s_exp_diff[1]), .QN(n90) );
  INVX0 U281 ( .INP(n212), .ZN(n94) );
  MUX21X1 U282 ( .IN1(opa_i[6]), .IN2(opb_i[6]), .S(N109), .Q(n212) );
  NOR2X0 U283 ( .IN1(n3), .IN2(s_exp_diff[1]), .QN(n88) );
  INVX0 U284 ( .INP(n238), .ZN(n92) );
  MUX21X1 U285 ( .IN1(opa_i[7]), .IN2(opb_i[7]), .S(N109), .Q(n238) );
  INVX0 U286 ( .INP(N109), .ZN(n262) );
  XOR2X1 U287 ( .IN1(n233), .IN2(n16), .Q(\U3/U3/Z_0 ) );
  NAND4X0 U288 ( .IN1(n239), .IN2(n240), .IN3(n241), .IN4(n242), .QN(n16) );
  NOR4X0 U289 ( .IN1(opb_i[30]), .IN2(opb_i[29]), .IN3(opb_i[28]), .IN4(
        opb_i[27]), .QN(n242) );
  NOR2X0 U290 ( .IN1(opb_i[26]), .IN2(opb_i[25]), .QN(n241) );
  NAND4X0 U291 ( .IN1(n243), .IN2(n244), .IN3(n245), .IN4(n246), .QN(n233) );
  NOR4X0 U292 ( .IN1(opa_i[30]), .IN2(opa_i[29]), .IN3(opa_i[28]), .IN4(
        opa_i[27]), .QN(n246) );
  NOR2X0 U293 ( .IN1(opa_i[26]), .IN2(opa_i[25]), .QN(n245) );
  INVX0 U294 ( .INP(opa_i[24]), .ZN(n244) );
  INVX0 U295 ( .INP(opa_i[23]), .ZN(n243) );
  MUX21X1 U296 ( .IN1(opa_i[30]), .IN2(opb_i[30]), .S(N109), .Q(\U3/U2/Z_7 )
         );
  MUX21X1 U297 ( .IN1(opa_i[29]), .IN2(opb_i[29]), .S(N109), .Q(\U3/U2/Z_6 )
         );
  MUX21X1 U298 ( .IN1(opa_i[28]), .IN2(opb_i[28]), .S(N109), .Q(\U3/U2/Z_5 )
         );
  MUX21X1 U299 ( .IN1(opa_i[27]), .IN2(opb_i[27]), .S(N109), .Q(\U3/U2/Z_4 )
         );
  MUX21X1 U300 ( .IN1(opa_i[26]), .IN2(opb_i[26]), .S(N109), .Q(\U3/U2/Z_3 )
         );
  MUX21X1 U301 ( .IN1(opa_i[25]), .IN2(opb_i[25]), .S(N109), .Q(\U3/U2/Z_2 )
         );
  MUX21X1 U302 ( .IN1(opa_i[24]), .IN2(opb_i[24]), .S(N109), .Q(\U3/U2/Z_1 )
         );
  MUX21X1 U303 ( .IN1(opa_i[23]), .IN2(opb_i[23]), .S(N109), .Q(\U3/U2/Z_0 )
         );
  OR2X1 U304 ( .IN1(opa_i[30]), .IN2(opb_i[30]), .Q(\U3/U1/Z_7 ) );
  MUX21X1 U305 ( .IN1(opb_i[29]), .IN2(opa_i[29]), .S(N109), .Q(\U3/U1/Z_6 )
         );
  MUX21X1 U306 ( .IN1(opb_i[28]), .IN2(opa_i[28]), .S(N109), .Q(\U3/U1/Z_5 )
         );
  MUX21X1 U307 ( .IN1(opb_i[27]), .IN2(opa_i[27]), .S(N109), .Q(\U3/U1/Z_4 )
         );
  MUX21X1 U308 ( .IN1(opb_i[26]), .IN2(opa_i[26]), .S(N109), .Q(\U3/U1/Z_3 )
         );
  MUX21X1 U309 ( .IN1(opb_i[25]), .IN2(opa_i[25]), .S(N109), .Q(\U3/U1/Z_2 )
         );
  MUX21X1 U310 ( .IN1(opb_i[24]), .IN2(opa_i[24]), .S(N109), .Q(\U3/U1/Z_1 )
         );
  MUX21X1 U311 ( .IN1(opb_i[23]), .IN2(opa_i[23]), .S(N109), .Q(\U3/U1/Z_0 )
         );
  OA22X1 U312 ( .IN1(opa_i[30]), .IN2(n247), .IN3(n249), .IN4(n250), .Q(n248)
         );
  AND2X1 U313 ( .IN1(n251), .IN2(opa_i[29]), .Q(n250) );
  OA221X1 U314 ( .IN1(opa_i[28]), .IN2(n252), .IN3(opa_i[29]), .IN4(n251), 
        .IN5(n253), .Q(n249) );
  AO221X1 U315 ( .IN1(opa_i[27]), .IN2(n254), .IN3(opa_i[28]), .IN4(n252), 
        .IN5(n255), .Q(n253) );
  OA221X1 U316 ( .IN1(opa_i[26]), .IN2(n256), .IN3(opa_i[27]), .IN4(n254), 
        .IN5(n257), .Q(n255) );
  AO222X1 U317 ( .IN1(opa_i[25]), .IN2(n258), .IN3(n259), .IN4(n260), .IN5(
        opa_i[26]), .IN6(n256), .Q(n257) );
  INVX0 U318 ( .INP(opb_i[25]), .ZN(n260) );
  OR2X1 U319 ( .IN1(n258), .IN2(opa_i[25]), .Q(n259) );
  AO22X1 U320 ( .IN1(opa_i[24]), .IN2(n240), .IN3(n261), .IN4(opa_i[23]), .Q(
        n258) );
  OA21X1 U321 ( .IN1(opa_i[24]), .IN2(n240), .IN3(n239), .Q(n261) );
  INVX0 U322 ( .INP(opb_i[23]), .ZN(n239) );
  INVX0 U323 ( .INP(opb_i[24]), .ZN(n240) );
  INVX0 U324 ( .INP(opb_i[26]), .ZN(n256) );
  INVX0 U325 ( .INP(opb_i[27]), .ZN(n254) );
  INVX0 U326 ( .INP(opb_i[29]), .ZN(n251) );
  INVX0 U327 ( .INP(opb_i[28]), .ZN(n252) );
  INVX0 U328 ( .INP(opb_i[30]), .ZN(n247) );
endmodule


module addsub_28_1_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI, ADD_SUB;
  output CO;

  wire   [28:0] carry;
  wire   [27:0] B_AS;
  assign carry[0] = ADD_SUB;

  FADDX1 U1_27 ( .A(A[27]), .B(B_AS[27]), .CI(carry[27]), .S(SUM[27]) );
  FADDX1 U1_26 ( .A(A[26]), .B(B_AS[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FADDX1 U1_25 ( .A(A[25]), .B(B_AS[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FADDX1 U1_24 ( .A(A[24]), .B(B_AS[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FADDX1 U1_23 ( .A(A[23]), .B(B_AS[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FADDX1 U1_22 ( .A(A[22]), .B(B_AS[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FADDX1 U1_21 ( .A(A[21]), .B(B_AS[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FADDX1 U1_20 ( .A(A[20]), .B(B_AS[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FADDX1 U1_19 ( .A(A[19]), .B(B_AS[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FADDX1 U1_18 ( .A(A[18]), .B(B_AS[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FADDX1 U1_17 ( .A(A[17]), .B(B_AS[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B_AS[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1 U1_15 ( .A(A[15]), .B(B_AS[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B_AS[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B_AS[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1 U1_12 ( .A(A[12]), .B(B_AS[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1 U1_11 ( .A(A[11]), .B(B_AS[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1 U1_10 ( .A(A[10]), .B(B_AS[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1 U1_9 ( .A(A[9]), .B(B_AS[9]), .CI(carry[9]), .CO(carry[10]), .S(
        SUM[9]) );
  FADDX1 U1_8 ( .A(A[8]), .B(B_AS[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FADDX1 U1_7 ( .A(A[7]), .B(B_AS[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FADDX1 U1_6 ( .A(A[6]), .B(B_AS[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FADDX1 U1_5 ( .A(A[5]), .B(B_AS[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FADDX1 U1_4 ( .A(A[4]), .B(B_AS[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FADDX1 U1_3 ( .A(A[3]), .B(B_AS[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FADDX1 U1_2 ( .A(A[2]), .B(B_AS[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FADDX1 U1_1 ( .A(A[1]), .B(B_AS[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FADDX1 U1_0 ( .A(A[0]), .B(B_AS[0]), .CI(carry[0]), .CO(carry[1]), .S(SUM[0]) );
  XOR2X1 U1 ( .IN1(B[9]), .IN2(carry[0]), .Q(B_AS[9]) );
  XOR2X1 U2 ( .IN1(B[8]), .IN2(carry[0]), .Q(B_AS[8]) );
  XOR2X1 U3 ( .IN1(B[7]), .IN2(carry[0]), .Q(B_AS[7]) );
  XOR2X1 U4 ( .IN1(B[6]), .IN2(carry[0]), .Q(B_AS[6]) );
  XOR2X1 U5 ( .IN1(B[5]), .IN2(carry[0]), .Q(B_AS[5]) );
  XOR2X1 U6 ( .IN1(B[4]), .IN2(carry[0]), .Q(B_AS[4]) );
  XOR2X1 U7 ( .IN1(B[3]), .IN2(carry[0]), .Q(B_AS[3]) );
  XOR2X1 U8 ( .IN1(B[2]), .IN2(carry[0]), .Q(B_AS[2]) );
  XOR2X1 U9 ( .IN1(B[27]), .IN2(carry[0]), .Q(B_AS[27]) );
  XOR2X1 U10 ( .IN1(B[26]), .IN2(carry[0]), .Q(B_AS[26]) );
  XOR2X1 U11 ( .IN1(B[25]), .IN2(carry[0]), .Q(B_AS[25]) );
  XOR2X1 U12 ( .IN1(B[24]), .IN2(carry[0]), .Q(B_AS[24]) );
  XOR2X1 U13 ( .IN1(B[23]), .IN2(carry[0]), .Q(B_AS[23]) );
  XOR2X1 U14 ( .IN1(B[22]), .IN2(carry[0]), .Q(B_AS[22]) );
  XOR2X1 U15 ( .IN1(B[21]), .IN2(carry[0]), .Q(B_AS[21]) );
  XOR2X1 U16 ( .IN1(B[20]), .IN2(carry[0]), .Q(B_AS[20]) );
  XOR2X1 U17 ( .IN1(B[1]), .IN2(carry[0]), .Q(B_AS[1]) );
  XOR2X1 U18 ( .IN1(B[19]), .IN2(carry[0]), .Q(B_AS[19]) );
  XOR2X1 U19 ( .IN1(B[18]), .IN2(carry[0]), .Q(B_AS[18]) );
  XOR2X1 U20 ( .IN1(B[17]), .IN2(carry[0]), .Q(B_AS[17]) );
  XOR2X1 U21 ( .IN1(B[16]), .IN2(carry[0]), .Q(B_AS[16]) );
  XOR2X1 U22 ( .IN1(B[15]), .IN2(carry[0]), .Q(B_AS[15]) );
  XOR2X1 U23 ( .IN1(B[14]), .IN2(carry[0]), .Q(B_AS[14]) );
  XOR2X1 U24 ( .IN1(B[13]), .IN2(carry[0]), .Q(B_AS[13]) );
  XOR2X1 U25 ( .IN1(B[12]), .IN2(carry[0]), .Q(B_AS[12]) );
  XOR2X1 U26 ( .IN1(B[11]), .IN2(carry[0]), .Q(B_AS[11]) );
  XOR2X1 U27 ( .IN1(B[10]), .IN2(carry[0]), .Q(B_AS[10]) );
  XOR2X1 U28 ( .IN1(B[0]), .IN2(carry[0]), .Q(B_AS[0]) );
endmodule


module addsub_28_1 ( clk_i, fpu_op_i, fracta_i, fractb_i, signa_i, signb_i, 
        fract_o, sign_o );
  input [27:0] fracta_i;
  input [27:0] fractb_i;
  output [27:0] fract_o;
  input clk_i, fpu_op_i, signa_i, signb_i;
  output sign_o;
  wire   s_sign_o, \U3/U1/Z_0 , \U3/U1/Z_1 , \U3/U1/Z_2 , \U3/U1/Z_3 ,
         \U3/U1/Z_4 , \U3/U1/Z_5 , \U3/U1/Z_6 , \U3/U1/Z_7 , \U3/U1/Z_8 ,
         \U3/U1/Z_9 , \U3/U1/Z_10 , \U3/U1/Z_11 , \U3/U1/Z_12 , \U3/U1/Z_13 ,
         \U3/U1/Z_14 , \U3/U1/Z_15 , \U3/U1/Z_16 , \U3/U1/Z_17 , \U3/U1/Z_18 ,
         \U3/U1/Z_19 , \U3/U1/Z_20 , \U3/U1/Z_21 , \U3/U1/Z_22 , \U3/U1/Z_23 ,
         \U3/U1/Z_24 , \U3/U1/Z_25 , \U3/U1/Z_26 , \U3/U1/Z_27 , \U3/U2/Z_0 ,
         \U3/U2/Z_1 , \U3/U2/Z_2 , \U3/U2/Z_3 , \U3/U2/Z_4 , \U3/U2/Z_5 ,
         \U3/U2/Z_6 , \U3/U2/Z_7 , \U3/U2/Z_8 , \U3/U2/Z_9 , \U3/U2/Z_10 ,
         \U3/U2/Z_11 , \U3/U2/Z_12 , \U3/U2/Z_13 , \U3/U2/Z_14 , \U3/U2/Z_15 ,
         \U3/U2/Z_16 , \U3/U2/Z_17 , \U3/U2/Z_18 , \U3/U2/Z_19 , \U3/U2/Z_20 ,
         \U3/U2/Z_21 , \U3/U2/Z_22 , \U3/U2/Z_23 , \U3/U2/Z_24 , \U3/U2/Z_25 ,
         \U3/U2/Z_26 , \U3/U2/Z_27 , \U3/U3/Z_0 , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73;
  wire   [27:0] s_fract_o;

  DFFX1 \fract_o_reg[27]  ( .D(s_fract_o[27]), .CLK(clk_i), .Q(fract_o[27]) );
  DFFX1 \fract_o_reg[26]  ( .D(s_fract_o[26]), .CLK(clk_i), .Q(fract_o[26]) );
  DFFX1 \fract_o_reg[25]  ( .D(s_fract_o[25]), .CLK(clk_i), .Q(fract_o[25]) );
  DFFX1 \fract_o_reg[24]  ( .D(s_fract_o[24]), .CLK(clk_i), .Q(fract_o[24]) );
  DFFX1 \fract_o_reg[23]  ( .D(s_fract_o[23]), .CLK(clk_i), .Q(fract_o[23]) );
  DFFX1 \fract_o_reg[22]  ( .D(s_fract_o[22]), .CLK(clk_i), .Q(fract_o[22]) );
  DFFX1 \fract_o_reg[21]  ( .D(s_fract_o[21]), .CLK(clk_i), .Q(fract_o[21]) );
  DFFX1 \fract_o_reg[20]  ( .D(s_fract_o[20]), .CLK(clk_i), .Q(fract_o[20]) );
  DFFX1 \fract_o_reg[19]  ( .D(s_fract_o[19]), .CLK(clk_i), .Q(fract_o[19]) );
  DFFX1 \fract_o_reg[18]  ( .D(s_fract_o[18]), .CLK(clk_i), .Q(fract_o[18]) );
  DFFX1 \fract_o_reg[17]  ( .D(s_fract_o[17]), .CLK(clk_i), .Q(fract_o[17]) );
  DFFX1 \fract_o_reg[16]  ( .D(s_fract_o[16]), .CLK(clk_i), .Q(fract_o[16]) );
  DFFX1 \fract_o_reg[15]  ( .D(s_fract_o[15]), .CLK(clk_i), .Q(fract_o[15]) );
  DFFX1 \fract_o_reg[14]  ( .D(s_fract_o[14]), .CLK(clk_i), .Q(fract_o[14]) );
  DFFX1 \fract_o_reg[13]  ( .D(s_fract_o[13]), .CLK(clk_i), .Q(fract_o[13]) );
  DFFX1 \fract_o_reg[12]  ( .D(s_fract_o[12]), .CLK(clk_i), .Q(fract_o[12]) );
  DFFX1 \fract_o_reg[11]  ( .D(s_fract_o[11]), .CLK(clk_i), .Q(fract_o[11]) );
  DFFX1 \fract_o_reg[10]  ( .D(s_fract_o[10]), .CLK(clk_i), .Q(fract_o[10]) );
  DFFX1 \fract_o_reg[9]  ( .D(s_fract_o[9]), .CLK(clk_i), .Q(fract_o[9]) );
  DFFX1 \fract_o_reg[8]  ( .D(s_fract_o[8]), .CLK(clk_i), .Q(fract_o[8]) );
  DFFX1 \fract_o_reg[7]  ( .D(s_fract_o[7]), .CLK(clk_i), .Q(fract_o[7]) );
  DFFX1 \fract_o_reg[6]  ( .D(s_fract_o[6]), .CLK(clk_i), .Q(fract_o[6]) );
  DFFX1 \fract_o_reg[5]  ( .D(s_fract_o[5]), .CLK(clk_i), .Q(fract_o[5]) );
  DFFX1 \fract_o_reg[4]  ( .D(s_fract_o[4]), .CLK(clk_i), .Q(fract_o[4]) );
  DFFX1 \fract_o_reg[3]  ( .D(s_fract_o[3]), .CLK(clk_i), .Q(fract_o[3]) );
  DFFX1 \fract_o_reg[2]  ( .D(s_fract_o[2]), .CLK(clk_i), .Q(fract_o[2]) );
  DFFX1 \fract_o_reg[1]  ( .D(s_fract_o[1]), .CLK(clk_i), .Q(fract_o[1]) );
  DFFX1 \fract_o_reg[0]  ( .D(s_fract_o[0]), .CLK(clk_i), .Q(fract_o[0]) );
  DFFX1 sign_o_reg ( .D(s_sign_o), .CLK(clk_i), .Q(sign_o) );
  addsub_28_1_DW01_addsub_0 r318 ( .A({\U3/U1/Z_27 , \U3/U1/Z_26 , 
        \U3/U1/Z_25 , \U3/U1/Z_24 , \U3/U1/Z_23 , \U3/U1/Z_22 , \U3/U1/Z_21 , 
        \U3/U1/Z_20 , \U3/U1/Z_19 , \U3/U1/Z_18 , \U3/U1/Z_17 , \U3/U1/Z_16 , 
        \U3/U1/Z_15 , \U3/U1/Z_14 , \U3/U1/Z_13 , \U3/U1/Z_12 , \U3/U1/Z_11 , 
        \U3/U1/Z_10 , \U3/U1/Z_9 , \U3/U1/Z_8 , \U3/U1/Z_7 , \U3/U1/Z_6 , 
        \U3/U1/Z_5 , \U3/U1/Z_4 , \U3/U1/Z_3 , \U3/U1/Z_2 , \U3/U1/Z_1 , 
        \U3/U1/Z_0 }), .B({\U3/U2/Z_27 , \U3/U2/Z_26 , \U3/U2/Z_25 , 
        \U3/U2/Z_24 , \U3/U2/Z_23 , \U3/U2/Z_22 , \U3/U2/Z_21 , \U3/U2/Z_20 , 
        \U3/U2/Z_19 , \U3/U2/Z_18 , \U3/U2/Z_17 , \U3/U2/Z_16 , \U3/U2/Z_15 , 
        \U3/U2/Z_14 , \U3/U2/Z_13 , \U3/U2/Z_12 , \U3/U2/Z_11 , \U3/U2/Z_10 , 
        \U3/U2/Z_9 , \U3/U2/Z_8 , \U3/U2/Z_7 , \U3/U2/Z_6 , \U3/U2/Z_5 , 
        \U3/U2/Z_4 , \U3/U2/Z_3 , \U3/U2/Z_2 , \U3/U2/Z_1 , \U3/U2/Z_0 }), 
        .CI(1'b0), .ADD_SUB(\U3/U3/Z_0 ), .SUM(s_fract_o) );
  AND2X2 U3 ( .IN1(\U3/U3/Z_0 ), .IN2(n5), .Q(n15) );
  OA21X1 U4 ( .IN1(n1), .IN2(n2), .IN3(n3), .Q(s_sign_o) );
  MUX21X1 U6 ( .IN1(n4), .IN2(signa_i), .S(n5), .Q(n3) );
  NAND4X0 U7 ( .IN1(n6), .IN2(n7), .IN3(n8), .IN4(n9), .QN(n2) );
  NOR4X0 U8 ( .IN1(n10), .IN2(s_fract_o[15]), .IN3(s_fract_o[17]), .IN4(
        s_fract_o[16]), .QN(n9) );
  OR4X1 U9 ( .IN1(s_fract_o[19]), .IN2(s_fract_o[18]), .IN3(s_fract_o[20]), 
        .IN4(s_fract_o[1]), .Q(n10) );
  NOR4X0 U10 ( .IN1(s_fract_o[14]), .IN2(s_fract_o[13]), .IN3(s_fract_o[12]), 
        .IN4(s_fract_o[11]), .QN(n8) );
  NAND2X0 U11 ( .IN1(signb_i), .IN2(signa_i), .QN(n7) );
  NOR2X0 U12 ( .IN1(s_fract_o[10]), .IN2(s_fract_o[0]), .QN(n6) );
  NAND4X0 U13 ( .IN1(n11), .IN2(n12), .IN3(n13), .IN4(n14), .QN(n1) );
  NOR4X0 U14 ( .IN1(s_fract_o[9]), .IN2(s_fract_o[8]), .IN3(s_fract_o[7]), 
        .IN4(s_fract_o[6]), .QN(n14) );
  NOR4X0 U15 ( .IN1(s_fract_o[5]), .IN2(s_fract_o[4]), .IN3(s_fract_o[3]), 
        .IN4(s_fract_o[2]), .QN(n13) );
  NOR4X0 U16 ( .IN1(s_fract_o[27]), .IN2(s_fract_o[26]), .IN3(s_fract_o[25]), 
        .IN4(s_fract_o[24]), .QN(n12) );
  NOR3X0 U17 ( .IN1(s_fract_o[21]), .IN2(s_fract_o[23]), .IN3(s_fract_o[22]), 
        .QN(n11) );
  MUX21X1 U18 ( .IN1(fracta_i[9]), .IN2(fractb_i[9]), .S(n15), .Q(\U3/U2/Z_9 )
         );
  MUX21X1 U19 ( .IN1(fracta_i[8]), .IN2(fractb_i[8]), .S(n15), .Q(\U3/U2/Z_8 )
         );
  MUX21X1 U20 ( .IN1(fracta_i[7]), .IN2(fractb_i[7]), .S(n15), .Q(\U3/U2/Z_7 )
         );
  MUX21X1 U21 ( .IN1(fracta_i[6]), .IN2(fractb_i[6]), .S(n15), .Q(\U3/U2/Z_6 )
         );
  MUX21X1 U22 ( .IN1(fracta_i[5]), .IN2(fractb_i[5]), .S(n15), .Q(\U3/U2/Z_5 )
         );
  MUX21X1 U23 ( .IN1(fracta_i[4]), .IN2(fractb_i[4]), .S(n15), .Q(\U3/U2/Z_4 )
         );
  MUX21X1 U24 ( .IN1(fracta_i[3]), .IN2(fractb_i[3]), .S(n15), .Q(\U3/U2/Z_3 )
         );
  MUX21X1 U25 ( .IN1(fracta_i[27]), .IN2(fractb_i[27]), .S(n15), .Q(
        \U3/U2/Z_27 ) );
  MUX21X1 U26 ( .IN1(fracta_i[26]), .IN2(fractb_i[26]), .S(n15), .Q(
        \U3/U2/Z_26 ) );
  MUX21X1 U27 ( .IN1(fracta_i[25]), .IN2(fractb_i[25]), .S(n15), .Q(
        \U3/U2/Z_25 ) );
  MUX21X1 U28 ( .IN1(fracta_i[24]), .IN2(fractb_i[24]), .S(n15), .Q(
        \U3/U2/Z_24 ) );
  MUX21X1 U29 ( .IN1(fracta_i[23]), .IN2(fractb_i[23]), .S(n15), .Q(
        \U3/U2/Z_23 ) );
  MUX21X1 U30 ( .IN1(fracta_i[22]), .IN2(fractb_i[22]), .S(n15), .Q(
        \U3/U2/Z_22 ) );
  MUX21X1 U31 ( .IN1(fracta_i[21]), .IN2(fractb_i[21]), .S(n15), .Q(
        \U3/U2/Z_21 ) );
  MUX21X1 U32 ( .IN1(fracta_i[20]), .IN2(fractb_i[20]), .S(n15), .Q(
        \U3/U2/Z_20 ) );
  MUX21X1 U33 ( .IN1(fracta_i[2]), .IN2(fractb_i[2]), .S(n15), .Q(\U3/U2/Z_2 )
         );
  MUX21X1 U34 ( .IN1(fracta_i[19]), .IN2(fractb_i[19]), .S(n15), .Q(
        \U3/U2/Z_19 ) );
  MUX21X1 U35 ( .IN1(fracta_i[18]), .IN2(fractb_i[18]), .S(n15), .Q(
        \U3/U2/Z_18 ) );
  MUX21X1 U36 ( .IN1(fracta_i[17]), .IN2(fractb_i[17]), .S(n15), .Q(
        \U3/U2/Z_17 ) );
  MUX21X1 U37 ( .IN1(fracta_i[16]), .IN2(fractb_i[16]), .S(n15), .Q(
        \U3/U2/Z_16 ) );
  MUX21X1 U38 ( .IN1(fracta_i[15]), .IN2(fractb_i[15]), .S(n15), .Q(
        \U3/U2/Z_15 ) );
  MUX21X1 U39 ( .IN1(fracta_i[14]), .IN2(fractb_i[14]), .S(n15), .Q(
        \U3/U2/Z_14 ) );
  MUX21X1 U40 ( .IN1(fracta_i[13]), .IN2(fractb_i[13]), .S(n15), .Q(
        \U3/U2/Z_13 ) );
  MUX21X1 U41 ( .IN1(fracta_i[12]), .IN2(fractb_i[12]), .S(n15), .Q(
        \U3/U2/Z_12 ) );
  MUX21X1 U42 ( .IN1(fracta_i[11]), .IN2(fractb_i[11]), .S(n15), .Q(
        \U3/U2/Z_11 ) );
  MUX21X1 U43 ( .IN1(fracta_i[10]), .IN2(fractb_i[10]), .S(n15), .Q(
        \U3/U2/Z_10 ) );
  MUX21X1 U44 ( .IN1(fracta_i[1]), .IN2(fractb_i[1]), .S(n15), .Q(\U3/U2/Z_1 )
         );
  MUX21X1 U45 ( .IN1(fracta_i[0]), .IN2(fractb_i[0]), .S(n15), .Q(\U3/U2/Z_0 )
         );
  MUX21X1 U46 ( .IN1(fractb_i[9]), .IN2(fracta_i[9]), .S(n15), .Q(\U3/U1/Z_9 )
         );
  MUX21X1 U47 ( .IN1(fractb_i[8]), .IN2(fracta_i[8]), .S(n15), .Q(\U3/U1/Z_8 )
         );
  MUX21X1 U48 ( .IN1(fractb_i[7]), .IN2(fracta_i[7]), .S(n15), .Q(\U3/U1/Z_7 )
         );
  MUX21X1 U49 ( .IN1(fractb_i[6]), .IN2(fracta_i[6]), .S(n15), .Q(\U3/U1/Z_6 )
         );
  MUX21X1 U50 ( .IN1(fractb_i[5]), .IN2(fracta_i[5]), .S(n15), .Q(\U3/U1/Z_5 )
         );
  MUX21X1 U51 ( .IN1(fractb_i[4]), .IN2(fracta_i[4]), .S(n15), .Q(\U3/U1/Z_4 )
         );
  MUX21X1 U52 ( .IN1(fractb_i[3]), .IN2(fracta_i[3]), .S(n15), .Q(\U3/U1/Z_3 )
         );
  AO21X1 U53 ( .IN1(n15), .IN2(fracta_i[27]), .IN3(fractb_i[27]), .Q(
        \U3/U1/Z_27 ) );
  MUX21X1 U54 ( .IN1(fractb_i[26]), .IN2(fracta_i[26]), .S(n15), .Q(
        \U3/U1/Z_26 ) );
  MUX21X1 U55 ( .IN1(fractb_i[25]), .IN2(fracta_i[25]), .S(n15), .Q(
        \U3/U1/Z_25 ) );
  MUX21X1 U56 ( .IN1(fractb_i[24]), .IN2(fracta_i[24]), .S(n15), .Q(
        \U3/U1/Z_24 ) );
  MUX21X1 U57 ( .IN1(fractb_i[23]), .IN2(fracta_i[23]), .S(n15), .Q(
        \U3/U1/Z_23 ) );
  MUX21X1 U58 ( .IN1(fractb_i[22]), .IN2(fracta_i[22]), .S(n15), .Q(
        \U3/U1/Z_22 ) );
  MUX21X1 U59 ( .IN1(fractb_i[21]), .IN2(fracta_i[21]), .S(n15), .Q(
        \U3/U1/Z_21 ) );
  MUX21X1 U60 ( .IN1(fractb_i[20]), .IN2(fracta_i[20]), .S(n15), .Q(
        \U3/U1/Z_20 ) );
  MUX21X1 U61 ( .IN1(fractb_i[2]), .IN2(fracta_i[2]), .S(n15), .Q(\U3/U1/Z_2 )
         );
  MUX21X1 U62 ( .IN1(fractb_i[19]), .IN2(fracta_i[19]), .S(n15), .Q(
        \U3/U1/Z_19 ) );
  MUX21X1 U63 ( .IN1(fractb_i[18]), .IN2(fracta_i[18]), .S(n15), .Q(
        \U3/U1/Z_18 ) );
  MUX21X1 U64 ( .IN1(fractb_i[17]), .IN2(fracta_i[17]), .S(n15), .Q(
        \U3/U1/Z_17 ) );
  MUX21X1 U65 ( .IN1(fractb_i[16]), .IN2(fracta_i[16]), .S(n15), .Q(
        \U3/U1/Z_16 ) );
  MUX21X1 U66 ( .IN1(fractb_i[15]), .IN2(fracta_i[15]), .S(n15), .Q(
        \U3/U1/Z_15 ) );
  MUX21X1 U67 ( .IN1(fractb_i[14]), .IN2(fracta_i[14]), .S(n15), .Q(
        \U3/U1/Z_14 ) );
  MUX21X1 U68 ( .IN1(fractb_i[13]), .IN2(fracta_i[13]), .S(n15), .Q(
        \U3/U1/Z_13 ) );
  MUX21X1 U69 ( .IN1(fractb_i[12]), .IN2(fracta_i[12]), .S(n15), .Q(
        \U3/U1/Z_12 ) );
  MUX21X1 U70 ( .IN1(fractb_i[11]), .IN2(fracta_i[11]), .S(n15), .Q(
        \U3/U1/Z_11 ) );
  MUX21X1 U71 ( .IN1(fractb_i[10]), .IN2(fracta_i[10]), .S(n15), .Q(
        \U3/U1/Z_10 ) );
  MUX21X1 U72 ( .IN1(fractb_i[1]), .IN2(fracta_i[1]), .S(n15), .Q(\U3/U1/Z_1 )
         );
  MUX21X1 U73 ( .IN1(fractb_i[0]), .IN2(fracta_i[0]), .S(n15), .Q(\U3/U1/Z_0 )
         );
  AO21X1 U74 ( .IN1(fracta_i[27]), .IN2(n16), .IN3(n17), .Q(n5) );
  OA22X1 U75 ( .IN1(fracta_i[27]), .IN2(n16), .IN3(n18), .IN4(n19), .Q(n17) );
  AND2X1 U76 ( .IN1(n20), .IN2(fracta_i[26]), .Q(n19) );
  OA221X1 U77 ( .IN1(fracta_i[25]), .IN2(n21), .IN3(fracta_i[26]), .IN4(n20), 
        .IN5(n22), .Q(n18) );
  AO221X1 U78 ( .IN1(fracta_i[24]), .IN2(n23), .IN3(fracta_i[25]), .IN4(n21), 
        .IN5(n24), .Q(n22) );
  OA221X1 U79 ( .IN1(fracta_i[23]), .IN2(n25), .IN3(fracta_i[24]), .IN4(n23), 
        .IN5(n26), .Q(n24) );
  AO221X1 U80 ( .IN1(fracta_i[22]), .IN2(n27), .IN3(fracta_i[23]), .IN4(n25), 
        .IN5(n28), .Q(n26) );
  OA221X1 U81 ( .IN1(fracta_i[21]), .IN2(n29), .IN3(fracta_i[22]), .IN4(n27), 
        .IN5(n30), .Q(n28) );
  AO221X1 U82 ( .IN1(fracta_i[20]), .IN2(n31), .IN3(fracta_i[21]), .IN4(n29), 
        .IN5(n32), .Q(n30) );
  OA221X1 U83 ( .IN1(fracta_i[19]), .IN2(n33), .IN3(fracta_i[20]), .IN4(n31), 
        .IN5(n34), .Q(n32) );
  AO221X1 U84 ( .IN1(fracta_i[18]), .IN2(n35), .IN3(fracta_i[19]), .IN4(n33), 
        .IN5(n36), .Q(n34) );
  OA221X1 U85 ( .IN1(fracta_i[17]), .IN2(n37), .IN3(fracta_i[18]), .IN4(n35), 
        .IN5(n38), .Q(n36) );
  AO221X1 U86 ( .IN1(fracta_i[16]), .IN2(n39), .IN3(fracta_i[17]), .IN4(n37), 
        .IN5(n40), .Q(n38) );
  OA221X1 U87 ( .IN1(fracta_i[15]), .IN2(n41), .IN3(fracta_i[16]), .IN4(n39), 
        .IN5(n42), .Q(n40) );
  AO221X1 U88 ( .IN1(fracta_i[14]), .IN2(n43), .IN3(fracta_i[15]), .IN4(n41), 
        .IN5(n44), .Q(n42) );
  OA221X1 U89 ( .IN1(fracta_i[13]), .IN2(n45), .IN3(fracta_i[14]), .IN4(n43), 
        .IN5(n46), .Q(n44) );
  AO221X1 U90 ( .IN1(fracta_i[12]), .IN2(n47), .IN3(fracta_i[13]), .IN4(n45), 
        .IN5(n48), .Q(n46) );
  OA221X1 U91 ( .IN1(fracta_i[11]), .IN2(n49), .IN3(fracta_i[12]), .IN4(n47), 
        .IN5(n50), .Q(n48) );
  AO221X1 U92 ( .IN1(fracta_i[10]), .IN2(n51), .IN3(fracta_i[11]), .IN4(n49), 
        .IN5(n52), .Q(n50) );
  OA221X1 U93 ( .IN1(fracta_i[9]), .IN2(n53), .IN3(fracta_i[10]), .IN4(n51), 
        .IN5(n54), .Q(n52) );
  AO221X1 U94 ( .IN1(fracta_i[8]), .IN2(n55), .IN3(fracta_i[9]), .IN4(n53), 
        .IN5(n56), .Q(n54) );
  OA221X1 U95 ( .IN1(fracta_i[7]), .IN2(n58), .IN3(fracta_i[8]), .IN4(n55), 
        .IN5(n59), .Q(n56) );
  AO221X1 U96 ( .IN1(fracta_i[6]), .IN2(n60), .IN3(fracta_i[7]), .IN4(n58), 
        .IN5(n61), .Q(n59) );
  OA221X1 U97 ( .IN1(fracta_i[5]), .IN2(n62), .IN3(fracta_i[6]), .IN4(n60), 
        .IN5(n63), .Q(n61) );
  AO221X1 U98 ( .IN1(fracta_i[4]), .IN2(n64), .IN3(fracta_i[5]), .IN4(n62), 
        .IN5(n65), .Q(n63) );
  OA221X1 U99 ( .IN1(fracta_i[3]), .IN2(n66), .IN3(fracta_i[4]), .IN4(n64), 
        .IN5(n67), .Q(n65) );
  AO222X1 U100 ( .IN1(fracta_i[2]), .IN2(n68), .IN3(n69), .IN4(n70), .IN5(
        fracta_i[3]), .IN6(n66), .Q(n67) );
  INVX0 U101 ( .INP(fractb_i[2]), .ZN(n70) );
  OR2X1 U102 ( .IN1(n68), .IN2(fracta_i[2]), .Q(n69) );
  AO22X1 U103 ( .IN1(fracta_i[1]), .IN2(n71), .IN3(n72), .IN4(fracta_i[0]), 
        .Q(n68) );
  OA21X1 U104 ( .IN1(fracta_i[1]), .IN2(n71), .IN3(n73), .Q(n72) );
  INVX0 U105 ( .INP(fractb_i[0]), .ZN(n73) );
  INVX0 U106 ( .INP(fractb_i[1]), .ZN(n71) );
  INVX0 U107 ( .INP(fractb_i[3]), .ZN(n66) );
  INVX0 U108 ( .INP(fractb_i[4]), .ZN(n64) );
  INVX0 U109 ( .INP(fractb_i[5]), .ZN(n62) );
  INVX0 U110 ( .INP(fractb_i[6]), .ZN(n60) );
  INVX0 U111 ( .INP(fractb_i[7]), .ZN(n58) );
  INVX0 U112 ( .INP(fractb_i[8]), .ZN(n55) );
  INVX0 U113 ( .INP(fractb_i[9]), .ZN(n53) );
  INVX0 U114 ( .INP(fractb_i[10]), .ZN(n51) );
  INVX0 U115 ( .INP(fractb_i[11]), .ZN(n49) );
  INVX0 U116 ( .INP(fractb_i[12]), .ZN(n47) );
  INVX0 U117 ( .INP(fractb_i[13]), .ZN(n45) );
  INVX0 U118 ( .INP(fractb_i[14]), .ZN(n43) );
  INVX0 U119 ( .INP(fractb_i[15]), .ZN(n41) );
  INVX0 U120 ( .INP(fractb_i[16]), .ZN(n39) );
  INVX0 U121 ( .INP(fractb_i[17]), .ZN(n37) );
  INVX0 U122 ( .INP(fractb_i[18]), .ZN(n35) );
  INVX0 U123 ( .INP(fractb_i[19]), .ZN(n33) );
  INVX0 U124 ( .INP(fractb_i[20]), .ZN(n31) );
  INVX0 U125 ( .INP(fractb_i[21]), .ZN(n29) );
  INVX0 U126 ( .INP(fractb_i[22]), .ZN(n27) );
  INVX0 U127 ( .INP(fractb_i[23]), .ZN(n25) );
  INVX0 U128 ( .INP(fractb_i[24]), .ZN(n23) );
  INVX0 U129 ( .INP(fractb_i[26]), .ZN(n20) );
  INVX0 U130 ( .INP(fractb_i[25]), .ZN(n21) );
  INVX0 U131 ( .INP(fractb_i[27]), .ZN(n16) );
  XOR2X1 U132 ( .IN1(signa_i), .IN2(n4), .Q(\U3/U3/Z_0 ) );
  XOR2X1 U133 ( .IN1(signb_i), .IN2(fpu_op_i), .Q(n4) );
endmodule


module post_norm_addsub_1_DW01_inc_0 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[8]), .IN2(A[8]), .Q(SUM[8]) );
endmodule


module post_norm_addsub_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  XNOR2X1 U1 ( .IN1(A[27]), .IN2(n24), .Q(SUM[27]) );
  NAND2X1 U2 ( .IN1(A[26]), .IN2(n23), .QN(n24) );
  AND2X1 U3 ( .IN1(A[3]), .IN2(B[3]), .Q(n1) );
  AND2X1 U4 ( .IN1(A[4]), .IN2(n1), .Q(n2) );
  AND2X1 U5 ( .IN1(A[5]), .IN2(n2), .Q(n3) );
  AND2X1 U6 ( .IN1(A[6]), .IN2(n3), .Q(n4) );
  AND2X1 U7 ( .IN1(A[7]), .IN2(n4), .Q(n5) );
  AND2X1 U8 ( .IN1(A[8]), .IN2(n5), .Q(n6) );
  AND2X1 U9 ( .IN1(A[9]), .IN2(n6), .Q(n7) );
  AND2X1 U10 ( .IN1(A[10]), .IN2(n7), .Q(n8) );
  AND2X1 U11 ( .IN1(A[11]), .IN2(n8), .Q(n9) );
  AND2X1 U12 ( .IN1(A[12]), .IN2(n9), .Q(n10) );
  AND2X1 U13 ( .IN1(A[13]), .IN2(n10), .Q(n11) );
  AND2X1 U14 ( .IN1(A[14]), .IN2(n11), .Q(n12) );
  AND2X1 U15 ( .IN1(A[15]), .IN2(n12), .Q(n13) );
  AND2X1 U16 ( .IN1(A[16]), .IN2(n13), .Q(n14) );
  AND2X1 U17 ( .IN1(A[17]), .IN2(n14), .Q(n15) );
  AND2X1 U18 ( .IN1(A[18]), .IN2(n15), .Q(n16) );
  AND2X1 U19 ( .IN1(A[19]), .IN2(n16), .Q(n17) );
  AND2X1 U20 ( .IN1(A[20]), .IN2(n17), .Q(n18) );
  AND2X1 U21 ( .IN1(A[21]), .IN2(n18), .Q(n19) );
  AND2X1 U22 ( .IN1(A[22]), .IN2(n19), .Q(n20) );
  AND2X1 U23 ( .IN1(A[23]), .IN2(n20), .Q(n21) );
  AND2X1 U24 ( .IN1(A[24]), .IN2(n21), .Q(n22) );
  AND2X1 U25 ( .IN1(A[25]), .IN2(n22), .Q(n23) );
  XOR2X1 U26 ( .IN1(A[26]), .IN2(n23), .Q(SUM[26]) );
  XOR2X1 U27 ( .IN1(A[25]), .IN2(n22), .Q(SUM[25]) );
  XOR2X1 U28 ( .IN1(A[24]), .IN2(n21), .Q(SUM[24]) );
  XOR2X1 U29 ( .IN1(A[23]), .IN2(n20), .Q(SUM[23]) );
  XOR2X1 U30 ( .IN1(A[22]), .IN2(n19), .Q(SUM[22]) );
  XOR2X1 U31 ( .IN1(A[21]), .IN2(n18), .Q(SUM[21]) );
  XOR2X1 U32 ( .IN1(A[20]), .IN2(n17), .Q(SUM[20]) );
  XOR2X1 U33 ( .IN1(A[19]), .IN2(n16), .Q(SUM[19]) );
  XOR2X1 U34 ( .IN1(A[18]), .IN2(n15), .Q(SUM[18]) );
  XOR2X1 U35 ( .IN1(A[17]), .IN2(n14), .Q(SUM[17]) );
  XOR2X1 U36 ( .IN1(A[16]), .IN2(n13), .Q(SUM[16]) );
  XOR2X1 U37 ( .IN1(A[15]), .IN2(n12), .Q(SUM[15]) );
  XOR2X1 U38 ( .IN1(A[14]), .IN2(n11), .Q(SUM[14]) );
  XOR2X1 U39 ( .IN1(A[13]), .IN2(n10), .Q(SUM[13]) );
  XOR2X1 U40 ( .IN1(A[12]), .IN2(n9), .Q(SUM[12]) );
  XOR2X1 U41 ( .IN1(A[11]), .IN2(n8), .Q(SUM[11]) );
  XOR2X1 U42 ( .IN1(A[10]), .IN2(n7), .Q(SUM[10]) );
  XOR2X1 U43 ( .IN1(A[9]), .IN2(n6), .Q(SUM[9]) );
  XOR2X1 U44 ( .IN1(A[8]), .IN2(n5), .Q(SUM[8]) );
  XOR2X1 U45 ( .IN1(A[7]), .IN2(n4), .Q(SUM[7]) );
  XOR2X1 U46 ( .IN1(A[6]), .IN2(n3), .Q(SUM[6]) );
  XOR2X1 U47 ( .IN1(A[5]), .IN2(n2), .Q(SUM[5]) );
  XOR2X1 U48 ( .IN1(A[4]), .IN2(n1), .Q(SUM[4]) );
  XOR2X1 U49 ( .IN1(A[3]), .IN2(B[3]), .Q(SUM[3]) );
endmodule


module post_norm_addsub_1 ( clk_i, opa_i, opb_i, fract_28_i, exp_i, sign_i, 
        fpu_op_i, rmode_i, output_o, ine_o );
  input [31:0] opa_i;
  input [31:0] opb_i;
  input [27:0] fract_28_i;
  input [7:0] exp_i;
  input [1:0] rmode_i;
  output [31:0] output_o;
  input clk_i, sign_i, fpu_op_i;
  output ine_o;
  wire   \s_shr1[0] , N950, N951, N952, N953, N954, N956, N957, N958, N959,
         N960, N961, N962, N963, N1027, N1028, N1029, N1030, N1031, N1032,
         N1033, N1034, N1035, N1036, N1037, N1038, N1039, N1040, N1041, N1042,
         N1043, N1044, N1045, N1046, N1047, N1048, N1049, N1050, N1051, N1052,
         N1053, N1054, s_roundup, N1092, N1093, N1094, N1095, N1096, N1097,
         N1098, N1099, N1100, N1176, n49, n167, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n43, n44, n45, n46, n47, n48, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374;
  wire   [31:0] s_output_o;
  wire   [5:0] s_shl1;
  wire   [8:0] s_expo9_1;
  wire   [27:0] s_fracto28_1;
  wire   [8:0] s_expo9_2;
  wire   [27:0] s_fracto28_rnd;

  DFFX1 \output_o_reg[31]  ( .D(s_output_o[31]), .CLK(clk_i), .Q(output_o[31])
         );
  DFFX1 \s_expo9_1_reg[7]  ( .D(N963), .CLK(clk_i), .Q(s_expo9_1[7]) );
  DFFX1 \s_expo9_1_reg[6]  ( .D(N962), .CLK(clk_i), .Q(s_expo9_1[6]) );
  DFFX1 \s_expo9_1_reg[5]  ( .D(N961), .CLK(clk_i), .Q(s_expo9_1[5]) );
  DFFX1 \s_expo9_1_reg[4]  ( .D(N960), .CLK(clk_i), .Q(s_expo9_1[4]) );
  DFFX1 \s_expo9_1_reg[3]  ( .D(N959), .CLK(clk_i), .Q(s_expo9_1[3]) );
  DFFX1 \s_expo9_1_reg[2]  ( .D(N958), .CLK(clk_i), .Q(s_expo9_1[2]) );
  DFFX1 \s_expo9_1_reg[1]  ( .D(N957), .CLK(clk_i), .Q(s_expo9_1[1]) );
  DFFX1 \s_expo9_1_reg[0]  ( .D(N956), .CLK(clk_i), .Q(s_expo9_1[0]) );
  DFFSSRX1 \s_shr1_reg[0]  ( .D(fract_28_i[27]), .RSTB(n167), .SETB(1'b1), 
        .CLK(clk_i), .Q(\s_shr1[0] ), .QN(n6) );
  DFFX1 \s_shl1_reg[4]  ( .D(N954), .CLK(clk_i), .Q(s_shl1[4]), .QN(n8) );
  DFFX1 \s_shl1_reg[3]  ( .D(N953), .CLK(clk_i), .Q(s_shl1[3]), .QN(n5) );
  DFFX1 \s_shl1_reg[2]  ( .D(N952), .CLK(clk_i), .Q(s_shl1[2]), .QN(n7) );
  DFFX1 \s_shl1_reg[1]  ( .D(N951), .CLK(clk_i), .Q(s_shl1[1]), .QN(n3) );
  DFFX1 \s_shl1_reg[0]  ( .D(N950), .CLK(clk_i), .Q(s_shl1[0]), .QN(n9) );
  DFFX1 \s_fracto28_1_reg[27]  ( .D(N1054), .CLK(clk_i), .Q(s_fracto28_1[27]), 
        .QN(n374) );
  DFFX1 \s_fracto28_1_reg[26]  ( .D(N1053), .CLK(clk_i), .Q(s_fracto28_1[26]), 
        .QN(n373) );
  DFFX1 \s_fracto28_1_reg[25]  ( .D(N1052), .CLK(clk_i), .Q(s_fracto28_1[25])
         );
  DFFX1 \s_fracto28_1_reg[24]  ( .D(N1051), .CLK(clk_i), .Q(s_fracto28_1[24])
         );
  DFFX1 \s_fracto28_1_reg[23]  ( .D(N1050), .CLK(clk_i), .Q(s_fracto28_1[23])
         );
  DFFX1 \s_fracto28_1_reg[22]  ( .D(N1049), .CLK(clk_i), .Q(s_fracto28_1[22])
         );
  DFFX1 \s_fracto28_1_reg[21]  ( .D(N1048), .CLK(clk_i), .Q(s_fracto28_1[21])
         );
  DFFX1 \s_fracto28_1_reg[20]  ( .D(N1047), .CLK(clk_i), .Q(s_fracto28_1[20])
         );
  DFFX1 \s_fracto28_1_reg[19]  ( .D(N1046), .CLK(clk_i), .Q(s_fracto28_1[19])
         );
  DFFX1 \s_fracto28_1_reg[18]  ( .D(N1045), .CLK(clk_i), .Q(s_fracto28_1[18])
         );
  DFFX1 \s_fracto28_1_reg[17]  ( .D(N1044), .CLK(clk_i), .Q(s_fracto28_1[17])
         );
  DFFX1 \s_fracto28_1_reg[16]  ( .D(N1043), .CLK(clk_i), .Q(s_fracto28_1[16])
         );
  DFFX1 \s_fracto28_1_reg[15]  ( .D(N1042), .CLK(clk_i), .Q(s_fracto28_1[15])
         );
  DFFX1 \s_fracto28_1_reg[14]  ( .D(N1041), .CLK(clk_i), .Q(s_fracto28_1[14])
         );
  DFFX1 \s_fracto28_1_reg[13]  ( .D(N1040), .CLK(clk_i), .Q(s_fracto28_1[13])
         );
  DFFX1 \s_fracto28_1_reg[12]  ( .D(N1039), .CLK(clk_i), .Q(s_fracto28_1[12])
         );
  DFFX1 \s_fracto28_1_reg[11]  ( .D(N1038), .CLK(clk_i), .Q(s_fracto28_1[11])
         );
  DFFX1 \s_fracto28_1_reg[10]  ( .D(N1037), .CLK(clk_i), .Q(s_fracto28_1[10])
         );
  DFFX1 \s_fracto28_1_reg[9]  ( .D(N1036), .CLK(clk_i), .Q(s_fracto28_1[9]) );
  DFFX1 \s_fracto28_1_reg[8]  ( .D(N1035), .CLK(clk_i), .Q(s_fracto28_1[8]) );
  DFFX1 \s_fracto28_1_reg[7]  ( .D(N1034), .CLK(clk_i), .Q(s_fracto28_1[7]) );
  DFFX1 \s_fracto28_1_reg[6]  ( .D(N1033), .CLK(clk_i), .Q(s_fracto28_1[6]) );
  DFFX1 \s_fracto28_1_reg[5]  ( .D(N1032), .CLK(clk_i), .Q(s_fracto28_1[5]) );
  DFFX1 \s_fracto28_1_reg[4]  ( .D(N1031), .CLK(clk_i), .Q(s_fracto28_1[4]) );
  DFFX1 \s_fracto28_1_reg[3]  ( .D(N1030), .CLK(clk_i), .Q(s_fracto28_1[3]), 
        .QN(n49) );
  DFFX1 \s_fracto28_1_reg[2]  ( .D(N1029), .CLK(clk_i), .Q(s_fracto28_1[2]), 
        .QN(n10) );
  DFFX1 \s_fracto28_1_reg[1]  ( .D(N1028), .CLK(clk_i), .Q(s_fracto28_1[1]), 
        .QN(n2) );
  DFFX1 \s_fracto28_1_reg[0]  ( .D(N1027), .CLK(clk_i), .Q(s_fracto28_1[0]), 
        .QN(n4) );
  DFFX1 ine_o_reg ( .D(N1176), .CLK(clk_i), .Q(ine_o) );
  DFFX1 \output_o_reg[9]  ( .D(s_output_o[9]), .CLK(clk_i), .Q(output_o[9]) );
  DFFX1 \output_o_reg[8]  ( .D(s_output_o[8]), .CLK(clk_i), .Q(output_o[8]) );
  DFFX1 \output_o_reg[7]  ( .D(s_output_o[7]), .CLK(clk_i), .Q(output_o[7]) );
  DFFX1 \output_o_reg[6]  ( .D(s_output_o[6]), .CLK(clk_i), .Q(output_o[6]) );
  DFFX1 \output_o_reg[5]  ( .D(s_output_o[5]), .CLK(clk_i), .Q(output_o[5]) );
  DFFX1 \output_o_reg[4]  ( .D(s_output_o[4]), .CLK(clk_i), .Q(output_o[4]) );
  DFFX1 \output_o_reg[3]  ( .D(s_output_o[3]), .CLK(clk_i), .Q(output_o[3]) );
  DFFX1 \output_o_reg[2]  ( .D(s_output_o[2]), .CLK(clk_i), .Q(output_o[2]) );
  DFFX1 \output_o_reg[21]  ( .D(s_output_o[21]), .CLK(clk_i), .Q(output_o[21])
         );
  DFFX1 \output_o_reg[20]  ( .D(s_output_o[20]), .CLK(clk_i), .Q(output_o[20])
         );
  DFFX1 \output_o_reg[1]  ( .D(s_output_o[1]), .CLK(clk_i), .Q(output_o[1]) );
  DFFX1 \output_o_reg[19]  ( .D(s_output_o[19]), .CLK(clk_i), .Q(output_o[19])
         );
  DFFX1 \output_o_reg[18]  ( .D(s_output_o[18]), .CLK(clk_i), .Q(output_o[18])
         );
  DFFX1 \output_o_reg[17]  ( .D(s_output_o[17]), .CLK(clk_i), .Q(output_o[17])
         );
  DFFX1 \output_o_reg[16]  ( .D(s_output_o[16]), .CLK(clk_i), .Q(output_o[16])
         );
  DFFX1 \output_o_reg[15]  ( .D(s_output_o[15]), .CLK(clk_i), .Q(output_o[15])
         );
  DFFX1 \output_o_reg[14]  ( .D(s_output_o[14]), .CLK(clk_i), .Q(output_o[14])
         );
  DFFX1 \output_o_reg[13]  ( .D(s_output_o[13]), .CLK(clk_i), .Q(output_o[13])
         );
  DFFX1 \output_o_reg[12]  ( .D(s_output_o[12]), .CLK(clk_i), .Q(output_o[12])
         );
  DFFX1 \output_o_reg[11]  ( .D(s_output_o[11]), .CLK(clk_i), .Q(output_o[11])
         );
  DFFX1 \output_o_reg[10]  ( .D(s_output_o[10]), .CLK(clk_i), .Q(output_o[10])
         );
  DFFX1 \output_o_reg[0]  ( .D(s_output_o[0]), .CLK(clk_i), .Q(output_o[0]) );
  DFFX1 \output_o_reg[22]  ( .D(s_output_o[22]), .CLK(clk_i), .Q(output_o[22])
         );
  DFFX1 \output_o_reg[30]  ( .D(s_output_o[30]), .CLK(clk_i), .Q(output_o[30])
         );
  DFFX1 \output_o_reg[29]  ( .D(s_output_o[29]), .CLK(clk_i), .Q(output_o[29])
         );
  DFFX1 \output_o_reg[28]  ( .D(s_output_o[28]), .CLK(clk_i), .Q(output_o[28])
         );
  DFFX1 \output_o_reg[27]  ( .D(s_output_o[27]), .CLK(clk_i), .Q(output_o[27])
         );
  DFFX1 \output_o_reg[26]  ( .D(s_output_o[26]), .CLK(clk_i), .Q(output_o[26])
         );
  DFFX1 \output_o_reg[25]  ( .D(s_output_o[25]), .CLK(clk_i), .Q(output_o[25])
         );
  DFFX1 \output_o_reg[24]  ( .D(s_output_o[24]), .CLK(clk_i), .Q(output_o[24])
         );
  DFFX1 \output_o_reg[23]  ( .D(s_output_o[23]), .CLK(clk_i), .Q(output_o[23])
         );
  post_norm_addsub_1_DW01_inc_0 add_188 ( .A(s_expo9_2), .SUM({N1100, N1099, 
        N1098, N1097, N1096, N1095, N1094, N1093, N1092}) );
  post_norm_addsub_1_DW01_add_0 add_182_aco ( .A(s_fracto28_1), .B({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, s_roundup, 
        1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(s_fracto28_rnd) );
  INVX1 U4 ( .INP(n6), .ZN(n224) );
  NAND2X0 U5 ( .IN1(n11), .IN2(n12), .QN(s_roundup) );
  NAND4X0 U6 ( .IN1(s_fracto28_1[2]), .IN2(n13), .IN3(n14), .IN4(n15), .QN(n12) );
  INVX0 U7 ( .INP(rmode_i[0]), .ZN(n14) );
  NAND4X0 U8 ( .IN1(n16), .IN2(n4), .IN3(n2), .IN4(n49), .QN(n13) );
  NAND2X0 U9 ( .IN1(n17), .IN2(n18), .QN(n11) );
  NAND4X0 U10 ( .IN1(n16), .IN2(n4), .IN3(n2), .IN4(n10), .QN(n18) );
  NAND2X0 U11 ( .IN1(fract_28_i[27]), .IN2(fract_28_i[0]), .QN(n16) );
  MUX21X1 U12 ( .IN1(n19), .IN2(n20), .S(rmode_i[0]), .Q(n17) );
  AND2X1 U13 ( .IN1(rmode_i[1]), .IN2(sign_i), .Q(n20) );
  NOR2X0 U14 ( .IN1(sign_i), .IN2(n15), .QN(n19) );
  INVX0 U15 ( .INP(rmode_i[1]), .ZN(n15) );
  AO22X1 U16 ( .IN1(s_fracto28_rnd[13]), .IN2(n21), .IN3(s_fracto28_rnd[12]), 
        .IN4(n22), .Q(s_output_o[9]) );
  AO22X1 U17 ( .IN1(n21), .IN2(s_fracto28_rnd[12]), .IN3(s_fracto28_rnd[11]), 
        .IN4(n22), .Q(s_output_o[8]) );
  AO22X1 U18 ( .IN1(s_fracto28_rnd[11]), .IN2(n21), .IN3(s_fracto28_rnd[10]), 
        .IN4(n22), .Q(s_output_o[7]) );
  AO22X1 U19 ( .IN1(s_fracto28_rnd[10]), .IN2(n21), .IN3(s_fracto28_rnd[9]), 
        .IN4(n22), .Q(s_output_o[6]) );
  AO22X1 U20 ( .IN1(s_fracto28_rnd[9]), .IN2(n21), .IN3(s_fracto28_rnd[8]), 
        .IN4(n22), .Q(s_output_o[5]) );
  AO22X1 U21 ( .IN1(s_fracto28_rnd[8]), .IN2(n21), .IN3(s_fracto28_rnd[7]), 
        .IN4(n22), .Q(s_output_o[4]) );
  AO22X1 U22 ( .IN1(s_fracto28_rnd[7]), .IN2(n21), .IN3(s_fracto28_rnd[6]), 
        .IN4(n22), .Q(s_output_o[3]) );
  MUX21X1 U23 ( .IN1(sign_i), .IN2(n23), .S(n24), .Q(s_output_o[31]) );
  NOR2X0 U24 ( .IN1(n25), .IN2(n26), .QN(n24) );
  INVX0 U25 ( .INP(n27), .ZN(n26) );
  AND3X1 U26 ( .IN1(n28), .IN2(n29), .IN3(n30), .Q(n25) );
  MUX21X1 U27 ( .IN1(opb_i[31]), .IN2(opa_i[31]), .S(n30), .Q(n23) );
  AO221X1 U28 ( .IN1(n31), .IN2(N1099), .IN3(n32), .IN4(s_expo9_2[7]), .IN5(
        n33), .Q(s_output_o[30]) );
  AO22X1 U29 ( .IN1(s_fracto28_rnd[6]), .IN2(n21), .IN3(s_fracto28_rnd[5]), 
        .IN4(n22), .Q(s_output_o[2]) );
  AO221X1 U30 ( .IN1(n31), .IN2(N1098), .IN3(n32), .IN4(s_expo9_2[6]), .IN5(
        n33), .Q(s_output_o[29]) );
  AO221X1 U31 ( .IN1(n31), .IN2(N1097), .IN3(n32), .IN4(s_expo9_2[5]), .IN5(
        n33), .Q(s_output_o[28]) );
  AO221X1 U32 ( .IN1(n31), .IN2(N1096), .IN3(n32), .IN4(s_expo9_2[4]), .IN5(
        n33), .Q(s_output_o[27]) );
  AO221X1 U33 ( .IN1(n31), .IN2(N1095), .IN3(n32), .IN4(s_expo9_2[3]), .IN5(
        n33), .Q(s_output_o[26]) );
  AO221X1 U34 ( .IN1(n31), .IN2(N1094), .IN3(n32), .IN4(s_expo9_2[2]), .IN5(
        n33), .Q(s_output_o[25]) );
  AO221X1 U36 ( .IN1(n31), .IN2(N1093), .IN3(n32), .IN4(s_expo9_2[1]), .IN5(
        n33), .Q(s_output_o[24]) );
  AO221X1 U37 ( .IN1(N1092), .IN2(n31), .IN3(n32), .IN4(s_expo9_2[0]), .IN5(
        n33), .Q(s_output_o[23]) );
  INVX0 U38 ( .INP(n34), .ZN(n33) );
  AO221X1 U39 ( .IN1(s_fracto28_rnd[25]), .IN2(n22), .IN3(s_fracto28_rnd[26]), 
        .IN4(n21), .IN5(n27), .Q(s_output_o[22]) );
  AO21X1 U40 ( .IN1(n28), .IN2(n35), .IN3(n30), .Q(n27) );
  AND2X1 U41 ( .IN1(n36), .IN2(n37), .Q(n30) );
  NAND4X0 U42 ( .IN1(n38), .IN2(n39), .IN3(n40), .IN4(n41), .QN(n37) );
  NOR4X0 U43 ( .IN1(n43), .IN2(opa_i[4]), .IN3(opa_i[6]), .IN4(opa_i[5]), .QN(
        n41) );
  OR3X1 U44 ( .IN1(opa_i[9]), .IN2(opa_i[8]), .IN3(opa_i[7]), .Q(n43) );
  NOR4X0 U45 ( .IN1(n44), .IN2(opa_i[1]), .IN3(opa_i[21]), .IN4(opa_i[20]), 
        .QN(n40) );
  OR3X1 U46 ( .IN1(opa_i[3]), .IN2(opa_i[2]), .IN3(opa_i[22]), .Q(n44) );
  NOR4X0 U47 ( .IN1(n45), .IN2(opa_i[14]), .IN3(opa_i[16]), .IN4(opa_i[15]), 
        .QN(n39) );
  OR3X1 U48 ( .IN1(opa_i[19]), .IN2(opa_i[18]), .IN3(opa_i[17]), .Q(n45) );
  NOR4X0 U49 ( .IN1(n46), .IN2(opa_i[11]), .IN3(opa_i[13]), .IN4(opa_i[12]), 
        .QN(n38) );
  OR2X1 U50 ( .IN1(opa_i[10]), .IN2(opa_i[0]), .Q(n46) );
  AO21X1 U51 ( .IN1(n36), .IN2(n47), .IN3(n29), .Q(n35) );
  NAND4X0 U52 ( .IN1(n48), .IN2(n50), .IN3(n51), .IN4(n52), .QN(n29) );
  NOR4X0 U53 ( .IN1(n53), .IN2(opb_i[4]), .IN3(opb_i[6]), .IN4(opb_i[5]), .QN(
        n52) );
  OR3X1 U54 ( .IN1(opb_i[9]), .IN2(opb_i[8]), .IN3(opb_i[7]), .Q(n53) );
  NOR4X0 U55 ( .IN1(n54), .IN2(opb_i[1]), .IN3(opb_i[21]), .IN4(opb_i[20]), 
        .QN(n51) );
  OR3X1 U56 ( .IN1(opb_i[3]), .IN2(opb_i[2]), .IN3(opb_i[22]), .Q(n54) );
  NOR4X0 U57 ( .IN1(n55), .IN2(opb_i[14]), .IN3(opb_i[16]), .IN4(opb_i[15]), 
        .QN(n50) );
  OR3X1 U58 ( .IN1(opb_i[19]), .IN2(opb_i[18]), .IN3(opb_i[17]), .Q(n55) );
  NOR4X0 U59 ( .IN1(n56), .IN2(opb_i[11]), .IN3(opb_i[13]), .IN4(opb_i[12]), 
        .QN(n48) );
  OR2X1 U60 ( .IN1(opb_i[10]), .IN2(opb_i[0]), .Q(n56) );
  XOR3X1 U61 ( .IN1(opb_i[31]), .IN2(opa_i[31]), .IN3(fpu_op_i), .Q(n47) );
  AO22X1 U62 ( .IN1(s_fracto28_rnd[25]), .IN2(n21), .IN3(s_fracto28_rnd[24]), 
        .IN4(n22), .Q(s_output_o[21]) );
  AO22X1 U63 ( .IN1(s_fracto28_rnd[24]), .IN2(n21), .IN3(s_fracto28_rnd[23]), 
        .IN4(n22), .Q(s_output_o[20]) );
  AO22X1 U64 ( .IN1(s_fracto28_rnd[5]), .IN2(n21), .IN3(s_fracto28_rnd[4]), 
        .IN4(n22), .Q(s_output_o[1]) );
  AO22X1 U65 ( .IN1(s_fracto28_rnd[23]), .IN2(n21), .IN3(s_fracto28_rnd[22]), 
        .IN4(n22), .Q(s_output_o[19]) );
  AO22X1 U66 ( .IN1(s_fracto28_rnd[22]), .IN2(n21), .IN3(s_fracto28_rnd[21]), 
        .IN4(n22), .Q(s_output_o[18]) );
  AO22X1 U67 ( .IN1(s_fracto28_rnd[21]), .IN2(n21), .IN3(s_fracto28_rnd[20]), 
        .IN4(n22), .Q(s_output_o[17]) );
  AO22X1 U68 ( .IN1(s_fracto28_rnd[20]), .IN2(n21), .IN3(s_fracto28_rnd[19]), 
        .IN4(n22), .Q(s_output_o[16]) );
  AO22X1 U69 ( .IN1(s_fracto28_rnd[19]), .IN2(n21), .IN3(s_fracto28_rnd[18]), 
        .IN4(n22), .Q(s_output_o[15]) );
  AO22X1 U70 ( .IN1(s_fracto28_rnd[18]), .IN2(n21), .IN3(s_fracto28_rnd[17]), 
        .IN4(n22), .Q(s_output_o[14]) );
  AO22X1 U71 ( .IN1(s_fracto28_rnd[17]), .IN2(n21), .IN3(s_fracto28_rnd[16]), 
        .IN4(n22), .Q(s_output_o[13]) );
  AO22X1 U72 ( .IN1(s_fracto28_rnd[16]), .IN2(n21), .IN3(s_fracto28_rnd[15]), 
        .IN4(n22), .Q(s_output_o[12]) );
  AO22X1 U73 ( .IN1(s_fracto28_rnd[15]), .IN2(n21), .IN3(s_fracto28_rnd[14]), 
        .IN4(n22), .Q(s_output_o[11]) );
  AO22X1 U74 ( .IN1(s_fracto28_rnd[14]), .IN2(n21), .IN3(s_fracto28_rnd[13]), 
        .IN4(n22), .Q(s_output_o[10]) );
  AO22X1 U75 ( .IN1(s_fracto28_rnd[4]), .IN2(n21), .IN3(s_fracto28_rnd[3]), 
        .IN4(n22), .Q(s_output_o[0]) );
  AND2X1 U76 ( .IN1(n34), .IN2(n32), .Q(n22) );
  NOR2X0 U77 ( .IN1(n57), .IN2(s_fracto28_rnd[27]), .QN(n32) );
  AND2X1 U78 ( .IN1(n31), .IN2(n34), .Q(n21) );
  NOR3X0 U79 ( .IN1(n28), .IN2(n36), .IN3(n58), .QN(n34) );
  NOR2X0 U80 ( .IN1(n59), .IN2(n57), .QN(n31) );
  NOR4X0 U81 ( .IN1(n60), .IN2(n61), .IN3(n62), .IN4(n63), .QN(n57) );
  INVX0 U82 ( .INP(s_fracto28_rnd[27]), .ZN(n59) );
  INVX0 U83 ( .INP(n64), .ZN(n167) );
  AO21X1 U84 ( .IN1(n65), .IN2(n66), .IN3(n67), .Q(N962) );
  AO21X1 U85 ( .IN1(n66), .IN2(n68), .IN3(n67), .Q(N961) );
  AO21X1 U86 ( .IN1(n66), .IN2(n69), .IN3(n67), .Q(N960) );
  AO21X1 U87 ( .IN1(n66), .IN2(n70), .IN3(n67), .Q(N959) );
  AO21X1 U88 ( .IN1(n66), .IN2(n71), .IN3(n67), .Q(N958) );
  AO21X1 U89 ( .IN1(n66), .IN2(n72), .IN3(n67), .Q(N957) );
  INVX0 U90 ( .INP(n73), .ZN(n67) );
  OR2X1 U91 ( .IN1(n64), .IN2(n74), .Q(N956) );
  OAI22X1 U92 ( .IN1(n64), .IN2(n62), .IN3(n75), .IN4(n76), .QN(N954) );
  OR2X1 U93 ( .IN1(n77), .IN2(n78), .Q(n75) );
  OAI22X1 U94 ( .IN1(n61), .IN2(n64), .IN3(n79), .IN4(n76), .QN(N953) );
  AOI21X1 U95 ( .IN1(n80), .IN2(exp_i[3]), .IN3(n77), .QN(n79) );
  OAI22X1 U96 ( .IN1(n81), .IN2(n64), .IN3(n82), .IN4(n76), .QN(N952) );
  OA21X1 U97 ( .IN1(n83), .IN2(n84), .IN3(n80), .Q(n82) );
  OAI22X1 U98 ( .IN1(n60), .IN2(n64), .IN3(n85), .IN4(n76), .QN(N951) );
  AOI21X1 U99 ( .IN1(exp_i[0]), .IN2(exp_i[1]), .IN3(n83), .QN(n85) );
  OAI22X1 U100 ( .IN1(n64), .IN2(n63), .IN3(n76), .IN4(exp_i[0]), .QN(N950) );
  AO21X1 U101 ( .IN1(n77), .IN2(n78), .IN3(n66), .Q(n76) );
  INVX0 U102 ( .INP(exp_i[4]), .ZN(n78) );
  NOR2X0 U103 ( .IN1(n80), .IN2(exp_i[3]), .QN(n77) );
  NAND2X0 U104 ( .IN1(n83), .IN2(n84), .QN(n80) );
  INVX0 U105 ( .INP(exp_i[2]), .ZN(n84) );
  NOR2X0 U106 ( .IN1(exp_i[1]), .IN2(exp_i[0]), .QN(n83) );
  NAND2X0 U107 ( .IN1(n66), .IN2(n73), .QN(n64) );
  NAND3X0 U108 ( .IN1(n86), .IN2(n87), .IN3(n88), .QN(n73) );
  OA22X1 U109 ( .IN1(n89), .IN2(n90), .IN3(exp_i[7]), .IN4(n91), .Q(n66) );
  OR4X1 U110 ( .IN1(n69), .IN2(n71), .IN3(n68), .IN4(n70), .Q(n90) );
  XNOR2X1 U111 ( .IN1(n92), .IN2(n93), .Q(n70) );
  NAND2X0 U112 ( .IN1(n94), .IN2(n95), .QN(n92) );
  XOR2X1 U113 ( .IN1(n96), .IN2(n97), .Q(n68) );
  AND2X1 U114 ( .IN1(n98), .IN2(n99), .Q(n97) );
  XOR2X1 U115 ( .IN1(n95), .IN2(n94), .Q(n71) );
  XOR2X1 U116 ( .IN1(n98), .IN2(n99), .Q(n69) );
  OR4X1 U117 ( .IN1(n72), .IN2(n65), .IN3(n74), .IN4(N963), .Q(n89) );
  AO21X1 U118 ( .IN1(n88), .IN2(n87), .IN3(n86), .Q(N963) );
  AND2X1 U119 ( .IN1(exp_i[7]), .IN2(n91), .Q(n86) );
  INVX0 U120 ( .INP(n100), .ZN(n91) );
  XOR2X1 U121 ( .IN1(n101), .IN2(fract_28_i[27]), .Q(n74) );
  XOR2X1 U122 ( .IN1(n87), .IN2(n88), .Q(n65) );
  AND3X1 U123 ( .IN1(n96), .IN2(n98), .IN3(n99), .Q(n88) );
  AND3X1 U124 ( .IN1(n93), .IN2(n95), .IN3(n94), .Q(n99) );
  AND3X1 U125 ( .IN1(n102), .IN2(n101), .IN3(fract_28_i[27]), .Q(n94) );
  XOR3X1 U126 ( .IN1(exp_i[2]), .IN2(n81), .IN3(n103), .Q(n95) );
  XOR3X1 U127 ( .IN1(exp_i[3]), .IN2(n61), .IN3(n104), .Q(n93) );
  XOR3X1 U128 ( .IN1(exp_i[4]), .IN2(n62), .IN3(n105), .Q(n98) );
  XNOR2X1 U129 ( .IN1(n106), .IN2(n107), .Q(n96) );
  AO21X1 U130 ( .IN1(exp_i[6]), .IN2(n108), .IN3(n100), .Q(n87) );
  NOR2X0 U131 ( .IN1(n108), .IN2(exp_i[6]), .QN(n100) );
  NAND2X0 U132 ( .IN1(n107), .IN2(n106), .QN(n108) );
  INVX0 U133 ( .INP(exp_i[5]), .ZN(n106) );
  AOI22X1 U134 ( .IN1(n105), .IN2(n62), .IN3(exp_i[4]), .IN4(n109), .QN(n107)
         );
  OR2X1 U135 ( .IN1(n105), .IN2(n62), .Q(n109) );
  NAND4X0 U136 ( .IN1(n110), .IN2(n111), .IN3(n112), .IN4(n113), .QN(n62) );
  AO22X1 U137 ( .IN1(n104), .IN2(n61), .IN3(exp_i[3]), .IN4(n114), .Q(n105) );
  OR2X1 U138 ( .IN1(n104), .IN2(n61), .Q(n114) );
  NAND2X0 U139 ( .IN1(n110), .IN2(n115), .QN(n61) );
  MUX21X1 U140 ( .IN1(n116), .IN2(n117), .S(n111), .Q(n115) );
  NAND4X0 U141 ( .IN1(n118), .IN2(n119), .IN3(n120), .IN4(n121), .QN(n117) );
  NOR4X0 U142 ( .IN1(fract_28_i[17]), .IN2(fract_28_i[11]), .IN3(n122), .IN4(
        n123), .QN(n121) );
  OA21X1 U143 ( .IN1(n124), .IN2(n125), .IN3(n126), .Q(n120) );
  INVX0 U144 ( .INP(n127), .ZN(n125) );
  NOR2X0 U145 ( .IN1(fract_28_i[19]), .IN2(n128), .QN(n116) );
  AO22X1 U146 ( .IN1(n103), .IN2(n81), .IN3(exp_i[2]), .IN4(n129), .Q(n104) );
  OR2X1 U147 ( .IN1(n103), .IN2(n81), .Q(n129) );
  NAND2X0 U148 ( .IN1(n110), .IN2(n130), .QN(n81) );
  NAND4X0 U149 ( .IN1(n131), .IN2(n132), .IN3(n133), .IN4(n134), .QN(n130) );
  OA22X1 U150 ( .IN1(n135), .IN2(n136), .IN3(n137), .IN4(n138), .Q(n134) );
  AND4X1 U151 ( .IN1(n139), .IN2(n119), .IN3(n118), .IN4(n140), .Q(n135) );
  OAI21X1 U152 ( .IN1(fract_28_i[11]), .IN2(n141), .IN3(n112), .QN(n140) );
  MUX21X1 U153 ( .IN1(n142), .IN2(n143), .S(n127), .Q(n141) );
  NAND3X0 U154 ( .IN1(n144), .IN2(n145), .IN3(n146), .QN(n143) );
  NOR2X0 U155 ( .IN1(fract_28_i[7]), .IN2(n147), .QN(n142) );
  NAND2X0 U156 ( .IN1(fract_28_i[14]), .IN2(n148), .QN(n118) );
  AO22X1 U157 ( .IN1(n149), .IN2(n60), .IN3(exp_i[1]), .IN4(n150), .Q(n103) );
  OR2X1 U158 ( .IN1(n149), .IN2(n60), .Q(n150) );
  XNOR2X1 U159 ( .IN1(n151), .IN2(n102), .Q(n72) );
  XOR3X1 U160 ( .IN1(exp_i[1]), .IN2(n60), .IN3(n149), .Q(n102) );
  INVX0 U161 ( .INP(n152), .ZN(n149) );
  NAND2X0 U162 ( .IN1(n110), .IN2(n153), .QN(n60) );
  NAND4X0 U163 ( .IN1(n154), .IN2(n155), .IN3(n131), .IN4(n156), .QN(n153) );
  OA21X1 U164 ( .IN1(n157), .IN2(n136), .IN3(n133), .Q(n156) );
  INVX0 U165 ( .INP(n111), .ZN(n136) );
  AND4X1 U166 ( .IN1(n158), .IN2(n126), .IN3(n139), .IN4(n159), .Q(n157) );
  INVX0 U167 ( .INP(n123), .ZN(n139) );
  NOR2X0 U168 ( .IN1(n160), .IN2(n112), .QN(n123) );
  NAND2X0 U169 ( .IN1(fract_28_i[16]), .IN2(n161), .QN(n126) );
  NAND2X0 U170 ( .IN1(n112), .IN2(n162), .QN(n158) );
  NAND4X0 U171 ( .IN1(n163), .IN2(n164), .IN3(n165), .IN4(n113), .QN(n162) );
  OR3X1 U172 ( .IN1(fract_28_i[10]), .IN2(fract_28_i[9]), .IN3(n166), .Q(n165)
         );
  NAND2X0 U173 ( .IN1(n127), .IN2(n168), .QN(n163) );
  NAND3X0 U174 ( .IN1(n169), .IN2(n146), .IN3(n170), .QN(n168) );
  NAND2X0 U175 ( .IN1(n171), .IN2(n172), .QN(n170) );
  NAND2X0 U176 ( .IN1(fract_28_i[4]), .IN2(n145), .QN(n146) );
  NAND3X0 U177 ( .IN1(n128), .IN2(n173), .IN3(n137), .QN(n131) );
  NAND2X0 U178 ( .IN1(fract_28_i[27]), .IN2(n101), .QN(n151) );
  AO21X1 U179 ( .IN1(exp_i[0]), .IN2(n63), .IN3(n152), .Q(n101) );
  NOR2X0 U180 ( .IN1(exp_i[0]), .IN2(n63), .QN(n152) );
  AND2X1 U181 ( .IN1(n174), .IN2(n175), .Q(n63) );
  NAND3X0 U182 ( .IN1(n176), .IN2(n155), .IN3(n110), .QN(n175) );
  NOR3X0 U183 ( .IN1(fract_28_i[26]), .IN2(fract_28_i[27]), .IN3(
        fract_28_i[25]), .QN(n110) );
  NAND4X0 U184 ( .IN1(n177), .IN2(n133), .IN3(n132), .IN4(n154), .QN(n176) );
  NAND2X0 U185 ( .IN1(fract_28_i[21]), .IN2(n137), .QN(n132) );
  NAND2X0 U186 ( .IN1(fract_28_i[19]), .IN2(n178), .QN(n133) );
  INVX0 U187 ( .INP(n128), .ZN(n178) );
  NAND2X0 U188 ( .IN1(n111), .IN2(n179), .QN(n177) );
  NAND4X0 U189 ( .IN1(n180), .IN2(n119), .IN3(n159), .IN4(n161), .QN(n179) );
  INVX0 U190 ( .INP(fract_28_i[17]), .ZN(n161) );
  INVX0 U191 ( .INP(n122), .ZN(n159) );
  NOR3X0 U192 ( .IN1(fract_28_i[16]), .IN2(fract_28_i[17]), .IN3(n148), .QN(
        n122) );
  NAND3X0 U193 ( .IN1(n160), .IN2(n181), .IN3(n148), .QN(n119) );
  NAND2X0 U194 ( .IN1(n112), .IN2(n182), .QN(n180) );
  AO221X1 U195 ( .IN1(fract_28_i[9]), .IN2(n183), .IN3(n127), .IN4(n184), 
        .IN5(n185), .Q(n182) );
  NAND2X0 U196 ( .IN1(n164), .IN2(n113), .QN(n185) );
  INVX0 U197 ( .INP(fract_28_i[11]), .ZN(n113) );
  NAND2X0 U198 ( .IN1(fract_28_i[7]), .IN2(n166), .QN(n164) );
  NAND4X0 U199 ( .IN1(n186), .IN2(n187), .IN3(n169), .IN4(n145), .QN(n184) );
  NAND3X0 U200 ( .IN1(n188), .IN2(n145), .IN3(n124), .QN(n169) );
  OR3X1 U201 ( .IN1(fract_28_i[0]), .IN2(fract_28_i[2]), .IN3(n124), .Q(n187)
         );
  NAND2X0 U202 ( .IN1(fract_28_i[1]), .IN2(n171), .QN(n186) );
  NOR2X0 U203 ( .IN1(n124), .IN2(fract_28_i[2]), .QN(n171) );
  NAND3X0 U204 ( .IN1(n188), .IN2(n145), .IN3(n144), .QN(n124) );
  INVX0 U205 ( .INP(fract_28_i[5]), .ZN(n145) );
  NOR3X0 U206 ( .IN1(fract_28_i[6]), .IN2(fract_28_i[7]), .IN3(n147), .QN(n127) );
  INVX0 U207 ( .INP(n166), .ZN(n147) );
  NOR3X0 U208 ( .IN1(fract_28_i[8]), .IN2(fract_28_i[9]), .IN3(fract_28_i[10]), 
        .QN(n166) );
  INVX0 U209 ( .INP(fract_28_i[10]), .ZN(n183) );
  NOR2X0 U210 ( .IN1(n160), .IN2(fract_28_i[12]), .QN(n112) );
  NAND3X0 U211 ( .IN1(n189), .IN2(n181), .IN3(n148), .QN(n160) );
  NOR3X0 U212 ( .IN1(fract_28_i[16]), .IN2(fract_28_i[17]), .IN3(
        fract_28_i[15]), .QN(n148) );
  INVX0 U213 ( .INP(fract_28_i[14]), .ZN(n181) );
  INVX0 U214 ( .INP(fract_28_i[13]), .ZN(n189) );
  NOR3X0 U215 ( .IN1(fract_28_i[18]), .IN2(fract_28_i[19]), .IN3(n128), .QN(
        n111) );
  NAND3X0 U216 ( .IN1(n190), .IN2(n173), .IN3(n137), .QN(n128) );
  NOR2X0 U217 ( .IN1(n138), .IN2(fract_28_i[22]), .QN(n137) );
  NAND2X0 U218 ( .IN1(n154), .IN2(n155), .QN(n138) );
  INVX0 U219 ( .INP(fract_28_i[23]), .ZN(n154) );
  INVX0 U220 ( .INP(fract_28_i[21]), .ZN(n173) );
  OR3X1 U221 ( .IN1(fract_28_i[26]), .IN2(fract_28_i[27]), .IN3(n191), .Q(n174) );
  INVX0 U222 ( .INP(fract_28_i[25]), .ZN(n191) );
  NOR3X0 U223 ( .IN1(n192), .IN2(n36), .IN3(n28), .QN(N1176) );
  NOR2X0 U224 ( .IN1(n193), .IN2(n194), .QN(n28) );
  NAND4X0 U225 ( .IN1(opb_i[30]), .IN2(opb_i[29]), .IN3(opb_i[28]), .IN4(
        opb_i[27]), .QN(n194) );
  NAND4X0 U226 ( .IN1(opb_i[26]), .IN2(opb_i[25]), .IN3(opb_i[24]), .IN4(
        opb_i[23]), .QN(n193) );
  NOR2X0 U227 ( .IN1(n195), .IN2(n196), .QN(n36) );
  NAND4X0 U228 ( .IN1(opa_i[30]), .IN2(opa_i[29]), .IN3(opa_i[28]), .IN4(
        opa_i[27]), .QN(n196) );
  NAND4X0 U229 ( .IN1(opa_i[26]), .IN2(opa_i[25]), .IN3(opa_i[24]), .IN4(
        opa_i[23]), .QN(n195) );
  NOR4X0 U230 ( .IN1(n197), .IN2(s_fracto28_rnd[0]), .IN3(s_fracto28_rnd[2]), 
        .IN4(s_fracto28_rnd[1]), .QN(n192) );
  AO221X1 U231 ( .IN1(\s_shr1[0] ), .IN2(fract_28_i[0]), .IN3(
        s_fracto28_rnd[3]), .IN4(s_fracto28_rnd[27]), .IN5(n58), .Q(n197) );
  INVX0 U232 ( .INP(n198), .ZN(n58) );
  MUX21X1 U233 ( .IN1(n199), .IN2(n200), .S(s_expo9_2[0]), .Q(n198) );
  AO21X1 U234 ( .IN1(s_expo9_1[0]), .IN2(n201), .IN3(n202), .Q(s_expo9_2[0])
         );
  NAND4X0 U235 ( .IN1(s_expo9_2[7]), .IN2(n203), .IN3(n204), .IN4(n205), .QN(
        n200) );
  AND4X1 U236 ( .IN1(s_expo9_2[4]), .IN2(s_expo9_2[3]), .IN3(s_expo9_2[2]), 
        .IN4(s_expo9_2[1]), .Q(n205) );
  AO21X1 U237 ( .IN1(s_expo9_1[1]), .IN2(n206), .IN3(n207), .Q(s_expo9_2[1])
         );
  AO21X1 U238 ( .IN1(s_expo9_1[2]), .IN2(n208), .IN3(n209), .Q(s_expo9_2[2])
         );
  AO21X1 U239 ( .IN1(s_expo9_1[3]), .IN2(n210), .IN3(n211), .Q(s_expo9_2[3])
         );
  AO21X1 U240 ( .IN1(s_expo9_1[4]), .IN2(n212), .IN3(n213), .Q(s_expo9_2[4])
         );
  AND2X1 U241 ( .IN1(s_expo9_2[6]), .IN2(s_expo9_2[5]), .Q(n204) );
  AO21X1 U242 ( .IN1(s_expo9_1[5]), .IN2(n214), .IN3(n215), .Q(s_expo9_2[5])
         );
  AO21X1 U243 ( .IN1(s_expo9_1[6]), .IN2(n216), .IN3(n217), .Q(s_expo9_2[6])
         );
  INVX0 U244 ( .INP(s_expo9_2[8]), .ZN(n203) );
  AO21X1 U245 ( .IN1(s_expo9_1[7]), .IN2(n218), .IN3(s_expo9_2[8]), .Q(
        s_expo9_2[7]) );
  NOR2X0 U246 ( .IN1(n218), .IN2(s_expo9_1[7]), .QN(s_expo9_2[8]) );
  INVX0 U247 ( .INP(n217), .ZN(n218) );
  NOR2X0 U248 ( .IN1(n216), .IN2(s_expo9_1[6]), .QN(n217) );
  INVX0 U249 ( .INP(n215), .ZN(n216) );
  NOR2X0 U250 ( .IN1(n214), .IN2(s_expo9_1[5]), .QN(n215) );
  INVX0 U251 ( .INP(n213), .ZN(n214) );
  NOR2X0 U252 ( .IN1(n212), .IN2(s_expo9_1[4]), .QN(n213) );
  INVX0 U253 ( .INP(n211), .ZN(n212) );
  NOR2X0 U254 ( .IN1(n210), .IN2(s_expo9_1[3]), .QN(n211) );
  INVX0 U255 ( .INP(n209), .ZN(n210) );
  NOR2X0 U256 ( .IN1(n208), .IN2(s_expo9_1[2]), .QN(n209) );
  INVX0 U257 ( .INP(n207), .ZN(n208) );
  NOR2X0 U258 ( .IN1(n206), .IN2(s_expo9_1[1]), .QN(n207) );
  INVX0 U259 ( .INP(n202), .ZN(n206) );
  NOR2X0 U260 ( .IN1(n201), .IN2(s_expo9_1[0]), .QN(n202) );
  NAND2X0 U261 ( .IN1(n374), .IN2(n373), .QN(n201) );
  NAND4X0 U262 ( .IN1(N1096), .IN2(N1095), .IN3(n219), .IN4(n220), .QN(n199)
         );
  AND4X1 U263 ( .IN1(N1097), .IN2(N1098), .IN3(N1099), .IN4(s_fracto28_rnd[27]), .Q(n220) );
  AND3X1 U264 ( .IN1(N1094), .IN2(n221), .IN3(N1093), .Q(n219) );
  INVX0 U265 ( .INP(N1100), .ZN(n221) );
  NOR3X0 U266 ( .IN1(n222), .IN2(n223), .IN3(n224), .QN(N1054) );
  NOR2X0 U267 ( .IN1(n225), .IN2(n226), .QN(n223) );
  OA221X1 U268 ( .IN1(fract_28_i[27]), .IN2(n227), .IN3(fract_28_i[24]), .IN4(
        n228), .IN5(n229), .Q(n225) );
  OA22X1 U269 ( .IN1(fract_28_i[26]), .IN2(n230), .IN3(fract_28_i[25]), .IN4(
        n231), .Q(n229) );
  MUX21X1 U270 ( .IN1(n232), .IN2(n233), .S(s_shl1[4]), .Q(n222) );
  AO222X1 U271 ( .IN1(n234), .IN2(n235), .IN3(n236), .IN4(n237), .IN5(n238), 
        .IN6(n239), .Q(n232) );
  AO22X1 U272 ( .IN1(\s_shr1[0] ), .IN2(fract_28_i[27]), .IN3(n240), .IN4(n241), .Q(N1053) );
  MUX21X1 U273 ( .IN1(n242), .IN2(n243), .S(s_shl1[4]), .Q(n241) );
  OA222X1 U274 ( .IN1(n244), .IN2(n245), .IN3(n246), .IN4(n247), .IN5(n248), 
        .IN6(n249), .Q(n242) );
  OA21X1 U275 ( .IN1(n250), .IN2(n226), .IN3(n251), .Q(n240) );
  OA221X1 U276 ( .IN1(fract_28_i[26]), .IN2(n227), .IN3(fract_28_i[23]), .IN4(
        n228), .IN5(n252), .Q(n250) );
  OA22X1 U277 ( .IN1(fract_28_i[25]), .IN2(n230), .IN3(fract_28_i[24]), .IN4(
        n231), .Q(n252) );
  AO22X1 U278 ( .IN1(fract_28_i[26]), .IN2(\s_shr1[0] ), .IN3(n253), .IN4(n254), .Q(N1052) );
  MUX21X1 U279 ( .IN1(n255), .IN2(n256), .S(s_shl1[4]), .Q(n254) );
  OA222X1 U280 ( .IN1(n244), .IN2(n257), .IN3(n246), .IN4(n258), .IN5(n248), 
        .IN6(n259), .Q(n255) );
  OA21X1 U281 ( .IN1(n260), .IN2(n226), .IN3(n251), .Q(n253) );
  OA221X1 U282 ( .IN1(fract_28_i[25]), .IN2(n227), .IN3(fract_28_i[22]), .IN4(
        n228), .IN5(n261), .Q(n260) );
  OA22X1 U283 ( .IN1(fract_28_i[24]), .IN2(n230), .IN3(fract_28_i[23]), .IN4(
        n231), .Q(n261) );
  AO22X1 U284 ( .IN1(\s_shr1[0] ), .IN2(fract_28_i[25]), .IN3(n262), .IN4(n263), .Q(N1051) );
  MUX21X1 U285 ( .IN1(n264), .IN2(n265), .S(s_shl1[4]), .Q(n263) );
  OA222X1 U286 ( .IN1(n244), .IN2(n266), .IN3(n246), .IN4(n267), .IN5(n248), 
        .IN6(n268), .Q(n264) );
  OA21X1 U287 ( .IN1(n269), .IN2(n226), .IN3(n251), .Q(n262) );
  NAND2X0 U288 ( .IN1(n270), .IN2(n8), .QN(n226) );
  OA221X1 U289 ( .IN1(fract_28_i[24]), .IN2(n227), .IN3(fract_28_i[21]), .IN4(
        n228), .IN5(n271), .Q(n269) );
  OA22X1 U290 ( .IN1(fract_28_i[23]), .IN2(n230), .IN3(fract_28_i[22]), .IN4(
        n231), .Q(n271) );
  NAND2X0 U291 ( .IN1(n272), .IN2(n273), .QN(N1050) );
  OA222X1 U292 ( .IN1(n239), .IN2(n274), .IN3(n235), .IN4(n275), .IN5(n276), 
        .IN6(n277), .Q(n273) );
  AOI221X1 U293 ( .IN1(fract_28_i[22]), .IN2(n278), .IN3(n279), .IN4(
        fract_28_i[21]), .IN5(n280), .QN(n239) );
  AO22X1 U294 ( .IN1(fract_28_i[23]), .IN2(n281), .IN3(fract_28_i[20]), .IN4(
        n282), .Q(n280) );
  OA222X1 U295 ( .IN1(n6), .IN2(n155), .IN3(n283), .IN4(n284), .IN5(n237), 
        .IN6(n285), .Q(n272) );
  INVX0 U296 ( .INP(fract_28_i[24]), .ZN(n155) );
  NAND2X0 U297 ( .IN1(n286), .IN2(n287), .QN(N1049) );
  AOI222X1 U298 ( .IN1(n245), .IN2(n288), .IN3(n249), .IN4(n289), .IN5(n290), 
        .IN6(n291), .QN(n287) );
  AO221X1 U299 ( .IN1(n282), .IN2(fract_28_i[19]), .IN3(fract_28_i[22]), .IN4(
        n281), .IN5(n292), .Q(n245) );
  AO22X1 U300 ( .IN1(fract_28_i[20]), .IN2(n279), .IN3(n278), .IN4(
        fract_28_i[21]), .Q(n292) );
  AOI222X1 U301 ( .IN1(\s_shr1[0] ), .IN2(fract_28_i[23]), .IN3(n293), .IN4(
        n294), .IN5(n247), .IN6(n295), .QN(n286) );
  NAND2X0 U302 ( .IN1(n296), .IN2(n297), .QN(N1048) );
  AOI222X1 U303 ( .IN1(n257), .IN2(n288), .IN3(n259), .IN4(n289), .IN5(n298), 
        .IN6(n291), .QN(n297) );
  AO221X1 U304 ( .IN1(fract_28_i[20]), .IN2(n278), .IN3(n279), .IN4(
        fract_28_i[19]), .IN5(n299), .Q(n257) );
  AO22X1 U305 ( .IN1(n281), .IN2(fract_28_i[21]), .IN3(fract_28_i[18]), .IN4(
        n282), .Q(n299) );
  AOI222X1 U306 ( .IN1(\s_shr1[0] ), .IN2(fract_28_i[22]), .IN3(n293), .IN4(
        n300), .IN5(n258), .IN6(n295), .QN(n296) );
  NAND2X0 U307 ( .IN1(n301), .IN2(n302), .QN(N1047) );
  AOI222X1 U308 ( .IN1(n303), .IN2(n291), .IN3(n304), .IN4(n305), .IN5(n268), 
        .IN6(n289), .QN(n302) );
  NOR2X0 U309 ( .IN1(n284), .IN2(s_shl1[3]), .QN(n305) );
  AOI222X1 U310 ( .IN1(fract_28_i[21]), .IN2(\s_shr1[0] ), .IN3(n266), .IN4(
        n288), .IN5(n267), .IN6(n295), .QN(n301) );
  AO221X1 U311 ( .IN1(n278), .IN2(fract_28_i[19]), .IN3(fract_28_i[18]), .IN4(
        n279), .IN5(n306), .Q(n266) );
  AO22X1 U312 ( .IN1(fract_28_i[20]), .IN2(n281), .IN3(fract_28_i[17]), .IN4(
        n282), .Q(n306) );
  NAND2X0 U313 ( .IN1(n307), .IN2(n308), .QN(N1046) );
  OA222X1 U314 ( .IN1(n309), .IN2(n277), .IN3(n310), .IN4(n311), .IN5(n276), 
        .IN6(n275), .Q(n308) );
  OA222X1 U315 ( .IN1(n6), .IN2(n190), .IN3(n237), .IN4(n274), .IN5(n235), 
        .IN6(n285), .Q(n307) );
  INVX0 U316 ( .INP(n312), .ZN(n235) );
  AOI221X1 U317 ( .IN1(n282), .IN2(fract_28_i[16]), .IN3(n281), .IN4(
        fract_28_i[19]), .IN5(n313), .QN(n237) );
  AO22X1 U318 ( .IN1(fract_28_i[17]), .IN2(n279), .IN3(fract_28_i[18]), .IN4(
        n278), .Q(n313) );
  INVX0 U319 ( .INP(fract_28_i[20]), .ZN(n190) );
  NAND2X0 U320 ( .IN1(n314), .IN2(n315), .QN(N1045) );
  OA222X1 U321 ( .IN1(n316), .IN2(n277), .IN3(n311), .IN4(n317), .IN5(n318), 
        .IN6(n275), .Q(n315) );
  AOI222X1 U322 ( .IN1(fract_28_i[19]), .IN2(\s_shr1[0] ), .IN3(n247), .IN4(
        n288), .IN5(n249), .IN6(n295), .QN(n314) );
  AO221X1 U323 ( .IN1(fract_28_i[17]), .IN2(n278), .IN3(n279), .IN4(
        fract_28_i[16]), .IN5(n319), .Q(n247) );
  AO22X1 U324 ( .IN1(fract_28_i[18]), .IN2(n281), .IN3(fract_28_i[15]), .IN4(
        n282), .Q(n319) );
  NAND2X0 U325 ( .IN1(n320), .IN2(n321), .QN(N1044) );
  AOI222X1 U326 ( .IN1(n322), .IN2(n291), .IN3(n323), .IN4(n324), .IN5(n298), 
        .IN6(n289), .QN(n321) );
  INVX0 U327 ( .INP(n311), .ZN(n324) );
  NAND2X0 U328 ( .IN1(n293), .IN2(n270), .QN(n311) );
  AOI222X1 U329 ( .IN1(\s_shr1[0] ), .IN2(fract_28_i[18]), .IN3(n258), .IN4(
        n288), .IN5(n259), .IN6(n295), .QN(n320) );
  AO221X1 U330 ( .IN1(n282), .IN2(fract_28_i[14]), .IN3(fract_28_i[17]), .IN4(
        n281), .IN5(n325), .Q(n258) );
  AO22X1 U331 ( .IN1(fract_28_i[15]), .IN2(n279), .IN3(n278), .IN4(
        fract_28_i[16]), .Q(n325) );
  NAND2X0 U332 ( .IN1(n326), .IN2(n327), .QN(N1043) );
  OA222X1 U333 ( .IN1(n277), .IN2(n328), .IN3(n329), .IN4(n330), .IN5(n331), 
        .IN6(n275), .Q(n327) );
  NAND2X0 U334 ( .IN1(n293), .IN2(n5), .QN(n330) );
  INVX0 U335 ( .INP(n284), .ZN(n293) );
  NAND2X0 U336 ( .IN1(n251), .IN2(s_shl1[4]), .QN(n284) );
  AOI222X1 U337 ( .IN1(\s_shr1[0] ), .IN2(fract_28_i[17]), .IN3(n267), .IN4(
        n288), .IN5(n268), .IN6(n295), .QN(n326) );
  AO221X1 U338 ( .IN1(fract_28_i[15]), .IN2(n278), .IN3(n279), .IN4(
        fract_28_i[14]), .IN5(n332), .Q(n267) );
  AO22X1 U339 ( .IN1(n281), .IN2(fract_28_i[16]), .IN3(fract_28_i[13]), .IN4(
        n282), .Q(n332) );
  AO221X1 U340 ( .IN1(n295), .IN2(n333), .IN3(\s_shr1[0] ), .IN4(
        fract_28_i[16]), .IN5(n334), .Q(N1042) );
  AO222X1 U341 ( .IN1(n291), .IN2(n335), .IN3(n289), .IN4(n336), .IN5(n288), 
        .IN6(n312), .Q(n334) );
  AO221X1 U342 ( .IN1(n278), .IN2(fract_28_i[14]), .IN3(fract_28_i[13]), .IN4(
        n279), .IN5(n337), .Q(n312) );
  AO22X1 U343 ( .IN1(fract_28_i[15]), .IN2(n281), .IN3(fract_28_i[12]), .IN4(
        n282), .Q(n337) );
  AO221X1 U344 ( .IN1(n295), .IN2(n290), .IN3(fract_28_i[15]), .IN4(
        \s_shr1[0] ), .IN5(n338), .Q(N1041) );
  AO222X1 U345 ( .IN1(n339), .IN2(n291), .IN3(n289), .IN4(n340), .IN5(n288), 
        .IN6(n249), .Q(n338) );
  AO221X1 U346 ( .IN1(fract_28_i[13]), .IN2(n278), .IN3(fract_28_i[12]), .IN4(
        n279), .IN5(n341), .Q(n249) );
  AO22X1 U347 ( .IN1(n281), .IN2(fract_28_i[14]), .IN3(fract_28_i[11]), .IN4(
        n282), .Q(n341) );
  AO221X1 U348 ( .IN1(n295), .IN2(n298), .IN3(\s_shr1[0] ), .IN4(
        fract_28_i[14]), .IN5(n342), .Q(N1040) );
  AO222X1 U349 ( .IN1(n291), .IN2(n323), .IN3(n289), .IN4(n322), .IN5(n288), 
        .IN6(n259), .Q(n342) );
  AO221X1 U350 ( .IN1(fract_28_i[12]), .IN2(n278), .IN3(fract_28_i[11]), .IN4(
        n279), .IN5(n343), .Q(n259) );
  AO22X1 U351 ( .IN1(fract_28_i[13]), .IN2(n281), .IN3(fract_28_i[10]), .IN4(
        n282), .Q(n343) );
  INVX0 U352 ( .INP(n275), .ZN(n289) );
  NAND2X0 U353 ( .IN1(n344), .IN2(n7), .QN(n275) );
  INVX0 U354 ( .INP(n277), .ZN(n291) );
  NAND2X0 U355 ( .IN1(n344), .IN2(s_shl1[2]), .QN(n277) );
  AO221X1 U356 ( .IN1(n304), .IN2(n344), .IN3(fract_28_i[13]), .IN4(
        \s_shr1[0] ), .IN5(n345), .Q(N1039) );
  AO22X1 U357 ( .IN1(n295), .IN2(n303), .IN3(n288), .IN4(n268), .Q(n345) );
  AO221X1 U358 ( .IN1(n282), .IN2(fract_28_i[9]), .IN3(fract_28_i[12]), .IN4(
        n281), .IN5(n346), .Q(n268) );
  AO22X1 U359 ( .IN1(fract_28_i[10]), .IN2(n279), .IN3(fract_28_i[11]), .IN4(
        n278), .Q(n346) );
  INVX0 U360 ( .INP(n285), .ZN(n295) );
  NAND2X0 U361 ( .IN1(n347), .IN2(n238), .QN(n285) );
  NOR2X0 U362 ( .IN1(n348), .IN2(n5), .QN(n344) );
  AO22X1 U363 ( .IN1(fract_28_i[12]), .IN2(\s_shr1[0] ), .IN3(n349), .IN4(n347), .Q(N1038) );
  INVX0 U364 ( .INP(n233), .ZN(n349) );
  AO221X1 U365 ( .IN1(n309), .IN2(s_shl1[2]), .IN3(n310), .IN4(s_shl1[3]), 
        .IN5(n350), .Q(n233) );
  AO21X1 U366 ( .IN1(n276), .IN2(n270), .IN3(n234), .Q(n350) );
  INVX0 U367 ( .INP(n333), .ZN(n276) );
  AO221X1 U368 ( .IN1(fract_28_i[10]), .IN2(n278), .IN3(n279), .IN4(
        fract_28_i[9]), .IN5(n351), .Q(n333) );
  AO22X1 U369 ( .IN1(fract_28_i[11]), .IN2(n281), .IN3(fract_28_i[8]), .IN4(
        n282), .Q(n351) );
  INVX0 U370 ( .INP(n335), .ZN(n310) );
  INVX0 U371 ( .INP(n336), .ZN(n309) );
  AO22X1 U372 ( .IN1(fract_28_i[11]), .IN2(\s_shr1[0] ), .IN3(n243), .IN4(n347), .Q(N1037) );
  AOI221X1 U373 ( .IN1(n316), .IN2(s_shl1[2]), .IN3(s_shl1[3]), .IN4(n317), 
        .IN5(n352), .QN(n243) );
  AO21X1 U374 ( .IN1(n318), .IN2(n270), .IN3(n234), .Q(n352) );
  INVX0 U375 ( .INP(n248), .ZN(n234) );
  NAND2X0 U376 ( .IN1(s_shl1[2]), .IN2(s_shl1[3]), .QN(n248) );
  INVX0 U377 ( .INP(n290), .ZN(n318) );
  AO221X1 U378 ( .IN1(n282), .IN2(fract_28_i[7]), .IN3(fract_28_i[10]), .IN4(
        n281), .IN5(n353), .Q(n290) );
  AO22X1 U379 ( .IN1(fract_28_i[8]), .IN2(n279), .IN3(n278), .IN4(
        fract_28_i[9]), .Q(n353) );
  INVX0 U380 ( .INP(n340), .ZN(n316) );
  AO22X1 U381 ( .IN1(fract_28_i[10]), .IN2(\s_shr1[0] ), .IN3(n347), .IN4(n256), .Q(N1036) );
  AO222X1 U382 ( .IN1(n238), .IN2(n322), .IN3(n323), .IN4(n236), .IN5(n270), 
        .IN6(n298), .Q(n256) );
  AO221X1 U383 ( .IN1(fract_28_i[8]), .IN2(n278), .IN3(n279), .IN4(
        fract_28_i[7]), .IN5(n354), .Q(n298) );
  AO22X1 U384 ( .IN1(n281), .IN2(fract_28_i[9]), .IN3(fract_28_i[6]), .IN4(
        n282), .Q(n354) );
  INVX0 U385 ( .INP(n246), .ZN(n236) );
  NAND2X0 U386 ( .IN1(s_shl1[3]), .IN2(n7), .QN(n246) );
  AO22X1 U387 ( .IN1(\s_shr1[0] ), .IN2(fract_28_i[9]), .IN3(n265), .IN4(n347), 
        .Q(N1035) );
  AOI222X1 U388 ( .IN1(n331), .IN2(n270), .IN3(n238), .IN4(n328), .IN5(
        s_shl1[3]), .IN6(n329), .QN(n265) );
  INVX0 U389 ( .INP(n244), .ZN(n238) );
  NAND2X0 U390 ( .IN1(s_shl1[2]), .IN2(n5), .QN(n244) );
  INVX0 U391 ( .INP(n303), .ZN(n331) );
  AO221X1 U392 ( .IN1(n278), .IN2(fract_28_i[7]), .IN3(fract_28_i[6]), .IN4(
        n279), .IN5(n355), .Q(n303) );
  AO22X1 U393 ( .IN1(fract_28_i[8]), .IN2(n281), .IN3(fract_28_i[5]), .IN4(
        n282), .Q(n355) );
  AO22X1 U394 ( .IN1(fract_28_i[8]), .IN2(\s_shr1[0] ), .IN3(n356), .IN4(n347), 
        .Q(N1034) );
  INVX0 U395 ( .INP(n283), .ZN(n356) );
  NAND2X0 U396 ( .IN1(n357), .IN2(n5), .QN(n283) );
  MUX21X1 U397 ( .IN1(n336), .IN2(n335), .S(s_shl1[2]), .Q(n357) );
  AO221X1 U398 ( .IN1(n282), .IN2(fract_28_i[4]), .IN3(n281), .IN4(
        fract_28_i[7]), .IN5(n358), .Q(n336) );
  AO22X1 U399 ( .IN1(fract_28_i[5]), .IN2(n279), .IN3(fract_28_i[6]), .IN4(
        n278), .Q(n358) );
  AO22X1 U400 ( .IN1(\s_shr1[0] ), .IN2(fract_28_i[7]), .IN3(n294), .IN4(n347), 
        .Q(N1033) );
  AND2X1 U401 ( .IN1(n359), .IN2(n5), .Q(n294) );
  MUX21X1 U402 ( .IN1(n340), .IN2(n339), .S(s_shl1[2]), .Q(n359) );
  AO221X1 U403 ( .IN1(fract_28_i[5]), .IN2(n278), .IN3(n279), .IN4(
        fract_28_i[4]), .IN5(n360), .Q(n340) );
  AO22X1 U404 ( .IN1(fract_28_i[6]), .IN2(n281), .IN3(fract_28_i[3]), .IN4(
        n282), .Q(n360) );
  AO22X1 U405 ( .IN1(fract_28_i[6]), .IN2(\s_shr1[0] ), .IN3(n300), .IN4(n347), 
        .Q(N1032) );
  AND2X1 U406 ( .IN1(n361), .IN2(n5), .Q(n300) );
  MUX21X1 U407 ( .IN1(n322), .IN2(n323), .S(s_shl1[2]), .Q(n361) );
  AO221X1 U408 ( .IN1(n278), .IN2(fract_28_i[4]), .IN3(fract_28_i[3]), .IN4(
        n279), .IN5(n362), .Q(n322) );
  AO22X1 U409 ( .IN1(fract_28_i[5]), .IN2(n281), .IN3(fract_28_i[2]), .IN4(
        n282), .Q(n362) );
  AO22X1 U410 ( .IN1(fract_28_i[5]), .IN2(\s_shr1[0] ), .IN3(n363), .IN4(n304), 
        .Q(N1031) );
  MUX21X1 U411 ( .IN1(n364), .IN2(n365), .S(s_shl1[2]), .Q(n304) );
  NOR2X0 U412 ( .IN1(n366), .IN2(n227), .QN(n365) );
  INVX0 U413 ( .INP(n328), .ZN(n364) );
  AO221X1 U414 ( .IN1(n278), .IN2(n144), .IN3(n279), .IN4(n367), .IN5(n368), 
        .Q(n328) );
  AO22X1 U415 ( .IN1(n281), .IN2(n188), .IN3(n282), .IN4(n172), .Q(n368) );
  INVX0 U416 ( .INP(fract_28_i[4]), .ZN(n188) );
  INVX0 U417 ( .INP(fract_28_i[3]), .ZN(n144) );
  AO22X1 U418 ( .IN1(\s_shr1[0] ), .IN2(fract_28_i[4]), .IN3(n288), .IN4(n335), 
        .Q(N1030) );
  AO221X1 U419 ( .IN1(fract_28_i[2]), .IN2(n278), .IN3(n279), .IN4(
        fract_28_i[1]), .IN5(n369), .Q(n335) );
  AO22X1 U420 ( .IN1(fract_28_i[3]), .IN2(n281), .IN3(n282), .IN4(
        fract_28_i[0]), .Q(n369) );
  INVX0 U421 ( .INP(n231), .ZN(n279) );
  NAND2X0 U422 ( .IN1(s_shl1[1]), .IN2(n9), .QN(n231) );
  INVX0 U423 ( .INP(n230), .ZN(n278) );
  NAND2X0 U424 ( .IN1(s_shl1[0]), .IN2(n3), .QN(n230) );
  AO22X1 U425 ( .IN1(fract_28_i[3]), .IN2(\s_shr1[0] ), .IN3(n339), .IN4(n288), 
        .Q(N1029) );
  INVX0 U426 ( .INP(n317), .ZN(n339) );
  AO221X1 U427 ( .IN1(s_shl1[1]), .IN2(n366), .IN3(s_shl1[0]), .IN4(n172), 
        .IN5(n370), .Q(n317) );
  AO21X1 U428 ( .IN1(n281), .IN2(n367), .IN3(n282), .Q(n370) );
  INVX0 U429 ( .INP(n228), .ZN(n282) );
  NAND2X0 U430 ( .IN1(s_shl1[1]), .IN2(s_shl1[0]), .QN(n228) );
  INVX0 U431 ( .INP(fract_28_i[2]), .ZN(n367) );
  INVX0 U432 ( .INP(fract_28_i[1]), .ZN(n172) );
  INVX0 U433 ( .INP(fract_28_i[0]), .ZN(n366) );
  AO22X1 U434 ( .IN1(fract_28_i[2]), .IN2(\s_shr1[0] ), .IN3(n288), .IN4(n323), 
        .Q(N1028) );
  AND2X1 U435 ( .IN1(n371), .IN2(n3), .Q(n323) );
  MUX21X1 U436 ( .IN1(fract_28_i[1]), .IN2(fract_28_i[0]), .S(s_shl1[0]), .Q(
        n371) );
  INVX0 U437 ( .INP(n274), .ZN(n288) );
  NAND2X0 U438 ( .IN1(n347), .IN2(n270), .QN(n274) );
  NOR2X0 U439 ( .IN1(s_shl1[2]), .IN2(s_shl1[3]), .QN(n270) );
  INVX0 U440 ( .INP(n348), .ZN(n347) );
  AO22X1 U441 ( .IN1(\s_shr1[0] ), .IN2(fract_28_i[1]), .IN3(n363), .IN4(n372), 
        .Q(N1027) );
  INVX0 U442 ( .INP(n329), .ZN(n372) );
  NAND3X0 U443 ( .IN1(fract_28_i[0]), .IN2(n7), .IN3(n281), .QN(n329) );
  INVX0 U444 ( .INP(n227), .ZN(n281) );
  NAND2X0 U445 ( .IN1(n9), .IN2(n3), .QN(n227) );
  NOR2X0 U446 ( .IN1(s_shl1[3]), .IN2(n348), .QN(n363) );
  NAND2X0 U447 ( .IN1(n251), .IN2(n8), .QN(n348) );
  INVX0 U448 ( .INP(n224), .ZN(n251) );
endmodule


module pre_norm_mul_1_DW01_add_1 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;

  wire   [9:1] carry;

  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  FADDX1 U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(carry[1]), .S(SUM[0]) );
endmodule


module pre_norm_mul_1 ( clk_i, opa_i, opb_i, exp_10_o, fracta_24_o, 
        fractb_24_o );
  input [31:0] opa_i;
  input [31:0] opb_i;
  output [9:0] exp_10_o;
  output [23:0] fracta_24_o;
  output [23:0] fractb_24_o;
  input clk_i;
  wire   \opa_i[22] , \opa_i[21] , \opa_i[20] , \opa_i[19] , \opa_i[18] ,
         \opa_i[17] , \opa_i[16] , \opa_i[15] , \opa_i[14] , \opa_i[13] ,
         \opa_i[12] , \opa_i[11] , \opa_i[10] , \opa_i[9] , \opa_i[8] ,
         \opa_i[7] , \opa_i[6] , \opa_i[5] , \opa_i[4] , \opa_i[3] ,
         \opa_i[2] , \opa_i[1] , \opa_i[0] , \opb_i[22] , \opb_i[21] ,
         \opb_i[20] , \opb_i[19] , \opb_i[18] , \opb_i[17] , \opb_i[16] ,
         \opb_i[15] , \opb_i[14] , \opb_i[13] , \opb_i[12] , \opb_i[11] ,
         \opb_i[10] , \opb_i[9] , \opb_i[8] , \opb_i[7] , \opb_i[6] ,
         \opb_i[5] , \opb_i[4] , \opb_i[3] , \opb_i[2] , \opb_i[1] ,
         \opb_i[0] , N6, N13, \add_1_root_sub_101/A[0] ,
         \add_1_root_sub_101/A[1] , \add_1_root_sub_101/A[2] ,
         \add_1_root_sub_101/A[3] , \add_1_root_sub_101/A[4] ,
         \add_1_root_sub_101/A[5] , \add_1_root_sub_101/A[6] ,
         \add_1_root_sub_101/A[7] , \add_1_root_sub_101/A[8] , n1, n2, n3, n4,
         n5, n6, n7, n9, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [9:0] s_exp_10_o;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign fracta_24_o[22] = \opa_i[22] ;
  assign \opa_i[22]  = opa_i[22];
  assign fracta_24_o[21] = \opa_i[21] ;
  assign \opa_i[21]  = opa_i[21];
  assign fracta_24_o[20] = \opa_i[20] ;
  assign \opa_i[20]  = opa_i[20];
  assign fracta_24_o[19] = \opa_i[19] ;
  assign \opa_i[19]  = opa_i[19];
  assign fracta_24_o[18] = \opa_i[18] ;
  assign \opa_i[18]  = opa_i[18];
  assign fracta_24_o[17] = \opa_i[17] ;
  assign \opa_i[17]  = opa_i[17];
  assign fracta_24_o[16] = \opa_i[16] ;
  assign \opa_i[16]  = opa_i[16];
  assign fracta_24_o[15] = \opa_i[15] ;
  assign \opa_i[15]  = opa_i[15];
  assign fracta_24_o[14] = \opa_i[14] ;
  assign \opa_i[14]  = opa_i[14];
  assign fracta_24_o[13] = \opa_i[13] ;
  assign \opa_i[13]  = opa_i[13];
  assign fracta_24_o[12] = \opa_i[12] ;
  assign \opa_i[12]  = opa_i[12];
  assign fracta_24_o[11] = \opa_i[11] ;
  assign \opa_i[11]  = opa_i[11];
  assign fracta_24_o[10] = \opa_i[10] ;
  assign \opa_i[10]  = opa_i[10];
  assign fracta_24_o[9] = \opa_i[9] ;
  assign \opa_i[9]  = opa_i[9];
  assign fracta_24_o[8] = \opa_i[8] ;
  assign \opa_i[8]  = opa_i[8];
  assign fracta_24_o[7] = \opa_i[7] ;
  assign \opa_i[7]  = opa_i[7];
  assign fracta_24_o[6] = \opa_i[6] ;
  assign \opa_i[6]  = opa_i[6];
  assign fracta_24_o[5] = \opa_i[5] ;
  assign \opa_i[5]  = opa_i[5];
  assign fracta_24_o[4] = \opa_i[4] ;
  assign \opa_i[4]  = opa_i[4];
  assign fracta_24_o[3] = \opa_i[3] ;
  assign \opa_i[3]  = opa_i[3];
  assign fracta_24_o[2] = \opa_i[2] ;
  assign \opa_i[2]  = opa_i[2];
  assign fracta_24_o[1] = \opa_i[1] ;
  assign \opa_i[1]  = opa_i[1];
  assign fracta_24_o[0] = \opa_i[0] ;
  assign \opa_i[0]  = opa_i[0];
  assign fractb_24_o[22] = \opb_i[22] ;
  assign \opb_i[22]  = opb_i[22];
  assign fractb_24_o[21] = \opb_i[21] ;
  assign \opb_i[21]  = opb_i[21];
  assign fractb_24_o[20] = \opb_i[20] ;
  assign \opb_i[20]  = opb_i[20];
  assign fractb_24_o[19] = \opb_i[19] ;
  assign \opb_i[19]  = opb_i[19];
  assign fractb_24_o[18] = \opb_i[18] ;
  assign \opb_i[18]  = opb_i[18];
  assign fractb_24_o[17] = \opb_i[17] ;
  assign \opb_i[17]  = opb_i[17];
  assign fractb_24_o[16] = \opb_i[16] ;
  assign \opb_i[16]  = opb_i[16];
  assign fractb_24_o[15] = \opb_i[15] ;
  assign \opb_i[15]  = opb_i[15];
  assign fractb_24_o[14] = \opb_i[14] ;
  assign \opb_i[14]  = opb_i[14];
  assign fractb_24_o[13] = \opb_i[13] ;
  assign \opb_i[13]  = opb_i[13];
  assign fractb_24_o[12] = \opb_i[12] ;
  assign \opb_i[12]  = opb_i[12];
  assign fractb_24_o[11] = \opb_i[11] ;
  assign \opb_i[11]  = opb_i[11];
  assign fractb_24_o[10] = \opb_i[10] ;
  assign \opb_i[10]  = opb_i[10];
  assign fractb_24_o[9] = \opb_i[9] ;
  assign \opb_i[9]  = opb_i[9];
  assign fractb_24_o[8] = \opb_i[8] ;
  assign \opb_i[8]  = opb_i[8];
  assign fractb_24_o[7] = \opb_i[7] ;
  assign \opb_i[7]  = opb_i[7];
  assign fractb_24_o[6] = \opb_i[6] ;
  assign \opb_i[6]  = opb_i[6];
  assign fractb_24_o[5] = \opb_i[5] ;
  assign \opb_i[5]  = opb_i[5];
  assign fractb_24_o[4] = \opb_i[4] ;
  assign \opb_i[4]  = opb_i[4];
  assign fractb_24_o[3] = \opb_i[3] ;
  assign \opb_i[3]  = opb_i[3];
  assign fractb_24_o[2] = \opb_i[2] ;
  assign \opb_i[2]  = opb_i[2];
  assign fractb_24_o[1] = \opb_i[1] ;
  assign \opb_i[1]  = opb_i[1];
  assign fractb_24_o[0] = \opb_i[0] ;
  assign \opb_i[0]  = opb_i[0];
  assign fracta_24_o[23] = N6;
  assign fractb_24_o[23] = N13;

  DFFX1 \exp_10_o_reg[9]  ( .D(s_exp_10_o[9]), .CLK(clk_i), .Q(exp_10_o[9]) );
  DFFX1 \exp_10_o_reg[8]  ( .D(s_exp_10_o[8]), .CLK(clk_i), .Q(exp_10_o[8]) );
  DFFX1 \exp_10_o_reg[7]  ( .D(s_exp_10_o[7]), .CLK(clk_i), .Q(exp_10_o[7]) );
  DFFX1 \exp_10_o_reg[6]  ( .D(s_exp_10_o[6]), .CLK(clk_i), .Q(exp_10_o[6]) );
  DFFX1 \exp_10_o_reg[5]  ( .D(s_exp_10_o[5]), .CLK(clk_i), .Q(exp_10_o[5]) );
  DFFX1 \exp_10_o_reg[4]  ( .D(s_exp_10_o[4]), .CLK(clk_i), .Q(exp_10_o[4]) );
  DFFX1 \exp_10_o_reg[3]  ( .D(s_exp_10_o[3]), .CLK(clk_i), .Q(exp_10_o[3]) );
  DFFX1 \exp_10_o_reg[2]  ( .D(s_exp_10_o[2]), .CLK(clk_i), .Q(exp_10_o[2]) );
  DFFX1 \exp_10_o_reg[1]  ( .D(s_exp_10_o[1]), .CLK(clk_i), .Q(exp_10_o[1]) );
  DFFX1 \exp_10_o_reg[0]  ( .D(s_exp_10_o[0]), .CLK(clk_i), .Q(exp_10_o[0]) );
  pre_norm_mul_1_DW01_add_1 add_3_root_sub_101 ( .A({1'b0, 1'b0, opa_i[30:23]}), .B({1'b0, 1'b0, opb_i[30:23]}), .CI(n17), .SUM({SYNOPSYS_UNCONNECTED__0, 
        \add_1_root_sub_101/A[8] , \add_1_root_sub_101/A[7] , 
        \add_1_root_sub_101/A[6] , \add_1_root_sub_101/A[5] , 
        \add_1_root_sub_101/A[4] , \add_1_root_sub_101/A[3] , 
        \add_1_root_sub_101/A[2] , \add_1_root_sub_101/A[1] , 
        \add_1_root_sub_101/A[0] }) );
  AO21X1 U3 ( .IN1(\add_1_root_sub_101/A[8] ), .IN2(n1), .IN3(s_exp_10_o[9]), 
        .Q(s_exp_10_o[8]) );
  NOR2X0 U4 ( .IN1(n1), .IN2(\add_1_root_sub_101/A[8] ), .QN(s_exp_10_o[9]) );
  NAND2X0 U5 ( .IN1(n1), .IN2(n2), .QN(s_exp_10_o[7]) );
  NAND3X0 U6 ( .IN1(\add_1_root_sub_101/A[6] ), .IN2(n3), .IN3(
        \add_1_root_sub_101/A[7] ), .QN(n2) );
  AO21X1 U7 ( .IN1(\add_1_root_sub_101/A[6] ), .IN2(n3), .IN3(
        \add_1_root_sub_101/A[7] ), .Q(n1) );
  XOR2X1 U8 ( .IN1(\add_1_root_sub_101/A[6] ), .IN2(n3), .Q(s_exp_10_o[6]) );
  NOR3X0 U9 ( .IN1(n4), .IN2(n5), .IN3(n6), .QN(n3) );
  INVX0 U10 ( .INP(\add_1_root_sub_101/A[5] ), .ZN(n6) );
  XOR2X1 U11 ( .IN1(\add_1_root_sub_101/A[5] ), .IN2(n7), .Q(s_exp_10_o[5]) );
  NOR2X0 U13 ( .IN1(n5), .IN2(n4), .QN(n7) );
  INVX0 U14 ( .INP(\add_1_root_sub_101/A[4] ), .ZN(n4) );
  XNOR2X1 U15 ( .IN1(\add_1_root_sub_101/A[4] ), .IN2(n5), .Q(s_exp_10_o[4])
         );
  NAND3X0 U16 ( .IN1(\add_1_root_sub_101/A[2] ), .IN2(n9), .IN3(
        \add_1_root_sub_101/A[3] ), .QN(n5) );
  XNOR2X1 U17 ( .IN1(\add_1_root_sub_101/A[3] ), .IN2(n10), .Q(s_exp_10_o[3])
         );
  NAND2X0 U18 ( .IN1(\add_1_root_sub_101/A[2] ), .IN2(n9), .QN(n10) );
  XOR2X1 U19 ( .IN1(\add_1_root_sub_101/A[2] ), .IN2(n9), .Q(s_exp_10_o[2]) );
  AOI21X1 U20 ( .IN1(N13), .IN2(n11), .IN3(n12), .QN(n9) );
  XNOR3X1 U21 ( .IN1(N13), .IN2(n12), .IN3(n11), .Q(s_exp_10_o[1]) );
  NAND2X0 U22 ( .IN1(\add_1_root_sub_101/A[0] ), .IN2(N13), .QN(n11) );
  INVX0 U23 ( .INP(\add_1_root_sub_101/A[1] ), .ZN(n12) );
  XOR2X1 U24 ( .IN1(N13), .IN2(\add_1_root_sub_101/A[0] ), .Q(s_exp_10_o[0])
         );
  INVX0 U25 ( .INP(N6), .ZN(n17) );
  NAND2X0 U26 ( .IN1(n13), .IN2(n14), .QN(N6) );
  NOR4X0 U27 ( .IN1(opa_i[30]), .IN2(opa_i[29]), .IN3(opa_i[28]), .IN4(
        opa_i[27]), .QN(n14) );
  NOR4X0 U28 ( .IN1(opa_i[26]), .IN2(opa_i[25]), .IN3(opa_i[24]), .IN4(
        opa_i[23]), .QN(n13) );
  NAND2X0 U29 ( .IN1(n15), .IN2(n16), .QN(N13) );
  NOR4X0 U30 ( .IN1(opb_i[30]), .IN2(opb_i[29]), .IN3(opb_i[28]), .IN4(
        opb_i[27]), .QN(n16) );
  NOR4X0 U31 ( .IN1(opb_i[26]), .IN2(opb_i[25]), .IN3(opb_i[24]), .IN4(
        opb_i[23]), .QN(n15) );
endmodule


module mul_24_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [47:0] A;
  input [47:0] B;
  output [47:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [47:1] carry;
  assign SUM[11] = B[11];
  assign SUM[10] = B[10];
  assign SUM[9] = B[9];
  assign SUM[8] = B[8];
  assign SUM[7] = B[7];
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  FADDX1 U1_36 ( .A(A[36]), .B(B[36]), .CI(carry[36]), .CO(carry[37]), .S(
        SUM[36]) );
  FADDX1 U1_35 ( .A(A[35]), .B(B[35]), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  FADDX1 U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  FADDX1 U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  FADDX1 U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  FADDX1 U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  FADDX1 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  FADDX1 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  FADDX1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  FADDX1 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FADDX1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FADDX1 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FADDX1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FADDX1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FADDX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FADDX1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FADDX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FADDX1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FADDX1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FADDX1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(n10), .CO(carry[14]), .S(SUM[13])
         );
  AND2X1 U1 ( .IN1(A[37]), .IN2(carry[37]), .Q(n1) );
  AND2X1 U2 ( .IN1(A[38]), .IN2(n1), .Q(n2) );
  AND2X1 U3 ( .IN1(A[39]), .IN2(n2), .Q(n3) );
  AND2X1 U4 ( .IN1(A[40]), .IN2(n3), .Q(n4) );
  AND2X1 U5 ( .IN1(A[41]), .IN2(n4), .Q(n5) );
  AND2X1 U6 ( .IN1(A[42]), .IN2(n5), .Q(n6) );
  AND2X1 U7 ( .IN1(A[43]), .IN2(n6), .Q(n7) );
  AND2X1 U8 ( .IN1(A[44]), .IN2(n7), .Q(n8) );
  AND2X1 U9 ( .IN1(A[45]), .IN2(n8), .Q(n9) );
  AND2X1 U10 ( .IN1(A[12]), .IN2(B[12]), .Q(n10) );
  XNOR2X1 U11 ( .IN1(A[47]), .IN2(n11), .Q(SUM[47]) );
  NAND2X1 U12 ( .IN1(A[46]), .IN2(n9), .QN(n11) );
  XOR2X1 U13 ( .IN1(A[37]), .IN2(carry[37]), .Q(SUM[37]) );
  XOR2X1 U14 ( .IN1(A[38]), .IN2(n1), .Q(SUM[38]) );
  XOR2X1 U15 ( .IN1(A[39]), .IN2(n2), .Q(SUM[39]) );
  XOR2X1 U16 ( .IN1(A[40]), .IN2(n3), .Q(SUM[40]) );
  XOR2X1 U17 ( .IN1(A[41]), .IN2(n4), .Q(SUM[41]) );
  XOR2X1 U18 ( .IN1(A[42]), .IN2(n5), .Q(SUM[42]) );
  XOR2X1 U19 ( .IN1(A[43]), .IN2(n6), .Q(SUM[43]) );
  XOR2X1 U20 ( .IN1(A[44]), .IN2(n7), .Q(SUM[44]) );
  XOR2X1 U21 ( .IN1(A[45]), .IN2(n8), .Q(SUM[45]) );
  XOR2X1 U22 ( .IN1(A[46]), .IN2(n9), .Q(SUM[46]) );
  XOR2X1 U23 ( .IN1(A[12]), .IN2(B[12]), .Q(SUM[12]) );
endmodule


module mul_24_1_DW01_add_1 ( A, B, CI, SUM, CO );
  input [47:0] A;
  input [47:0] B;
  output [47:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [47:1] carry;
  assign SUM[11] = B[11];
  assign SUM[10] = B[10];
  assign SUM[9] = B[9];
  assign SUM[8] = B[8];
  assign SUM[7] = B[7];
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

  FADDX1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FADDX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FADDX1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FADDX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FADDX1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FADDX1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FADDX1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(n2), .CO(carry[14]), .S(SUM[13]) );
  AND2X1 U1 ( .IN1(A[35]), .IN2(n13), .Q(SUM[36]) );
  AND2X1 U2 ( .IN1(A[12]), .IN2(B[12]), .Q(n2) );
  AND2X1 U3 ( .IN1(A[24]), .IN2(carry[24]), .Q(n3) );
  AND2X1 U4 ( .IN1(A[25]), .IN2(n3), .Q(n4) );
  AND2X1 U5 ( .IN1(A[26]), .IN2(n4), .Q(n5) );
  AND2X1 U6 ( .IN1(A[27]), .IN2(n5), .Q(n6) );
  AND2X1 U7 ( .IN1(A[28]), .IN2(n6), .Q(n7) );
  AND2X1 U8 ( .IN1(A[29]), .IN2(n7), .Q(n8) );
  AND2X1 U9 ( .IN1(A[30]), .IN2(n8), .Q(n9) );
  AND2X1 U10 ( .IN1(A[31]), .IN2(n9), .Q(n10) );
  AND2X1 U11 ( .IN1(A[32]), .IN2(n10), .Q(n11) );
  AND2X1 U12 ( .IN1(A[33]), .IN2(n11), .Q(n12) );
  AND2X1 U13 ( .IN1(A[34]), .IN2(n12), .Q(n13) );
  XOR2X1 U14 ( .IN1(A[35]), .IN2(n13), .Q(SUM[35]) );
  XOR2X1 U15 ( .IN1(A[34]), .IN2(n12), .Q(SUM[34]) );
  XOR2X1 U16 ( .IN1(A[33]), .IN2(n11), .Q(SUM[33]) );
  XOR2X1 U17 ( .IN1(A[32]), .IN2(n10), .Q(SUM[32]) );
  XOR2X1 U18 ( .IN1(A[31]), .IN2(n9), .Q(SUM[31]) );
  XOR2X1 U19 ( .IN1(A[30]), .IN2(n8), .Q(SUM[30]) );
  XOR2X1 U20 ( .IN1(A[29]), .IN2(n7), .Q(SUM[29]) );
  XOR2X1 U21 ( .IN1(A[28]), .IN2(n6), .Q(SUM[28]) );
  XOR2X1 U22 ( .IN1(A[27]), .IN2(n5), .Q(SUM[27]) );
  XOR2X1 U23 ( .IN1(A[26]), .IN2(n4), .Q(SUM[26]) );
  XOR2X1 U24 ( .IN1(A[25]), .IN2(n3), .Q(SUM[25]) );
  XOR2X1 U25 ( .IN1(A[24]), .IN2(carry[24]), .Q(SUM[24]) );
  XOR2X1 U26 ( .IN1(A[12]), .IN2(B[12]), .Q(SUM[12]) );
endmodule


module mul_24_1_DW01_add_2 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5;
  wire   [23:1] carry;
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  FADDX1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FADDX1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(n1), .CO(carry[8]), .S(SUM[7]) );
  AND2X1 U1 ( .IN1(A[6]), .IN2(B[6]), .Q(n1) );
  AND2X1 U2 ( .IN1(A[20]), .IN2(n3), .Q(n2) );
  AND2X1 U3 ( .IN1(A[19]), .IN2(carry[19]), .Q(n3) );
  AND2X1 U4 ( .IN1(A[21]), .IN2(n2), .Q(n4) );
  XNOR2X1 U5 ( .IN1(A[23]), .IN2(n5), .Q(SUM[23]) );
  NAND2X1 U6 ( .IN1(A[22]), .IN2(n4), .QN(n5) );
  XOR2X1 U7 ( .IN1(A[19]), .IN2(carry[19]), .Q(SUM[19]) );
  XOR2X1 U8 ( .IN1(A[20]), .IN2(n3), .Q(SUM[20]) );
  XOR2X1 U9 ( .IN1(A[21]), .IN2(n2), .Q(SUM[21]) );
  XOR2X1 U10 ( .IN1(A[22]), .IN2(n4), .Q(SUM[22]) );
  XOR2X1 U11 ( .IN1(A[6]), .IN2(B[6]), .Q(SUM[6]) );
endmodule


module mul_24_1_DW01_add_5 ( A, B, CI, SUM, CO );
  input [47:0] A;
  input [47:0] B;
  output [47:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [47:1] carry;
  assign SUM[23] = B[23];
  assign SUM[22] = B[22];
  assign SUM[21] = B[21];
  assign SUM[20] = B[20];
  assign SUM[19] = B[19];
  assign SUM[18] = B[18];
  assign SUM[17] = B[17];
  assign SUM[16] = B[16];
  assign SUM[15] = B[15];
  assign SUM[14] = B[14];
  assign SUM[13] = B[13];
  assign SUM[12] = B[12];

  FADDX1 U1_35 ( .A(A[35]), .B(B[35]), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  FADDX1 U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  FADDX1 U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  FADDX1 U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  FADDX1 U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  FADDX1 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  FADDX1 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  FADDX1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  FADDX1 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FADDX1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FADDX1 U1_25 ( .A(A[25]), .B(B[25]), .CI(n1), .CO(carry[26]), .S(SUM[25]) );
  AND2X1 U1 ( .IN1(A[24]), .IN2(B[24]), .Q(n1) );
  AND2X1 U2 ( .IN1(A[36]), .IN2(carry[36]), .Q(n2) );
  AND2X1 U3 ( .IN1(A[37]), .IN2(n2), .Q(n3) );
  AND2X1 U4 ( .IN1(A[38]), .IN2(n3), .Q(n4) );
  AND2X1 U5 ( .IN1(A[39]), .IN2(n4), .Q(n5) );
  AND2X1 U6 ( .IN1(A[40]), .IN2(n5), .Q(n6) );
  AND2X1 U7 ( .IN1(A[41]), .IN2(n6), .Q(n7) );
  AND2X1 U8 ( .IN1(A[42]), .IN2(n7), .Q(n8) );
  AND2X1 U9 ( .IN1(A[43]), .IN2(n8), .Q(n9) );
  AND2X1 U10 ( .IN1(A[44]), .IN2(n9), .Q(n10) );
  AND2X1 U11 ( .IN1(A[45]), .IN2(n10), .Q(n11) );
  AND2X1 U12 ( .IN1(A[46]), .IN2(n11), .Q(n12) );
  XOR2X1 U13 ( .IN1(A[47]), .IN2(n12), .Q(SUM[47]) );
  XOR2X1 U14 ( .IN1(A[46]), .IN2(n11), .Q(SUM[46]) );
  XOR2X1 U15 ( .IN1(A[45]), .IN2(n10), .Q(SUM[45]) );
  XOR2X1 U16 ( .IN1(A[44]), .IN2(n9), .Q(SUM[44]) );
  XOR2X1 U17 ( .IN1(A[43]), .IN2(n8), .Q(SUM[43]) );
  XOR2X1 U18 ( .IN1(A[42]), .IN2(n7), .Q(SUM[42]) );
  XOR2X1 U19 ( .IN1(A[41]), .IN2(n6), .Q(SUM[41]) );
  XOR2X1 U20 ( .IN1(A[40]), .IN2(n5), .Q(SUM[40]) );
  XOR2X1 U21 ( .IN1(A[39]), .IN2(n4), .Q(SUM[39]) );
  XOR2X1 U22 ( .IN1(A[38]), .IN2(n3), .Q(SUM[38]) );
  XOR2X1 U23 ( .IN1(A[37]), .IN2(n2), .Q(SUM[37]) );
  XOR2X1 U24 ( .IN1(A[36]), .IN2(carry[36]), .Q(SUM[36]) );
  XOR2X1 U25 ( .IN1(A[24]), .IN2(B[24]), .Q(SUM[24]) );
endmodule


module mul_24_1_DW_mult_uns_4 ( a, b, product );
  input [5:0] a;
  input [5:0] b;
  output [11:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97;
  assign product[11] = n1;

  FADDX1 U2 ( .A(n11), .B(n51), .CI(n2), .CO(n1), .S(product[10]) );
  FADDX1 U3 ( .A(n13), .B(n12), .CI(n3), .CO(n2), .S(product[9]) );
  FADDX1 U4 ( .A(n17), .B(n14), .CI(n4), .CO(n3), .S(product[8]) );
  FADDX1 U5 ( .A(n18), .B(n23), .CI(n5), .CO(n4), .S(product[7]) );
  FADDX1 U6 ( .A(n24), .B(n31), .CI(n6), .CO(n5), .S(product[6]) );
  FADDX1 U7 ( .A(n32), .B(n39), .CI(n7), .CO(n6), .S(product[5]) );
  FADDX1 U8 ( .A(n40), .B(n45), .CI(n8), .CO(n7), .S(product[4]) );
  FADDX1 U9 ( .A(n46), .B(n49), .CI(n9), .CO(n8), .S(product[3]) );
  FADDX1 U10 ( .A(n50), .B(n74), .CI(n10), .CO(n9), .S(product[2]) );
  HADDX1 U11 ( .A0(n80), .B0(n85), .C1(n10), .SO(product[1]) );
  FADDX1 U12 ( .A(n52), .B(n57), .CI(n15), .CO(n11), .S(n12) );
  FADDX1 U13 ( .A(n16), .B(n21), .CI(n19), .CO(n13), .S(n14) );
  FADDX1 U14 ( .A(n53), .B(n63), .CI(n58), .CO(n15), .S(n16) );
  FADDX1 U15 ( .A(n25), .B(n22), .CI(n20), .CO(n17), .S(n18) );
  FADDX1 U16 ( .A(n29), .B(n64), .CI(n27), .CO(n19), .S(n20) );
  FADDX1 U17 ( .A(n54), .B(n69), .CI(n59), .CO(n21), .S(n22) );
  FADDX1 U18 ( .A(n33), .B(n28), .CI(n26), .CO(n23), .S(n24) );
  FADDX1 U19 ( .A(n37), .B(n30), .CI(n35), .CO(n25), .S(n26) );
  FADDX1 U20 ( .A(n70), .B(n65), .CI(n75), .CO(n27), .S(n28) );
  HADDX1 U21 ( .A0(n60), .B0(n55), .C1(n29), .SO(n30) );
  FADDX1 U22 ( .A(n36), .B(n41), .CI(n34), .CO(n31), .S(n32) );
  FADDX1 U23 ( .A(n38), .B(n81), .CI(n43), .CO(n33), .S(n34) );
  FADDX1 U24 ( .A(n66), .B(n71), .CI(n76), .CO(n35), .S(n36) );
  HADDX1 U25 ( .A0(n61), .B0(n56), .C1(n37), .SO(n38) );
  FADDX1 U26 ( .A(n47), .B(n44), .CI(n42), .CO(n39), .S(n40) );
  FADDX1 U27 ( .A(n72), .B(n82), .CI(n77), .CO(n41), .S(n42) );
  HADDX1 U28 ( .A0(n67), .B0(n62), .C1(n43), .SO(n44) );
  FADDX1 U29 ( .A(n78), .B(n83), .CI(n48), .CO(n45), .S(n46) );
  HADDX1 U30 ( .A0(n73), .B0(n68), .C1(n47), .SO(n48) );
  HADDX1 U31 ( .A0(n84), .B0(n79), .C1(n49), .SO(n50) );
  NOR2X0 U32 ( .IN1(n86), .IN2(n92), .QN(n51) );
  NOR2X0 U33 ( .IN1(n87), .IN2(n92), .QN(n52) );
  NOR2X0 U34 ( .IN1(n88), .IN2(n92), .QN(n53) );
  NOR2X0 U35 ( .IN1(n89), .IN2(n92), .QN(n54) );
  NOR2X0 U36 ( .IN1(n90), .IN2(n92), .QN(n55) );
  NOR2X0 U37 ( .IN1(n91), .IN2(n92), .QN(n56) );
  NOR2X0 U38 ( .IN1(n86), .IN2(n93), .QN(n57) );
  NOR2X0 U39 ( .IN1(n87), .IN2(n93), .QN(n58) );
  NOR2X0 U40 ( .IN1(n88), .IN2(n93), .QN(n59) );
  NOR2X0 U41 ( .IN1(n89), .IN2(n93), .QN(n60) );
  NOR2X0 U42 ( .IN1(n90), .IN2(n93), .QN(n61) );
  NOR2X0 U43 ( .IN1(n91), .IN2(n93), .QN(n62) );
  NOR2X0 U44 ( .IN1(n86), .IN2(n94), .QN(n63) );
  NOR2X0 U45 ( .IN1(n87), .IN2(n94), .QN(n64) );
  NOR2X0 U46 ( .IN1(n88), .IN2(n94), .QN(n65) );
  NOR2X0 U47 ( .IN1(n89), .IN2(n94), .QN(n66) );
  NOR2X0 U48 ( .IN1(n90), .IN2(n94), .QN(n67) );
  NOR2X0 U49 ( .IN1(n91), .IN2(n94), .QN(n68) );
  NOR2X0 U50 ( .IN1(n86), .IN2(n95), .QN(n69) );
  NOR2X0 U51 ( .IN1(n87), .IN2(n95), .QN(n70) );
  NOR2X0 U52 ( .IN1(n88), .IN2(n95), .QN(n71) );
  NOR2X0 U53 ( .IN1(n89), .IN2(n95), .QN(n72) );
  NOR2X0 U54 ( .IN1(n90), .IN2(n95), .QN(n73) );
  NOR2X0 U55 ( .IN1(n91), .IN2(n95), .QN(n74) );
  NOR2X0 U56 ( .IN1(n86), .IN2(n96), .QN(n75) );
  NOR2X0 U57 ( .IN1(n87), .IN2(n96), .QN(n76) );
  NOR2X0 U58 ( .IN1(n88), .IN2(n96), .QN(n77) );
  NOR2X0 U59 ( .IN1(n89), .IN2(n96), .QN(n78) );
  NOR2X0 U60 ( .IN1(n90), .IN2(n96), .QN(n79) );
  NOR2X0 U61 ( .IN1(n91), .IN2(n96), .QN(n80) );
  NOR2X0 U62 ( .IN1(n86), .IN2(n97), .QN(n81) );
  NOR2X0 U63 ( .IN1(n87), .IN2(n97), .QN(n82) );
  NOR2X0 U64 ( .IN1(n88), .IN2(n97), .QN(n83) );
  NOR2X0 U65 ( .IN1(n89), .IN2(n97), .QN(n84) );
  NOR2X0 U66 ( .IN1(n90), .IN2(n97), .QN(n85) );
  NOR2X0 U67 ( .IN1(n91), .IN2(n97), .QN(product[0]) );
  INVX0 U82 ( .INP(b[0]), .ZN(n91) );
  INVX0 U83 ( .INP(b[1]), .ZN(n90) );
  INVX0 U84 ( .INP(b[2]), .ZN(n89) );
  INVX0 U85 ( .INP(b[3]), .ZN(n88) );
  INVX0 U86 ( .INP(b[4]), .ZN(n87) );
  INVX0 U87 ( .INP(b[5]), .ZN(n86) );
  INVX0 U88 ( .INP(a[0]), .ZN(n97) );
  INVX0 U89 ( .INP(a[1]), .ZN(n96) );
  INVX0 U90 ( .INP(a[2]), .ZN(n95) );
  INVX0 U91 ( .INP(a[3]), .ZN(n94) );
  INVX0 U92 ( .INP(a[4]), .ZN(n93) );
  INVX0 U93 ( .INP(a[5]), .ZN(n92) );
endmodule


module mul_24_1_DW_mult_uns_5 ( a, b, product );
  input [5:0] a;
  input [5:0] b;
  output [11:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97;
  assign product[11] = n1;

  FADDX1 U2 ( .A(n11), .B(n51), .CI(n2), .CO(n1), .S(product[10]) );
  FADDX1 U3 ( .A(n13), .B(n12), .CI(n3), .CO(n2), .S(product[9]) );
  FADDX1 U4 ( .A(n17), .B(n14), .CI(n4), .CO(n3), .S(product[8]) );
  FADDX1 U5 ( .A(n18), .B(n23), .CI(n5), .CO(n4), .S(product[7]) );
  FADDX1 U6 ( .A(n24), .B(n31), .CI(n6), .CO(n5), .S(product[6]) );
  FADDX1 U7 ( .A(n32), .B(n39), .CI(n7), .CO(n6), .S(product[5]) );
  FADDX1 U8 ( .A(n40), .B(n45), .CI(n8), .CO(n7), .S(product[4]) );
  FADDX1 U9 ( .A(n46), .B(n49), .CI(n9), .CO(n8), .S(product[3]) );
  FADDX1 U10 ( .A(n50), .B(n74), .CI(n10), .CO(n9), .S(product[2]) );
  HADDX1 U11 ( .A0(n80), .B0(n85), .C1(n10), .SO(product[1]) );
  FADDX1 U12 ( .A(n52), .B(n57), .CI(n15), .CO(n11), .S(n12) );
  FADDX1 U13 ( .A(n16), .B(n21), .CI(n19), .CO(n13), .S(n14) );
  FADDX1 U14 ( .A(n53), .B(n63), .CI(n58), .CO(n15), .S(n16) );
  FADDX1 U15 ( .A(n25), .B(n22), .CI(n20), .CO(n17), .S(n18) );
  FADDX1 U16 ( .A(n29), .B(n64), .CI(n27), .CO(n19), .S(n20) );
  FADDX1 U17 ( .A(n54), .B(n69), .CI(n59), .CO(n21), .S(n22) );
  FADDX1 U18 ( .A(n33), .B(n28), .CI(n26), .CO(n23), .S(n24) );
  FADDX1 U19 ( .A(n37), .B(n30), .CI(n35), .CO(n25), .S(n26) );
  FADDX1 U20 ( .A(n70), .B(n65), .CI(n75), .CO(n27), .S(n28) );
  HADDX1 U21 ( .A0(n60), .B0(n55), .C1(n29), .SO(n30) );
  FADDX1 U22 ( .A(n36), .B(n41), .CI(n34), .CO(n31), .S(n32) );
  FADDX1 U23 ( .A(n38), .B(n81), .CI(n43), .CO(n33), .S(n34) );
  FADDX1 U24 ( .A(n66), .B(n71), .CI(n76), .CO(n35), .S(n36) );
  HADDX1 U25 ( .A0(n61), .B0(n56), .C1(n37), .SO(n38) );
  FADDX1 U26 ( .A(n47), .B(n44), .CI(n42), .CO(n39), .S(n40) );
  FADDX1 U27 ( .A(n72), .B(n82), .CI(n77), .CO(n41), .S(n42) );
  HADDX1 U28 ( .A0(n67), .B0(n62), .C1(n43), .SO(n44) );
  FADDX1 U29 ( .A(n78), .B(n83), .CI(n48), .CO(n45), .S(n46) );
  HADDX1 U30 ( .A0(n73), .B0(n68), .C1(n47), .SO(n48) );
  HADDX1 U31 ( .A0(n84), .B0(n79), .C1(n49), .SO(n50) );
  NOR2X0 U32 ( .IN1(n86), .IN2(n92), .QN(n51) );
  NOR2X0 U33 ( .IN1(n87), .IN2(n92), .QN(n52) );
  NOR2X0 U34 ( .IN1(n88), .IN2(n92), .QN(n53) );
  NOR2X0 U35 ( .IN1(n89), .IN2(n92), .QN(n54) );
  NOR2X0 U36 ( .IN1(n90), .IN2(n92), .QN(n55) );
  NOR2X0 U37 ( .IN1(n91), .IN2(n92), .QN(n56) );
  NOR2X0 U38 ( .IN1(n86), .IN2(n93), .QN(n57) );
  NOR2X0 U39 ( .IN1(n87), .IN2(n93), .QN(n58) );
  NOR2X0 U40 ( .IN1(n88), .IN2(n93), .QN(n59) );
  NOR2X0 U41 ( .IN1(n89), .IN2(n93), .QN(n60) );
  NOR2X0 U42 ( .IN1(n90), .IN2(n93), .QN(n61) );
  NOR2X0 U43 ( .IN1(n91), .IN2(n93), .QN(n62) );
  NOR2X0 U44 ( .IN1(n86), .IN2(n94), .QN(n63) );
  NOR2X0 U45 ( .IN1(n87), .IN2(n94), .QN(n64) );
  NOR2X0 U46 ( .IN1(n88), .IN2(n94), .QN(n65) );
  NOR2X0 U47 ( .IN1(n89), .IN2(n94), .QN(n66) );
  NOR2X0 U48 ( .IN1(n90), .IN2(n94), .QN(n67) );
  NOR2X0 U49 ( .IN1(n91), .IN2(n94), .QN(n68) );
  NOR2X0 U50 ( .IN1(n86), .IN2(n95), .QN(n69) );
  NOR2X0 U51 ( .IN1(n87), .IN2(n95), .QN(n70) );
  NOR2X0 U52 ( .IN1(n88), .IN2(n95), .QN(n71) );
  NOR2X0 U53 ( .IN1(n89), .IN2(n95), .QN(n72) );
  NOR2X0 U54 ( .IN1(n90), .IN2(n95), .QN(n73) );
  NOR2X0 U55 ( .IN1(n91), .IN2(n95), .QN(n74) );
  NOR2X0 U56 ( .IN1(n86), .IN2(n96), .QN(n75) );
  NOR2X0 U57 ( .IN1(n87), .IN2(n96), .QN(n76) );
  NOR2X0 U58 ( .IN1(n88), .IN2(n96), .QN(n77) );
  NOR2X0 U59 ( .IN1(n89), .IN2(n96), .QN(n78) );
  NOR2X0 U60 ( .IN1(n90), .IN2(n96), .QN(n79) );
  NOR2X0 U61 ( .IN1(n91), .IN2(n96), .QN(n80) );
  NOR2X0 U62 ( .IN1(n86), .IN2(n97), .QN(n81) );
  NOR2X0 U63 ( .IN1(n87), .IN2(n97), .QN(n82) );
  NOR2X0 U64 ( .IN1(n88), .IN2(n97), .QN(n83) );
  NOR2X0 U65 ( .IN1(n89), .IN2(n97), .QN(n84) );
  NOR2X0 U66 ( .IN1(n90), .IN2(n97), .QN(n85) );
  NOR2X0 U67 ( .IN1(n91), .IN2(n97), .QN(product[0]) );
  INVX0 U82 ( .INP(b[0]), .ZN(n91) );
  INVX0 U83 ( .INP(b[1]), .ZN(n90) );
  INVX0 U84 ( .INP(b[2]), .ZN(n89) );
  INVX0 U85 ( .INP(b[3]), .ZN(n88) );
  INVX0 U86 ( .INP(b[4]), .ZN(n87) );
  INVX0 U87 ( .INP(b[5]), .ZN(n86) );
  INVX0 U88 ( .INP(a[0]), .ZN(n97) );
  INVX0 U89 ( .INP(a[1]), .ZN(n96) );
  INVX0 U90 ( .INP(a[2]), .ZN(n95) );
  INVX0 U91 ( .INP(a[3]), .ZN(n94) );
  INVX0 U92 ( .INP(a[4]), .ZN(n93) );
  INVX0 U93 ( .INP(a[5]), .ZN(n92) );
endmodule


module mul_24_1_DW_mult_uns_6 ( a, b, product );
  input [5:0] a;
  input [5:0] b;
  output [11:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97;
  assign product[11] = n1;

  FADDX1 U2 ( .A(n11), .B(n51), .CI(n2), .CO(n1), .S(product[10]) );
  FADDX1 U3 ( .A(n13), .B(n12), .CI(n3), .CO(n2), .S(product[9]) );
  FADDX1 U4 ( .A(n17), .B(n14), .CI(n4), .CO(n3), .S(product[8]) );
  FADDX1 U5 ( .A(n18), .B(n23), .CI(n5), .CO(n4), .S(product[7]) );
  FADDX1 U6 ( .A(n24), .B(n31), .CI(n6), .CO(n5), .S(product[6]) );
  FADDX1 U7 ( .A(n32), .B(n39), .CI(n7), .CO(n6), .S(product[5]) );
  FADDX1 U8 ( .A(n40), .B(n45), .CI(n8), .CO(n7), .S(product[4]) );
  FADDX1 U9 ( .A(n46), .B(n49), .CI(n9), .CO(n8), .S(product[3]) );
  FADDX1 U10 ( .A(n50), .B(n74), .CI(n10), .CO(n9), .S(product[2]) );
  HADDX1 U11 ( .A0(n80), .B0(n85), .C1(n10), .SO(product[1]) );
  FADDX1 U12 ( .A(n52), .B(n57), .CI(n15), .CO(n11), .S(n12) );
  FADDX1 U13 ( .A(n16), .B(n21), .CI(n19), .CO(n13), .S(n14) );
  FADDX1 U14 ( .A(n53), .B(n63), .CI(n58), .CO(n15), .S(n16) );
  FADDX1 U15 ( .A(n25), .B(n22), .CI(n20), .CO(n17), .S(n18) );
  FADDX1 U16 ( .A(n29), .B(n64), .CI(n27), .CO(n19), .S(n20) );
  FADDX1 U17 ( .A(n54), .B(n69), .CI(n59), .CO(n21), .S(n22) );
  FADDX1 U18 ( .A(n33), .B(n28), .CI(n26), .CO(n23), .S(n24) );
  FADDX1 U19 ( .A(n37), .B(n30), .CI(n35), .CO(n25), .S(n26) );
  FADDX1 U20 ( .A(n70), .B(n65), .CI(n75), .CO(n27), .S(n28) );
  HADDX1 U21 ( .A0(n60), .B0(n55), .C1(n29), .SO(n30) );
  FADDX1 U22 ( .A(n36), .B(n41), .CI(n34), .CO(n31), .S(n32) );
  FADDX1 U23 ( .A(n38), .B(n81), .CI(n43), .CO(n33), .S(n34) );
  FADDX1 U24 ( .A(n66), .B(n71), .CI(n76), .CO(n35), .S(n36) );
  HADDX1 U25 ( .A0(n61), .B0(n56), .C1(n37), .SO(n38) );
  FADDX1 U26 ( .A(n47), .B(n44), .CI(n42), .CO(n39), .S(n40) );
  FADDX1 U27 ( .A(n72), .B(n82), .CI(n77), .CO(n41), .S(n42) );
  HADDX1 U28 ( .A0(n67), .B0(n62), .C1(n43), .SO(n44) );
  FADDX1 U29 ( .A(n78), .B(n83), .CI(n48), .CO(n45), .S(n46) );
  HADDX1 U30 ( .A0(n73), .B0(n68), .C1(n47), .SO(n48) );
  HADDX1 U31 ( .A0(n84), .B0(n79), .C1(n49), .SO(n50) );
  NOR2X0 U32 ( .IN1(n86), .IN2(n92), .QN(n51) );
  NOR2X0 U33 ( .IN1(n87), .IN2(n92), .QN(n52) );
  NOR2X0 U34 ( .IN1(n88), .IN2(n92), .QN(n53) );
  NOR2X0 U35 ( .IN1(n89), .IN2(n92), .QN(n54) );
  NOR2X0 U36 ( .IN1(n90), .IN2(n92), .QN(n55) );
  NOR2X0 U37 ( .IN1(n91), .IN2(n92), .QN(n56) );
  NOR2X0 U38 ( .IN1(n86), .IN2(n93), .QN(n57) );
  NOR2X0 U39 ( .IN1(n87), .IN2(n93), .QN(n58) );
  NOR2X0 U40 ( .IN1(n88), .IN2(n93), .QN(n59) );
  NOR2X0 U41 ( .IN1(n89), .IN2(n93), .QN(n60) );
  NOR2X0 U42 ( .IN1(n90), .IN2(n93), .QN(n61) );
  NOR2X0 U43 ( .IN1(n91), .IN2(n93), .QN(n62) );
  NOR2X0 U44 ( .IN1(n86), .IN2(n94), .QN(n63) );
  NOR2X0 U45 ( .IN1(n87), .IN2(n94), .QN(n64) );
  NOR2X0 U46 ( .IN1(n88), .IN2(n94), .QN(n65) );
  NOR2X0 U47 ( .IN1(n89), .IN2(n94), .QN(n66) );
  NOR2X0 U48 ( .IN1(n90), .IN2(n94), .QN(n67) );
  NOR2X0 U49 ( .IN1(n91), .IN2(n94), .QN(n68) );
  NOR2X0 U50 ( .IN1(n86), .IN2(n95), .QN(n69) );
  NOR2X0 U51 ( .IN1(n87), .IN2(n95), .QN(n70) );
  NOR2X0 U52 ( .IN1(n88), .IN2(n95), .QN(n71) );
  NOR2X0 U53 ( .IN1(n89), .IN2(n95), .QN(n72) );
  NOR2X0 U54 ( .IN1(n90), .IN2(n95), .QN(n73) );
  NOR2X0 U55 ( .IN1(n91), .IN2(n95), .QN(n74) );
  NOR2X0 U56 ( .IN1(n86), .IN2(n96), .QN(n75) );
  NOR2X0 U57 ( .IN1(n87), .IN2(n96), .QN(n76) );
  NOR2X0 U58 ( .IN1(n88), .IN2(n96), .QN(n77) );
  NOR2X0 U59 ( .IN1(n89), .IN2(n96), .QN(n78) );
  NOR2X0 U60 ( .IN1(n90), .IN2(n96), .QN(n79) );
  NOR2X0 U61 ( .IN1(n91), .IN2(n96), .QN(n80) );
  NOR2X0 U62 ( .IN1(n86), .IN2(n97), .QN(n81) );
  NOR2X0 U63 ( .IN1(n87), .IN2(n97), .QN(n82) );
  NOR2X0 U64 ( .IN1(n88), .IN2(n97), .QN(n83) );
  NOR2X0 U65 ( .IN1(n89), .IN2(n97), .QN(n84) );
  NOR2X0 U66 ( .IN1(n90), .IN2(n97), .QN(n85) );
  NOR2X0 U67 ( .IN1(n91), .IN2(n97), .QN(product[0]) );
  INVX0 U82 ( .INP(b[0]), .ZN(n91) );
  INVX0 U83 ( .INP(b[1]), .ZN(n90) );
  INVX0 U84 ( .INP(b[2]), .ZN(n89) );
  INVX0 U85 ( .INP(b[3]), .ZN(n88) );
  INVX0 U86 ( .INP(b[4]), .ZN(n87) );
  INVX0 U87 ( .INP(b[5]), .ZN(n86) );
  INVX0 U88 ( .INP(a[0]), .ZN(n97) );
  INVX0 U89 ( .INP(a[1]), .ZN(n96) );
  INVX0 U90 ( .INP(a[2]), .ZN(n95) );
  INVX0 U91 ( .INP(a[3]), .ZN(n94) );
  INVX0 U92 ( .INP(a[4]), .ZN(n93) );
  INVX0 U93 ( .INP(a[5]), .ZN(n92) );
endmodule


module mul_24_1_DW_mult_uns_7 ( a, b, product );
  input [5:0] a;
  input [5:0] b;
  output [11:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97;
  assign product[11] = n1;

  FADDX1 U2 ( .A(n11), .B(n51), .CI(n2), .CO(n1), .S(product[10]) );
  FADDX1 U3 ( .A(n13), .B(n12), .CI(n3), .CO(n2), .S(product[9]) );
  FADDX1 U4 ( .A(n17), .B(n14), .CI(n4), .CO(n3), .S(product[8]) );
  FADDX1 U5 ( .A(n18), .B(n23), .CI(n5), .CO(n4), .S(product[7]) );
  FADDX1 U6 ( .A(n24), .B(n31), .CI(n6), .CO(n5), .S(product[6]) );
  FADDX1 U7 ( .A(n32), .B(n39), .CI(n7), .CO(n6), .S(product[5]) );
  FADDX1 U8 ( .A(n40), .B(n45), .CI(n8), .CO(n7), .S(product[4]) );
  FADDX1 U9 ( .A(n46), .B(n49), .CI(n9), .CO(n8), .S(product[3]) );
  FADDX1 U10 ( .A(n50), .B(n74), .CI(n10), .CO(n9), .S(product[2]) );
  HADDX1 U11 ( .A0(n80), .B0(n85), .C1(n10), .SO(product[1]) );
  FADDX1 U12 ( .A(n52), .B(n57), .CI(n15), .CO(n11), .S(n12) );
  FADDX1 U13 ( .A(n16), .B(n21), .CI(n19), .CO(n13), .S(n14) );
  FADDX1 U14 ( .A(n53), .B(n63), .CI(n58), .CO(n15), .S(n16) );
  FADDX1 U15 ( .A(n25), .B(n22), .CI(n20), .CO(n17), .S(n18) );
  FADDX1 U16 ( .A(n29), .B(n64), .CI(n27), .CO(n19), .S(n20) );
  FADDX1 U17 ( .A(n54), .B(n69), .CI(n59), .CO(n21), .S(n22) );
  FADDX1 U18 ( .A(n33), .B(n28), .CI(n26), .CO(n23), .S(n24) );
  FADDX1 U19 ( .A(n37), .B(n30), .CI(n35), .CO(n25), .S(n26) );
  FADDX1 U20 ( .A(n70), .B(n65), .CI(n75), .CO(n27), .S(n28) );
  HADDX1 U21 ( .A0(n60), .B0(n55), .C1(n29), .SO(n30) );
  FADDX1 U22 ( .A(n36), .B(n41), .CI(n34), .CO(n31), .S(n32) );
  FADDX1 U23 ( .A(n38), .B(n81), .CI(n43), .CO(n33), .S(n34) );
  FADDX1 U24 ( .A(n66), .B(n71), .CI(n76), .CO(n35), .S(n36) );
  HADDX1 U25 ( .A0(n61), .B0(n56), .C1(n37), .SO(n38) );
  FADDX1 U26 ( .A(n47), .B(n44), .CI(n42), .CO(n39), .S(n40) );
  FADDX1 U27 ( .A(n72), .B(n82), .CI(n77), .CO(n41), .S(n42) );
  HADDX1 U28 ( .A0(n67), .B0(n62), .C1(n43), .SO(n44) );
  FADDX1 U29 ( .A(n78), .B(n83), .CI(n48), .CO(n45), .S(n46) );
  HADDX1 U30 ( .A0(n73), .B0(n68), .C1(n47), .SO(n48) );
  HADDX1 U31 ( .A0(n84), .B0(n79), .C1(n49), .SO(n50) );
  NOR2X0 U32 ( .IN1(n86), .IN2(n92), .QN(n51) );
  NOR2X0 U33 ( .IN1(n87), .IN2(n92), .QN(n52) );
  NOR2X0 U34 ( .IN1(n88), .IN2(n92), .QN(n53) );
  NOR2X0 U35 ( .IN1(n89), .IN2(n92), .QN(n54) );
  NOR2X0 U36 ( .IN1(n90), .IN2(n92), .QN(n55) );
  NOR2X0 U37 ( .IN1(n91), .IN2(n92), .QN(n56) );
  NOR2X0 U38 ( .IN1(n86), .IN2(n93), .QN(n57) );
  NOR2X0 U39 ( .IN1(n87), .IN2(n93), .QN(n58) );
  NOR2X0 U40 ( .IN1(n88), .IN2(n93), .QN(n59) );
  NOR2X0 U41 ( .IN1(n89), .IN2(n93), .QN(n60) );
  NOR2X0 U42 ( .IN1(n90), .IN2(n93), .QN(n61) );
  NOR2X0 U43 ( .IN1(n91), .IN2(n93), .QN(n62) );
  NOR2X0 U44 ( .IN1(n86), .IN2(n94), .QN(n63) );
  NOR2X0 U45 ( .IN1(n87), .IN2(n94), .QN(n64) );
  NOR2X0 U46 ( .IN1(n88), .IN2(n94), .QN(n65) );
  NOR2X0 U47 ( .IN1(n89), .IN2(n94), .QN(n66) );
  NOR2X0 U48 ( .IN1(n90), .IN2(n94), .QN(n67) );
  NOR2X0 U49 ( .IN1(n91), .IN2(n94), .QN(n68) );
  NOR2X0 U50 ( .IN1(n86), .IN2(n95), .QN(n69) );
  NOR2X0 U51 ( .IN1(n87), .IN2(n95), .QN(n70) );
  NOR2X0 U52 ( .IN1(n88), .IN2(n95), .QN(n71) );
  NOR2X0 U53 ( .IN1(n89), .IN2(n95), .QN(n72) );
  NOR2X0 U54 ( .IN1(n90), .IN2(n95), .QN(n73) );
  NOR2X0 U55 ( .IN1(n91), .IN2(n95), .QN(n74) );
  NOR2X0 U56 ( .IN1(n86), .IN2(n96), .QN(n75) );
  NOR2X0 U57 ( .IN1(n87), .IN2(n96), .QN(n76) );
  NOR2X0 U58 ( .IN1(n88), .IN2(n96), .QN(n77) );
  NOR2X0 U59 ( .IN1(n89), .IN2(n96), .QN(n78) );
  NOR2X0 U60 ( .IN1(n90), .IN2(n96), .QN(n79) );
  NOR2X0 U61 ( .IN1(n91), .IN2(n96), .QN(n80) );
  NOR2X0 U62 ( .IN1(n86), .IN2(n97), .QN(n81) );
  NOR2X0 U63 ( .IN1(n87), .IN2(n97), .QN(n82) );
  NOR2X0 U64 ( .IN1(n88), .IN2(n97), .QN(n83) );
  NOR2X0 U65 ( .IN1(n89), .IN2(n97), .QN(n84) );
  NOR2X0 U66 ( .IN1(n90), .IN2(n97), .QN(n85) );
  NOR2X0 U67 ( .IN1(n91), .IN2(n97), .QN(product[0]) );
  INVX0 U82 ( .INP(b[0]), .ZN(n91) );
  INVX0 U83 ( .INP(b[1]), .ZN(n90) );
  INVX0 U84 ( .INP(b[2]), .ZN(n89) );
  INVX0 U85 ( .INP(b[3]), .ZN(n88) );
  INVX0 U86 ( .INP(b[4]), .ZN(n87) );
  INVX0 U87 ( .INP(b[5]), .ZN(n86) );
  INVX0 U88 ( .INP(a[0]), .ZN(n97) );
  INVX0 U89 ( .INP(a[1]), .ZN(n96) );
  INVX0 U90 ( .INP(a[2]), .ZN(n95) );
  INVX0 U91 ( .INP(a[3]), .ZN(n94) );
  INVX0 U92 ( .INP(a[4]), .ZN(n93) );
  INVX0 U93 ( .INP(a[5]), .ZN(n92) );
endmodule


module mul_24_1 ( clk_i, fracta_i, fractb_i, signa_i, signb_i, start_i, 
        fract_o, sign_o, ready_o );
  input [23:0] fracta_i;
  input [23:0] fractb_i;
  output [47:0] fract_o;
  input clk_i, signa_i, signb_i, start_i;
  output sign_o, ready_o;
  wire   N25, N26, s_signa_i, s_signb_i, s_start_i, s_state, N57, N58, N59,
         N60, N61, N62, N63, N64, N65, N66, N67, N68, \prod2[3][3][11] ,
         \prod2[3][3][10] , \prod2[3][3][9] , \prod2[3][3][8] ,
         \prod2[3][3][7] , \prod2[3][3][6] , \prod2[3][3][5] ,
         \prod2[3][3][4] , \prod2[3][3][3] , \prod2[3][3][2] ,
         \prod2[3][3][1] , \prod2[3][3][0] , \prod2[3][2][17] ,
         \prod2[3][2][16] , \prod2[3][2][15] , \prod2[3][2][14] ,
         \prod2[3][2][13] , \prod2[3][2][12] , \prod2[3][2][11] ,
         \prod2[3][2][10] , \prod2[3][2][9] , \prod2[3][2][8] ,
         \prod2[3][2][7] , \prod2[3][2][6] , \prod2[3][1][17] ,
         \prod2[3][1][16] , \prod2[3][1][15] , \prod2[3][1][14] ,
         \prod2[3][1][13] , \prod2[3][1][12] , \prod2[3][1][11] ,
         \prod2[3][1][10] , \prod2[3][1][9] , \prod2[3][1][8] ,
         \prod2[3][1][7] , \prod2[3][1][6] , \prod2[3][0][23] ,
         \prod2[3][0][22] , \prod2[3][0][21] , \prod2[3][0][20] ,
         \prod2[3][0][19] , \prod2[3][0][18] , \prod2[3][0][17] ,
         \prod2[3][0][16] , \prod2[3][0][15] , \prod2[3][0][14] ,
         \prod2[3][0][13] , \prod2[3][0][12] , \prod2[2][3][11] ,
         \prod2[2][3][10] , \prod2[2][3][9] , \prod2[2][3][8] ,
         \prod2[2][3][7] , \prod2[2][3][6] , \prod2[2][3][5] ,
         \prod2[2][3][4] , \prod2[2][3][3] , \prod2[2][3][2] ,
         \prod2[2][3][1] , \prod2[2][3][0] , \prod2[2][2][17] ,
         \prod2[2][2][16] , \prod2[2][2][15] , \prod2[2][2][14] ,
         \prod2[2][2][13] , \prod2[2][2][12] , \prod2[2][2][11] ,
         \prod2[2][2][10] , \prod2[2][2][9] , \prod2[2][2][8] ,
         \prod2[2][2][7] , \prod2[2][2][6] , \prod2[2][1][17] ,
         \prod2[2][1][16] , \prod2[2][1][15] , \prod2[2][1][14] ,
         \prod2[2][1][13] , \prod2[2][1][12] , \prod2[2][1][11] ,
         \prod2[2][1][10] , \prod2[2][1][9] , \prod2[2][1][8] ,
         \prod2[2][1][7] , \prod2[2][1][6] , \prod2[2][0][23] ,
         \prod2[2][0][22] , \prod2[2][0][21] , \prod2[2][0][20] ,
         \prod2[2][0][19] , \prod2[2][0][18] , \prod2[2][0][17] ,
         \prod2[2][0][16] , \prod2[2][0][15] , \prod2[2][0][14] ,
         \prod2[2][0][13] , \prod2[2][0][12] , \prod2[1][3][11] ,
         \prod2[1][3][10] , \prod2[1][3][9] , \prod2[1][3][8] ,
         \prod2[1][3][7] , \prod2[1][3][6] , \prod2[1][3][5] ,
         \prod2[1][3][4] , \prod2[1][3][3] , \prod2[1][3][2] ,
         \prod2[1][3][1] , \prod2[1][3][0] , \prod2[1][2][17] ,
         \prod2[1][2][16] , \prod2[1][2][15] , \prod2[1][2][14] ,
         \prod2[1][2][13] , \prod2[1][2][12] , \prod2[1][2][11] ,
         \prod2[1][2][10] , \prod2[1][2][9] , \prod2[1][2][8] ,
         \prod2[1][2][7] , \prod2[1][2][6] , \prod2[1][1][17] ,
         \prod2[1][1][16] , \prod2[1][1][15] , \prod2[1][1][14] ,
         \prod2[1][1][13] , \prod2[1][1][12] , \prod2[1][1][11] ,
         \prod2[1][1][10] , \prod2[1][1][9] , \prod2[1][1][8] ,
         \prod2[1][1][7] , \prod2[1][1][6] , \prod2[1][0][23] ,
         \prod2[1][0][22] , \prod2[1][0][21] , \prod2[1][0][20] ,
         \prod2[1][0][19] , \prod2[1][0][18] , \prod2[1][0][17] ,
         \prod2[1][0][16] , \prod2[1][0][15] , \prod2[1][0][14] ,
         \prod2[1][0][13] , \prod2[1][0][12] , \prod2[0][3][11] ,
         \prod2[0][3][10] , \prod2[0][3][9] , \prod2[0][3][8] ,
         \prod2[0][3][7] , \prod2[0][3][6] , \prod2[0][3][5] ,
         \prod2[0][3][4] , \prod2[0][3][3] , \prod2[0][3][2] ,
         \prod2[0][3][1] , \prod2[0][3][0] , \prod2[0][2][17] ,
         \prod2[0][2][16] , \prod2[0][2][15] , \prod2[0][2][14] ,
         \prod2[0][2][13] , \prod2[0][2][12] , \prod2[0][2][11] ,
         \prod2[0][2][10] , \prod2[0][2][9] , \prod2[0][2][8] ,
         \prod2[0][2][7] , \prod2[0][2][6] , \prod2[0][1][17] ,
         \prod2[0][1][16] , \prod2[0][1][15] , \prod2[0][1][14] ,
         \prod2[0][1][13] , \prod2[0][1][12] , \prod2[0][1][11] ,
         \prod2[0][1][10] , \prod2[0][1][9] , \prod2[0][1][8] ,
         \prod2[0][1][7] , \prod2[0][1][6] , \prod2[0][0][23] ,
         \prod2[0][0][22] , \prod2[0][0][21] , \prod2[0][0][20] ,
         \prod2[0][0][19] , \prod2[0][0][18] , \prod2[0][0][17] ,
         \prod2[0][0][16] , \prod2[0][0][15] , \prod2[0][0][14] ,
         \prod2[0][0][13] , \prod2[0][0][12] , N69, N70, N71, N72, N73, N74,
         N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88,
         N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101,
         N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N123,
         N124, N125, N126, N127, N128, N206, N207, N208, N209, N210, N211,
         N212, N213, N214, N215, N216, N217, N218, N219, N220, N221, N222,
         N223, N250, N251, N252, N253, N254, N255, N256, N257, N258, N259,
         N260, N261, N262, N263, N264, N265, N266, N267, N268, N300, N301,
         N302, N303, N304, N305, N306, N307, N308, N309, N310, N311, N312,
         N313, N314, N315, N316, N317, N318, N319, N320, N321, N322, N323,
         \sum[3][23] , \sum[3][22] , \sum[3][21] , \sum[3][20] , \sum[3][19] ,
         \sum[3][18] , \sum[3][17] , \sum[3][16] , \sum[3][15] , \sum[3][14] ,
         \sum[3][13] , \sum[3][12] , \sum[3][11] , \sum[3][10] , \sum[3][9] ,
         \sum[3][8] , \sum[3][7] , \sum[3][6] , \sum[3][5] , \sum[3][4] ,
         \sum[3][3] , \sum[3][2] , \sum[3][1] , \sum[3][0] , \sum[2][23] ,
         \sum[2][22] , \sum[2][21] , \sum[2][20] , \sum[2][19] , \sum[2][18] ,
         \sum[2][17] , \sum[2][16] , \sum[2][15] , \sum[2][14] , \sum[2][13] ,
         \sum[2][12] , \sum[2][11] , \sum[2][10] , \sum[2][9] , \sum[2][8] ,
         \sum[2][7] , \sum[2][6] , \sum[2][5] , \sum[2][4] , \sum[2][3] ,
         \sum[2][2] , \sum[2][1] , \sum[2][0] , \sum[1][23] , \sum[1][22] ,
         \sum[1][21] , \sum[1][20] , \sum[1][19] , \sum[1][18] , \sum[1][17] ,
         \sum[1][16] , \sum[1][15] , \sum[1][14] , \sum[1][13] , \sum[1][12] ,
         \sum[1][11] , \sum[1][10] , \sum[1][9] , \sum[1][8] , \sum[1][7] ,
         \sum[1][6] , \sum[1][5] , \sum[1][4] , \sum[1][3] , \sum[1][2] ,
         \sum[1][1] , \sum[1][0] , \sum[0][23] , \sum[0][22] , \sum[0][21] ,
         \sum[0][20] , \sum[0][19] , \sum[0][18] , \sum[0][17] , \sum[0][16] ,
         \sum[0][15] , \sum[0][14] , \sum[0][13] , \sum[0][12] , \sum[0][11] ,
         \sum[0][10] , \sum[0][9] , \sum[0][8] , \sum[0][7] , \sum[0][6] ,
         \sum[0][5] , \sum[0][4] , \sum[0][3] , \sum[0][2] , \sum[0][1] ,
         \sum[0][0] , N340, N341, N342, N343, N344, N345, N346, N347, N348,
         N349, N350, N351, N352, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N368, N369, N370,
         N371, N372, N373, N374, N375, N376, N377, N378, N379, N380, N381,
         N382, N383, N384, N385, N386, N387, N388, N389, N390, N391, N392,
         N393, N394, N395, N396, N397, N398, N399, N400, N401, N402, N403,
         N404, N405, N406, N407, N408, N409, N410, N411, N412, n42, n45, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n4, n5, n6, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n43, n44, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445;
  wire   [23:0] s_fracta_i;
  wire   [23:0] s_fractb_i;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22;

  DFFX1 \s_fracta_i_reg[23]  ( .D(fracta_i[23]), .CLK(clk_i), .Q(
        s_fracta_i[23]) );
  DFFX1 \s_fracta_i_reg[22]  ( .D(fracta_i[22]), .CLK(clk_i), .Q(
        s_fracta_i[22]) );
  DFFX1 \s_fracta_i_reg[21]  ( .D(fracta_i[21]), .CLK(clk_i), .Q(
        s_fracta_i[21]) );
  DFFX1 \s_fracta_i_reg[20]  ( .D(fracta_i[20]), .CLK(clk_i), .Q(
        s_fracta_i[20]) );
  DFFX1 \s_fracta_i_reg[19]  ( .D(fracta_i[19]), .CLK(clk_i), .Q(
        s_fracta_i[19]) );
  DFFX1 \s_fracta_i_reg[18]  ( .D(fracta_i[18]), .CLK(clk_i), .Q(
        s_fracta_i[18]) );
  DFFX1 \s_fracta_i_reg[17]  ( .D(fracta_i[17]), .CLK(clk_i), .Q(
        s_fracta_i[17]) );
  DFFX1 \s_fracta_i_reg[16]  ( .D(fracta_i[16]), .CLK(clk_i), .Q(
        s_fracta_i[16]) );
  DFFX1 \s_fracta_i_reg[15]  ( .D(fracta_i[15]), .CLK(clk_i), .Q(
        s_fracta_i[15]) );
  DFFX1 \s_fracta_i_reg[14]  ( .D(fracta_i[14]), .CLK(clk_i), .Q(
        s_fracta_i[14]) );
  DFFX1 \s_fracta_i_reg[13]  ( .D(fracta_i[13]), .CLK(clk_i), .Q(
        s_fracta_i[13]) );
  DFFX1 \s_fracta_i_reg[12]  ( .D(fracta_i[12]), .CLK(clk_i), .Q(
        s_fracta_i[12]) );
  DFFX1 \s_fracta_i_reg[11]  ( .D(fracta_i[11]), .CLK(clk_i), .Q(
        s_fracta_i[11]) );
  DFFX1 \s_fracta_i_reg[10]  ( .D(fracta_i[10]), .CLK(clk_i), .Q(
        s_fracta_i[10]) );
  DFFX1 \s_fracta_i_reg[9]  ( .D(fracta_i[9]), .CLK(clk_i), .Q(s_fracta_i[9])
         );
  DFFX1 \s_fracta_i_reg[8]  ( .D(fracta_i[8]), .CLK(clk_i), .Q(s_fracta_i[8])
         );
  DFFX1 \s_fracta_i_reg[7]  ( .D(fracta_i[7]), .CLK(clk_i), .Q(s_fracta_i[7])
         );
  DFFX1 \s_fracta_i_reg[6]  ( .D(fracta_i[6]), .CLK(clk_i), .Q(s_fracta_i[6])
         );
  DFFX1 \s_fracta_i_reg[5]  ( .D(fracta_i[5]), .CLK(clk_i), .Q(s_fracta_i[5])
         );
  DFFX1 \s_fracta_i_reg[4]  ( .D(fracta_i[4]), .CLK(clk_i), .Q(s_fracta_i[4])
         );
  DFFX1 \s_fracta_i_reg[3]  ( .D(fracta_i[3]), .CLK(clk_i), .Q(s_fracta_i[3])
         );
  DFFX1 \s_fracta_i_reg[2]  ( .D(fracta_i[2]), .CLK(clk_i), .Q(s_fracta_i[2])
         );
  DFFX1 \s_fracta_i_reg[1]  ( .D(fracta_i[1]), .CLK(clk_i), .Q(s_fracta_i[1])
         );
  DFFX1 \s_fracta_i_reg[0]  ( .D(fracta_i[0]), .CLK(clk_i), .Q(s_fracta_i[0])
         );
  DFFX1 \s_fractb_i_reg[23]  ( .D(fractb_i[23]), .CLK(clk_i), .Q(
        s_fractb_i[23]) );
  DFFX1 \s_fractb_i_reg[22]  ( .D(fractb_i[22]), .CLK(clk_i), .Q(
        s_fractb_i[22]) );
  DFFX1 \s_fractb_i_reg[21]  ( .D(fractb_i[21]), .CLK(clk_i), .Q(
        s_fractb_i[21]) );
  DFFX1 \s_fractb_i_reg[20]  ( .D(fractb_i[20]), .CLK(clk_i), .Q(
        s_fractb_i[20]) );
  DFFX1 \s_fractb_i_reg[19]  ( .D(fractb_i[19]), .CLK(clk_i), .Q(
        s_fractb_i[19]) );
  DFFX1 \s_fractb_i_reg[18]  ( .D(fractb_i[18]), .CLK(clk_i), .Q(
        s_fractb_i[18]) );
  DFFX1 \s_fractb_i_reg[17]  ( .D(fractb_i[17]), .CLK(clk_i), .Q(
        s_fractb_i[17]) );
  DFFX1 \s_fractb_i_reg[16]  ( .D(fractb_i[16]), .CLK(clk_i), .Q(
        s_fractb_i[16]) );
  DFFX1 \s_fractb_i_reg[15]  ( .D(fractb_i[15]), .CLK(clk_i), .Q(
        s_fractb_i[15]) );
  DFFX1 \s_fractb_i_reg[14]  ( .D(fractb_i[14]), .CLK(clk_i), .Q(
        s_fractb_i[14]) );
  DFFX1 \s_fractb_i_reg[13]  ( .D(fractb_i[13]), .CLK(clk_i), .Q(
        s_fractb_i[13]) );
  DFFX1 \s_fractb_i_reg[12]  ( .D(fractb_i[12]), .CLK(clk_i), .Q(
        s_fractb_i[12]) );
  DFFX1 \s_fractb_i_reg[11]  ( .D(fractb_i[11]), .CLK(clk_i), .Q(
        s_fractb_i[11]) );
  DFFX1 \s_fractb_i_reg[10]  ( .D(fractb_i[10]), .CLK(clk_i), .Q(
        s_fractb_i[10]) );
  DFFX1 \s_fractb_i_reg[9]  ( .D(fractb_i[9]), .CLK(clk_i), .Q(s_fractb_i[9])
         );
  DFFX1 \s_fractb_i_reg[8]  ( .D(fractb_i[8]), .CLK(clk_i), .Q(s_fractb_i[8])
         );
  DFFX1 \s_fractb_i_reg[7]  ( .D(fractb_i[7]), .CLK(clk_i), .Q(s_fractb_i[7])
         );
  DFFX1 \s_fractb_i_reg[6]  ( .D(fractb_i[6]), .CLK(clk_i), .Q(s_fractb_i[6])
         );
  DFFX1 \s_fractb_i_reg[5]  ( .D(fractb_i[5]), .CLK(clk_i), .Q(s_fractb_i[5])
         );
  DFFX1 \s_fractb_i_reg[4]  ( .D(fractb_i[4]), .CLK(clk_i), .Q(s_fractb_i[4])
         );
  DFFX1 \s_fractb_i_reg[3]  ( .D(fractb_i[3]), .CLK(clk_i), .Q(s_fractb_i[3])
         );
  DFFX1 \s_fractb_i_reg[2]  ( .D(fractb_i[2]), .CLK(clk_i), .Q(s_fractb_i[2])
         );
  DFFX1 \s_fractb_i_reg[1]  ( .D(fractb_i[1]), .CLK(clk_i), .Q(s_fractb_i[1])
         );
  DFFX1 \s_fractb_i_reg[0]  ( .D(fractb_i[0]), .CLK(clk_i), .Q(s_fractb_i[0])
         );
  DFFX1 s_signa_i_reg ( .D(signa_i), .CLK(clk_i), .Q(s_signa_i) );
  DFFX1 s_signb_i_reg ( .D(signb_i), .CLK(clk_i), .Q(s_signb_i) );
  DFFX1 s_start_i_reg ( .D(start_i), .CLK(clk_i), .Q(s_start_i), .QN(n5) );
  DFFX1 \count_reg[0]  ( .D(n356), .CLK(clk_i), .Q(N25), .QN(n45) );
  DFFX1 s_state_reg ( .D(n354), .CLK(clk_i), .Q(s_state) );
  DFFX1 s_ready_o_reg ( .D(n353), .CLK(clk_i), .Q(ready_o) );
  DFFX1 \count_reg[1]  ( .D(n352), .CLK(clk_i), .Q(N26), .QN(n445) );
  DFFX1 \count_reg[2]  ( .D(n355), .CLK(clk_i), .Q(n4), .QN(n42) );
  DFFX1 \prod2_reg[3][3][11]  ( .D(n351), .CLK(clk_i), .Q(\prod2[3][3][11] )
         );
  DFFX1 \prod2_reg[3][3][10]  ( .D(n350), .CLK(clk_i), .Q(\prod2[3][3][10] )
         );
  DFFX1 \prod2_reg[3][3][9]  ( .D(n349), .CLK(clk_i), .Q(\prod2[3][3][9] ) );
  DFFX1 \prod2_reg[3][3][8]  ( .D(n348), .CLK(clk_i), .Q(\prod2[3][3][8] ) );
  DFFX1 \prod2_reg[3][3][7]  ( .D(n347), .CLK(clk_i), .Q(\prod2[3][3][7] ) );
  DFFX1 \prod2_reg[3][3][6]  ( .D(n346), .CLK(clk_i), .Q(\prod2[3][3][6] ) );
  DFFX1 \prod2_reg[3][3][5]  ( .D(n345), .CLK(clk_i), .Q(\prod2[3][3][5] ) );
  DFFX1 \prod2_reg[3][3][4]  ( .D(n344), .CLK(clk_i), .Q(\prod2[3][3][4] ) );
  DFFX1 \prod2_reg[3][3][3]  ( .D(n343), .CLK(clk_i), .Q(\prod2[3][3][3] ) );
  DFFX1 \prod2_reg[3][3][2]  ( .D(n342), .CLK(clk_i), .Q(\prod2[3][3][2] ) );
  DFFX1 \prod2_reg[3][3][1]  ( .D(n341), .CLK(clk_i), .Q(\prod2[3][3][1] ) );
  DFFX1 \prod2_reg[3][3][0]  ( .D(n340), .CLK(clk_i), .Q(\prod2[3][3][0] ) );
  DFFX1 \prod2_reg[3][2][17]  ( .D(n339), .CLK(clk_i), .Q(\prod2[3][2][17] )
         );
  DFFX1 \prod2_reg[3][2][16]  ( .D(n338), .CLK(clk_i), .Q(\prod2[3][2][16] )
         );
  DFFX1 \prod2_reg[3][2][15]  ( .D(n337), .CLK(clk_i), .Q(\prod2[3][2][15] )
         );
  DFFX1 \prod2_reg[3][2][14]  ( .D(n336), .CLK(clk_i), .Q(\prod2[3][2][14] )
         );
  DFFX1 \prod2_reg[3][2][13]  ( .D(n335), .CLK(clk_i), .Q(\prod2[3][2][13] )
         );
  DFFX1 \prod2_reg[3][2][12]  ( .D(n334), .CLK(clk_i), .Q(\prod2[3][2][12] )
         );
  DFFX1 \prod2_reg[3][2][11]  ( .D(n333), .CLK(clk_i), .Q(\prod2[3][2][11] )
         );
  DFFX1 \prod2_reg[3][2][10]  ( .D(n332), .CLK(clk_i), .Q(\prod2[3][2][10] )
         );
  DFFX1 \prod2_reg[3][2][9]  ( .D(n331), .CLK(clk_i), .Q(\prod2[3][2][9] ) );
  DFFX1 \prod2_reg[3][2][8]  ( .D(n330), .CLK(clk_i), .Q(\prod2[3][2][8] ) );
  DFFX1 \prod2_reg[3][2][7]  ( .D(n329), .CLK(clk_i), .Q(\prod2[3][2][7] ) );
  DFFX1 \prod2_reg[3][2][6]  ( .D(n328), .CLK(clk_i), .Q(\prod2[3][2][6] ) );
  DFFX1 \prod2_reg[3][1][17]  ( .D(n327), .CLK(clk_i), .Q(\prod2[3][1][17] )
         );
  DFFX1 \prod2_reg[3][1][16]  ( .D(n326), .CLK(clk_i), .Q(\prod2[3][1][16] )
         );
  DFFX1 \prod2_reg[3][1][15]  ( .D(n325), .CLK(clk_i), .Q(\prod2[3][1][15] )
         );
  DFFX1 \prod2_reg[3][1][14]  ( .D(n324), .CLK(clk_i), .Q(\prod2[3][1][14] )
         );
  DFFX1 \prod2_reg[3][1][13]  ( .D(n323), .CLK(clk_i), .Q(\prod2[3][1][13] )
         );
  DFFX1 \prod2_reg[3][1][12]  ( .D(n322), .CLK(clk_i), .Q(\prod2[3][1][12] )
         );
  DFFX1 \prod2_reg[3][1][11]  ( .D(n321), .CLK(clk_i), .Q(\prod2[3][1][11] )
         );
  DFFX1 \prod2_reg[3][1][10]  ( .D(n320), .CLK(clk_i), .Q(\prod2[3][1][10] )
         );
  DFFX1 \prod2_reg[3][1][9]  ( .D(n319), .CLK(clk_i), .Q(\prod2[3][1][9] ) );
  DFFX1 \prod2_reg[3][1][8]  ( .D(n318), .CLK(clk_i), .Q(\prod2[3][1][8] ) );
  DFFX1 \prod2_reg[3][1][7]  ( .D(n317), .CLK(clk_i), .Q(\prod2[3][1][7] ) );
  DFFX1 \prod2_reg[3][1][6]  ( .D(n316), .CLK(clk_i), .Q(\prod2[3][1][6] ) );
  DFFX1 \prod2_reg[3][0][23]  ( .D(n315), .CLK(clk_i), .Q(\prod2[3][0][23] )
         );
  DFFX1 \prod2_reg[3][0][22]  ( .D(n314), .CLK(clk_i), .Q(\prod2[3][0][22] )
         );
  DFFX1 \prod2_reg[3][0][21]  ( .D(n313), .CLK(clk_i), .Q(\prod2[3][0][21] )
         );
  DFFX1 \prod2_reg[3][0][20]  ( .D(n312), .CLK(clk_i), .Q(\prod2[3][0][20] )
         );
  DFFX1 \prod2_reg[3][0][19]  ( .D(n311), .CLK(clk_i), .Q(\prod2[3][0][19] )
         );
  DFFX1 \prod2_reg[3][0][18]  ( .D(n310), .CLK(clk_i), .Q(\prod2[3][0][18] )
         );
  DFFX1 \prod2_reg[3][0][17]  ( .D(n309), .CLK(clk_i), .Q(\prod2[3][0][17] )
         );
  DFFX1 \prod2_reg[3][0][16]  ( .D(n308), .CLK(clk_i), .Q(\prod2[3][0][16] )
         );
  DFFX1 \prod2_reg[3][0][15]  ( .D(n307), .CLK(clk_i), .Q(\prod2[3][0][15] )
         );
  DFFX1 \prod2_reg[3][0][14]  ( .D(n306), .CLK(clk_i), .Q(\prod2[3][0][14] )
         );
  DFFX1 \prod2_reg[3][0][13]  ( .D(n305), .CLK(clk_i), .Q(\prod2[3][0][13] )
         );
  DFFX1 \prod2_reg[3][0][12]  ( .D(n304), .CLK(clk_i), .Q(\prod2[3][0][12] )
         );
  DFFX1 \prod2_reg[2][3][11]  ( .D(n303), .CLK(clk_i), .Q(\prod2[2][3][11] )
         );
  DFFX1 \prod2_reg[2][3][10]  ( .D(n302), .CLK(clk_i), .Q(\prod2[2][3][10] )
         );
  DFFX1 \prod2_reg[2][3][9]  ( .D(n301), .CLK(clk_i), .Q(\prod2[2][3][9] ) );
  DFFX1 \prod2_reg[2][3][8]  ( .D(n300), .CLK(clk_i), .Q(\prod2[2][3][8] ) );
  DFFX1 \prod2_reg[2][3][7]  ( .D(n299), .CLK(clk_i), .Q(\prod2[2][3][7] ) );
  DFFX1 \prod2_reg[2][3][6]  ( .D(n298), .CLK(clk_i), .Q(\prod2[2][3][6] ) );
  DFFX1 \prod2_reg[2][3][5]  ( .D(n297), .CLK(clk_i), .Q(\prod2[2][3][5] ) );
  DFFX1 \prod2_reg[2][3][4]  ( .D(n296), .CLK(clk_i), .Q(\prod2[2][3][4] ) );
  DFFX1 \prod2_reg[2][3][3]  ( .D(n295), .CLK(clk_i), .Q(\prod2[2][3][3] ) );
  DFFX1 \prod2_reg[2][3][2]  ( .D(n294), .CLK(clk_i), .Q(\prod2[2][3][2] ) );
  DFFX1 \prod2_reg[2][3][1]  ( .D(n293), .CLK(clk_i), .Q(\prod2[2][3][1] ) );
  DFFX1 \prod2_reg[2][3][0]  ( .D(n292), .CLK(clk_i), .Q(\prod2[2][3][0] ) );
  DFFX1 \prod2_reg[2][2][17]  ( .D(n291), .CLK(clk_i), .Q(\prod2[2][2][17] )
         );
  DFFX1 \prod2_reg[2][2][16]  ( .D(n290), .CLK(clk_i), .Q(\prod2[2][2][16] )
         );
  DFFX1 \prod2_reg[2][2][15]  ( .D(n289), .CLK(clk_i), .Q(\prod2[2][2][15] )
         );
  DFFX1 \prod2_reg[2][2][14]  ( .D(n288), .CLK(clk_i), .Q(\prod2[2][2][14] )
         );
  DFFX1 \prod2_reg[2][2][13]  ( .D(n287), .CLK(clk_i), .Q(\prod2[2][2][13] )
         );
  DFFX1 \prod2_reg[2][2][12]  ( .D(n286), .CLK(clk_i), .Q(\prod2[2][2][12] )
         );
  DFFX1 \prod2_reg[2][2][11]  ( .D(n285), .CLK(clk_i), .Q(\prod2[2][2][11] )
         );
  DFFX1 \prod2_reg[2][2][10]  ( .D(n284), .CLK(clk_i), .Q(\prod2[2][2][10] )
         );
  DFFX1 \prod2_reg[2][2][9]  ( .D(n283), .CLK(clk_i), .Q(\prod2[2][2][9] ) );
  DFFX1 \prod2_reg[2][2][8]  ( .D(n282), .CLK(clk_i), .Q(\prod2[2][2][8] ) );
  DFFX1 \prod2_reg[2][2][7]  ( .D(n281), .CLK(clk_i), .Q(\prod2[2][2][7] ) );
  DFFX1 \prod2_reg[2][2][6]  ( .D(n280), .CLK(clk_i), .Q(\prod2[2][2][6] ) );
  DFFX1 \prod2_reg[2][1][17]  ( .D(n279), .CLK(clk_i), .Q(\prod2[2][1][17] )
         );
  DFFX1 \prod2_reg[2][1][16]  ( .D(n278), .CLK(clk_i), .Q(\prod2[2][1][16] )
         );
  DFFX1 \prod2_reg[2][1][15]  ( .D(n277), .CLK(clk_i), .Q(\prod2[2][1][15] )
         );
  DFFX1 \prod2_reg[2][1][14]  ( .D(n276), .CLK(clk_i), .Q(\prod2[2][1][14] )
         );
  DFFX1 \prod2_reg[2][1][13]  ( .D(n275), .CLK(clk_i), .Q(\prod2[2][1][13] )
         );
  DFFX1 \prod2_reg[2][1][12]  ( .D(n274), .CLK(clk_i), .Q(\prod2[2][1][12] )
         );
  DFFX1 \prod2_reg[2][1][11]  ( .D(n273), .CLK(clk_i), .Q(\prod2[2][1][11] )
         );
  DFFX1 \prod2_reg[2][1][10]  ( .D(n272), .CLK(clk_i), .Q(\prod2[2][1][10] )
         );
  DFFX1 \prod2_reg[2][1][9]  ( .D(n271), .CLK(clk_i), .Q(\prod2[2][1][9] ) );
  DFFX1 \prod2_reg[2][1][8]  ( .D(n270), .CLK(clk_i), .Q(\prod2[2][1][8] ) );
  DFFX1 \prod2_reg[2][1][7]  ( .D(n269), .CLK(clk_i), .Q(\prod2[2][1][7] ) );
  DFFX1 \prod2_reg[2][1][6]  ( .D(n268), .CLK(clk_i), .Q(\prod2[2][1][6] ) );
  DFFX1 \prod2_reg[2][0][23]  ( .D(n267), .CLK(clk_i), .Q(\prod2[2][0][23] )
         );
  DFFX1 \prod2_reg[2][0][22]  ( .D(n266), .CLK(clk_i), .Q(\prod2[2][0][22] )
         );
  DFFX1 \prod2_reg[2][0][21]  ( .D(n265), .CLK(clk_i), .Q(\prod2[2][0][21] )
         );
  DFFX1 \prod2_reg[2][0][20]  ( .D(n264), .CLK(clk_i), .Q(\prod2[2][0][20] )
         );
  DFFX1 \prod2_reg[2][0][19]  ( .D(n263), .CLK(clk_i), .Q(\prod2[2][0][19] )
         );
  DFFX1 \prod2_reg[2][0][18]  ( .D(n262), .CLK(clk_i), .Q(\prod2[2][0][18] )
         );
  DFFX1 \prod2_reg[2][0][17]  ( .D(n261), .CLK(clk_i), .Q(\prod2[2][0][17] )
         );
  DFFX1 \prod2_reg[2][0][16]  ( .D(n260), .CLK(clk_i), .Q(\prod2[2][0][16] )
         );
  DFFX1 \prod2_reg[2][0][15]  ( .D(n259), .CLK(clk_i), .Q(\prod2[2][0][15] )
         );
  DFFX1 \prod2_reg[2][0][14]  ( .D(n258), .CLK(clk_i), .Q(\prod2[2][0][14] )
         );
  DFFX1 \prod2_reg[2][0][13]  ( .D(n257), .CLK(clk_i), .Q(\prod2[2][0][13] )
         );
  DFFX1 \prod2_reg[2][0][12]  ( .D(n256), .CLK(clk_i), .Q(\prod2[2][0][12] )
         );
  DFFX1 \prod2_reg[1][3][11]  ( .D(n255), .CLK(clk_i), .Q(\prod2[1][3][11] )
         );
  DFFX1 \prod2_reg[1][3][10]  ( .D(n254), .CLK(clk_i), .Q(\prod2[1][3][10] )
         );
  DFFX1 \prod2_reg[1][3][9]  ( .D(n253), .CLK(clk_i), .Q(\prod2[1][3][9] ) );
  DFFX1 \prod2_reg[1][3][8]  ( .D(n252), .CLK(clk_i), .Q(\prod2[1][3][8] ) );
  DFFX1 \prod2_reg[1][3][7]  ( .D(n251), .CLK(clk_i), .Q(\prod2[1][3][7] ) );
  DFFX1 \prod2_reg[1][3][6]  ( .D(n250), .CLK(clk_i), .Q(\prod2[1][3][6] ) );
  DFFX1 \prod2_reg[1][3][5]  ( .D(n249), .CLK(clk_i), .Q(\prod2[1][3][5] ) );
  DFFX1 \prod2_reg[1][3][4]  ( .D(n248), .CLK(clk_i), .Q(\prod2[1][3][4] ) );
  DFFX1 \prod2_reg[1][3][3]  ( .D(n247), .CLK(clk_i), .Q(\prod2[1][3][3] ) );
  DFFX1 \prod2_reg[1][3][2]  ( .D(n246), .CLK(clk_i), .Q(\prod2[1][3][2] ) );
  DFFX1 \prod2_reg[1][3][1]  ( .D(n245), .CLK(clk_i), .Q(\prod2[1][3][1] ) );
  DFFX1 \prod2_reg[1][3][0]  ( .D(n244), .CLK(clk_i), .Q(\prod2[1][3][0] ) );
  DFFX1 \prod2_reg[1][2][17]  ( .D(n243), .CLK(clk_i), .Q(\prod2[1][2][17] )
         );
  DFFX1 \prod2_reg[1][2][16]  ( .D(n242), .CLK(clk_i), .Q(\prod2[1][2][16] )
         );
  DFFX1 \prod2_reg[1][2][15]  ( .D(n241), .CLK(clk_i), .Q(\prod2[1][2][15] )
         );
  DFFX1 \prod2_reg[1][2][14]  ( .D(n240), .CLK(clk_i), .Q(\prod2[1][2][14] )
         );
  DFFX1 \prod2_reg[1][2][13]  ( .D(n239), .CLK(clk_i), .Q(\prod2[1][2][13] )
         );
  DFFX1 \prod2_reg[1][2][12]  ( .D(n238), .CLK(clk_i), .Q(\prod2[1][2][12] )
         );
  DFFX1 \prod2_reg[1][2][11]  ( .D(n237), .CLK(clk_i), .Q(\prod2[1][2][11] )
         );
  DFFX1 \prod2_reg[1][2][10]  ( .D(n236), .CLK(clk_i), .Q(\prod2[1][2][10] )
         );
  DFFX1 \prod2_reg[1][2][9]  ( .D(n235), .CLK(clk_i), .Q(\prod2[1][2][9] ) );
  DFFX1 \prod2_reg[1][2][8]  ( .D(n234), .CLK(clk_i), .Q(\prod2[1][2][8] ) );
  DFFX1 \prod2_reg[1][2][7]  ( .D(n233), .CLK(clk_i), .Q(\prod2[1][2][7] ) );
  DFFX1 \prod2_reg[1][2][6]  ( .D(n232), .CLK(clk_i), .Q(\prod2[1][2][6] ) );
  DFFX1 \prod2_reg[1][1][17]  ( .D(n231), .CLK(clk_i), .Q(\prod2[1][1][17] )
         );
  DFFX1 \prod2_reg[1][1][16]  ( .D(n230), .CLK(clk_i), .Q(\prod2[1][1][16] )
         );
  DFFX1 \prod2_reg[1][1][15]  ( .D(n229), .CLK(clk_i), .Q(\prod2[1][1][15] )
         );
  DFFX1 \prod2_reg[1][1][14]  ( .D(n228), .CLK(clk_i), .Q(\prod2[1][1][14] )
         );
  DFFX1 \prod2_reg[1][1][13]  ( .D(n227), .CLK(clk_i), .Q(\prod2[1][1][13] )
         );
  DFFX1 \prod2_reg[1][1][12]  ( .D(n226), .CLK(clk_i), .Q(\prod2[1][1][12] )
         );
  DFFX1 \prod2_reg[1][1][11]  ( .D(n225), .CLK(clk_i), .Q(\prod2[1][1][11] )
         );
  DFFX1 \prod2_reg[1][1][10]  ( .D(n224), .CLK(clk_i), .Q(\prod2[1][1][10] )
         );
  DFFX1 \prod2_reg[1][1][9]  ( .D(n223), .CLK(clk_i), .Q(\prod2[1][1][9] ) );
  DFFX1 \prod2_reg[1][1][8]  ( .D(n222), .CLK(clk_i), .Q(\prod2[1][1][8] ) );
  DFFX1 \prod2_reg[1][1][7]  ( .D(n221), .CLK(clk_i), .Q(\prod2[1][1][7] ) );
  DFFX1 \prod2_reg[1][1][6]  ( .D(n220), .CLK(clk_i), .Q(\prod2[1][1][6] ) );
  DFFX1 \prod2_reg[1][0][23]  ( .D(n219), .CLK(clk_i), .Q(\prod2[1][0][23] )
         );
  DFFX1 \prod2_reg[1][0][22]  ( .D(n218), .CLK(clk_i), .Q(\prod2[1][0][22] )
         );
  DFFX1 \prod2_reg[1][0][21]  ( .D(n217), .CLK(clk_i), .Q(\prod2[1][0][21] )
         );
  DFFX1 \prod2_reg[1][0][20]  ( .D(n216), .CLK(clk_i), .Q(\prod2[1][0][20] )
         );
  DFFX1 \prod2_reg[1][0][19]  ( .D(n215), .CLK(clk_i), .Q(\prod2[1][0][19] )
         );
  DFFX1 \prod2_reg[1][0][18]  ( .D(n214), .CLK(clk_i), .Q(\prod2[1][0][18] )
         );
  DFFX1 \prod2_reg[1][0][17]  ( .D(n213), .CLK(clk_i), .Q(\prod2[1][0][17] )
         );
  DFFX1 \prod2_reg[1][0][16]  ( .D(n212), .CLK(clk_i), .Q(\prod2[1][0][16] )
         );
  DFFX1 \prod2_reg[1][0][15]  ( .D(n211), .CLK(clk_i), .Q(\prod2[1][0][15] )
         );
  DFFX1 \prod2_reg[1][0][14]  ( .D(n210), .CLK(clk_i), .Q(\prod2[1][0][14] )
         );
  DFFX1 \prod2_reg[1][0][13]  ( .D(n209), .CLK(clk_i), .Q(\prod2[1][0][13] )
         );
  DFFX1 \prod2_reg[1][0][12]  ( .D(n208), .CLK(clk_i), .Q(\prod2[1][0][12] )
         );
  DFFX1 \prod2_reg[0][3][11]  ( .D(n207), .CLK(clk_i), .Q(\prod2[0][3][11] )
         );
  DFFX1 \prod2_reg[0][3][10]  ( .D(n206), .CLK(clk_i), .Q(\prod2[0][3][10] )
         );
  DFFX1 \prod2_reg[0][3][9]  ( .D(n205), .CLK(clk_i), .Q(\prod2[0][3][9] ) );
  DFFX1 \prod2_reg[0][3][8]  ( .D(n204), .CLK(clk_i), .Q(\prod2[0][3][8] ) );
  DFFX1 \prod2_reg[0][3][7]  ( .D(n203), .CLK(clk_i), .Q(\prod2[0][3][7] ) );
  DFFX1 \prod2_reg[0][3][6]  ( .D(n202), .CLK(clk_i), .Q(\prod2[0][3][6] ) );
  DFFX1 \prod2_reg[0][3][5]  ( .D(n201), .CLK(clk_i), .Q(\prod2[0][3][5] ) );
  DFFX1 \prod2_reg[0][3][4]  ( .D(n200), .CLK(clk_i), .Q(\prod2[0][3][4] ) );
  DFFX1 \prod2_reg[0][3][3]  ( .D(n199), .CLK(clk_i), .Q(\prod2[0][3][3] ) );
  DFFX1 \prod2_reg[0][3][2]  ( .D(n198), .CLK(clk_i), .Q(\prod2[0][3][2] ) );
  DFFX1 \prod2_reg[0][3][1]  ( .D(n197), .CLK(clk_i), .Q(\prod2[0][3][1] ) );
  DFFX1 \prod2_reg[0][3][0]  ( .D(n196), .CLK(clk_i), .Q(\prod2[0][3][0] ) );
  DFFX1 \prod2_reg[0][2][17]  ( .D(n195), .CLK(clk_i), .Q(\prod2[0][2][17] )
         );
  DFFX1 \prod2_reg[0][2][16]  ( .D(n194), .CLK(clk_i), .Q(\prod2[0][2][16] )
         );
  DFFX1 \prod2_reg[0][2][15]  ( .D(n193), .CLK(clk_i), .Q(\prod2[0][2][15] )
         );
  DFFX1 \prod2_reg[0][2][14]  ( .D(n192), .CLK(clk_i), .Q(\prod2[0][2][14] )
         );
  DFFX1 \prod2_reg[0][2][13]  ( .D(n191), .CLK(clk_i), .Q(\prod2[0][2][13] )
         );
  DFFX1 \prod2_reg[0][2][12]  ( .D(n190), .CLK(clk_i), .Q(\prod2[0][2][12] )
         );
  DFFX1 \prod2_reg[0][2][11]  ( .D(n189), .CLK(clk_i), .Q(\prod2[0][2][11] )
         );
  DFFX1 \prod2_reg[0][2][10]  ( .D(n188), .CLK(clk_i), .Q(\prod2[0][2][10] )
         );
  DFFX1 \prod2_reg[0][2][9]  ( .D(n187), .CLK(clk_i), .Q(\prod2[0][2][9] ) );
  DFFX1 \prod2_reg[0][2][8]  ( .D(n186), .CLK(clk_i), .Q(\prod2[0][2][8] ) );
  DFFX1 \prod2_reg[0][2][7]  ( .D(n185), .CLK(clk_i), .Q(\prod2[0][2][7] ) );
  DFFX1 \prod2_reg[0][2][6]  ( .D(n184), .CLK(clk_i), .Q(\prod2[0][2][6] ) );
  DFFX1 \prod2_reg[0][1][17]  ( .D(n183), .CLK(clk_i), .Q(\prod2[0][1][17] )
         );
  DFFX1 \prod2_reg[0][1][16]  ( .D(n182), .CLK(clk_i), .Q(\prod2[0][1][16] )
         );
  DFFX1 \prod2_reg[0][1][15]  ( .D(n181), .CLK(clk_i), .Q(\prod2[0][1][15] )
         );
  DFFX1 \prod2_reg[0][1][14]  ( .D(n180), .CLK(clk_i), .Q(\prod2[0][1][14] )
         );
  DFFX1 \prod2_reg[0][1][13]  ( .D(n179), .CLK(clk_i), .Q(\prod2[0][1][13] )
         );
  DFFX1 \prod2_reg[0][1][12]  ( .D(n178), .CLK(clk_i), .Q(\prod2[0][1][12] )
         );
  DFFX1 \prod2_reg[0][1][11]  ( .D(n177), .CLK(clk_i), .Q(\prod2[0][1][11] )
         );
  DFFX1 \prod2_reg[0][1][10]  ( .D(n176), .CLK(clk_i), .Q(\prod2[0][1][10] )
         );
  DFFX1 \prod2_reg[0][1][9]  ( .D(n175), .CLK(clk_i), .Q(\prod2[0][1][9] ) );
  DFFX1 \prod2_reg[0][1][8]  ( .D(n174), .CLK(clk_i), .Q(\prod2[0][1][8] ) );
  DFFX1 \prod2_reg[0][1][7]  ( .D(n173), .CLK(clk_i), .Q(\prod2[0][1][7] ) );
  DFFX1 \prod2_reg[0][1][6]  ( .D(n172), .CLK(clk_i), .Q(\prod2[0][1][6] ) );
  DFFX1 \prod2_reg[0][0][23]  ( .D(n171), .CLK(clk_i), .Q(\prod2[0][0][23] )
         );
  DFFX1 \prod2_reg[0][0][22]  ( .D(n170), .CLK(clk_i), .Q(\prod2[0][0][22] )
         );
  DFFX1 \prod2_reg[0][0][21]  ( .D(n169), .CLK(clk_i), .Q(\prod2[0][0][21] )
         );
  DFFX1 \prod2_reg[0][0][20]  ( .D(n168), .CLK(clk_i), .Q(\prod2[0][0][20] )
         );
  DFFX1 \prod2_reg[0][0][19]  ( .D(n167), .CLK(clk_i), .Q(\prod2[0][0][19] )
         );
  DFFX1 \prod2_reg[0][0][18]  ( .D(n166), .CLK(clk_i), .Q(\prod2[0][0][18] )
         );
  DFFX1 \prod2_reg[0][0][17]  ( .D(n165), .CLK(clk_i), .Q(\prod2[0][0][17] )
         );
  DFFX1 \prod2_reg[0][0][16]  ( .D(n164), .CLK(clk_i), .Q(\prod2[0][0][16] )
         );
  DFFX1 \prod2_reg[0][0][15]  ( .D(n163), .CLK(clk_i), .Q(\prod2[0][0][15] )
         );
  DFFX1 \prod2_reg[0][0][14]  ( .D(n162), .CLK(clk_i), .Q(\prod2[0][0][14] )
         );
  DFFX1 \prod2_reg[0][0][13]  ( .D(n161), .CLK(clk_i), .Q(\prod2[0][0][13] )
         );
  DFFX1 \prod2_reg[0][0][12]  ( .D(n160), .CLK(clk_i), .Q(\prod2[0][0][12] )
         );
  DFFX1 \sum_reg[3][23]  ( .D(n159), .CLK(clk_i), .Q(\sum[3][23] ) );
  DFFX1 \sum_reg[3][22]  ( .D(n158), .CLK(clk_i), .Q(\sum[3][22] ) );
  DFFX1 \sum_reg[3][21]  ( .D(n157), .CLK(clk_i), .Q(\sum[3][21] ) );
  DFFX1 \sum_reg[3][20]  ( .D(n156), .CLK(clk_i), .Q(\sum[3][20] ) );
  DFFX1 \sum_reg[3][19]  ( .D(n155), .CLK(clk_i), .Q(\sum[3][19] ) );
  DFFX1 \sum_reg[3][18]  ( .D(n154), .CLK(clk_i), .Q(\sum[3][18] ) );
  DFFX1 \sum_reg[3][17]  ( .D(n153), .CLK(clk_i), .Q(\sum[3][17] ) );
  DFFX1 \sum_reg[3][16]  ( .D(n152), .CLK(clk_i), .Q(\sum[3][16] ) );
  DFFX1 \sum_reg[3][15]  ( .D(n151), .CLK(clk_i), .Q(\sum[3][15] ) );
  DFFX1 \sum_reg[3][14]  ( .D(n150), .CLK(clk_i), .Q(\sum[3][14] ) );
  DFFX1 \sum_reg[3][13]  ( .D(n149), .CLK(clk_i), .Q(\sum[3][13] ) );
  DFFX1 \sum_reg[3][12]  ( .D(n148), .CLK(clk_i), .Q(\sum[3][12] ) );
  DFFX1 \sum_reg[3][11]  ( .D(n147), .CLK(clk_i), .Q(\sum[3][11] ) );
  DFFX1 \sum_reg[3][10]  ( .D(n146), .CLK(clk_i), .Q(\sum[3][10] ) );
  DFFX1 \sum_reg[3][9]  ( .D(n145), .CLK(clk_i), .Q(\sum[3][9] ) );
  DFFX1 \sum_reg[3][8]  ( .D(n144), .CLK(clk_i), .Q(\sum[3][8] ) );
  DFFX1 \sum_reg[3][7]  ( .D(n143), .CLK(clk_i), .Q(\sum[3][7] ) );
  DFFX1 \sum_reg[3][6]  ( .D(n142), .CLK(clk_i), .Q(\sum[3][6] ) );
  DFFX1 \sum_reg[3][5]  ( .D(n141), .CLK(clk_i), .Q(\sum[3][5] ) );
  DFFX1 \sum_reg[3][4]  ( .D(n140), .CLK(clk_i), .Q(\sum[3][4] ) );
  DFFX1 \sum_reg[3][3]  ( .D(n139), .CLK(clk_i), .Q(\sum[3][3] ) );
  DFFX1 \sum_reg[3][2]  ( .D(n138), .CLK(clk_i), .Q(\sum[3][2] ) );
  DFFX1 \sum_reg[3][1]  ( .D(n137), .CLK(clk_i), .Q(\sum[3][1] ) );
  DFFX1 \sum_reg[3][0]  ( .D(n136), .CLK(clk_i), .Q(\sum[3][0] ) );
  DFFX1 \sum_reg[2][23]  ( .D(n135), .CLK(clk_i), .Q(\sum[2][23] ) );
  DFFX1 \sum_reg[2][22]  ( .D(n134), .CLK(clk_i), .Q(\sum[2][22] ) );
  DFFX1 \sum_reg[2][21]  ( .D(n133), .CLK(clk_i), .Q(\sum[2][21] ) );
  DFFX1 \sum_reg[2][20]  ( .D(n132), .CLK(clk_i), .Q(\sum[2][20] ) );
  DFFX1 \sum_reg[2][19]  ( .D(n131), .CLK(clk_i), .Q(\sum[2][19] ) );
  DFFX1 \sum_reg[2][18]  ( .D(n130), .CLK(clk_i), .Q(\sum[2][18] ) );
  DFFX1 \sum_reg[2][17]  ( .D(n129), .CLK(clk_i), .Q(\sum[2][17] ) );
  DFFX1 \sum_reg[2][16]  ( .D(n128), .CLK(clk_i), .Q(\sum[2][16] ) );
  DFFX1 \sum_reg[2][15]  ( .D(n127), .CLK(clk_i), .Q(\sum[2][15] ) );
  DFFX1 \sum_reg[2][14]  ( .D(n126), .CLK(clk_i), .Q(\sum[2][14] ) );
  DFFX1 \sum_reg[2][13]  ( .D(n125), .CLK(clk_i), .Q(\sum[2][13] ) );
  DFFX1 \sum_reg[2][12]  ( .D(n124), .CLK(clk_i), .Q(\sum[2][12] ) );
  DFFX1 \sum_reg[2][11]  ( .D(n123), .CLK(clk_i), .Q(\sum[2][11] ) );
  DFFX1 \sum_reg[2][10]  ( .D(n122), .CLK(clk_i), .Q(\sum[2][10] ) );
  DFFX1 \sum_reg[2][9]  ( .D(n121), .CLK(clk_i), .Q(\sum[2][9] ) );
  DFFX1 \sum_reg[2][8]  ( .D(n120), .CLK(clk_i), .Q(\sum[2][8] ) );
  DFFX1 \sum_reg[2][7]  ( .D(n119), .CLK(clk_i), .Q(\sum[2][7] ) );
  DFFX1 \sum_reg[2][6]  ( .D(n118), .CLK(clk_i), .Q(\sum[2][6] ) );
  DFFX1 \sum_reg[2][5]  ( .D(n117), .CLK(clk_i), .Q(\sum[2][5] ) );
  DFFX1 \sum_reg[2][4]  ( .D(n116), .CLK(clk_i), .Q(\sum[2][4] ) );
  DFFX1 \sum_reg[2][3]  ( .D(n115), .CLK(clk_i), .Q(\sum[2][3] ) );
  DFFX1 \sum_reg[2][2]  ( .D(n114), .CLK(clk_i), .Q(\sum[2][2] ) );
  DFFX1 \sum_reg[2][1]  ( .D(n113), .CLK(clk_i), .Q(\sum[2][1] ) );
  DFFX1 \sum_reg[2][0]  ( .D(n112), .CLK(clk_i), .Q(\sum[2][0] ) );
  DFFX1 \sum_reg[1][23]  ( .D(n111), .CLK(clk_i), .Q(\sum[1][23] ) );
  DFFX1 \sum_reg[1][22]  ( .D(n110), .CLK(clk_i), .Q(\sum[1][22] ) );
  DFFX1 \sum_reg[1][21]  ( .D(n109), .CLK(clk_i), .Q(\sum[1][21] ) );
  DFFX1 \sum_reg[1][20]  ( .D(n108), .CLK(clk_i), .Q(\sum[1][20] ) );
  DFFX1 \sum_reg[1][19]  ( .D(n107), .CLK(clk_i), .Q(\sum[1][19] ) );
  DFFX1 \sum_reg[1][18]  ( .D(n106), .CLK(clk_i), .Q(\sum[1][18] ) );
  DFFX1 \sum_reg[1][17]  ( .D(n105), .CLK(clk_i), .Q(\sum[1][17] ) );
  DFFX1 \sum_reg[1][16]  ( .D(n104), .CLK(clk_i), .Q(\sum[1][16] ) );
  DFFX1 \sum_reg[1][15]  ( .D(n103), .CLK(clk_i), .Q(\sum[1][15] ) );
  DFFX1 \sum_reg[1][14]  ( .D(n102), .CLK(clk_i), .Q(\sum[1][14] ) );
  DFFX1 \sum_reg[1][13]  ( .D(n101), .CLK(clk_i), .Q(\sum[1][13] ) );
  DFFX1 \sum_reg[1][12]  ( .D(n100), .CLK(clk_i), .Q(\sum[1][12] ) );
  DFFX1 \sum_reg[1][11]  ( .D(n99), .CLK(clk_i), .Q(\sum[1][11] ) );
  DFFX1 \sum_reg[1][10]  ( .D(n98), .CLK(clk_i), .Q(\sum[1][10] ) );
  DFFX1 \sum_reg[1][9]  ( .D(n97), .CLK(clk_i), .Q(\sum[1][9] ) );
  DFFX1 \sum_reg[1][8]  ( .D(n96), .CLK(clk_i), .Q(\sum[1][8] ) );
  DFFX1 \sum_reg[1][7]  ( .D(n95), .CLK(clk_i), .Q(\sum[1][7] ) );
  DFFX1 \sum_reg[1][6]  ( .D(n94), .CLK(clk_i), .Q(\sum[1][6] ) );
  DFFX1 \sum_reg[1][5]  ( .D(n93), .CLK(clk_i), .Q(\sum[1][5] ) );
  DFFX1 \sum_reg[1][4]  ( .D(n92), .CLK(clk_i), .Q(\sum[1][4] ) );
  DFFX1 \sum_reg[1][3]  ( .D(n91), .CLK(clk_i), .Q(\sum[1][3] ) );
  DFFX1 \sum_reg[1][2]  ( .D(n90), .CLK(clk_i), .Q(\sum[1][2] ) );
  DFFX1 \sum_reg[1][1]  ( .D(n89), .CLK(clk_i), .Q(\sum[1][1] ) );
  DFFX1 \sum_reg[1][0]  ( .D(n88), .CLK(clk_i), .Q(\sum[1][0] ) );
  DFFX1 \sum_reg[0][23]  ( .D(n87), .CLK(clk_i), .Q(\sum[0][23] ) );
  DFFX1 \sum_reg[0][22]  ( .D(n86), .CLK(clk_i), .Q(\sum[0][22] ) );
  DFFX1 \sum_reg[0][21]  ( .D(n85), .CLK(clk_i), .Q(\sum[0][21] ) );
  DFFX1 \sum_reg[0][20]  ( .D(n84), .CLK(clk_i), .Q(\sum[0][20] ) );
  DFFX1 \sum_reg[0][19]  ( .D(n83), .CLK(clk_i), .Q(\sum[0][19] ) );
  DFFX1 \sum_reg[0][18]  ( .D(n82), .CLK(clk_i), .Q(\sum[0][18] ) );
  DFFX1 \sum_reg[0][17]  ( .D(n81), .CLK(clk_i), .Q(\sum[0][17] ) );
  DFFX1 \sum_reg[0][16]  ( .D(n80), .CLK(clk_i), .Q(\sum[0][16] ) );
  DFFX1 \sum_reg[0][15]  ( .D(n79), .CLK(clk_i), .Q(\sum[0][15] ) );
  DFFX1 \sum_reg[0][14]  ( .D(n78), .CLK(clk_i), .Q(\sum[0][14] ) );
  DFFX1 \sum_reg[0][13]  ( .D(n77), .CLK(clk_i), .Q(\sum[0][13] ) );
  DFFX1 \sum_reg[0][12]  ( .D(n76), .CLK(clk_i), .Q(\sum[0][12] ) );
  DFFX1 \sum_reg[0][11]  ( .D(n75), .CLK(clk_i), .Q(\sum[0][11] ) );
  DFFX1 \sum_reg[0][10]  ( .D(n74), .CLK(clk_i), .Q(\sum[0][10] ) );
  DFFX1 \sum_reg[0][9]  ( .D(n73), .CLK(clk_i), .Q(\sum[0][9] ) );
  DFFX1 \sum_reg[0][8]  ( .D(n72), .CLK(clk_i), .Q(\sum[0][8] ) );
  DFFX1 \sum_reg[0][7]  ( .D(n71), .CLK(clk_i), .Q(\sum[0][7] ) );
  DFFX1 \sum_reg[0][6]  ( .D(n70), .CLK(clk_i), .Q(\sum[0][6] ) );
  DFFX1 \sum_reg[0][5]  ( .D(n69), .CLK(clk_i), .Q(\sum[0][5] ) );
  DFFX1 \sum_reg[0][4]  ( .D(n68), .CLK(clk_i), .Q(\sum[0][4] ) );
  DFFX1 \sum_reg[0][3]  ( .D(n67), .CLK(clk_i), .Q(\sum[0][3] ) );
  DFFX1 \sum_reg[0][2]  ( .D(n66), .CLK(clk_i), .Q(\sum[0][2] ) );
  DFFX1 \sum_reg[0][1]  ( .D(n65), .CLK(clk_i), .Q(\sum[0][1] ) );
  DFFX1 \sum_reg[0][0]  ( .D(n64), .CLK(clk_i), .Q(\sum[0][0] ) );
  mul_24_1_DW01_add_0 add_0_root_add_223_3 ( .A({N375, N374, N373, N372, N371, 
        N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, 
        N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347, 
        N346, N345, N344, N343, N342, N341, N340, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N412, N411, N410, N409, N408, 
        N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, 
        N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, 
        N383, N382, N381, N380, N379, N378, N377, N376}), .CI(1'b0), .SUM(
        fract_o) );
  mul_24_1_DW01_add_1 add_1_root_add_223_3 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, \sum[2][23] , \sum[2][22] , 
        \sum[2][21] , \sum[2][20] , \sum[2][19] , \sum[2][18] , \sum[2][17] , 
        \sum[2][16] , \sum[2][15] , \sum[2][14] , \sum[2][13] , \sum[2][12] , 
        \sum[2][11] , \sum[2][10] , \sum[2][9] , \sum[2][8] , \sum[2][7] , 
        \sum[2][6] , \sum[2][5] , \sum[2][4] , \sum[2][3] , \sum[2][2] , 
        \sum[2][1] , \sum[2][0] , 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, \sum[3][23] , \sum[3][22] , 
        \sum[3][21] , \sum[3][20] , \sum[3][19] , \sum[3][18] , \sum[3][17] , 
        \sum[3][16] , \sum[3][15] , \sum[3][14] , \sum[3][13] , \sum[3][12] , 
        \sum[3][11] , \sum[3][10] , \sum[3][9] , \sum[3][8] , \sum[3][7] , 
        \sum[3][6] , \sum[3][5] , \sum[3][4] , \sum[3][3] , \sum[3][2] , 
        \sum[3][1] , \sum[3][0] }), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, N412, N411, N410, 
        N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, 
        N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, 
        N385, N384, N383, N382, N381, N380, N379, N378, N377, N376}) );
  mul_24_1_DW01_add_2 add_0_root_add_208_3 ( .A({N223, N222, N221, N220, N219, 
        N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, 
        N206, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, 
        N257, N256, N255, N254, N253, N252, N251, N250}), .CI(1'b0), .SUM({
        N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 
        N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300}) );
  mul_24_1_DW01_add_5 add_2_root_add_223_3 ( .A({\sum[0][23] , \sum[0][22] , 
        \sum[0][21] , \sum[0][20] , \sum[0][19] , \sum[0][18] , \sum[0][17] , 
        \sum[0][16] , \sum[0][15] , \sum[0][14] , \sum[0][13] , \sum[0][12] , 
        \sum[0][11] , \sum[0][10] , \sum[0][9] , \sum[0][8] , \sum[0][7] , 
        \sum[0][6] , \sum[0][5] , \sum[0][4] , \sum[0][3] , \sum[0][2] , 
        \sum[0][1] , \sum[0][0] , 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, \sum[1][23] , \sum[1][22] , 
        \sum[1][21] , \sum[1][20] , \sum[1][19] , \sum[1][18] , \sum[1][17] , 
        \sum[1][16] , \sum[1][15] , \sum[1][14] , \sum[1][13] , \sum[1][12] , 
        \sum[1][11] , \sum[1][10] , \sum[1][9] , \sum[1][8] , \sum[1][7] , 
        \sum[1][6] , \sum[1][5] , \sum[1][4] , \sum[1][3] , \sum[1][2] , 
        \sum[1][1] , \sum[1][0] , 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N375, N374, N373, 
        N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, 
        N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, 
        N348, N347, N346, N345, N344, N343, N342, N341, N340, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22}) );
  mul_24_1_DW_mult_uns_4 mult_197 ( .a({N105, N106, N107, N108, N109, N110}), 
        .b({N111, N112, N113, N114, N115, N116}), .product({N128, N127, N126, 
        N125, N124, N123, N122, N121, N120, N119, N118, N117}) );
  mul_24_1_DW_mult_uns_5 mult_194 ( .a({N69, N70, N71, N72, N73, N74}), .b({
        N87, N88, N89, N90, N91, N92}), .product({N68, N67, N66, N65, N64, N63, 
        N62, N61, N60, N59, N58, N57}) );
  mul_24_1_DW_mult_uns_6 mult_195 ( .a({N69, N70, N71, N72, N73, N74}), .b({
        N111, N112, N113, N114, N115, N116}), .product({N86, N85, N84, N83, 
        N82, N81, N80, N79, N78, N77, N76, N75}) );
  mul_24_1_DW_mult_uns_7 mult_196 ( .a({N105, N106, N107, N108, N109, N110}), 
        .b({N87, N88, N89, N90, N91, N92}), .product({N104, N103, N102, N101, 
        N100, N99, N98, N97, N96, N95, N94, N93}) );
  NAND3X1 U3 ( .IN1(n445), .IN2(n45), .IN3(n42), .QN(n25) );
  NAND2X1 U4 ( .IN1(n42), .IN2(n22), .QN(n12) );
  MUX21X1 U8 ( .IN1(s_fracta_i[12]), .IN2(s_fracta_i[0]), .S(N26), .Q(N110) );
  MUX21X1 U9 ( .IN1(s_fracta_i[13]), .IN2(s_fracta_i[1]), .S(N26), .Q(N109) );
  MUX21X1 U10 ( .IN1(s_fracta_i[14]), .IN2(s_fracta_i[2]), .S(N26), .Q(N108)
         );
  MUX21X1 U12 ( .IN1(s_fracta_i[15]), .IN2(s_fracta_i[3]), .S(N26), .Q(N107)
         );
  MUX21X1 U13 ( .IN1(s_fracta_i[16]), .IN2(s_fracta_i[4]), .S(N26), .Q(N106)
         );
  MUX21X1 U14 ( .IN1(s_fracta_i[17]), .IN2(s_fracta_i[5]), .S(N26), .Q(N105)
         );
  MUX21X1 U15 ( .IN1(s_fractb_i[12]), .IN2(s_fractb_i[0]), .S(N25), .Q(N116)
         );
  MUX21X1 U16 ( .IN1(s_fractb_i[13]), .IN2(s_fractb_i[1]), .S(N25), .Q(N115)
         );
  MUX21X1 U17 ( .IN1(s_fractb_i[14]), .IN2(s_fractb_i[2]), .S(N25), .Q(N114)
         );
  MUX21X1 U18 ( .IN1(s_fractb_i[15]), .IN2(s_fractb_i[3]), .S(N25), .Q(N113)
         );
  MUX21X1 U19 ( .IN1(s_fractb_i[16]), .IN2(s_fractb_i[4]), .S(N25), .Q(N112)
         );
  MUX21X1 U20 ( .IN1(s_fractb_i[17]), .IN2(s_fractb_i[5]), .S(N25), .Q(N111)
         );
  MUX21X1 U21 ( .IN1(s_fractb_i[18]), .IN2(s_fractb_i[6]), .S(N25), .Q(N92) );
  MUX21X1 U22 ( .IN1(s_fractb_i[19]), .IN2(s_fractb_i[7]), .S(N25), .Q(N91) );
  MUX21X1 U23 ( .IN1(s_fractb_i[20]), .IN2(s_fractb_i[8]), .S(N25), .Q(N90) );
  MUX21X1 U24 ( .IN1(s_fractb_i[21]), .IN2(s_fractb_i[9]), .S(N25), .Q(N89) );
  MUX21X1 U25 ( .IN1(s_fractb_i[22]), .IN2(s_fractb_i[10]), .S(N25), .Q(N88)
         );
  MUX21X1 U26 ( .IN1(s_fractb_i[23]), .IN2(s_fractb_i[11]), .S(N25), .Q(N87)
         );
  MUX21X1 U27 ( .IN1(s_fracta_i[18]), .IN2(s_fracta_i[6]), .S(N26), .Q(N74) );
  MUX21X1 U28 ( .IN1(s_fracta_i[19]), .IN2(s_fracta_i[7]), .S(N26), .Q(N73) );
  MUX21X1 U29 ( .IN1(s_fracta_i[20]), .IN2(s_fracta_i[8]), .S(N26), .Q(N72) );
  MUX21X1 U30 ( .IN1(s_fracta_i[21]), .IN2(s_fracta_i[9]), .S(N26), .Q(N71) );
  MUX21X1 U31 ( .IN1(s_fracta_i[22]), .IN2(s_fracta_i[10]), .S(N26), .Q(N70)
         );
  MUX21X1 U32 ( .IN1(s_fracta_i[23]), .IN2(s_fracta_i[11]), .S(N26), .Q(N69)
         );
  XOR2X1 U33 ( .IN1(s_signb_i), .IN2(s_signa_i), .Q(sign_o) );
  MUX21X1 U34 ( .IN1(\sum[1][11] ), .IN2(N311), .S(n6), .Q(n99) );
  MUX21X1 U35 ( .IN1(\sum[1][10] ), .IN2(N310), .S(n6), .Q(n98) );
  MUX21X1 U36 ( .IN1(\sum[1][9] ), .IN2(N309), .S(n6), .Q(n97) );
  MUX21X1 U37 ( .IN1(\sum[1][8] ), .IN2(N308), .S(n6), .Q(n96) );
  MUX21X1 U38 ( .IN1(\sum[1][7] ), .IN2(N307), .S(n6), .Q(n95) );
  MUX21X1 U39 ( .IN1(\sum[1][6] ), .IN2(N306), .S(n6), .Q(n94) );
  MUX21X1 U40 ( .IN1(\sum[1][5] ), .IN2(N305), .S(n6), .Q(n93) );
  MUX21X1 U41 ( .IN1(\sum[1][4] ), .IN2(N304), .S(n6), .Q(n92) );
  MUX21X1 U42 ( .IN1(\sum[1][3] ), .IN2(N303), .S(n6), .Q(n91) );
  MUX21X1 U43 ( .IN1(\sum[1][2] ), .IN2(N302), .S(n6), .Q(n90) );
  MUX21X1 U44 ( .IN1(\sum[1][1] ), .IN2(N301), .S(n6), .Q(n89) );
  MUX21X1 U45 ( .IN1(\sum[1][0] ), .IN2(N300), .S(n6), .Q(n88) );
  MUX21X1 U46 ( .IN1(\sum[0][23] ), .IN2(N323), .S(n8), .Q(n87) );
  MUX21X1 U47 ( .IN1(\sum[0][22] ), .IN2(N322), .S(n8), .Q(n86) );
  MUX21X1 U48 ( .IN1(\sum[0][21] ), .IN2(N321), .S(n8), .Q(n85) );
  MUX21X1 U49 ( .IN1(\sum[0][20] ), .IN2(N320), .S(n8), .Q(n84) );
  MUX21X1 U50 ( .IN1(\sum[0][19] ), .IN2(N319), .S(n8), .Q(n83) );
  MUX21X1 U51 ( .IN1(\sum[0][18] ), .IN2(N318), .S(n8), .Q(n82) );
  MUX21X1 U52 ( .IN1(\sum[0][17] ), .IN2(N317), .S(n8), .Q(n81) );
  MUX21X1 U53 ( .IN1(\sum[0][16] ), .IN2(N316), .S(n8), .Q(n80) );
  MUX21X1 U54 ( .IN1(\sum[0][15] ), .IN2(N315), .S(n8), .Q(n79) );
  MUX21X1 U55 ( .IN1(\sum[0][14] ), .IN2(N314), .S(n8), .Q(n78) );
  MUX21X1 U56 ( .IN1(\sum[0][13] ), .IN2(N313), .S(n8), .Q(n77) );
  MUX21X1 U57 ( .IN1(\sum[0][12] ), .IN2(N312), .S(n8), .Q(n76) );
  MUX21X1 U58 ( .IN1(\sum[0][11] ), .IN2(N311), .S(n8), .Q(n75) );
  MUX21X1 U59 ( .IN1(\sum[0][10] ), .IN2(N310), .S(n8), .Q(n74) );
  MUX21X1 U60 ( .IN1(\sum[0][9] ), .IN2(N309), .S(n8), .Q(n73) );
  MUX21X1 U61 ( .IN1(\sum[0][8] ), .IN2(N308), .S(n8), .Q(n72) );
  MUX21X1 U62 ( .IN1(\sum[0][7] ), .IN2(N307), .S(n8), .Q(n71) );
  MUX21X1 U63 ( .IN1(\sum[0][6] ), .IN2(N306), .S(n8), .Q(n70) );
  MUX21X1 U64 ( .IN1(\sum[0][5] ), .IN2(N305), .S(n8), .Q(n69) );
  MUX21X1 U65 ( .IN1(\sum[0][4] ), .IN2(N304), .S(n8), .Q(n68) );
  MUX21X1 U66 ( .IN1(\sum[0][3] ), .IN2(N303), .S(n8), .Q(n67) );
  MUX21X1 U67 ( .IN1(\sum[0][2] ), .IN2(N302), .S(n8), .Q(n66) );
  MUX21X1 U68 ( .IN1(\sum[0][1] ), .IN2(N301), .S(n8), .Q(n65) );
  MUX21X1 U69 ( .IN1(\sum[0][0] ), .IN2(N300), .S(n8), .Q(n64) );
  AND3X1 U70 ( .IN1(s_state), .IN2(N25), .IN3(n445), .Q(n8) );
  MUX21X1 U71 ( .IN1(n9), .IN2(n10), .S(N25), .Q(n356) );
  OAI22X1 U72 ( .IN1(n11), .IN2(n12), .IN3(n42), .IN4(n13), .QN(n355) );
  OA21X1 U73 ( .IN1(N26), .IN2(n14), .IN3(n15), .Q(n13) );
  AO21X1 U74 ( .IN1(s_state), .IN2(n16), .IN3(s_start_i), .Q(n354) );
  AO22X1 U75 ( .IN1(n17), .IN2(n5), .IN3(ready_o), .IN4(n18), .Q(n353) );
  INVX0 U76 ( .INP(n16), .ZN(n17) );
  MUX21X1 U77 ( .IN1(n19), .IN2(n20), .S(N26), .Q(n352) );
  INVX0 U78 ( .INP(n15), .ZN(n20) );
  OA21X1 U79 ( .IN1(n14), .IN2(N25), .IN3(n18), .Q(n15) );
  INVX0 U80 ( .INP(n10), .ZN(n18) );
  NOR2X0 U81 ( .IN1(n45), .IN2(n11), .QN(n19) );
  INVX0 U82 ( .INP(n9), .ZN(n11) );
  NOR2X0 U83 ( .IN1(n14), .IN2(n10), .QN(n9) );
  NOR2X0 U84 ( .IN1(s_start_i), .IN2(s_state), .QN(n10) );
  NAND2X0 U85 ( .IN1(n16), .IN2(n5), .QN(n14) );
  NAND3X0 U86 ( .IN1(n21), .IN2(n4), .IN3(n445), .QN(n16) );
  MUX21X1 U87 ( .IN1(N128), .IN2(\prod2[3][3][11] ), .S(n12), .Q(n351) );
  MUX21X1 U88 ( .IN1(N127), .IN2(\prod2[3][3][10] ), .S(n12), .Q(n350) );
  MUX21X1 U89 ( .IN1(N126), .IN2(\prod2[3][3][9] ), .S(n12), .Q(n349) );
  MUX21X1 U90 ( .IN1(N125), .IN2(\prod2[3][3][8] ), .S(n12), .Q(n348) );
  MUX21X1 U91 ( .IN1(N124), .IN2(\prod2[3][3][7] ), .S(n12), .Q(n347) );
  MUX21X1 U92 ( .IN1(N123), .IN2(\prod2[3][3][6] ), .S(n12), .Q(n346) );
  MUX21X1 U93 ( .IN1(N122), .IN2(\prod2[3][3][5] ), .S(n12), .Q(n345) );
  MUX21X1 U94 ( .IN1(N121), .IN2(\prod2[3][3][4] ), .S(n12), .Q(n344) );
  MUX21X1 U95 ( .IN1(N120), .IN2(\prod2[3][3][3] ), .S(n12), .Q(n343) );
  MUX21X1 U96 ( .IN1(N119), .IN2(\prod2[3][3][2] ), .S(n12), .Q(n342) );
  MUX21X1 U97 ( .IN1(N118), .IN2(\prod2[3][3][1] ), .S(n12), .Q(n341) );
  MUX21X1 U98 ( .IN1(N117), .IN2(\prod2[3][3][0] ), .S(n12), .Q(n340) );
  MUX21X1 U99 ( .IN1(N104), .IN2(\prod2[3][2][17] ), .S(n12), .Q(n339) );
  MUX21X1 U100 ( .IN1(N103), .IN2(\prod2[3][2][16] ), .S(n12), .Q(n338) );
  MUX21X1 U101 ( .IN1(N102), .IN2(\prod2[3][2][15] ), .S(n12), .Q(n337) );
  MUX21X1 U102 ( .IN1(N101), .IN2(\prod2[3][2][14] ), .S(n12), .Q(n336) );
  MUX21X1 U103 ( .IN1(N100), .IN2(\prod2[3][2][13] ), .S(n12), .Q(n335) );
  MUX21X1 U104 ( .IN1(N99), .IN2(\prod2[3][2][12] ), .S(n12), .Q(n334) );
  MUX21X1 U105 ( .IN1(N98), .IN2(\prod2[3][2][11] ), .S(n12), .Q(n333) );
  MUX21X1 U106 ( .IN1(N97), .IN2(\prod2[3][2][10] ), .S(n12), .Q(n332) );
  MUX21X1 U107 ( .IN1(N96), .IN2(\prod2[3][2][9] ), .S(n12), .Q(n331) );
  MUX21X1 U108 ( .IN1(N95), .IN2(\prod2[3][2][8] ), .S(n12), .Q(n330) );
  MUX21X1 U109 ( .IN1(N94), .IN2(\prod2[3][2][7] ), .S(n12), .Q(n329) );
  MUX21X1 U110 ( .IN1(N93), .IN2(\prod2[3][2][6] ), .S(n12), .Q(n328) );
  MUX21X1 U111 ( .IN1(N86), .IN2(\prod2[3][1][17] ), .S(n12), .Q(n327) );
  MUX21X1 U112 ( .IN1(N85), .IN2(\prod2[3][1][16] ), .S(n12), .Q(n326) );
  MUX21X1 U113 ( .IN1(N84), .IN2(\prod2[3][1][15] ), .S(n12), .Q(n325) );
  MUX21X1 U114 ( .IN1(N83), .IN2(\prod2[3][1][14] ), .S(n12), .Q(n324) );
  MUX21X1 U115 ( .IN1(N82), .IN2(\prod2[3][1][13] ), .S(n12), .Q(n323) );
  MUX21X1 U116 ( .IN1(N81), .IN2(\prod2[3][1][12] ), .S(n12), .Q(n322) );
  MUX21X1 U117 ( .IN1(N80), .IN2(\prod2[3][1][11] ), .S(n12), .Q(n321) );
  MUX21X1 U118 ( .IN1(N79), .IN2(\prod2[3][1][10] ), .S(n12), .Q(n320) );
  MUX21X1 U119 ( .IN1(N78), .IN2(\prod2[3][1][9] ), .S(n12), .Q(n319) );
  MUX21X1 U120 ( .IN1(N77), .IN2(\prod2[3][1][8] ), .S(n12), .Q(n318) );
  MUX21X1 U121 ( .IN1(N76), .IN2(\prod2[3][1][7] ), .S(n12), .Q(n317) );
  MUX21X1 U122 ( .IN1(N75), .IN2(\prod2[3][1][6] ), .S(n12), .Q(n316) );
  MUX21X1 U123 ( .IN1(N68), .IN2(\prod2[3][0][23] ), .S(n12), .Q(n315) );
  MUX21X1 U124 ( .IN1(N67), .IN2(\prod2[3][0][22] ), .S(n12), .Q(n314) );
  MUX21X1 U125 ( .IN1(N66), .IN2(\prod2[3][0][21] ), .S(n12), .Q(n313) );
  MUX21X1 U126 ( .IN1(N65), .IN2(\prod2[3][0][20] ), .S(n12), .Q(n312) );
  MUX21X1 U127 ( .IN1(N64), .IN2(\prod2[3][0][19] ), .S(n12), .Q(n311) );
  MUX21X1 U128 ( .IN1(N63), .IN2(\prod2[3][0][18] ), .S(n12), .Q(n310) );
  MUX21X1 U129 ( .IN1(N62), .IN2(\prod2[3][0][17] ), .S(n12), .Q(n309) );
  MUX21X1 U130 ( .IN1(N61), .IN2(\prod2[3][0][16] ), .S(n12), .Q(n308) );
  MUX21X1 U131 ( .IN1(N60), .IN2(\prod2[3][0][15] ), .S(n12), .Q(n307) );
  MUX21X1 U132 ( .IN1(N59), .IN2(\prod2[3][0][14] ), .S(n12), .Q(n306) );
  MUX21X1 U133 ( .IN1(N58), .IN2(\prod2[3][0][13] ), .S(n12), .Q(n305) );
  MUX21X1 U134 ( .IN1(N57), .IN2(\prod2[3][0][12] ), .S(n12), .Q(n304) );
  MUX21X1 U135 ( .IN1(\prod2[2][3][11] ), .IN2(N128), .S(n23), .Q(n303) );
  MUX21X1 U136 ( .IN1(\prod2[2][3][10] ), .IN2(N127), .S(n23), .Q(n302) );
  MUX21X1 U137 ( .IN1(\prod2[2][3][9] ), .IN2(N126), .S(n23), .Q(n301) );
  MUX21X1 U138 ( .IN1(\prod2[2][3][8] ), .IN2(N125), .S(n23), .Q(n300) );
  MUX21X1 U139 ( .IN1(\prod2[2][3][7] ), .IN2(N124), .S(n23), .Q(n299) );
  MUX21X1 U140 ( .IN1(\prod2[2][3][6] ), .IN2(N123), .S(n23), .Q(n298) );
  MUX21X1 U141 ( .IN1(\prod2[2][3][5] ), .IN2(N122), .S(n23), .Q(n297) );
  MUX21X1 U142 ( .IN1(\prod2[2][3][4] ), .IN2(N121), .S(n23), .Q(n296) );
  MUX21X1 U143 ( .IN1(\prod2[2][3][3] ), .IN2(N120), .S(n23), .Q(n295) );
  MUX21X1 U144 ( .IN1(\prod2[2][3][2] ), .IN2(N119), .S(n23), .Q(n294) );
  MUX21X1 U145 ( .IN1(\prod2[2][3][1] ), .IN2(N118), .S(n23), .Q(n293) );
  MUX21X1 U146 ( .IN1(\prod2[2][3][0] ), .IN2(N117), .S(n23), .Q(n292) );
  MUX21X1 U147 ( .IN1(\prod2[2][2][17] ), .IN2(N104), .S(n23), .Q(n291) );
  MUX21X1 U148 ( .IN1(\prod2[2][2][16] ), .IN2(N103), .S(n23), .Q(n290) );
  MUX21X1 U149 ( .IN1(\prod2[2][2][15] ), .IN2(N102), .S(n23), .Q(n289) );
  MUX21X1 U150 ( .IN1(\prod2[2][2][14] ), .IN2(N101), .S(n23), .Q(n288) );
  MUX21X1 U151 ( .IN1(\prod2[2][2][13] ), .IN2(N100), .S(n23), .Q(n287) );
  MUX21X1 U152 ( .IN1(\prod2[2][2][12] ), .IN2(N99), .S(n23), .Q(n286) );
  MUX21X1 U153 ( .IN1(\prod2[2][2][11] ), .IN2(N98), .S(n23), .Q(n285) );
  MUX21X1 U154 ( .IN1(\prod2[2][2][10] ), .IN2(N97), .S(n23), .Q(n284) );
  MUX21X1 U155 ( .IN1(\prod2[2][2][9] ), .IN2(N96), .S(n23), .Q(n283) );
  MUX21X1 U156 ( .IN1(\prod2[2][2][8] ), .IN2(N95), .S(n23), .Q(n282) );
  MUX21X1 U157 ( .IN1(\prod2[2][2][7] ), .IN2(N94), .S(n23), .Q(n281) );
  MUX21X1 U158 ( .IN1(\prod2[2][2][6] ), .IN2(N93), .S(n23), .Q(n280) );
  MUX21X1 U159 ( .IN1(\prod2[2][1][17] ), .IN2(N86), .S(n23), .Q(n279) );
  MUX21X1 U160 ( .IN1(\prod2[2][1][16] ), .IN2(N85), .S(n23), .Q(n278) );
  MUX21X1 U161 ( .IN1(\prod2[2][1][15] ), .IN2(N84), .S(n23), .Q(n277) );
  MUX21X1 U162 ( .IN1(\prod2[2][1][14] ), .IN2(N83), .S(n23), .Q(n276) );
  MUX21X1 U163 ( .IN1(\prod2[2][1][13] ), .IN2(N82), .S(n23), .Q(n275) );
  MUX21X1 U164 ( .IN1(\prod2[2][1][12] ), .IN2(N81), .S(n23), .Q(n274) );
  MUX21X1 U165 ( .IN1(\prod2[2][1][11] ), .IN2(N80), .S(n23), .Q(n273) );
  MUX21X1 U166 ( .IN1(\prod2[2][1][10] ), .IN2(N79), .S(n23), .Q(n272) );
  MUX21X1 U167 ( .IN1(\prod2[2][1][9] ), .IN2(N78), .S(n23), .Q(n271) );
  MUX21X1 U168 ( .IN1(\prod2[2][1][8] ), .IN2(N77), .S(n23), .Q(n270) );
  MUX21X1 U169 ( .IN1(\prod2[2][1][7] ), .IN2(N76), .S(n23), .Q(n269) );
  MUX21X1 U170 ( .IN1(\prod2[2][1][6] ), .IN2(N75), .S(n23), .Q(n268) );
  MUX21X1 U171 ( .IN1(\prod2[2][0][23] ), .IN2(N68), .S(n23), .Q(n267) );
  MUX21X1 U172 ( .IN1(\prod2[2][0][22] ), .IN2(N67), .S(n23), .Q(n266) );
  MUX21X1 U173 ( .IN1(\prod2[2][0][21] ), .IN2(N66), .S(n23), .Q(n265) );
  MUX21X1 U174 ( .IN1(\prod2[2][0][20] ), .IN2(N65), .S(n23), .Q(n264) );
  MUX21X1 U175 ( .IN1(\prod2[2][0][19] ), .IN2(N64), .S(n23), .Q(n263) );
  MUX21X1 U176 ( .IN1(\prod2[2][0][18] ), .IN2(N63), .S(n23), .Q(n262) );
  MUX21X1 U177 ( .IN1(\prod2[2][0][17] ), .IN2(N62), .S(n23), .Q(n261) );
  MUX21X1 U178 ( .IN1(\prod2[2][0][16] ), .IN2(N61), .S(n23), .Q(n260) );
  MUX21X1 U179 ( .IN1(\prod2[2][0][15] ), .IN2(N60), .S(n23), .Q(n259) );
  MUX21X1 U180 ( .IN1(\prod2[2][0][14] ), .IN2(N59), .S(n23), .Q(n258) );
  MUX21X1 U181 ( .IN1(\prod2[2][0][13] ), .IN2(N58), .S(n23), .Q(n257) );
  MUX21X1 U182 ( .IN1(\prod2[2][0][12] ), .IN2(N57), .S(n23), .Q(n256) );
  AND3X1 U183 ( .IN1(n45), .IN2(N26), .IN3(n42), .Q(n23) );
  MUX21X1 U184 ( .IN1(\prod2[1][3][11] ), .IN2(N128), .S(n24), .Q(n255) );
  MUX21X1 U185 ( .IN1(\prod2[1][3][10] ), .IN2(N127), .S(n24), .Q(n254) );
  MUX21X1 U186 ( .IN1(\prod2[1][3][9] ), .IN2(N126), .S(n24), .Q(n253) );
  MUX21X1 U187 ( .IN1(\prod2[1][3][8] ), .IN2(N125), .S(n24), .Q(n252) );
  MUX21X1 U188 ( .IN1(\prod2[1][3][7] ), .IN2(N124), .S(n24), .Q(n251) );
  MUX21X1 U189 ( .IN1(\prod2[1][3][6] ), .IN2(N123), .S(n24), .Q(n250) );
  MUX21X1 U190 ( .IN1(\prod2[1][3][5] ), .IN2(N122), .S(n24), .Q(n249) );
  MUX21X1 U191 ( .IN1(\prod2[1][3][4] ), .IN2(N121), .S(n24), .Q(n248) );
  MUX21X1 U192 ( .IN1(\prod2[1][3][3] ), .IN2(N120), .S(n24), .Q(n247) );
  MUX21X1 U193 ( .IN1(\prod2[1][3][2] ), .IN2(N119), .S(n24), .Q(n246) );
  MUX21X1 U194 ( .IN1(\prod2[1][3][1] ), .IN2(N118), .S(n24), .Q(n245) );
  MUX21X1 U195 ( .IN1(\prod2[1][3][0] ), .IN2(N117), .S(n24), .Q(n244) );
  MUX21X1 U196 ( .IN1(\prod2[1][2][17] ), .IN2(N104), .S(n24), .Q(n243) );
  MUX21X1 U197 ( .IN1(\prod2[1][2][16] ), .IN2(N103), .S(n24), .Q(n242) );
  MUX21X1 U198 ( .IN1(\prod2[1][2][15] ), .IN2(N102), .S(n24), .Q(n241) );
  MUX21X1 U199 ( .IN1(\prod2[1][2][14] ), .IN2(N101), .S(n24), .Q(n240) );
  MUX21X1 U200 ( .IN1(\prod2[1][2][13] ), .IN2(N100), .S(n24), .Q(n239) );
  MUX21X1 U201 ( .IN1(\prod2[1][2][12] ), .IN2(N99), .S(n24), .Q(n238) );
  MUX21X1 U202 ( .IN1(\prod2[1][2][11] ), .IN2(N98), .S(n24), .Q(n237) );
  MUX21X1 U203 ( .IN1(\prod2[1][2][10] ), .IN2(N97), .S(n24), .Q(n236) );
  MUX21X1 U204 ( .IN1(\prod2[1][2][9] ), .IN2(N96), .S(n24), .Q(n235) );
  MUX21X1 U205 ( .IN1(\prod2[1][2][8] ), .IN2(N95), .S(n24), .Q(n234) );
  MUX21X1 U206 ( .IN1(\prod2[1][2][7] ), .IN2(N94), .S(n24), .Q(n233) );
  MUX21X1 U207 ( .IN1(\prod2[1][2][6] ), .IN2(N93), .S(n24), .Q(n232) );
  MUX21X1 U208 ( .IN1(\prod2[1][1][17] ), .IN2(N86), .S(n24), .Q(n231) );
  MUX21X1 U209 ( .IN1(\prod2[1][1][16] ), .IN2(N85), .S(n24), .Q(n230) );
  MUX21X1 U210 ( .IN1(\prod2[1][1][15] ), .IN2(N84), .S(n24), .Q(n229) );
  MUX21X1 U211 ( .IN1(\prod2[1][1][14] ), .IN2(N83), .S(n24), .Q(n228) );
  MUX21X1 U212 ( .IN1(\prod2[1][1][13] ), .IN2(N82), .S(n24), .Q(n227) );
  MUX21X1 U213 ( .IN1(\prod2[1][1][12] ), .IN2(N81), .S(n24), .Q(n226) );
  MUX21X1 U214 ( .IN1(\prod2[1][1][11] ), .IN2(N80), .S(n24), .Q(n225) );
  MUX21X1 U215 ( .IN1(\prod2[1][1][10] ), .IN2(N79), .S(n24), .Q(n224) );
  MUX21X1 U216 ( .IN1(\prod2[1][1][9] ), .IN2(N78), .S(n24), .Q(n223) );
  MUX21X1 U217 ( .IN1(\prod2[1][1][8] ), .IN2(N77), .S(n24), .Q(n222) );
  MUX21X1 U218 ( .IN1(\prod2[1][1][7] ), .IN2(N76), .S(n24), .Q(n221) );
  MUX21X1 U219 ( .IN1(\prod2[1][1][6] ), .IN2(N75), .S(n24), .Q(n220) );
  MUX21X1 U220 ( .IN1(\prod2[1][0][23] ), .IN2(N68), .S(n24), .Q(n219) );
  MUX21X1 U221 ( .IN1(\prod2[1][0][22] ), .IN2(N67), .S(n24), .Q(n218) );
  MUX21X1 U222 ( .IN1(\prod2[1][0][21] ), .IN2(N66), .S(n24), .Q(n217) );
  MUX21X1 U223 ( .IN1(\prod2[1][0][20] ), .IN2(N65), .S(n24), .Q(n216) );
  MUX21X1 U224 ( .IN1(\prod2[1][0][19] ), .IN2(N64), .S(n24), .Q(n215) );
  MUX21X1 U225 ( .IN1(\prod2[1][0][18] ), .IN2(N63), .S(n24), .Q(n214) );
  MUX21X1 U226 ( .IN1(\prod2[1][0][17] ), .IN2(N62), .S(n24), .Q(n213) );
  MUX21X1 U227 ( .IN1(\prod2[1][0][16] ), .IN2(N61), .S(n24), .Q(n212) );
  MUX21X1 U228 ( .IN1(\prod2[1][0][15] ), .IN2(N60), .S(n24), .Q(n211) );
  MUX21X1 U229 ( .IN1(\prod2[1][0][14] ), .IN2(N59), .S(n24), .Q(n210) );
  MUX21X1 U230 ( .IN1(\prod2[1][0][13] ), .IN2(N58), .S(n24), .Q(n209) );
  MUX21X1 U231 ( .IN1(\prod2[1][0][12] ), .IN2(N57), .S(n24), .Q(n208) );
  AND3X1 U232 ( .IN1(n445), .IN2(N25), .IN3(n42), .Q(n24) );
  MUX21X1 U233 ( .IN1(N128), .IN2(\prod2[0][3][11] ), .S(n25), .Q(n207) );
  MUX21X1 U234 ( .IN1(N127), .IN2(\prod2[0][3][10] ), .S(n25), .Q(n206) );
  MUX21X1 U235 ( .IN1(N126), .IN2(\prod2[0][3][9] ), .S(n25), .Q(n205) );
  MUX21X1 U236 ( .IN1(N125), .IN2(\prod2[0][3][8] ), .S(n25), .Q(n204) );
  MUX21X1 U237 ( .IN1(N124), .IN2(\prod2[0][3][7] ), .S(n25), .Q(n203) );
  MUX21X1 U238 ( .IN1(N123), .IN2(\prod2[0][3][6] ), .S(n25), .Q(n202) );
  MUX21X1 U239 ( .IN1(N122), .IN2(\prod2[0][3][5] ), .S(n25), .Q(n201) );
  MUX21X1 U240 ( .IN1(N121), .IN2(\prod2[0][3][4] ), .S(n25), .Q(n200) );
  MUX21X1 U241 ( .IN1(N120), .IN2(\prod2[0][3][3] ), .S(n25), .Q(n199) );
  MUX21X1 U242 ( .IN1(N119), .IN2(\prod2[0][3][2] ), .S(n25), .Q(n198) );
  MUX21X1 U243 ( .IN1(N118), .IN2(\prod2[0][3][1] ), .S(n25), .Q(n197) );
  MUX21X1 U244 ( .IN1(N117), .IN2(\prod2[0][3][0] ), .S(n25), .Q(n196) );
  MUX21X1 U245 ( .IN1(N104), .IN2(\prod2[0][2][17] ), .S(n25), .Q(n195) );
  MUX21X1 U246 ( .IN1(N103), .IN2(\prod2[0][2][16] ), .S(n25), .Q(n194) );
  MUX21X1 U247 ( .IN1(N102), .IN2(\prod2[0][2][15] ), .S(n25), .Q(n193) );
  MUX21X1 U248 ( .IN1(N101), .IN2(\prod2[0][2][14] ), .S(n25), .Q(n192) );
  MUX21X1 U249 ( .IN1(N100), .IN2(\prod2[0][2][13] ), .S(n25), .Q(n191) );
  MUX21X1 U250 ( .IN1(N99), .IN2(\prod2[0][2][12] ), .S(n25), .Q(n190) );
  MUX21X1 U251 ( .IN1(N98), .IN2(\prod2[0][2][11] ), .S(n25), .Q(n189) );
  MUX21X1 U252 ( .IN1(N97), .IN2(\prod2[0][2][10] ), .S(n25), .Q(n188) );
  MUX21X1 U253 ( .IN1(N96), .IN2(\prod2[0][2][9] ), .S(n25), .Q(n187) );
  MUX21X1 U254 ( .IN1(N95), .IN2(\prod2[0][2][8] ), .S(n25), .Q(n186) );
  MUX21X1 U255 ( .IN1(N94), .IN2(\prod2[0][2][7] ), .S(n25), .Q(n185) );
  MUX21X1 U256 ( .IN1(N93), .IN2(\prod2[0][2][6] ), .S(n25), .Q(n184) );
  MUX21X1 U257 ( .IN1(N86), .IN2(\prod2[0][1][17] ), .S(n25), .Q(n183) );
  MUX21X1 U258 ( .IN1(N85), .IN2(\prod2[0][1][16] ), .S(n25), .Q(n182) );
  MUX21X1 U259 ( .IN1(N84), .IN2(\prod2[0][1][15] ), .S(n25), .Q(n181) );
  MUX21X1 U260 ( .IN1(N83), .IN2(\prod2[0][1][14] ), .S(n25), .Q(n180) );
  MUX21X1 U261 ( .IN1(N82), .IN2(\prod2[0][1][13] ), .S(n25), .Q(n179) );
  MUX21X1 U262 ( .IN1(N81), .IN2(\prod2[0][1][12] ), .S(n25), .Q(n178) );
  MUX21X1 U263 ( .IN1(N80), .IN2(\prod2[0][1][11] ), .S(n25), .Q(n177) );
  MUX21X1 U264 ( .IN1(N79), .IN2(\prod2[0][1][10] ), .S(n25), .Q(n176) );
  MUX21X1 U265 ( .IN1(N78), .IN2(\prod2[0][1][9] ), .S(n25), .Q(n175) );
  MUX21X1 U266 ( .IN1(N77), .IN2(\prod2[0][1][8] ), .S(n25), .Q(n174) );
  MUX21X1 U267 ( .IN1(N76), .IN2(\prod2[0][1][7] ), .S(n25), .Q(n173) );
  MUX21X1 U268 ( .IN1(N75), .IN2(\prod2[0][1][6] ), .S(n25), .Q(n172) );
  MUX21X1 U269 ( .IN1(N68), .IN2(\prod2[0][0][23] ), .S(n25), .Q(n171) );
  MUX21X1 U270 ( .IN1(N67), .IN2(\prod2[0][0][22] ), .S(n25), .Q(n170) );
  MUX21X1 U271 ( .IN1(N66), .IN2(\prod2[0][0][21] ), .S(n25), .Q(n169) );
  MUX21X1 U272 ( .IN1(N65), .IN2(\prod2[0][0][20] ), .S(n25), .Q(n168) );
  MUX21X1 U273 ( .IN1(N64), .IN2(\prod2[0][0][19] ), .S(n25), .Q(n167) );
  MUX21X1 U274 ( .IN1(N63), .IN2(\prod2[0][0][18] ), .S(n25), .Q(n166) );
  MUX21X1 U275 ( .IN1(N62), .IN2(\prod2[0][0][17] ), .S(n25), .Q(n165) );
  MUX21X1 U276 ( .IN1(N61), .IN2(\prod2[0][0][16] ), .S(n25), .Q(n164) );
  MUX21X1 U277 ( .IN1(N60), .IN2(\prod2[0][0][15] ), .S(n25), .Q(n163) );
  MUX21X1 U278 ( .IN1(N59), .IN2(\prod2[0][0][14] ), .S(n25), .Q(n162) );
  MUX21X1 U279 ( .IN1(N58), .IN2(\prod2[0][0][13] ), .S(n25), .Q(n161) );
  MUX21X1 U280 ( .IN1(N57), .IN2(\prod2[0][0][12] ), .S(n25), .Q(n160) );
  MUX21X1 U281 ( .IN1(\sum[3][23] ), .IN2(N323), .S(n26), .Q(n159) );
  MUX21X1 U282 ( .IN1(\sum[3][22] ), .IN2(N322), .S(n26), .Q(n158) );
  MUX21X1 U283 ( .IN1(\sum[3][21] ), .IN2(N321), .S(n26), .Q(n157) );
  MUX21X1 U284 ( .IN1(\sum[3][20] ), .IN2(N320), .S(n26), .Q(n156) );
  MUX21X1 U285 ( .IN1(\sum[3][19] ), .IN2(N319), .S(n26), .Q(n155) );
  MUX21X1 U286 ( .IN1(\sum[3][18] ), .IN2(N318), .S(n26), .Q(n154) );
  MUX21X1 U287 ( .IN1(\sum[3][17] ), .IN2(N317), .S(n26), .Q(n153) );
  MUX21X1 U288 ( .IN1(\sum[3][16] ), .IN2(N316), .S(n26), .Q(n152) );
  MUX21X1 U289 ( .IN1(\sum[3][15] ), .IN2(N315), .S(n26), .Q(n151) );
  MUX21X1 U290 ( .IN1(\sum[3][14] ), .IN2(N314), .S(n26), .Q(n150) );
  MUX21X1 U291 ( .IN1(\sum[3][13] ), .IN2(N313), .S(n26), .Q(n149) );
  MUX21X1 U292 ( .IN1(\sum[3][12] ), .IN2(N312), .S(n26), .Q(n148) );
  MUX21X1 U293 ( .IN1(\sum[3][11] ), .IN2(N311), .S(n26), .Q(n147) );
  MUX21X1 U294 ( .IN1(\sum[3][10] ), .IN2(N310), .S(n26), .Q(n146) );
  MUX21X1 U295 ( .IN1(\sum[3][9] ), .IN2(N309), .S(n26), .Q(n145) );
  MUX21X1 U296 ( .IN1(\sum[3][8] ), .IN2(N308), .S(n26), .Q(n144) );
  MUX21X1 U297 ( .IN1(\sum[3][7] ), .IN2(N307), .S(n26), .Q(n143) );
  MUX21X1 U298 ( .IN1(\sum[3][6] ), .IN2(N306), .S(n26), .Q(n142) );
  MUX21X1 U299 ( .IN1(\sum[3][5] ), .IN2(N305), .S(n26), .Q(n141) );
  MUX21X1 U300 ( .IN1(\sum[3][4] ), .IN2(N304), .S(n26), .Q(n140) );
  MUX21X1 U301 ( .IN1(\sum[3][3] ), .IN2(N303), .S(n26), .Q(n139) );
  MUX21X1 U302 ( .IN1(\sum[3][2] ), .IN2(N302), .S(n26), .Q(n138) );
  MUX21X1 U303 ( .IN1(\sum[3][1] ), .IN2(N301), .S(n26), .Q(n137) );
  MUX21X1 U304 ( .IN1(\sum[3][0] ), .IN2(N300), .S(n26), .Q(n136) );
  AND3X1 U305 ( .IN1(n21), .IN2(n25), .IN3(n445), .Q(n26) );
  MUX21X1 U306 ( .IN1(\sum[2][23] ), .IN2(N323), .S(n27), .Q(n135) );
  MUX21X1 U307 ( .IN1(\sum[2][22] ), .IN2(N322), .S(n27), .Q(n134) );
  MUX21X1 U308 ( .IN1(\sum[2][21] ), .IN2(N321), .S(n27), .Q(n133) );
  MUX21X1 U309 ( .IN1(\sum[2][20] ), .IN2(N320), .S(n27), .Q(n132) );
  MUX21X1 U310 ( .IN1(\sum[2][19] ), .IN2(N319), .S(n27), .Q(n131) );
  MUX21X1 U311 ( .IN1(\sum[2][18] ), .IN2(N318), .S(n27), .Q(n130) );
  MUX21X1 U312 ( .IN1(\sum[2][17] ), .IN2(N317), .S(n27), .Q(n129) );
  MUX21X1 U313 ( .IN1(\sum[2][16] ), .IN2(N316), .S(n27), .Q(n128) );
  MUX21X1 U314 ( .IN1(\sum[2][15] ), .IN2(N315), .S(n27), .Q(n127) );
  MUX21X1 U315 ( .IN1(\sum[2][14] ), .IN2(N314), .S(n27), .Q(n126) );
  MUX21X1 U316 ( .IN1(\sum[2][13] ), .IN2(N313), .S(n27), .Q(n125) );
  MUX21X1 U317 ( .IN1(\sum[2][12] ), .IN2(N312), .S(n27), .Q(n124) );
  MUX21X1 U318 ( .IN1(\sum[2][11] ), .IN2(N311), .S(n27), .Q(n123) );
  MUX21X1 U319 ( .IN1(\sum[2][10] ), .IN2(N310), .S(n27), .Q(n122) );
  MUX21X1 U320 ( .IN1(\sum[2][9] ), .IN2(N309), .S(n27), .Q(n121) );
  MUX21X1 U321 ( .IN1(\sum[2][8] ), .IN2(N308), .S(n27), .Q(n120) );
  MUX21X1 U322 ( .IN1(\sum[2][7] ), .IN2(N307), .S(n27), .Q(n119) );
  MUX21X1 U323 ( .IN1(\sum[2][6] ), .IN2(N306), .S(n27), .Q(n118) );
  MUX21X1 U324 ( .IN1(\sum[2][5] ), .IN2(N305), .S(n27), .Q(n117) );
  MUX21X1 U325 ( .IN1(\sum[2][4] ), .IN2(N304), .S(n27), .Q(n116) );
  MUX21X1 U326 ( .IN1(\sum[2][3] ), .IN2(N303), .S(n27), .Q(n115) );
  MUX21X1 U327 ( .IN1(\sum[2][2] ), .IN2(N302), .S(n27), .Q(n114) );
  MUX21X1 U328 ( .IN1(\sum[2][1] ), .IN2(N301), .S(n27), .Q(n113) );
  MUX21X1 U329 ( .IN1(\sum[2][0] ), .IN2(N300), .S(n27), .Q(n112) );
  AND2X1 U330 ( .IN1(n22), .IN2(s_state), .Q(n27) );
  MUX21X1 U331 ( .IN1(\sum[1][23] ), .IN2(N323), .S(n6), .Q(n111) );
  MUX21X1 U332 ( .IN1(\sum[1][22] ), .IN2(N322), .S(n6), .Q(n110) );
  MUX21X1 U333 ( .IN1(\sum[1][21] ), .IN2(N321), .S(n6), .Q(n109) );
  MUX21X1 U334 ( .IN1(\sum[1][20] ), .IN2(N320), .S(n6), .Q(n108) );
  MUX21X1 U335 ( .IN1(\sum[1][19] ), .IN2(N319), .S(n6), .Q(n107) );
  MUX21X1 U336 ( .IN1(\sum[1][18] ), .IN2(N318), .S(n6), .Q(n106) );
  MUX21X1 U337 ( .IN1(\sum[1][17] ), .IN2(N317), .S(n6), .Q(n105) );
  MUX21X1 U338 ( .IN1(\sum[1][16] ), .IN2(N316), .S(n6), .Q(n104) );
  MUX21X1 U339 ( .IN1(\sum[1][15] ), .IN2(N315), .S(n6), .Q(n103) );
  MUX21X1 U340 ( .IN1(\sum[1][14] ), .IN2(N314), .S(n6), .Q(n102) );
  MUX21X1 U341 ( .IN1(\sum[1][13] ), .IN2(N313), .S(n6), .Q(n101) );
  MUX21X1 U342 ( .IN1(\sum[1][12] ), .IN2(N312), .S(n6), .Q(n100) );
  AND2X1 U343 ( .IN1(n21), .IN2(N26), .Q(n6) );
  AND2X1 U344 ( .IN1(s_state), .IN2(n45), .Q(n21) );
  AND3X1 U345 ( .IN1(n28), .IN2(n29), .IN3(n30), .Q(N268) );
  XNOR2X1 U346 ( .IN1(n31), .IN2(n28), .Q(N267) );
  AO221X1 U347 ( .IN1(n32), .IN2(\prod2[1][2][17] ), .IN3(n33), .IN4(
        \prod2[3][2][17] ), .IN5(n34), .Q(n28) );
  AO22X1 U348 ( .IN1(n35), .IN2(\prod2[2][2][17] ), .IN3(n36), .IN4(
        \prod2[0][2][17] ), .Q(n34) );
  NAND2X0 U349 ( .IN1(n30), .IN2(n29), .QN(n31) );
  XOR2X1 U350 ( .IN1(n29), .IN2(n30), .Q(N266) );
  NOR3X0 U351 ( .IN1(n37), .IN2(n38), .IN3(n39), .QN(n30) );
  AO221X1 U352 ( .IN1(n32), .IN2(\prod2[1][2][16] ), .IN3(n33), .IN4(
        \prod2[3][2][16] ), .IN5(n40), .Q(n29) );
  AO22X1 U353 ( .IN1(n35), .IN2(\prod2[2][2][16] ), .IN3(n36), .IN4(
        \prod2[0][2][16] ), .Q(n40) );
  XNOR2X1 U354 ( .IN1(n37), .IN2(n41), .Q(N265) );
  NOR2X0 U355 ( .IN1(n38), .IN2(n39), .QN(n41) );
  AOI221X1 U356 ( .IN1(n32), .IN2(\prod2[1][2][15] ), .IN3(n33), .IN4(
        \prod2[3][2][15] ), .IN5(n43), .QN(n37) );
  AO22X1 U357 ( .IN1(n35), .IN2(\prod2[2][2][15] ), .IN3(n36), .IN4(
        \prod2[0][2][15] ), .Q(n43) );
  XOR2X1 U358 ( .IN1(n39), .IN2(n38), .Q(N264) );
  AOI221X1 U359 ( .IN1(n32), .IN2(\prod2[1][2][14] ), .IN3(n33), .IN4(
        \prod2[3][2][14] ), .IN5(n44), .QN(n38) );
  AO22X1 U360 ( .IN1(n35), .IN2(\prod2[2][2][14] ), .IN3(n36), .IN4(
        \prod2[0][2][14] ), .Q(n44) );
  NAND3X0 U361 ( .IN1(n46), .IN2(n47), .IN3(n48), .QN(n39) );
  XNOR2X1 U362 ( .IN1(n49), .IN2(n48), .Q(N263) );
  AO221X1 U363 ( .IN1(n32), .IN2(\prod2[1][2][13] ), .IN3(n33), .IN4(
        \prod2[3][2][13] ), .IN5(n50), .Q(n48) );
  AO22X1 U364 ( .IN1(n35), .IN2(\prod2[2][2][13] ), .IN3(n36), .IN4(
        \prod2[0][2][13] ), .Q(n50) );
  NAND2X0 U365 ( .IN1(n47), .IN2(n46), .QN(n49) );
  XOR2X1 U366 ( .IN1(n47), .IN2(n46), .Q(N262) );
  AO221X1 U367 ( .IN1(n32), .IN2(\prod2[1][2][12] ), .IN3(n33), .IN4(
        \prod2[3][2][12] ), .IN5(n51), .Q(n46) );
  AO22X1 U368 ( .IN1(n35), .IN2(\prod2[2][2][12] ), .IN3(n36), .IN4(
        \prod2[0][2][12] ), .Q(n51) );
  AO22X1 U369 ( .IN1(n52), .IN2(n53), .IN3(n54), .IN4(n55), .Q(n47) );
  OR2X1 U370 ( .IN1(n53), .IN2(n52), .Q(n54) );
  XOR3X1 U371 ( .IN1(n53), .IN2(n52), .IN3(n55), .Q(N261) );
  AO22X1 U372 ( .IN1(n56), .IN2(n57), .IN3(n58), .IN4(n59), .Q(n55) );
  OR2X1 U373 ( .IN1(n57), .IN2(n56), .Q(n58) );
  AO221X1 U374 ( .IN1(n32), .IN2(\prod2[1][3][11] ), .IN3(n33), .IN4(
        \prod2[3][3][11] ), .IN5(n60), .Q(n52) );
  AO22X1 U375 ( .IN1(n35), .IN2(\prod2[2][3][11] ), .IN3(n36), .IN4(
        \prod2[0][3][11] ), .Q(n60) );
  AO221X1 U376 ( .IN1(n32), .IN2(\prod2[1][2][11] ), .IN3(n33), .IN4(
        \prod2[3][2][11] ), .IN5(n61), .Q(n53) );
  AO22X1 U377 ( .IN1(n35), .IN2(\prod2[2][2][11] ), .IN3(n36), .IN4(
        \prod2[0][2][11] ), .Q(n61) );
  XOR3X1 U378 ( .IN1(n57), .IN2(n56), .IN3(n59), .Q(N260) );
  AO22X1 U379 ( .IN1(n62), .IN2(n63), .IN3(n357), .IN4(n358), .Q(n59) );
  OR2X1 U380 ( .IN1(n63), .IN2(n62), .Q(n357) );
  AO221X1 U381 ( .IN1(n32), .IN2(\prod2[1][3][10] ), .IN3(n33), .IN4(
        \prod2[3][3][10] ), .IN5(n359), .Q(n56) );
  AO22X1 U382 ( .IN1(n35), .IN2(\prod2[2][3][10] ), .IN3(n36), .IN4(
        \prod2[0][3][10] ), .Q(n359) );
  AO221X1 U383 ( .IN1(n32), .IN2(\prod2[1][2][10] ), .IN3(n33), .IN4(
        \prod2[3][2][10] ), .IN5(n360), .Q(n57) );
  AO22X1 U384 ( .IN1(n35), .IN2(\prod2[2][2][10] ), .IN3(n36), .IN4(
        \prod2[0][2][10] ), .Q(n360) );
  XOR3X1 U385 ( .IN1(n63), .IN2(n62), .IN3(n358), .Q(N259) );
  AO22X1 U386 ( .IN1(n361), .IN2(n362), .IN3(n363), .IN4(n364), .Q(n358) );
  OR2X1 U387 ( .IN1(n362), .IN2(n361), .Q(n363) );
  AO221X1 U388 ( .IN1(n32), .IN2(\prod2[1][3][9] ), .IN3(n33), .IN4(
        \prod2[3][3][9] ), .IN5(n365), .Q(n62) );
  AO22X1 U389 ( .IN1(n35), .IN2(\prod2[2][3][9] ), .IN3(n36), .IN4(
        \prod2[0][3][9] ), .Q(n365) );
  AO221X1 U390 ( .IN1(n32), .IN2(\prod2[1][2][9] ), .IN3(n33), .IN4(
        \prod2[3][2][9] ), .IN5(n366), .Q(n63) );
  AO22X1 U391 ( .IN1(n35), .IN2(\prod2[2][2][9] ), .IN3(n36), .IN4(
        \prod2[0][2][9] ), .Q(n366) );
  XOR3X1 U392 ( .IN1(n362), .IN2(n361), .IN3(n364), .Q(N258) );
  AO22X1 U393 ( .IN1(n367), .IN2(n368), .IN3(n369), .IN4(n370), .Q(n364) );
  OR2X1 U394 ( .IN1(n368), .IN2(n367), .Q(n369) );
  AO221X1 U395 ( .IN1(n32), .IN2(\prod2[1][3][8] ), .IN3(n33), .IN4(
        \prod2[3][3][8] ), .IN5(n371), .Q(n361) );
  AO22X1 U396 ( .IN1(n35), .IN2(\prod2[2][3][8] ), .IN3(n36), .IN4(
        \prod2[0][3][8] ), .Q(n371) );
  AO221X1 U397 ( .IN1(n32), .IN2(\prod2[1][2][8] ), .IN3(n33), .IN4(
        \prod2[3][2][8] ), .IN5(n372), .Q(n362) );
  AO22X1 U398 ( .IN1(n35), .IN2(\prod2[2][2][8] ), .IN3(n36), .IN4(
        \prod2[0][2][8] ), .Q(n372) );
  XOR3X1 U399 ( .IN1(n367), .IN2(n370), .IN3(n368), .Q(N257) );
  AO221X1 U400 ( .IN1(n32), .IN2(\prod2[1][3][7] ), .IN3(n33), .IN4(
        \prod2[3][3][7] ), .IN5(n373), .Q(n368) );
  AO22X1 U401 ( .IN1(n35), .IN2(\prod2[2][3][7] ), .IN3(n36), .IN4(
        \prod2[0][3][7] ), .Q(n373) );
  AO221X1 U402 ( .IN1(n32), .IN2(\prod2[1][2][7] ), .IN3(n33), .IN4(
        \prod2[3][2][7] ), .IN5(n374), .Q(n370) );
  AO22X1 U403 ( .IN1(n35), .IN2(\prod2[2][2][7] ), .IN3(n36), .IN4(
        \prod2[0][2][7] ), .Q(n374) );
  NOR2X0 U404 ( .IN1(n375), .IN2(n376), .QN(n367) );
  XOR2X1 U405 ( .IN1(n376), .IN2(n375), .Q(N256) );
  AOI221X1 U406 ( .IN1(n32), .IN2(\prod2[1][3][6] ), .IN3(n33), .IN4(
        \prod2[3][3][6] ), .IN5(n377), .QN(n375) );
  AO22X1 U407 ( .IN1(n35), .IN2(\prod2[2][3][6] ), .IN3(n36), .IN4(
        \prod2[0][3][6] ), .Q(n377) );
  AOI221X1 U408 ( .IN1(n32), .IN2(\prod2[1][2][6] ), .IN3(n33), .IN4(
        \prod2[3][2][6] ), .IN5(n378), .QN(n376) );
  AO22X1 U409 ( .IN1(n35), .IN2(\prod2[2][2][6] ), .IN3(n36), .IN4(
        \prod2[0][2][6] ), .Q(n378) );
  AO221X1 U410 ( .IN1(n32), .IN2(\prod2[1][3][5] ), .IN3(n33), .IN4(
        \prod2[3][3][5] ), .IN5(n379), .Q(N255) );
  AO22X1 U411 ( .IN1(n35), .IN2(\prod2[2][3][5] ), .IN3(n36), .IN4(
        \prod2[0][3][5] ), .Q(n379) );
  AO221X1 U412 ( .IN1(n32), .IN2(\prod2[1][3][4] ), .IN3(n33), .IN4(
        \prod2[3][3][4] ), .IN5(n380), .Q(N254) );
  AO22X1 U413 ( .IN1(n35), .IN2(\prod2[2][3][4] ), .IN3(n36), .IN4(
        \prod2[0][3][4] ), .Q(n380) );
  AO221X1 U414 ( .IN1(n32), .IN2(\prod2[1][3][3] ), .IN3(n33), .IN4(
        \prod2[3][3][3] ), .IN5(n381), .Q(N253) );
  AO22X1 U415 ( .IN1(n35), .IN2(\prod2[2][3][3] ), .IN3(n36), .IN4(
        \prod2[0][3][3] ), .Q(n381) );
  AO221X1 U416 ( .IN1(n32), .IN2(\prod2[1][3][2] ), .IN3(n33), .IN4(
        \prod2[3][3][2] ), .IN5(n382), .Q(N252) );
  AO22X1 U417 ( .IN1(n35), .IN2(\prod2[2][3][2] ), .IN3(n36), .IN4(
        \prod2[0][3][2] ), .Q(n382) );
  AO221X1 U418 ( .IN1(n32), .IN2(\prod2[1][3][1] ), .IN3(n33), .IN4(
        \prod2[3][3][1] ), .IN5(n383), .Q(N251) );
  AO22X1 U419 ( .IN1(n35), .IN2(\prod2[2][3][1] ), .IN3(n36), .IN4(
        \prod2[0][3][1] ), .Q(n383) );
  AO221X1 U420 ( .IN1(n32), .IN2(\prod2[1][3][0] ), .IN3(n33), .IN4(
        \prod2[3][3][0] ), .IN5(n384), .Q(N250) );
  AO22X1 U421 ( .IN1(n35), .IN2(\prod2[2][3][0] ), .IN3(n36), .IN4(
        \prod2[0][3][0] ), .Q(n384) );
  XOR2X1 U422 ( .IN1(n385), .IN2(n386), .Q(N223) );
  AOI221X1 U423 ( .IN1(\prod2[2][0][23] ), .IN2(n35), .IN3(\prod2[0][0][23] ), 
        .IN4(n36), .IN5(n387), .QN(n386) );
  AO22X1 U424 ( .IN1(\prod2[1][0][23] ), .IN2(n32), .IN3(\prod2[3][0][23] ), 
        .IN4(n33), .Q(n387) );
  NAND2X0 U425 ( .IN1(n388), .IN2(n389), .QN(n385) );
  XOR2X1 U426 ( .IN1(n389), .IN2(n388), .Q(N222) );
  NOR3X0 U427 ( .IN1(n390), .IN2(n391), .IN3(n392), .QN(n388) );
  AO221X1 U428 ( .IN1(n32), .IN2(\prod2[1][0][22] ), .IN3(n33), .IN4(
        \prod2[3][0][22] ), .IN5(n393), .Q(n389) );
  AO22X1 U429 ( .IN1(n35), .IN2(\prod2[2][0][22] ), .IN3(n36), .IN4(
        \prod2[0][0][22] ), .Q(n393) );
  XNOR2X1 U430 ( .IN1(n390), .IN2(n394), .Q(N221) );
  NOR2X0 U431 ( .IN1(n391), .IN2(n392), .QN(n394) );
  AOI221X1 U432 ( .IN1(n32), .IN2(\prod2[1][0][21] ), .IN3(n33), .IN4(
        \prod2[3][0][21] ), .IN5(n395), .QN(n390) );
  AO22X1 U433 ( .IN1(n35), .IN2(\prod2[2][0][21] ), .IN3(n36), .IN4(
        \prod2[0][0][21] ), .Q(n395) );
  XOR2X1 U434 ( .IN1(n392), .IN2(n391), .Q(N220) );
  AOI221X1 U435 ( .IN1(n32), .IN2(\prod2[1][0][20] ), .IN3(n33), .IN4(
        \prod2[3][0][20] ), .IN5(n396), .QN(n391) );
  AO22X1 U436 ( .IN1(n35), .IN2(\prod2[2][0][20] ), .IN3(n36), .IN4(
        \prod2[0][0][20] ), .Q(n396) );
  NAND3X0 U437 ( .IN1(n397), .IN2(n398), .IN3(n399), .QN(n392) );
  XNOR2X1 U438 ( .IN1(n400), .IN2(n399), .Q(N219) );
  AO221X1 U439 ( .IN1(n32), .IN2(\prod2[1][0][19] ), .IN3(n33), .IN4(
        \prod2[3][0][19] ), .IN5(n401), .Q(n399) );
  AO22X1 U440 ( .IN1(n35), .IN2(\prod2[2][0][19] ), .IN3(n36), .IN4(
        \prod2[0][0][19] ), .Q(n401) );
  NAND2X0 U441 ( .IN1(n398), .IN2(n397), .QN(n400) );
  XOR2X1 U442 ( .IN1(n398), .IN2(n397), .Q(N218) );
  AO221X1 U443 ( .IN1(n32), .IN2(\prod2[1][0][18] ), .IN3(n33), .IN4(
        \prod2[3][0][18] ), .IN5(n402), .Q(n397) );
  AO22X1 U444 ( .IN1(n35), .IN2(\prod2[2][0][18] ), .IN3(n36), .IN4(
        \prod2[0][0][18] ), .Q(n402) );
  AO22X1 U445 ( .IN1(n403), .IN2(n404), .IN3(n405), .IN4(n406), .Q(n398) );
  OR2X1 U446 ( .IN1(n404), .IN2(n403), .Q(n405) );
  XOR3X1 U447 ( .IN1(n404), .IN2(n403), .IN3(n406), .Q(N217) );
  AO22X1 U448 ( .IN1(n407), .IN2(n408), .IN3(n409), .IN4(n410), .Q(n406) );
  OR2X1 U449 ( .IN1(n408), .IN2(n407), .Q(n409) );
  AO221X1 U450 ( .IN1(n32), .IN2(\prod2[1][1][17] ), .IN3(n33), .IN4(
        \prod2[3][1][17] ), .IN5(n411), .Q(n403) );
  AO22X1 U451 ( .IN1(n35), .IN2(\prod2[2][1][17] ), .IN3(n36), .IN4(
        \prod2[0][1][17] ), .Q(n411) );
  AO221X1 U452 ( .IN1(n32), .IN2(\prod2[1][0][17] ), .IN3(n33), .IN4(
        \prod2[3][0][17] ), .IN5(n412), .Q(n404) );
  AO22X1 U453 ( .IN1(n35), .IN2(\prod2[2][0][17] ), .IN3(n36), .IN4(
        \prod2[0][0][17] ), .Q(n412) );
  XOR3X1 U454 ( .IN1(n408), .IN2(n407), .IN3(n410), .Q(N216) );
  AO22X1 U455 ( .IN1(n413), .IN2(n414), .IN3(n415), .IN4(n416), .Q(n410) );
  OR2X1 U456 ( .IN1(n414), .IN2(n413), .Q(n415) );
  AO221X1 U457 ( .IN1(n32), .IN2(\prod2[1][1][16] ), .IN3(n33), .IN4(
        \prod2[3][1][16] ), .IN5(n417), .Q(n407) );
  AO22X1 U458 ( .IN1(n35), .IN2(\prod2[2][1][16] ), .IN3(n36), .IN4(
        \prod2[0][1][16] ), .Q(n417) );
  AO221X1 U459 ( .IN1(n32), .IN2(\prod2[1][0][16] ), .IN3(n33), .IN4(
        \prod2[3][0][16] ), .IN5(n418), .Q(n408) );
  AO22X1 U460 ( .IN1(n35), .IN2(\prod2[2][0][16] ), .IN3(n36), .IN4(
        \prod2[0][0][16] ), .Q(n418) );
  XOR3X1 U461 ( .IN1(n414), .IN2(n413), .IN3(n416), .Q(N215) );
  AO22X1 U462 ( .IN1(n419), .IN2(n420), .IN3(n421), .IN4(n422), .Q(n416) );
  OR2X1 U463 ( .IN1(n420), .IN2(n419), .Q(n421) );
  AO221X1 U464 ( .IN1(n32), .IN2(\prod2[1][1][15] ), .IN3(n33), .IN4(
        \prod2[3][1][15] ), .IN5(n423), .Q(n413) );
  AO22X1 U465 ( .IN1(n35), .IN2(\prod2[2][1][15] ), .IN3(n36), .IN4(
        \prod2[0][1][15] ), .Q(n423) );
  AO221X1 U466 ( .IN1(n32), .IN2(\prod2[1][0][15] ), .IN3(n33), .IN4(
        \prod2[3][0][15] ), .IN5(n424), .Q(n414) );
  AO22X1 U467 ( .IN1(n35), .IN2(\prod2[2][0][15] ), .IN3(n36), .IN4(
        \prod2[0][0][15] ), .Q(n424) );
  XOR3X1 U468 ( .IN1(n420), .IN2(n419), .IN3(n422), .Q(N214) );
  AO22X1 U469 ( .IN1(n425), .IN2(n426), .IN3(n427), .IN4(n428), .Q(n422) );
  OR2X1 U470 ( .IN1(n426), .IN2(n425), .Q(n427) );
  AO221X1 U471 ( .IN1(n32), .IN2(\prod2[1][1][14] ), .IN3(n33), .IN4(
        \prod2[3][1][14] ), .IN5(n429), .Q(n419) );
  AO22X1 U472 ( .IN1(n35), .IN2(\prod2[2][1][14] ), .IN3(n36), .IN4(
        \prod2[0][1][14] ), .Q(n429) );
  AO221X1 U473 ( .IN1(n32), .IN2(\prod2[1][0][14] ), .IN3(n33), .IN4(
        \prod2[3][0][14] ), .IN5(n430), .Q(n420) );
  AO22X1 U474 ( .IN1(n35), .IN2(\prod2[2][0][14] ), .IN3(n36), .IN4(
        \prod2[0][0][14] ), .Q(n430) );
  XOR3X1 U475 ( .IN1(n425), .IN2(n428), .IN3(n426), .Q(N213) );
  AO221X1 U476 ( .IN1(n32), .IN2(\prod2[1][1][13] ), .IN3(n33), .IN4(
        \prod2[3][1][13] ), .IN5(n431), .Q(n426) );
  AO22X1 U477 ( .IN1(n35), .IN2(\prod2[2][1][13] ), .IN3(n36), .IN4(
        \prod2[0][1][13] ), .Q(n431) );
  AO221X1 U478 ( .IN1(n32), .IN2(\prod2[1][0][13] ), .IN3(n33), .IN4(
        \prod2[3][0][13] ), .IN5(n432), .Q(n428) );
  AO22X1 U479 ( .IN1(n35), .IN2(\prod2[2][0][13] ), .IN3(n36), .IN4(
        \prod2[0][0][13] ), .Q(n432) );
  NOR2X0 U480 ( .IN1(n433), .IN2(n434), .QN(n425) );
  XOR2X1 U481 ( .IN1(n434), .IN2(n433), .Q(N212) );
  AOI221X1 U482 ( .IN1(n32), .IN2(\prod2[1][1][12] ), .IN3(n33), .IN4(
        \prod2[3][1][12] ), .IN5(n435), .QN(n433) );
  AO22X1 U483 ( .IN1(n35), .IN2(\prod2[2][1][12] ), .IN3(n36), .IN4(
        \prod2[0][1][12] ), .Q(n435) );
  AOI221X1 U484 ( .IN1(n32), .IN2(\prod2[1][0][12] ), .IN3(n33), .IN4(
        \prod2[3][0][12] ), .IN5(n436), .QN(n434) );
  AO22X1 U485 ( .IN1(n35), .IN2(\prod2[2][0][12] ), .IN3(n36), .IN4(
        \prod2[0][0][12] ), .Q(n436) );
  AO221X1 U486 ( .IN1(n32), .IN2(\prod2[1][1][11] ), .IN3(n33), .IN4(
        \prod2[3][1][11] ), .IN5(n437), .Q(N211) );
  AO22X1 U487 ( .IN1(n35), .IN2(\prod2[2][1][11] ), .IN3(n36), .IN4(
        \prod2[0][1][11] ), .Q(n437) );
  AO221X1 U488 ( .IN1(n32), .IN2(\prod2[1][1][10] ), .IN3(n33), .IN4(
        \prod2[3][1][10] ), .IN5(n438), .Q(N210) );
  AO22X1 U489 ( .IN1(n35), .IN2(\prod2[2][1][10] ), .IN3(n36), .IN4(
        \prod2[0][1][10] ), .Q(n438) );
  AO221X1 U490 ( .IN1(n32), .IN2(\prod2[1][1][9] ), .IN3(n33), .IN4(
        \prod2[3][1][9] ), .IN5(n439), .Q(N209) );
  AO22X1 U491 ( .IN1(n35), .IN2(\prod2[2][1][9] ), .IN3(n36), .IN4(
        \prod2[0][1][9] ), .Q(n439) );
  AO221X1 U492 ( .IN1(n32), .IN2(\prod2[1][1][8] ), .IN3(n33), .IN4(
        \prod2[3][1][8] ), .IN5(n440), .Q(N208) );
  AO22X1 U493 ( .IN1(n35), .IN2(\prod2[2][1][8] ), .IN3(n36), .IN4(
        \prod2[0][1][8] ), .Q(n440) );
  AO221X1 U494 ( .IN1(n32), .IN2(\prod2[1][1][7] ), .IN3(n33), .IN4(
        \prod2[3][1][7] ), .IN5(n441), .Q(N207) );
  AO22X1 U495 ( .IN1(n35), .IN2(\prod2[2][1][7] ), .IN3(n36), .IN4(
        \prod2[0][1][7] ), .Q(n441) );
  AO221X1 U496 ( .IN1(n32), .IN2(\prod2[1][1][6] ), .IN3(n33), .IN4(
        \prod2[3][1][6] ), .IN5(n442), .Q(N206) );
  AO22X1 U497 ( .IN1(n35), .IN2(\prod2[2][1][6] ), .IN3(n36), .IN4(
        \prod2[0][1][6] ), .Q(n442) );
  NOR2X0 U498 ( .IN1(n443), .IN2(n45), .QN(n36) );
  NOR2X0 U499 ( .IN1(n444), .IN2(n45), .QN(n35) );
  NOR2X0 U500 ( .IN1(N25), .IN2(n444), .QN(n33) );
  INVX0 U501 ( .INP(n443), .ZN(n444) );
  NOR2X0 U502 ( .IN1(n443), .IN2(N25), .QN(n32) );
  AO21X1 U503 ( .IN1(n445), .IN2(n45), .IN3(n22), .Q(n443) );
  NOR2X0 U504 ( .IN1(n45), .IN2(n445), .QN(n22) );
endmodule


module serial_mul_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [47:0] A;
  input [47:0] B;
  output [47:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [47:1] carry;

  FADDX1 U1_47 ( .A(A[47]), .B(B[47]), .CI(carry[47]), .S(SUM[47]) );
  FADDX1 U1_46 ( .A(A[46]), .B(B[46]), .CI(carry[46]), .CO(carry[47]), .S(
        SUM[46]) );
  FADDX1 U1_45 ( .A(A[45]), .B(B[45]), .CI(carry[45]), .CO(carry[46]), .S(
        SUM[45]) );
  FADDX1 U1_44 ( .A(A[44]), .B(B[44]), .CI(carry[44]), .CO(carry[45]), .S(
        SUM[44]) );
  FADDX1 U1_43 ( .A(A[43]), .B(B[43]), .CI(carry[43]), .CO(carry[44]), .S(
        SUM[43]) );
  FADDX1 U1_42 ( .A(A[42]), .B(B[42]), .CI(carry[42]), .CO(carry[43]), .S(
        SUM[42]) );
  FADDX1 U1_41 ( .A(A[41]), .B(B[41]), .CI(carry[41]), .CO(carry[42]), .S(
        SUM[41]) );
  FADDX1 U1_40 ( .A(A[40]), .B(B[40]), .CI(carry[40]), .CO(carry[41]), .S(
        SUM[40]) );
  FADDX1 U1_39 ( .A(A[39]), .B(B[39]), .CI(carry[39]), .CO(carry[40]), .S(
        SUM[39]) );
  FADDX1 U1_38 ( .A(A[38]), .B(B[38]), .CI(carry[38]), .CO(carry[39]), .S(
        SUM[38]) );
  FADDX1 U1_37 ( .A(A[37]), .B(B[37]), .CI(carry[37]), .CO(carry[38]), .S(
        SUM[37]) );
  FADDX1 U1_36 ( .A(A[36]), .B(B[36]), .CI(carry[36]), .CO(carry[37]), .S(
        SUM[36]) );
  FADDX1 U1_35 ( .A(A[35]), .B(B[35]), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  FADDX1 U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  FADDX1 U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  FADDX1 U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  FADDX1 U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  FADDX1 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  FADDX1 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  FADDX1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  FADDX1 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FADDX1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FADDX1 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FADDX1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FADDX1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FADDX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FADDX1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FADDX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FADDX1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FADDX1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FADDX1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X1 U1 ( .IN1(A[0]), .IN2(B[0]), .Q(n1) );
  XOR2X1 U2 ( .IN1(A[0]), .IN2(B[0]), .Q(SUM[0]) );
endmodule


module serial_mul_1_DW_mult_uns_1 ( a, b, product );
  input [47:0] a;
  output [48:0] product;
  input b;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52;

  NOR2X0 U4 ( .IN1(n3), .IN2(n4), .QN(product[47]) );
  NOR2X0 U5 ( .IN1(n3), .IN2(n5), .QN(product[46]) );
  NOR2X0 U6 ( .IN1(n3), .IN2(n6), .QN(product[45]) );
  NOR2X0 U7 ( .IN1(n3), .IN2(n7), .QN(product[44]) );
  NOR2X0 U8 ( .IN1(n3), .IN2(n8), .QN(product[43]) );
  NOR2X0 U9 ( .IN1(n3), .IN2(n9), .QN(product[42]) );
  NOR2X0 U10 ( .IN1(n3), .IN2(n10), .QN(product[41]) );
  NOR2X0 U11 ( .IN1(n3), .IN2(n11), .QN(product[40]) );
  NOR2X0 U12 ( .IN1(n3), .IN2(n12), .QN(product[39]) );
  NOR2X0 U13 ( .IN1(n3), .IN2(n13), .QN(product[38]) );
  NOR2X0 U14 ( .IN1(n3), .IN2(n14), .QN(product[37]) );
  NOR2X0 U15 ( .IN1(n3), .IN2(n15), .QN(product[36]) );
  NOR2X0 U16 ( .IN1(n3), .IN2(n16), .QN(product[35]) );
  NOR2X0 U17 ( .IN1(n3), .IN2(n17), .QN(product[34]) );
  NOR2X0 U18 ( .IN1(n3), .IN2(n18), .QN(product[33]) );
  NOR2X0 U19 ( .IN1(n3), .IN2(n19), .QN(product[32]) );
  NOR2X0 U20 ( .IN1(n2), .IN2(n20), .QN(product[31]) );
  NOR2X0 U21 ( .IN1(n2), .IN2(n21), .QN(product[30]) );
  NOR2X0 U22 ( .IN1(n2), .IN2(n22), .QN(product[29]) );
  NOR2X0 U23 ( .IN1(n2), .IN2(n23), .QN(product[28]) );
  NOR2X0 U24 ( .IN1(n2), .IN2(n24), .QN(product[27]) );
  NOR2X0 U25 ( .IN1(n2), .IN2(n25), .QN(product[26]) );
  NOR2X0 U26 ( .IN1(n2), .IN2(n26), .QN(product[25]) );
  NOR2X0 U27 ( .IN1(n2), .IN2(n27), .QN(product[24]) );
  NOR2X0 U28 ( .IN1(n2), .IN2(n28), .QN(product[23]) );
  NOR2X0 U29 ( .IN1(n2), .IN2(n29), .QN(product[22]) );
  NOR2X0 U30 ( .IN1(n2), .IN2(n30), .QN(product[21]) );
  NOR2X0 U31 ( .IN1(n2), .IN2(n31), .QN(product[20]) );
  NOR2X0 U32 ( .IN1(n2), .IN2(n32), .QN(product[19]) );
  NOR2X0 U33 ( .IN1(n2), .IN2(n33), .QN(product[18]) );
  NOR2X0 U34 ( .IN1(n2), .IN2(n34), .QN(product[17]) );
  NOR2X0 U35 ( .IN1(n2), .IN2(n35), .QN(product[16]) );
  NOR2X0 U36 ( .IN1(n1), .IN2(n36), .QN(product[15]) );
  NOR2X0 U37 ( .IN1(n1), .IN2(n37), .QN(product[14]) );
  NOR2X0 U38 ( .IN1(n1), .IN2(n38), .QN(product[13]) );
  NOR2X0 U39 ( .IN1(n1), .IN2(n39), .QN(product[12]) );
  NOR2X0 U40 ( .IN1(n1), .IN2(n40), .QN(product[11]) );
  NOR2X0 U41 ( .IN1(n1), .IN2(n41), .QN(product[10]) );
  NOR2X0 U42 ( .IN1(n1), .IN2(n42), .QN(product[9]) );
  NOR2X0 U43 ( .IN1(n1), .IN2(n43), .QN(product[8]) );
  NOR2X0 U44 ( .IN1(n1), .IN2(n44), .QN(product[7]) );
  NOR2X0 U45 ( .IN1(n1), .IN2(n45), .QN(product[6]) );
  NOR2X0 U46 ( .IN1(n1), .IN2(n46), .QN(product[5]) );
  NOR2X0 U47 ( .IN1(n1), .IN2(n47), .QN(product[4]) );
  NOR2X0 U48 ( .IN1(n1), .IN2(n48), .QN(product[3]) );
  NOR2X0 U49 ( .IN1(n1), .IN2(n49), .QN(product[2]) );
  NOR2X0 U50 ( .IN1(n1), .IN2(n50), .QN(product[1]) );
  NOR2X0 U51 ( .IN1(n1), .IN2(n51), .QN(product[0]) );
  NBUFFX2 U103 ( .INP(n52), .Z(n1) );
  NBUFFX2 U104 ( .INP(n52), .Z(n2) );
  NBUFFX2 U105 ( .INP(n52), .Z(n3) );
  INVX0 U106 ( .INP(b), .ZN(n52) );
  INVX0 U107 ( .INP(a[0]), .ZN(n51) );
  INVX0 U108 ( .INP(a[3]), .ZN(n48) );
  INVX0 U109 ( .INP(a[4]), .ZN(n47) );
  INVX0 U110 ( .INP(a[5]), .ZN(n46) );
  INVX0 U111 ( .INP(a[6]), .ZN(n45) );
  INVX0 U112 ( .INP(a[23]), .ZN(n28) );
  INVX0 U113 ( .INP(a[31]), .ZN(n20) );
  INVX0 U114 ( .INP(a[19]), .ZN(n32) );
  INVX0 U115 ( .INP(a[20]), .ZN(n31) );
  INVX0 U116 ( .INP(a[21]), .ZN(n30) );
  INVX0 U117 ( .INP(a[22]), .ZN(n29) );
  INVX0 U118 ( .INP(a[32]), .ZN(n19) );
  INVX0 U119 ( .INP(a[33]), .ZN(n18) );
  INVX0 U120 ( .INP(a[34]), .ZN(n17) );
  INVX0 U121 ( .INP(a[15]), .ZN(n36) );
  INVX0 U122 ( .INP(a[16]), .ZN(n35) );
  INVX0 U123 ( .INP(a[17]), .ZN(n34) );
  INVX0 U124 ( .INP(a[18]), .ZN(n33) );
  INVX0 U125 ( .INP(a[11]), .ZN(n40) );
  INVX0 U126 ( .INP(a[12]), .ZN(n39) );
  INVX0 U127 ( .INP(a[13]), .ZN(n38) );
  INVX0 U128 ( .INP(a[14]), .ZN(n37) );
  INVX0 U129 ( .INP(a[8]), .ZN(n43) );
  INVX0 U130 ( .INP(a[9]), .ZN(n42) );
  INVX0 U131 ( .INP(a[10]), .ZN(n41) );
  INVX0 U132 ( .INP(a[2]), .ZN(n49) );
  INVX0 U133 ( .INP(a[35]), .ZN(n16) );
  INVX0 U134 ( .INP(a[36]), .ZN(n15) );
  INVX0 U135 ( .INP(a[37]), .ZN(n14) );
  INVX0 U136 ( .INP(a[38]), .ZN(n13) );
  INVX0 U137 ( .INP(a[7]), .ZN(n44) );
  INVX0 U138 ( .INP(a[39]), .ZN(n12) );
  INVX0 U139 ( .INP(a[40]), .ZN(n11) );
  INVX0 U140 ( .INP(a[41]), .ZN(n10) );
  INVX0 U141 ( .INP(a[42]), .ZN(n9) );
  INVX0 U142 ( .INP(a[43]), .ZN(n8) );
  INVX0 U143 ( .INP(a[44]), .ZN(n7) );
  INVX0 U144 ( .INP(a[45]), .ZN(n6) );
  INVX0 U145 ( .INP(a[46]), .ZN(n5) );
  INVX0 U146 ( .INP(a[1]), .ZN(n50) );
  INVX0 U147 ( .INP(a[24]), .ZN(n27) );
  INVX0 U148 ( .INP(a[25]), .ZN(n26) );
  INVX0 U149 ( .INP(a[26]), .ZN(n25) );
  INVX0 U150 ( .INP(a[27]), .ZN(n24) );
  INVX0 U151 ( .INP(a[28]), .ZN(n23) );
  INVX0 U152 ( .INP(a[29]), .ZN(n22) );
  INVX0 U153 ( .INP(a[30]), .ZN(n21) );
  INVX0 U154 ( .INP(a[47]), .ZN(n4) );
endmodule


module serial_mul_1 ( clk_i, fracta_i, fractb_i, signa_i, signb_i, start_i, 
        fract_o, sign_o, ready_o );
  input [23:0] fracta_i;
  input [23:0] fractb_i;
  output [47:0] fract_o;
  input clk_i, signa_i, signb_i, start_i;
  output sign_o, ready_o;
  wire   s_start_i, s_sign_o, s_ready_o, s_state, N2453, N2454, N2455, N2456,
         N2457, N2458, N2459, N2460, N2461, N2462, N2463, N2464, N2465, N2466,
         N2467, N2468, N2469, N2470, N2471, N2472, N2473, N2474, N2475, N2476,
         N2484, N2485, N2486, N2487, N2488, N2489, N2490, N2491, N2492, N2493,
         N2494, N2495, N2496, N2497, N2498, N2499, N2500, N2503, N2504, N2505,
         N2506, N2507, N2508, N2509, N2510, N2511, N2512, N2513, N2514, N2515,
         N2516, N2517, N2518, N2519, N2520, N2521, N2522, N2523, N2524, N2525,
         N2526, N2527, N2528, N2529, N2530, N2531, N2532, N2533, N2534, N2535,
         N2536, N2537, N2538, N2539, N2540, N2541, N2542, N2543, N2544, N2545,
         N2546, N2547, N2548, N2549, N2550, N2554, N2564, N2565, N2566, N2567,
         N2568, N2569, N2570, N2571, N2572, N2573, N2574, N2575, N2576, N2577,
         N2578, N2579, N2580, N2581, N2582, N2583, N2584, N2585, N2586, N2587,
         N2588, N2589, N2590, N2591, N2592, N2593, N2594, N2595, N2596, N2597,
         N2598, N2599, N2600, N2601, N2602, N2603, N2604, N2605, N2606, N2607,
         N2608, N2609, N2610, N2611, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274;
  wire   [47:0] s_fract_o;
  wire   [4:0] s_count;
  wire   SYNOPSYS_UNCONNECTED__0;

  DFFX1 \s_fracta_i_reg[23]  ( .D(fracta_i[23]), .CLK(clk_i), .Q(n252) );
  DFFX1 \s_fracta_i_reg[22]  ( .D(fracta_i[22]), .CLK(clk_i), .Q(n253) );
  DFFX1 \s_fracta_i_reg[21]  ( .D(fracta_i[21]), .CLK(clk_i), .Q(n254) );
  DFFX1 \s_fracta_i_reg[20]  ( .D(fracta_i[20]), .CLK(clk_i), .Q(n255) );
  DFFX1 \s_fracta_i_reg[19]  ( .D(fracta_i[19]), .CLK(clk_i), .Q(n257) );
  DFFX1 \s_fracta_i_reg[18]  ( .D(fracta_i[18]), .CLK(clk_i), .Q(n258) );
  DFFX1 \s_fracta_i_reg[17]  ( .D(fracta_i[17]), .CLK(clk_i), .Q(n259) );
  DFFX1 \s_fracta_i_reg[16]  ( .D(fracta_i[16]), .CLK(clk_i), .Q(n260) );
  DFFX1 \s_fracta_i_reg[15]  ( .D(fracta_i[15]), .CLK(clk_i), .Q(n261) );
  DFFX1 \s_fracta_i_reg[14]  ( .D(fracta_i[14]), .CLK(clk_i), .Q(n262) );
  DFFX1 \s_fracta_i_reg[13]  ( .D(fracta_i[13]), .CLK(clk_i), .Q(n263) );
  DFFX1 \s_fracta_i_reg[12]  ( .D(fracta_i[12]), .CLK(clk_i), .Q(n264) );
  DFFX1 \s_fracta_i_reg[11]  ( .D(fracta_i[11]), .CLK(clk_i), .Q(n265) );
  DFFX1 \s_fracta_i_reg[10]  ( .D(fracta_i[10]), .CLK(clk_i), .Q(n266) );
  DFFX1 \s_fracta_i_reg[9]  ( .D(fracta_i[9]), .CLK(clk_i), .Q(n244) );
  DFFX1 \s_fracta_i_reg[8]  ( .D(fracta_i[8]), .CLK(clk_i), .Q(n245) );
  DFFX1 \s_fracta_i_reg[7]  ( .D(fracta_i[7]), .CLK(clk_i), .Q(n246) );
  DFFX1 \s_fracta_i_reg[6]  ( .D(fracta_i[6]), .CLK(clk_i), .Q(n247) );
  DFFX1 \s_fracta_i_reg[5]  ( .D(fracta_i[5]), .CLK(clk_i), .Q(n248) );
  DFFX1 \s_fracta_i_reg[4]  ( .D(fracta_i[4]), .CLK(clk_i), .Q(n249) );
  DFFX1 \s_fracta_i_reg[3]  ( .D(fracta_i[3]), .CLK(clk_i), .Q(n250) );
  DFFX1 \s_fracta_i_reg[2]  ( .D(fracta_i[2]), .CLK(clk_i), .Q(n251) );
  DFFX1 \s_fracta_i_reg[1]  ( .D(fracta_i[1]), .CLK(clk_i), .Q(n256) );
  DFFX1 \s_fracta_i_reg[0]  ( .D(fracta_i[0]), .CLK(clk_i), .Q(n267) );
  DFFX1 \s_fractb_i_reg[23]  ( .D(fractb_i[23]), .CLK(clk_i), .QN(n79) );
  DFFX1 \s_fractb_i_reg[22]  ( .D(fractb_i[22]), .CLK(clk_i), .QN(n80) );
  DFFX1 \s_fractb_i_reg[21]  ( .D(fractb_i[21]), .CLK(clk_i), .QN(n75) );
  DFFX1 \s_fractb_i_reg[20]  ( .D(fractb_i[20]), .CLK(clk_i), .QN(n76) );
  DFFX1 \s_fractb_i_reg[19]  ( .D(fractb_i[19]), .CLK(clk_i), .QN(n81) );
  DFFX1 \s_fractb_i_reg[18]  ( .D(fractb_i[18]), .CLK(clk_i), .QN(n82) );
  DFFX1 \s_fractb_i_reg[17]  ( .D(fractb_i[17]), .CLK(clk_i), .QN(n77) );
  DFFX1 \s_fractb_i_reg[16]  ( .D(fractb_i[16]), .CLK(clk_i), .QN(n78) );
  DFFX1 \s_fractb_i_reg[15]  ( .D(fractb_i[15]), .CLK(clk_i), .QN(n71) );
  DFFX1 \s_fractb_i_reg[14]  ( .D(fractb_i[14]), .CLK(clk_i), .QN(n72) );
  DFFX1 \s_fractb_i_reg[13]  ( .D(fractb_i[13]), .CLK(clk_i), .QN(n67) );
  DFFX1 \s_fractb_i_reg[12]  ( .D(fractb_i[12]), .CLK(clk_i), .QN(n68) );
  DFFX1 \s_fractb_i_reg[11]  ( .D(fractb_i[11]), .CLK(clk_i), .QN(n73) );
  DFFX1 \s_fractb_i_reg[10]  ( .D(fractb_i[10]), .CLK(clk_i), .QN(n74) );
  DFFX1 \s_fractb_i_reg[9]  ( .D(fractb_i[9]), .CLK(clk_i), .QN(n69) );
  DFFX1 \s_fractb_i_reg[8]  ( .D(fractb_i[8]), .CLK(clk_i), .QN(n70) );
  DFFX1 \s_fractb_i_reg[7]  ( .D(fractb_i[7]), .CLK(clk_i), .QN(n63) );
  DFFX1 \s_fractb_i_reg[6]  ( .D(fractb_i[6]), .CLK(clk_i), .QN(n64) );
  DFFX1 \s_fractb_i_reg[5]  ( .D(fractb_i[5]), .CLK(clk_i), .QN(n59) );
  DFFX1 \s_fractb_i_reg[4]  ( .D(fractb_i[4]), .CLK(clk_i), .QN(n60) );
  DFFX1 \s_fractb_i_reg[3]  ( .D(fractb_i[3]), .CLK(clk_i), .QN(n65) );
  DFFX1 \s_fractb_i_reg[2]  ( .D(fractb_i[2]), .CLK(clk_i), .QN(n66) );
  DFFX1 \s_fractb_i_reg[1]  ( .D(fractb_i[1]), .CLK(clk_i), .QN(n61) );
  DFFX1 \s_fractb_i_reg[0]  ( .D(fractb_i[0]), .CLK(clk_i), .QN(n62) );
  DFFX1 s_start_i_reg ( .D(start_i), .CLK(clk_i), .Q(s_start_i), .QN(n5) );
  DFFX1 sign_o_reg ( .D(s_sign_o), .CLK(clk_i), .Q(sign_o) );
  DFFX1 \s_count_reg[0]  ( .D(n137), .CLK(clk_i), .Q(s_count[0]), .QN(n6) );
  DFFX1 s_state_reg ( .D(n136), .CLK(clk_i), .Q(s_state), .QN(n2) );
  DFFX1 s_ready_o_reg ( .D(n131), .CLK(clk_i), .Q(s_ready_o) );
  DFFX1 ready_o_reg ( .D(s_ready_o), .CLK(clk_i), .Q(ready_o) );
  DFFX1 \s_count_reg[1]  ( .D(n135), .CLK(clk_i), .Q(s_count[1]), .QN(n3) );
  DFFX1 \s_count_reg[2]  ( .D(n134), .CLK(clk_i), .Q(s_count[2]), .QN(n4) );
  DFFX1 \s_count_reg[3]  ( .D(n133), .CLK(clk_i), .Q(s_count[3]), .QN(n7) );
  DFFX1 \s_count_reg[4]  ( .D(n132), .CLK(clk_i), .Q(s_count[4]) );
  DFFX1 \s_fract_o_reg[0]  ( .D(n130), .CLK(clk_i), .Q(s_fract_o[0]) );
  DFFX1 \fract_o_reg[0]  ( .D(s_fract_o[0]), .CLK(clk_i), .Q(fract_o[0]) );
  DFFX1 \s_fract_o_reg[1]  ( .D(n129), .CLK(clk_i), .Q(s_fract_o[1]) );
  DFFX1 \fract_o_reg[1]  ( .D(s_fract_o[1]), .CLK(clk_i), .Q(fract_o[1]) );
  DFFX1 \s_fract_o_reg[2]  ( .D(n128), .CLK(clk_i), .Q(s_fract_o[2]) );
  DFFX1 \fract_o_reg[2]  ( .D(s_fract_o[2]), .CLK(clk_i), .Q(fract_o[2]) );
  DFFX1 \s_fract_o_reg[3]  ( .D(n127), .CLK(clk_i), .Q(s_fract_o[3]) );
  DFFX1 \fract_o_reg[3]  ( .D(s_fract_o[3]), .CLK(clk_i), .Q(fract_o[3]) );
  DFFX1 \s_fract_o_reg[4]  ( .D(n126), .CLK(clk_i), .Q(s_fract_o[4]) );
  DFFX1 \fract_o_reg[4]  ( .D(s_fract_o[4]), .CLK(clk_i), .Q(fract_o[4]) );
  DFFX1 \s_fract_o_reg[5]  ( .D(n125), .CLK(clk_i), .Q(s_fract_o[5]) );
  DFFX1 \fract_o_reg[5]  ( .D(s_fract_o[5]), .CLK(clk_i), .Q(fract_o[5]) );
  DFFX1 \s_fract_o_reg[6]  ( .D(n124), .CLK(clk_i), .Q(s_fract_o[6]) );
  DFFX1 \fract_o_reg[6]  ( .D(s_fract_o[6]), .CLK(clk_i), .Q(fract_o[6]) );
  DFFX1 \s_fract_o_reg[7]  ( .D(n123), .CLK(clk_i), .Q(s_fract_o[7]) );
  DFFX1 \fract_o_reg[7]  ( .D(s_fract_o[7]), .CLK(clk_i), .Q(fract_o[7]) );
  DFFX1 \s_fract_o_reg[8]  ( .D(n122), .CLK(clk_i), .Q(s_fract_o[8]) );
  DFFX1 \fract_o_reg[8]  ( .D(s_fract_o[8]), .CLK(clk_i), .Q(fract_o[8]) );
  DFFX1 \s_fract_o_reg[9]  ( .D(n121), .CLK(clk_i), .Q(s_fract_o[9]) );
  DFFX1 \fract_o_reg[9]  ( .D(s_fract_o[9]), .CLK(clk_i), .Q(fract_o[9]) );
  DFFX1 \s_fract_o_reg[10]  ( .D(n120), .CLK(clk_i), .Q(s_fract_o[10]) );
  DFFX1 \fract_o_reg[10]  ( .D(s_fract_o[10]), .CLK(clk_i), .Q(fract_o[10]) );
  DFFX1 \s_fract_o_reg[11]  ( .D(n119), .CLK(clk_i), .Q(s_fract_o[11]) );
  DFFX1 \fract_o_reg[11]  ( .D(s_fract_o[11]), .CLK(clk_i), .Q(fract_o[11]) );
  DFFX1 \s_fract_o_reg[12]  ( .D(n118), .CLK(clk_i), .Q(s_fract_o[12]) );
  DFFX1 \fract_o_reg[12]  ( .D(s_fract_o[12]), .CLK(clk_i), .Q(fract_o[12]) );
  DFFX1 \s_fract_o_reg[13]  ( .D(n117), .CLK(clk_i), .Q(s_fract_o[13]) );
  DFFX1 \fract_o_reg[13]  ( .D(s_fract_o[13]), .CLK(clk_i), .Q(fract_o[13]) );
  DFFX1 \s_fract_o_reg[14]  ( .D(n116), .CLK(clk_i), .Q(s_fract_o[14]) );
  DFFX1 \fract_o_reg[14]  ( .D(s_fract_o[14]), .CLK(clk_i), .Q(fract_o[14]) );
  DFFX1 \s_fract_o_reg[15]  ( .D(n115), .CLK(clk_i), .Q(s_fract_o[15]) );
  DFFX1 \fract_o_reg[15]  ( .D(s_fract_o[15]), .CLK(clk_i), .Q(fract_o[15]) );
  DFFX1 \s_fract_o_reg[16]  ( .D(n114), .CLK(clk_i), .Q(s_fract_o[16]) );
  DFFX1 \fract_o_reg[16]  ( .D(s_fract_o[16]), .CLK(clk_i), .Q(fract_o[16]) );
  DFFX1 \s_fract_o_reg[17]  ( .D(n113), .CLK(clk_i), .Q(s_fract_o[17]) );
  DFFX1 \fract_o_reg[17]  ( .D(s_fract_o[17]), .CLK(clk_i), .Q(fract_o[17]) );
  DFFX1 \s_fract_o_reg[18]  ( .D(n112), .CLK(clk_i), .Q(s_fract_o[18]) );
  DFFX1 \fract_o_reg[18]  ( .D(s_fract_o[18]), .CLK(clk_i), .Q(fract_o[18]) );
  DFFX1 \s_fract_o_reg[19]  ( .D(n111), .CLK(clk_i), .Q(s_fract_o[19]) );
  DFFX1 \fract_o_reg[19]  ( .D(s_fract_o[19]), .CLK(clk_i), .Q(fract_o[19]) );
  DFFX1 \s_fract_o_reg[20]  ( .D(n110), .CLK(clk_i), .Q(s_fract_o[20]) );
  DFFX1 \fract_o_reg[20]  ( .D(s_fract_o[20]), .CLK(clk_i), .Q(fract_o[20]) );
  DFFX1 \s_fract_o_reg[21]  ( .D(n109), .CLK(clk_i), .Q(s_fract_o[21]) );
  DFFX1 \fract_o_reg[21]  ( .D(s_fract_o[21]), .CLK(clk_i), .Q(fract_o[21]) );
  DFFX1 \s_fract_o_reg[22]  ( .D(n108), .CLK(clk_i), .Q(s_fract_o[22]) );
  DFFX1 \fract_o_reg[22]  ( .D(s_fract_o[22]), .CLK(clk_i), .Q(fract_o[22]) );
  DFFX1 \s_fract_o_reg[23]  ( .D(n107), .CLK(clk_i), .Q(s_fract_o[23]) );
  DFFX1 \fract_o_reg[23]  ( .D(s_fract_o[23]), .CLK(clk_i), .Q(fract_o[23]) );
  DFFX1 \s_fract_o_reg[24]  ( .D(n106), .CLK(clk_i), .Q(s_fract_o[24]) );
  DFFX1 \fract_o_reg[24]  ( .D(s_fract_o[24]), .CLK(clk_i), .Q(fract_o[24]) );
  DFFX1 \s_fract_o_reg[25]  ( .D(n105), .CLK(clk_i), .Q(s_fract_o[25]) );
  DFFX1 \fract_o_reg[25]  ( .D(s_fract_o[25]), .CLK(clk_i), .Q(fract_o[25]) );
  DFFX1 \s_fract_o_reg[26]  ( .D(n104), .CLK(clk_i), .Q(s_fract_o[26]) );
  DFFX1 \fract_o_reg[26]  ( .D(s_fract_o[26]), .CLK(clk_i), .Q(fract_o[26]) );
  DFFX1 \s_fract_o_reg[27]  ( .D(n103), .CLK(clk_i), .Q(s_fract_o[27]) );
  DFFX1 \fract_o_reg[27]  ( .D(s_fract_o[27]), .CLK(clk_i), .Q(fract_o[27]) );
  DFFX1 \s_fract_o_reg[28]  ( .D(n102), .CLK(clk_i), .Q(s_fract_o[28]) );
  DFFX1 \fract_o_reg[28]  ( .D(s_fract_o[28]), .CLK(clk_i), .Q(fract_o[28]) );
  DFFX1 \s_fract_o_reg[29]  ( .D(n101), .CLK(clk_i), .Q(s_fract_o[29]) );
  DFFX1 \fract_o_reg[29]  ( .D(s_fract_o[29]), .CLK(clk_i), .Q(fract_o[29]) );
  DFFX1 \s_fract_o_reg[30]  ( .D(n100), .CLK(clk_i), .Q(s_fract_o[30]) );
  DFFX1 \fract_o_reg[30]  ( .D(s_fract_o[30]), .CLK(clk_i), .Q(fract_o[30]) );
  DFFX1 \s_fract_o_reg[31]  ( .D(n99), .CLK(clk_i), .Q(s_fract_o[31]) );
  DFFX1 \fract_o_reg[31]  ( .D(s_fract_o[31]), .CLK(clk_i), .Q(fract_o[31]) );
  DFFX1 \s_fract_o_reg[32]  ( .D(n98), .CLK(clk_i), .Q(s_fract_o[32]) );
  DFFX1 \fract_o_reg[32]  ( .D(s_fract_o[32]), .CLK(clk_i), .Q(fract_o[32]) );
  DFFX1 \s_fract_o_reg[33]  ( .D(n97), .CLK(clk_i), .Q(s_fract_o[33]) );
  DFFX1 \fract_o_reg[33]  ( .D(s_fract_o[33]), .CLK(clk_i), .Q(fract_o[33]) );
  DFFX1 \s_fract_o_reg[34]  ( .D(n96), .CLK(clk_i), .Q(s_fract_o[34]) );
  DFFX1 \fract_o_reg[34]  ( .D(s_fract_o[34]), .CLK(clk_i), .Q(fract_o[34]) );
  DFFX1 \s_fract_o_reg[35]  ( .D(n95), .CLK(clk_i), .Q(s_fract_o[35]) );
  DFFX1 \fract_o_reg[35]  ( .D(s_fract_o[35]), .CLK(clk_i), .Q(fract_o[35]) );
  DFFX1 \s_fract_o_reg[36]  ( .D(n94), .CLK(clk_i), .Q(s_fract_o[36]) );
  DFFX1 \fract_o_reg[36]  ( .D(s_fract_o[36]), .CLK(clk_i), .Q(fract_o[36]) );
  DFFX1 \s_fract_o_reg[37]  ( .D(n93), .CLK(clk_i), .Q(s_fract_o[37]) );
  DFFX1 \fract_o_reg[37]  ( .D(s_fract_o[37]), .CLK(clk_i), .Q(fract_o[37]) );
  DFFX1 \s_fract_o_reg[38]  ( .D(n92), .CLK(clk_i), .Q(s_fract_o[38]) );
  DFFX1 \fract_o_reg[38]  ( .D(s_fract_o[38]), .CLK(clk_i), .Q(fract_o[38]) );
  DFFX1 \s_fract_o_reg[39]  ( .D(n91), .CLK(clk_i), .Q(s_fract_o[39]) );
  DFFX1 \fract_o_reg[39]  ( .D(s_fract_o[39]), .CLK(clk_i), .Q(fract_o[39]) );
  DFFX1 \s_fract_o_reg[40]  ( .D(n90), .CLK(clk_i), .Q(s_fract_o[40]) );
  DFFX1 \fract_o_reg[40]  ( .D(s_fract_o[40]), .CLK(clk_i), .Q(fract_o[40]) );
  DFFX1 \s_fract_o_reg[41]  ( .D(n89), .CLK(clk_i), .Q(s_fract_o[41]) );
  DFFX1 \fract_o_reg[41]  ( .D(s_fract_o[41]), .CLK(clk_i), .Q(fract_o[41]) );
  DFFX1 \s_fract_o_reg[42]  ( .D(n88), .CLK(clk_i), .Q(s_fract_o[42]) );
  DFFX1 \fract_o_reg[42]  ( .D(s_fract_o[42]), .CLK(clk_i), .Q(fract_o[42]) );
  DFFX1 \s_fract_o_reg[43]  ( .D(n87), .CLK(clk_i), .Q(s_fract_o[43]) );
  DFFX1 \fract_o_reg[43]  ( .D(s_fract_o[43]), .CLK(clk_i), .Q(fract_o[43]) );
  DFFX1 \s_fract_o_reg[44]  ( .D(n86), .CLK(clk_i), .Q(s_fract_o[44]) );
  DFFX1 \fract_o_reg[44]  ( .D(s_fract_o[44]), .CLK(clk_i), .Q(fract_o[44]) );
  DFFX1 \s_fract_o_reg[45]  ( .D(n85), .CLK(clk_i), .Q(s_fract_o[45]) );
  DFFX1 \fract_o_reg[45]  ( .D(s_fract_o[45]), .CLK(clk_i), .Q(fract_o[45]) );
  DFFX1 \s_fract_o_reg[46]  ( .D(n84), .CLK(clk_i), .Q(s_fract_o[46]) );
  DFFX1 \fract_o_reg[46]  ( .D(s_fract_o[46]), .CLK(clk_i), .Q(fract_o[46]) );
  DFFX1 \s_fract_o_reg[47]  ( .D(n83), .CLK(clk_i), .Q(s_fract_o[47]) );
  DFFX1 \fract_o_reg[47]  ( .D(s_fract_o[47]), .CLK(clk_i), .Q(fract_o[47]) );
  serial_mul_1_DW01_add_0 add_137_aco ( .A({N2500, N2499, N2498, N2497, N2496, 
        N2495, N2494, N2493, N2492, N2491, N2490, N2489, N2488, N2487, N2486, 
        N2485, N2484, n274, n270, n272, n268, n273, n269, n271, N2476, N2475, 
        N2474, N2473, N2472, N2471, N2470, N2469, N2468, N2467, N2466, N2465, 
        N2464, N2463, N2462, N2461, N2460, N2459, N2458, N2457, N2456, N2455, 
        N2454, N2453}), .B({N2611, N2610, N2609, N2608, N2607, N2606, N2605, 
        N2604, N2603, N2602, N2601, N2600, N2599, N2598, N2597, N2596, N2595, 
        N2594, N2593, N2592, N2591, N2590, N2589, N2588, N2587, N2586, N2585, 
        N2584, N2583, N2582, N2581, N2580, N2579, N2578, N2577, N2576, N2575, 
        N2574, N2573, N2572, N2571, N2570, N2569, N2568, N2567, N2566, N2565, 
        N2564}), .CI(1'b0), .SUM({N2550, N2549, N2548, N2547, N2546, N2545, 
        N2544, N2543, N2542, N2541, N2540, N2539, N2538, N2537, N2536, N2535, 
        N2534, N2533, N2532, N2531, N2530, N2529, N2528, N2527, N2526, N2525, 
        N2524, N2523, N2522, N2521, N2520, N2519, N2518, N2517, N2516, N2515, 
        N2514, N2513, N2512, N2511, N2510, N2509, N2508, N2507, N2506, N2505, 
        N2504, N2503}) );
  serial_mul_1_DW_mult_uns_1 mult_add_137_aco ( .a(s_fract_o), .b(N2554), 
        .product({SYNOPSYS_UNCONNECTED__0, N2611, N2610, N2609, N2608, N2607, 
        N2606, N2605, N2604, N2603, N2602, N2601, N2600, N2599, N2598, N2597, 
        N2596, N2595, N2594, N2593, N2592, N2591, N2590, N2589, N2588, N2587, 
        N2586, N2585, N2584, N2583, N2582, N2581, N2580, N2579, N2578, N2577, 
        N2576, N2575, N2574, N2573, N2572, N2571, N2570, N2569, N2568, N2567, 
        N2566, N2565, N2564}) );
  XOR2X1 U3 ( .IN1(signb_i), .IN2(signa_i), .Q(s_sign_o) );
  AO221X1 U4 ( .IN1(n8), .IN2(n9), .IN3(n10), .IN4(n11), .IN5(n12), .Q(n268)
         );
  AO22X1 U5 ( .IN1(n13), .IN2(n14), .IN3(n15), .IN4(n16), .Q(n12) );
  AO221X1 U7 ( .IN1(n17), .IN2(n8), .IN3(n18), .IN4(n10), .IN5(n19), .Q(n269)
         );
  AO22X1 U8 ( .IN1(n20), .IN2(n21), .IN3(n22), .IN4(n15), .Q(n19) );
  AO221X1 U9 ( .IN1(n23), .IN2(n8), .IN3(n24), .IN4(n10), .IN5(n25), .Q(n270)
         );
  AO22X1 U10 ( .IN1(n26), .IN2(n15), .IN3(n27), .IN4(n13), .Q(n25) );
  AO221X1 U11 ( .IN1(n28), .IN2(n15), .IN3(n29), .IN4(n21), .IN5(n30), .Q(n271) );
  AO22X1 U12 ( .IN1(n31), .IN2(n10), .IN3(n32), .IN4(n8), .Q(n30) );
  AO221X1 U13 ( .IN1(n33), .IN2(n8), .IN3(n34), .IN4(n10), .IN5(n35), .Q(n272)
         );
  AO22X1 U14 ( .IN1(n36), .IN2(n15), .IN3(n37), .IN4(n13), .Q(n35) );
  AO221X1 U15 ( .IN1(n38), .IN2(n15), .IN3(n39), .IN4(n21), .IN5(n40), .Q(n273) );
  AO22X1 U16 ( .IN1(n41), .IN2(n10), .IN3(n42), .IN4(n8), .Q(n40) );
  AO221X1 U17 ( .IN1(n43), .IN2(n13), .IN3(n44), .IN4(n15), .IN5(n45), .Q(n274) );
  AO22X1 U18 ( .IN1(n46), .IN2(n10), .IN3(n47), .IN4(n8), .Q(n45) );
  NOR2X0 U19 ( .IN1(n4), .IN2(n48), .QN(n13) );
  MUX21X1 U20 ( .IN1(s_fract_o[31]), .IN2(N2534), .S(s_state), .Q(n99) );
  MUX21X1 U21 ( .IN1(s_fract_o[32]), .IN2(N2535), .S(s_state), .Q(n98) );
  MUX21X1 U22 ( .IN1(s_fract_o[33]), .IN2(N2536), .S(s_state), .Q(n97) );
  MUX21X1 U23 ( .IN1(s_fract_o[34]), .IN2(N2537), .S(s_state), .Q(n96) );
  MUX21X1 U24 ( .IN1(s_fract_o[35]), .IN2(N2538), .S(s_state), .Q(n95) );
  MUX21X1 U25 ( .IN1(s_fract_o[36]), .IN2(N2539), .S(s_state), .Q(n94) );
  MUX21X1 U26 ( .IN1(s_fract_o[37]), .IN2(N2540), .S(s_state), .Q(n93) );
  MUX21X1 U27 ( .IN1(s_fract_o[38]), .IN2(N2541), .S(s_state), .Q(n92) );
  MUX21X1 U28 ( .IN1(s_fract_o[39]), .IN2(N2542), .S(s_state), .Q(n91) );
  MUX21X1 U29 ( .IN1(s_fract_o[40]), .IN2(N2543), .S(s_state), .Q(n90) );
  MUX21X1 U30 ( .IN1(s_fract_o[41]), .IN2(N2544), .S(s_state), .Q(n89) );
  MUX21X1 U31 ( .IN1(s_fract_o[42]), .IN2(N2545), .S(s_state), .Q(n88) );
  MUX21X1 U32 ( .IN1(s_fract_o[43]), .IN2(N2546), .S(s_state), .Q(n87) );
  MUX21X1 U33 ( .IN1(s_fract_o[44]), .IN2(N2547), .S(s_state), .Q(n86) );
  MUX21X1 U34 ( .IN1(s_fract_o[45]), .IN2(N2548), .S(s_state), .Q(n85) );
  MUX21X1 U35 ( .IN1(s_fract_o[46]), .IN2(N2549), .S(s_state), .Q(n84) );
  MUX21X1 U36 ( .IN1(s_fract_o[47]), .IN2(N2550), .S(s_state), .Q(n83) );
  MUX21X1 U37 ( .IN1(n49), .IN2(n50), .S(s_count[0]), .Q(n137) );
  AO21X1 U38 ( .IN1(s_state), .IN2(n51), .IN3(s_start_i), .Q(n136) );
  AO22X1 U39 ( .IN1(n50), .IN2(s_count[1]), .IN3(n49), .IN4(n52), .Q(n135) );
  NAND2X0 U40 ( .IN1(n53), .IN2(n54), .QN(n52) );
  MUX21X1 U41 ( .IN1(n55), .IN2(n56), .S(s_count[2]), .Q(n134) );
  AO21X1 U42 ( .IN1(n49), .IN2(n57), .IN3(n50), .Q(n56) );
  NOR2X0 U43 ( .IN1(n57), .IN2(n58), .QN(n55) );
  MUX21X1 U44 ( .IN1(n138), .IN2(n139), .S(s_count[3]), .Q(n133) );
  NOR2X0 U45 ( .IN1(n140), .IN2(n58), .QN(n138) );
  AO22X1 U46 ( .IN1(s_count[4]), .IN2(n139), .IN3(n141), .IN4(n49), .Q(n132)
         );
  AND2X1 U47 ( .IN1(n8), .IN2(n142), .Q(n141) );
  AO21X1 U48 ( .IN1(n49), .IN2(n140), .IN3(n50), .Q(n139) );
  INVX0 U49 ( .INP(n143), .ZN(n50) );
  INVX0 U50 ( .INP(n58), .ZN(n49) );
  NAND3X0 U51 ( .IN1(n51), .IN2(n5), .IN3(n143), .QN(n58) );
  NAND3X0 U52 ( .IN1(n5), .IN2(n2), .IN3(n51), .QN(n143) );
  AO22X1 U53 ( .IN1(n144), .IN2(n5), .IN3(s_ready_o), .IN4(n145), .Q(n131) );
  NAND2X0 U54 ( .IN1(n2), .IN2(n5), .QN(n145) );
  INVX0 U55 ( .INP(n51), .ZN(n144) );
  NAND2X0 U56 ( .IN1(n142), .IN2(n10), .QN(n51) );
  INVX0 U57 ( .INP(n140), .ZN(n142) );
  NAND2X0 U58 ( .IN1(s_count[2]), .IN2(n146), .QN(n140) );
  MUX21X1 U59 ( .IN1(s_fract_o[0]), .IN2(N2503), .S(s_state), .Q(n130) );
  MUX21X1 U60 ( .IN1(s_fract_o[1]), .IN2(N2504), .S(s_state), .Q(n129) );
  MUX21X1 U61 ( .IN1(s_fract_o[2]), .IN2(N2505), .S(s_state), .Q(n128) );
  MUX21X1 U62 ( .IN1(s_fract_o[3]), .IN2(N2506), .S(s_state), .Q(n127) );
  MUX21X1 U63 ( .IN1(s_fract_o[4]), .IN2(N2507), .S(s_state), .Q(n126) );
  MUX21X1 U64 ( .IN1(s_fract_o[5]), .IN2(N2508), .S(s_state), .Q(n125) );
  MUX21X1 U65 ( .IN1(s_fract_o[6]), .IN2(N2509), .S(s_state), .Q(n124) );
  MUX21X1 U66 ( .IN1(s_fract_o[7]), .IN2(N2510), .S(s_state), .Q(n123) );
  MUX21X1 U67 ( .IN1(s_fract_o[8]), .IN2(N2511), .S(s_state), .Q(n122) );
  MUX21X1 U68 ( .IN1(s_fract_o[9]), .IN2(N2512), .S(s_state), .Q(n121) );
  MUX21X1 U69 ( .IN1(s_fract_o[10]), .IN2(N2513), .S(s_state), .Q(n120) );
  MUX21X1 U70 ( .IN1(s_fract_o[11]), .IN2(N2514), .S(s_state), .Q(n119) );
  MUX21X1 U71 ( .IN1(s_fract_o[12]), .IN2(N2515), .S(s_state), .Q(n118) );
  MUX21X1 U72 ( .IN1(s_fract_o[13]), .IN2(N2516), .S(s_state), .Q(n117) );
  MUX21X1 U73 ( .IN1(s_fract_o[14]), .IN2(N2517), .S(s_state), .Q(n116) );
  MUX21X1 U74 ( .IN1(s_fract_o[15]), .IN2(N2518), .S(s_state), .Q(n115) );
  MUX21X1 U75 ( .IN1(s_fract_o[16]), .IN2(N2519), .S(s_state), .Q(n114) );
  MUX21X1 U76 ( .IN1(s_fract_o[17]), .IN2(N2520), .S(s_state), .Q(n113) );
  MUX21X1 U77 ( .IN1(s_fract_o[18]), .IN2(N2521), .S(s_state), .Q(n112) );
  MUX21X1 U78 ( .IN1(s_fract_o[19]), .IN2(N2522), .S(s_state), .Q(n111) );
  MUX21X1 U79 ( .IN1(s_fract_o[20]), .IN2(N2523), .S(s_state), .Q(n110) );
  MUX21X1 U80 ( .IN1(s_fract_o[21]), .IN2(N2524), .S(s_state), .Q(n109) );
  MUX21X1 U81 ( .IN1(s_fract_o[22]), .IN2(N2525), .S(s_state), .Q(n108) );
  MUX21X1 U82 ( .IN1(s_fract_o[23]), .IN2(N2526), .S(s_state), .Q(n107) );
  MUX21X1 U83 ( .IN1(s_fract_o[24]), .IN2(N2527), .S(s_state), .Q(n106) );
  MUX21X1 U84 ( .IN1(s_fract_o[25]), .IN2(N2528), .S(s_state), .Q(n105) );
  MUX21X1 U85 ( .IN1(s_fract_o[26]), .IN2(N2529), .S(s_state), .Q(n104) );
  MUX21X1 U86 ( .IN1(s_fract_o[27]), .IN2(N2530), .S(s_state), .Q(n103) );
  MUX21X1 U87 ( .IN1(s_fract_o[28]), .IN2(N2531), .S(s_state), .Q(n102) );
  MUX21X1 U88 ( .IN1(s_fract_o[29]), .IN2(N2532), .S(s_state), .Q(n101) );
  MUX21X1 U89 ( .IN1(s_fract_o[30]), .IN2(N2533), .S(s_state), .Q(n100) );
  NAND3X0 U90 ( .IN1(n147), .IN2(n4), .IN3(n21), .QN(N2554) );
  AND2X1 U91 ( .IN1(n148), .IN2(n15), .Q(N2500) );
  AO22X1 U92 ( .IN1(n47), .IN2(n15), .IN3(n149), .IN4(n43), .Q(N2499) );
  AO22X1 U93 ( .IN1(n23), .IN2(n15), .IN3(n149), .IN4(n27), .Q(N2498) );
  AO22X1 U94 ( .IN1(n33), .IN2(n15), .IN3(n149), .IN4(n37), .Q(N2497) );
  AO22X1 U95 ( .IN1(n15), .IN2(n9), .IN3(n149), .IN4(n14), .Q(N2496) );
  AND2X1 U96 ( .IN1(n10), .IN2(s_count[2]), .Q(n149) );
  AO22X1 U97 ( .IN1(n39), .IN2(n10), .IN3(n42), .IN4(n15), .Q(N2495) );
  AO22X1 U98 ( .IN1(n20), .IN2(n10), .IN3(n17), .IN4(n15), .Q(N2494) );
  AO22X1 U99 ( .IN1(n29), .IN2(n10), .IN3(n32), .IN4(n15), .Q(N2493) );
  AO22X1 U100 ( .IN1(n10), .IN2(n148), .IN3(n15), .IN4(n150), .Q(N2492) );
  AO222X1 U101 ( .IN1(n46), .IN2(n15), .IN3(n151), .IN4(n43), .IN5(n47), .IN6(
        n10), .Q(N2491) );
  INVX0 U102 ( .INP(n152), .ZN(n43) );
  AO222X1 U103 ( .IN1(n24), .IN2(n15), .IN3(n151), .IN4(n27), .IN5(n23), .IN6(
        n10), .Q(N2490) );
  INVX0 U104 ( .INP(n153), .ZN(n27) );
  AO222X1 U105 ( .IN1(n34), .IN2(n15), .IN3(n151), .IN4(n37), .IN5(n33), .IN6(
        n10), .Q(N2489) );
  INVX0 U106 ( .INP(n154), .ZN(n37) );
  AO222X1 U107 ( .IN1(n15), .IN2(n11), .IN3(n151), .IN4(n14), .IN5(n10), .IN6(
        n9), .Q(N2488) );
  AND2X1 U108 ( .IN1(s_count[2]), .IN2(n8), .Q(n151) );
  AO222X1 U109 ( .IN1(n39), .IN2(n8), .IN3(n41), .IN4(n15), .IN5(n42), .IN6(
        n10), .Q(N2487) );
  AOI222X1 U110 ( .IN1(n155), .IN2(n156), .IN3(n157), .IN4(n158), .IN5(n152), 
        .IN6(n4), .QN(n39) );
  NAND3X0 U111 ( .IN1(n159), .IN2(n146), .IN3(n252), .QN(n152) );
  AO222X1 U112 ( .IN1(n20), .IN2(n8), .IN3(n18), .IN4(n15), .IN5(n17), .IN6(
        n10), .Q(N2486) );
  AOI222X1 U113 ( .IN1(n160), .IN2(n156), .IN3(n161), .IN4(n158), .IN5(n153), 
        .IN6(n4), .QN(n20) );
  NAND3X0 U114 ( .IN1(n159), .IN2(s_count[1]), .IN3(n162), .QN(n153) );
  MUX21X1 U115 ( .IN1(n252), .IN2(n253), .S(s_count[0]), .Q(n162) );
  AO222X1 U116 ( .IN1(n29), .IN2(n8), .IN3(n31), .IN4(n15), .IN5(n32), .IN6(
        n10), .Q(N2485) );
  AOI222X1 U117 ( .IN1(n163), .IN2(n156), .IN3(n155), .IN4(n158), .IN5(n154), 
        .IN6(n4), .QN(n29) );
  NAND2X0 U118 ( .IN1(n164), .IN2(n165), .QN(n154) );
  MUX21X1 U119 ( .IN1(n166), .IN2(n167), .S(s_count[1]), .Q(n164) );
  AND2X1 U120 ( .IN1(n159), .IN2(n252), .Q(n166) );
  AO222X1 U121 ( .IN1(n8), .IN2(n148), .IN3(n15), .IN4(n168), .IN5(n10), .IN6(
        n150), .Q(N2484) );
  AND2X1 U122 ( .IN1(s_count[4]), .IN2(s_count[3]), .Q(n15) );
  AO222X1 U123 ( .IN1(n8), .IN2(n150), .IN3(n21), .IN4(n148), .IN5(n10), .IN6(
        n168), .Q(N2476) );
  AO222X1 U124 ( .IN1(n156), .IN2(n169), .IN3(n158), .IN4(n170), .IN5(n14), 
        .IN6(n4), .Q(n148) );
  AO22X1 U125 ( .IN1(s_count[1]), .IN2(n171), .IN3(n159), .IN4(n172), .Q(n14)
         );
  AO22X1 U126 ( .IN1(n253), .IN2(n173), .IN3(n252), .IN4(n147), .Q(n172) );
  INVX0 U127 ( .INP(n53), .ZN(n173) );
  AO222X1 U128 ( .IN1(n46), .IN2(n8), .IN3(n47), .IN4(n21), .IN5(n44), .IN6(
        n10), .Q(N2475) );
  AOI221X1 U129 ( .IN1(n163), .IN2(n158), .IN3(n174), .IN4(n156), .IN5(n175), 
        .QN(n47) );
  AO22X1 U130 ( .IN1(n155), .IN2(n176), .IN3(n157), .IN4(n177), .Q(n175) );
  INVX0 U131 ( .INP(n167), .ZN(n157) );
  AO22X1 U132 ( .IN1(n254), .IN2(n178), .IN3(n253), .IN4(n179), .Q(n167) );
  AO222X1 U133 ( .IN1(n24), .IN2(n8), .IN3(n23), .IN4(n21), .IN5(n26), .IN6(
        n10), .Q(N2474) );
  AOI221X1 U134 ( .IN1(n180), .IN2(n158), .IN3(n181), .IN4(n156), .IN5(n182), 
        .QN(n23) );
  AO22X1 U135 ( .IN1(n160), .IN2(n176), .IN3(n161), .IN4(n177), .Q(n182) );
  INVX0 U136 ( .INP(n171), .ZN(n161) );
  AO22X1 U137 ( .IN1(n255), .IN2(n178), .IN3(n254), .IN4(n179), .Q(n171) );
  INVX0 U138 ( .INP(n170), .ZN(n160) );
  AO222X1 U139 ( .IN1(n34), .IN2(n8), .IN3(n33), .IN4(n21), .IN5(n36), .IN6(
        n10), .Q(N2473) );
  AOI221X1 U140 ( .IN1(n174), .IN2(n158), .IN3(n183), .IN4(n156), .IN5(n184), 
        .QN(n33) );
  AO22X1 U141 ( .IN1(n163), .IN2(n176), .IN3(n155), .IN4(n177), .Q(n184) );
  AOI22X1 U142 ( .IN1(n257), .IN2(n178), .IN3(n255), .IN4(n179), .QN(n155) );
  AO222X1 U143 ( .IN1(n21), .IN2(n9), .IN3(n10), .IN4(n16), .IN5(n8), .IN6(n11), .Q(N2472) );
  AO221X1 U144 ( .IN1(n158), .IN2(n185), .IN3(n156), .IN4(n186), .IN5(n187), 
        .Q(n9) );
  AO22X1 U145 ( .IN1(n176), .IN2(n169), .IN3(n177), .IN4(n170), .Q(n187) );
  AO22X1 U146 ( .IN1(n258), .IN2(n178), .IN3(n257), .IN4(n179), .Q(n170) );
  AO222X1 U147 ( .IN1(n42), .IN2(n21), .IN3(n38), .IN4(n10), .IN5(n41), .IN6(
        n8), .Q(N2471) );
  AOI221X1 U148 ( .IN1(n183), .IN2(n158), .IN3(n188), .IN4(n156), .IN5(n189), 
        .QN(n42) );
  AO22X1 U149 ( .IN1(n174), .IN2(n176), .IN3(n163), .IN4(n177), .Q(n189) );
  AOI22X1 U150 ( .IN1(n259), .IN2(n178), .IN3(n258), .IN4(n179), .QN(n163) );
  AO222X1 U151 ( .IN1(n17), .IN2(n21), .IN3(n22), .IN4(n10), .IN5(n18), .IN6(
        n8), .Q(N2470) );
  AOI221X1 U152 ( .IN1(n190), .IN2(n158), .IN3(n191), .IN4(n156), .IN5(n192), 
        .QN(n17) );
  AO22X1 U153 ( .IN1(n181), .IN2(n176), .IN3(n180), .IN4(n177), .Q(n192) );
  INVX0 U154 ( .INP(n169), .ZN(n180) );
  AO22X1 U155 ( .IN1(n260), .IN2(n178), .IN3(n259), .IN4(n179), .Q(n169) );
  INVX0 U156 ( .INP(n185), .ZN(n181) );
  AO222X1 U157 ( .IN1(n32), .IN2(n21), .IN3(n28), .IN4(n10), .IN5(n31), .IN6(
        n8), .Q(N2469) );
  AND2X1 U158 ( .IN1(s_count[4]), .IN2(n7), .Q(n10) );
  AOI221X1 U159 ( .IN1(n188), .IN2(n158), .IN3(n193), .IN4(n156), .IN5(n194), 
        .QN(n32) );
  AO22X1 U160 ( .IN1(n183), .IN2(n176), .IN3(n174), .IN4(n177), .Q(n194) );
  AOI22X1 U161 ( .IN1(n261), .IN2(n178), .IN3(n260), .IN4(n179), .QN(n174) );
  AO22X1 U162 ( .IN1(n8), .IN2(n168), .IN3(n21), .IN4(n150), .Q(N2468) );
  AO221X1 U163 ( .IN1(n158), .IN2(n195), .IN3(n156), .IN4(n196), .IN5(n197), 
        .Q(n150) );
  AO22X1 U164 ( .IN1(n176), .IN2(n186), .IN3(n177), .IN4(n185), .Q(n197) );
  AO22X1 U165 ( .IN1(n262), .IN2(n178), .IN3(n261), .IN4(n179), .Q(n185) );
  AO22X1 U166 ( .IN1(n44), .IN2(n8), .IN3(n46), .IN4(n21), .Q(N2467) );
  AOI221X1 U167 ( .IN1(n193), .IN2(n158), .IN3(n198), .IN4(n156), .IN5(n199), 
        .QN(n46) );
  AO22X1 U168 ( .IN1(n188), .IN2(n176), .IN3(n183), .IN4(n177), .Q(n199) );
  AOI22X1 U169 ( .IN1(n263), .IN2(n178), .IN3(n262), .IN4(n179), .QN(n183) );
  INVX0 U170 ( .INP(n200), .ZN(n44) );
  AO22X1 U171 ( .IN1(n26), .IN2(n8), .IN3(n24), .IN4(n21), .Q(N2466) );
  AOI221X1 U172 ( .IN1(n201), .IN2(n158), .IN3(n202), .IN4(n156), .IN5(n203), 
        .QN(n24) );
  AO22X1 U173 ( .IN1(n191), .IN2(n176), .IN3(n190), .IN4(n177), .Q(n203) );
  INVX0 U174 ( .INP(n186), .ZN(n190) );
  AO22X1 U175 ( .IN1(n264), .IN2(n178), .IN3(n263), .IN4(n179), .Q(n186) );
  INVX0 U176 ( .INP(n195), .ZN(n191) );
  INVX0 U177 ( .INP(n204), .ZN(n26) );
  AO22X1 U178 ( .IN1(n36), .IN2(n8), .IN3(n34), .IN4(n21), .Q(N2465) );
  AOI221X1 U179 ( .IN1(n198), .IN2(n158), .IN3(n205), .IN4(n156), .IN5(n206), 
        .QN(n34) );
  AO22X1 U180 ( .IN1(n193), .IN2(n176), .IN3(n188), .IN4(n177), .Q(n206) );
  AOI22X1 U181 ( .IN1(n265), .IN2(n178), .IN3(n264), .IN4(n179), .QN(n188) );
  INVX0 U182 ( .INP(n207), .ZN(n36) );
  AO22X1 U183 ( .IN1(n21), .IN2(n11), .IN3(n16), .IN4(n8), .Q(N2464) );
  INVX0 U184 ( .INP(n208), .ZN(n16) );
  AO221X1 U185 ( .IN1(n158), .IN2(n209), .IN3(n156), .IN4(n210), .IN5(n211), 
        .Q(n11) );
  AO22X1 U186 ( .IN1(n176), .IN2(n196), .IN3(n177), .IN4(n195), .Q(n211) );
  AO22X1 U187 ( .IN1(n266), .IN2(n178), .IN3(n265), .IN4(n179), .Q(n195) );
  AO22X1 U188 ( .IN1(n41), .IN2(n21), .IN3(n38), .IN4(n8), .Q(N2463) );
  AOI221X1 U189 ( .IN1(n193), .IN2(n177), .IN3(n198), .IN4(n176), .IN5(n212), 
        .QN(n41) );
  AO22X1 U190 ( .IN1(n213), .IN2(n156), .IN3(n205), .IN4(n158), .Q(n212) );
  AOI22X1 U191 ( .IN1(n244), .IN2(n178), .IN3(n266), .IN4(n179), .QN(n193) );
  AO22X1 U192 ( .IN1(n18), .IN2(n21), .IN3(n22), .IN4(n8), .Q(N2462) );
  AOI221X1 U193 ( .IN1(n201), .IN2(n177), .IN3(n202), .IN4(n176), .IN5(n214), 
        .QN(n18) );
  AO22X1 U194 ( .IN1(n215), .IN2(n156), .IN3(n216), .IN4(n158), .Q(n214) );
  INVX0 U195 ( .INP(n209), .ZN(n202) );
  INVX0 U196 ( .INP(n196), .ZN(n201) );
  AO22X1 U197 ( .IN1(n245), .IN2(n178), .IN3(n244), .IN4(n179), .Q(n196) );
  AO22X1 U198 ( .IN1(n31), .IN2(n21), .IN3(n28), .IN4(n8), .Q(N2461) );
  AOI221X1 U199 ( .IN1(n198), .IN2(n177), .IN3(n205), .IN4(n176), .IN5(n217), 
        .QN(n31) );
  AO22X1 U200 ( .IN1(n218), .IN2(n156), .IN3(n213), .IN4(n158), .Q(n217) );
  NOR2X0 U201 ( .IN1(n4), .IN2(s_count[1]), .QN(n158) );
  NOR2X0 U202 ( .IN1(n4), .IN2(n3), .QN(n156) );
  AOI22X1 U203 ( .IN1(n246), .IN2(n178), .IN3(n245), .IN4(n179), .QN(n198) );
  AND2X1 U204 ( .IN1(n168), .IN2(n21), .Q(N2460) );
  AO222X1 U205 ( .IN1(n176), .IN2(n210), .IN3(n177), .IN4(n209), .IN5(
        s_count[2]), .IN6(n219), .Q(n168) );
  AO22X1 U206 ( .IN1(n247), .IN2(n178), .IN3(n246), .IN4(n179), .Q(n209) );
  NOR2X0 U207 ( .IN1(n48), .IN2(n200), .QN(N2459) );
  AO222X1 U208 ( .IN1(n213), .IN2(n176), .IN3(n205), .IN4(n177), .IN5(
        s_count[2]), .IN6(n220), .Q(n200) );
  AOI22X1 U209 ( .IN1(n248), .IN2(n178), .IN3(n247), .IN4(n179), .QN(n205) );
  NOR2X0 U210 ( .IN1(n48), .IN2(n204), .QN(N2458) );
  AO222X1 U211 ( .IN1(n215), .IN2(n176), .IN3(n216), .IN4(n177), .IN5(
        s_count[2]), .IN6(n221), .Q(n204) );
  INVX0 U212 ( .INP(n210), .ZN(n216) );
  AO22X1 U213 ( .IN1(n249), .IN2(n178), .IN3(n248), .IN4(n179), .Q(n210) );
  INVX0 U214 ( .INP(n222), .ZN(n215) );
  NOR2X0 U215 ( .IN1(n48), .IN2(n207), .QN(N2457) );
  AO222X1 U216 ( .IN1(n218), .IN2(n176), .IN3(n213), .IN4(n177), .IN5(
        s_count[2]), .IN6(n223), .Q(n207) );
  NOR2X0 U217 ( .IN1(s_count[1]), .IN2(s_count[2]), .QN(n177) );
  AOI22X1 U218 ( .IN1(n178), .IN2(n250), .IN3(n249), .IN4(n179), .QN(n213) );
  NOR2X0 U219 ( .IN1(n3), .IN2(s_count[2]), .QN(n176) );
  INVX0 U220 ( .INP(n224), .ZN(n218) );
  NOR2X0 U221 ( .IN1(n48), .IN2(n208), .QN(N2456) );
  NAND2X0 U222 ( .IN1(n219), .IN2(n4), .QN(n208) );
  AO222X1 U223 ( .IN1(n225), .IN2(n146), .IN3(n226), .IN4(n256), .IN5(n222), 
        .IN6(n3), .Q(n219) );
  AO22X1 U224 ( .IN1(n251), .IN2(n178), .IN3(n250), .IN4(n179), .Q(n222) );
  NOR2X0 U225 ( .IN1(n54), .IN2(n227), .QN(n226) );
  INVX0 U226 ( .INP(n57), .ZN(n146) );
  INVX0 U227 ( .INP(n21), .ZN(n48) );
  AND2X1 U228 ( .IN1(n21), .IN2(n38), .Q(N2455) );
  NOR2X0 U229 ( .IN1(n220), .IN2(s_count[2]), .QN(n38) );
  NAND2X0 U230 ( .IN1(n228), .IN2(n57), .QN(n220) );
  MUX21X1 U231 ( .IN1(n224), .IN2(n225), .S(s_count[1]), .Q(n228) );
  AO22X1 U232 ( .IN1(n178), .IN2(n256), .IN3(n251), .IN4(n179), .Q(n224) );
  NOR2X0 U233 ( .IN1(n227), .IN2(s_count[0]), .QN(n179) );
  NOR2X0 U234 ( .IN1(n227), .IN2(n6), .QN(n178) );
  INVX0 U235 ( .INP(n159), .ZN(n227) );
  AND2X1 U236 ( .IN1(n21), .IN2(n22), .Q(N2454) );
  NOR2X0 U237 ( .IN1(n221), .IN2(s_count[2]), .QN(n22) );
  NAND3X0 U238 ( .IN1(n159), .IN2(n3), .IN3(n229), .QN(n221) );
  MUX21X1 U239 ( .IN1(n256), .IN2(n267), .S(s_count[0]), .Q(n229) );
  AND2X1 U240 ( .IN1(n21), .IN2(n28), .Q(N2453) );
  NOR2X0 U241 ( .IN1(n223), .IN2(s_count[2]), .QN(n28) );
  NAND2X0 U242 ( .IN1(n225), .IN2(n147), .QN(n223) );
  INVX0 U243 ( .INP(n165), .ZN(n147) );
  AND2X1 U244 ( .IN1(n267), .IN2(n159), .Q(n225) );
  MUX21X1 U245 ( .IN1(n230), .IN2(n231), .S(s_count[2]), .Q(n159) );
  AOI222X1 U246 ( .IN1(n232), .IN2(n233), .IN3(n234), .IN4(n235), .IN5(n236), 
        .IN6(n237), .QN(n231) );
  OA222X1 U247 ( .IN1(n53), .IN2(n67), .IN3(n54), .IN4(n72), .IN5(n165), .IN6(
        n68), .Q(n237) );
  OA21X1 U248 ( .IN1(n57), .IN2(n71), .IN3(n8), .Q(n236) );
  OA222X1 U249 ( .IN1(n53), .IN2(n75), .IN3(n54), .IN4(n80), .IN5(n165), .IN6(
        n76), .Q(n235) );
  OA21X1 U250 ( .IN1(n57), .IN2(n79), .IN3(s_count[4]), .Q(n234) );
  OA222X1 U251 ( .IN1(n53), .IN2(n59), .IN3(n54), .IN4(n64), .IN5(n165), .IN6(
        n60), .Q(n233) );
  OA21X1 U252 ( .IN1(n57), .IN2(n63), .IN3(n21), .Q(n232) );
  AOI222X1 U253 ( .IN1(n238), .IN2(n239), .IN3(n240), .IN4(n241), .IN5(n242), 
        .IN6(n243), .QN(n230) );
  OA222X1 U254 ( .IN1(n53), .IN2(n69), .IN3(n54), .IN4(n74), .IN5(n165), .IN6(
        n70), .Q(n243) );
  OA21X1 U255 ( .IN1(n57), .IN2(n73), .IN3(n8), .Q(n242) );
  NOR2X0 U256 ( .IN1(n7), .IN2(s_count[4]), .QN(n8) );
  OA222X1 U257 ( .IN1(n53), .IN2(n77), .IN3(n54), .IN4(n82), .IN5(n165), .IN6(
        n78), .Q(n241) );
  OA21X1 U258 ( .IN1(n57), .IN2(n81), .IN3(s_count[4]), .Q(n240) );
  OA222X1 U259 ( .IN1(n53), .IN2(n61), .IN3(n54), .IN4(n66), .IN5(n165), .IN6(
        n62), .Q(n239) );
  NAND2X0 U260 ( .IN1(n6), .IN2(n3), .QN(n165) );
  NAND2X0 U261 ( .IN1(s_count[1]), .IN2(n6), .QN(n54) );
  NAND2X0 U262 ( .IN1(s_count[0]), .IN2(n3), .QN(n53) );
  OA21X1 U263 ( .IN1(n57), .IN2(n65), .IN3(n21), .Q(n238) );
  NAND2X0 U264 ( .IN1(s_count[0]), .IN2(s_count[1]), .QN(n57) );
  NOR2X0 U265 ( .IN1(s_count[3]), .IN2(s_count[4]), .QN(n21) );
endmodule


module post_norm_mul_1_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI, ADD_SUB;
  output CO;

  wire   [7:0] carry;
  wire   [6:0] B_AS;
  assign carry[0] = ADD_SUB;

  FADDX1 U1_5 ( .A(A[5]), .B(B_AS[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FADDX1 U1_4 ( .A(A[4]), .B(B_AS[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FADDX1 U1_3 ( .A(A[3]), .B(B_AS[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FADDX1 U1_2 ( .A(A[2]), .B(B_AS[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FADDX1 U1_1 ( .A(A[1]), .B(B_AS[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FADDX1 U1_0 ( .A(A[0]), .B(B_AS[0]), .CI(carry[0]), .CO(carry[1]), .S(SUM[0]) );
  XOR2X1 U1 ( .IN1(B_AS[6]), .IN2(carry[6]), .Q(SUM[6]) );
  XOR2X1 U2 ( .IN1(B[6]), .IN2(carry[0]), .Q(B_AS[6]) );
  XOR2X1 U3 ( .IN1(B[5]), .IN2(carry[0]), .Q(B_AS[5]) );
  XOR2X1 U4 ( .IN1(B[4]), .IN2(carry[0]), .Q(B_AS[4]) );
  XOR2X1 U5 ( .IN1(B[3]), .IN2(carry[0]), .Q(B_AS[3]) );
  XOR2X1 U6 ( .IN1(B[2]), .IN2(carry[0]), .Q(B_AS[2]) );
  XOR2X1 U7 ( .IN1(B[1]), .IN2(carry[0]), .Q(B_AS[1]) );
  XOR2X1 U8 ( .IN1(B[0]), .IN2(carry[0]), .Q(B_AS[0]) );
endmodule


module post_norm_mul_1_DW01_inc_0 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[8]), .IN2(A[8]), .Q(SUM[8]) );
endmodule


module post_norm_mul_1_DW01_inc_1 ( A, SUM );
  input [24:0] A;
  output [24:0] SUM;

  wire   [24:2] carry;

  HADDX1 U1_1_23 ( .A0(A[23]), .B0(carry[23]), .C1(carry[24]), .SO(SUM[23]) );
  HADDX1 U1_1_22 ( .A0(A[22]), .B0(carry[22]), .C1(carry[23]), .SO(SUM[22]) );
  HADDX1 U1_1_21 ( .A0(A[21]), .B0(carry[21]), .C1(carry[22]), .SO(SUM[21]) );
  HADDX1 U1_1_20 ( .A0(A[20]), .B0(carry[20]), .C1(carry[21]), .SO(SUM[20]) );
  HADDX1 U1_1_19 ( .A0(A[19]), .B0(carry[19]), .C1(carry[20]), .SO(SUM[19]) );
  HADDX1 U1_1_18 ( .A0(A[18]), .B0(carry[18]), .C1(carry[19]), .SO(SUM[18]) );
  HADDX1 U1_1_17 ( .A0(A[17]), .B0(carry[17]), .C1(carry[18]), .SO(SUM[17]) );
  HADDX1 U1_1_16 ( .A0(A[16]), .B0(carry[16]), .C1(carry[17]), .SO(SUM[16]) );
  HADDX1 U1_1_15 ( .A0(A[15]), .B0(carry[15]), .C1(carry[16]), .SO(SUM[15]) );
  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[24]), .IN2(A[24]), .Q(SUM[24]) );
endmodule


module post_norm_mul_1_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [10:0] carry;

  FADDX1 U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  FADDX1 U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVX0 U1 ( .INP(A[7]), .ZN(n5) );
  INVX0 U2 ( .INP(A[6]), .ZN(n3) );
  INVX0 U3 ( .INP(carry[6]), .ZN(n4) );
  XNOR2X1 U4 ( .IN1(carry[9]), .IN2(A[9]), .Q(DIFF[9]) );
  NAND2X1 U5 ( .IN1(n6), .IN2(n1), .QN(carry[9]) );
  AND2X1 U6 ( .IN1(n5), .IN2(n2), .Q(n1) );
  AND2X1 U7 ( .IN1(n3), .IN2(n4), .Q(n2) );
  INVX0 U8 ( .INP(A[8]), .ZN(n6) );
  NAND2X1 U9 ( .IN1(n7), .IN2(B[0]), .QN(carry[1]) );
  INVX0 U10 ( .INP(B[1]), .ZN(n12) );
  INVX0 U11 ( .INP(A[0]), .ZN(n7) );
  INVX0 U12 ( .INP(B[2]), .ZN(n11) );
  INVX0 U13 ( .INP(B[3]), .ZN(n10) );
  INVX0 U14 ( .INP(B[4]), .ZN(n9) );
  INVX0 U15 ( .INP(B[5]), .ZN(n8) );
  XOR2X1 U16 ( .IN1(n4), .IN2(A[6]), .Q(DIFF[6]) );
  XOR2X1 U17 ( .IN1(n2), .IN2(A[7]), .Q(DIFF[7]) );
  XOR2X1 U18 ( .IN1(n1), .IN2(A[8]), .Q(DIFF[8]) );
  XOR2X1 U19 ( .IN1(B[0]), .IN2(A[0]), .Q(DIFF[0]) );
endmodule


module post_norm_mul_1 ( clk_i, opa_i, opb_i, exp_10_i, fract_48_i, sign_i, 
        rmode_i, output_o, ine_o );
  input [31:0] opa_i;
  input [31:0] opb_i;
  input [9:0] exp_10_i;
  input [47:0] fract_48_i;
  input [1:0] rmode_i;
  output [31:0] output_o;
  input clk_i, sign_i;
  output ine_o;
  wire   \s_rmode_i[1] , N1632, N1633, N1634, N1635, N1636, N1637, N2974,
         N2975, N2976, N2977, N2978, N2979, N3005, N3019, N3020, N3021, N3022,
         N3023, N3024, N3065, N3066, N3067, N3068, N3069, N3070, N3071, N3072,
         N3073, N3074, N3075, N3076, N3077, N3078, N3081, N3082, N3083, N3084,
         N3085, N3086, N3189, N3190, N3191, N3192, N3193, N3194, N3195, N3196,
         N3197, N3198, N3199, N3200, N3201, N3202, N3203, N3204, N3205, N3206,
         N3207, N3208, N3209, N3210, N3211, N3212, N3213, N3214, N3215, N3216,
         N3217, N3218, N3219, N3220, N3221, N3222, N3223, N3224, N3225, N3226,
         N3227, N3228, N3229, N3230, N3231, N3232, N3233, N3234, N3235, N3236,
         N3278, N3279, N3280, N3281, N3282, N3283, N3284, N3285, N3286, N3287,
         N3288, N3289, N3290, N3291, N3292, N3293, N3294, N3295, N3296, N3297,
         N3298, N3299, N3300, N3301, N3302, N3303, N3304, N3305, N3306, N3307,
         N3308, N3309, N3310, N3311, N3312, N3313, N3314, N3315, N3316, N3317,
         N3318, N3319, N3320, N3321, N3322, N3323, N3324, N3325, N3326, N3327,
         N3346, N3347, N3348, N3349, N3350, N3351, N3352, N3353, N3354, N3532,
         \U3/U1/Z_0 , \U3/U1/Z_1 , \U3/U1/Z_2 , \U3/U1/Z_3 , \U3/U1/Z_4 ,
         \U3/U1/Z_5 , \U3/U2/Z_0 , \U3/U2/Z_1 , \U3/U2/Z_2 , \U3/U2/Z_3 ,
         \U3/U2/Z_4 , \U3/U2/Z_5 , \U3/U2/Z_6 , \U3/U3/Z_0 , n1, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786,
         n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808,
         n809, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819,
         n820, n821, n822, n823, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844, n845, n846, n847, n848, n849, n850, n851, n852,
         n853, n854, n855, n856, n857, n858, n859, n860, n861, n862, n863,
         n864, n865, n866, n867, n868, n869, n870, n871, n872, n873, n874,
         n875, n876, n877, n878, n879, n880, n881, n882, n883, n884, n885,
         n886, n887, n888, n889, n890, n891, n892, n893, n894, n895, n896,
         n897, n898, n899, n900, n901, n902, n903, n904, n905, n906, n907,
         n908, n909, n910, n911, n912, n913, n914, n915, n916, n917, n918,
         n919, n920, n921, n922, n923, n924, n925, n926, n927, n928, n929,
         n930, n931, n932, n933, n934, n935, n936, n937, n938, n939, n940,
         n941, n942, n943, n944, n945, n946, n947, n948, n949, n950, n951,
         n952, n953, n954, n955, n956, n957, n958, n959, n960, n961, n962,
         n963, n964, n965, n966, n967, n968, n969, n970, n971, n972, n973,
         n974, n975, n976, n977, n978, n979, n980, n981, n982, n983, n984,
         n985, n986, n987, n988, n989, n990, n991, n992, n993, n994, n995,
         n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005,
         n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015,
         n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025,
         n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035,
         n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045,
         n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055,
         n1056, n1057, n1058, n1059;
  wire   [30:0] s_opa_i;
  wire   [30:0] s_opb_i;
  wire   [7:0] s_expa;
  wire   [7:0] s_expb;
  wire   [9:0] s_exp_10_i;
  wire   [47:0] s_fract_48_i;
  wire   [31:0] s_output_o;
  wire   [5:0] s_zeros;
  wire   [5:0] s_r_zeros;
  wire   [9:0] s_exp_10a;
  wire   [9:0] s_exp_10b;
  wire   [8:0] s_expo1;
  wire   [5:0] s_shr2;
  wire   [5:0] s_shl2;
  wire   [47:0] s_frac2a;
  wire   [8:0] s_expo2b;
  wire   [24:0] s_frac_rnd;

  DFFX1 \s_opa_i_reg[30]  ( .D(opa_i[30]), .CLK(clk_i), .Q(s_opa_i[30]) );
  DFFX1 \s_opa_i_reg[29]  ( .D(opa_i[29]), .CLK(clk_i), .Q(s_opa_i[29]) );
  DFFX1 \s_opa_i_reg[28]  ( .D(opa_i[28]), .CLK(clk_i), .Q(s_opa_i[28]) );
  DFFX1 \s_opa_i_reg[27]  ( .D(opa_i[27]), .CLK(clk_i), .QN(n1027) );
  DFFX1 \s_opa_i_reg[26]  ( .D(opa_i[26]), .CLK(clk_i), .QN(n1026) );
  DFFX1 \s_opa_i_reg[25]  ( .D(opa_i[25]), .CLK(clk_i), .Q(s_opa_i[25]) );
  DFFX1 \s_opa_i_reg[24]  ( .D(opa_i[24]), .CLK(clk_i), .Q(s_opa_i[24]) );
  DFFX1 \s_opa_i_reg[23]  ( .D(opa_i[23]), .CLK(clk_i), .Q(s_opa_i[23]) );
  DFFX1 \s_opa_i_reg[22]  ( .D(opa_i[22]), .CLK(clk_i), .QN(n1031) );
  DFFX1 \s_opa_i_reg[21]  ( .D(opa_i[21]), .CLK(clk_i), .Q(s_opa_i[21]) );
  DFFX1 \s_opa_i_reg[20]  ( .D(opa_i[20]), .CLK(clk_i), .Q(s_opa_i[20]) );
  DFFX1 \s_opa_i_reg[19]  ( .D(opa_i[19]), .CLK(clk_i), .QN(n1036) );
  DFFX1 \s_opa_i_reg[18]  ( .D(opa_i[18]), .CLK(clk_i), .QN(n1035) );
  DFFX1 \s_opa_i_reg[17]  ( .D(opa_i[17]), .CLK(clk_i), .QN(n1034) );
  DFFX1 \s_opa_i_reg[16]  ( .D(opa_i[16]), .CLK(clk_i), .Q(s_opa_i[16]) );
  DFFX1 \s_opa_i_reg[15]  ( .D(opa_i[15]), .CLK(clk_i), .Q(s_opa_i[15]) );
  DFFX1 \s_opa_i_reg[14]  ( .D(opa_i[14]), .CLK(clk_i), .Q(s_opa_i[14]) );
  DFFX1 \s_opa_i_reg[13]  ( .D(opa_i[13]), .CLK(clk_i), .Q(s_opa_i[13]) );
  DFFX1 \s_opa_i_reg[12]  ( .D(opa_i[12]), .CLK(clk_i), .Q(s_opa_i[12]) );
  DFFX1 \s_opa_i_reg[11]  ( .D(opa_i[11]), .CLK(clk_i), .Q(s_opa_i[11]) );
  DFFX1 \s_opa_i_reg[10]  ( .D(opa_i[10]), .CLK(clk_i), .QN(n1038) );
  DFFX1 \s_opa_i_reg[9]  ( .D(opa_i[9]), .CLK(clk_i), .QN(n1030) );
  DFFX1 \s_opa_i_reg[8]  ( .D(opa_i[8]), .CLK(clk_i), .QN(n1029) );
  DFFX1 \s_opa_i_reg[7]  ( .D(opa_i[7]), .CLK(clk_i), .QN(n1028) );
  DFFX1 \s_opa_i_reg[6]  ( .D(opa_i[6]), .CLK(clk_i), .Q(s_opa_i[6]) );
  DFFX1 \s_opa_i_reg[5]  ( .D(opa_i[5]), .CLK(clk_i), .Q(s_opa_i[5]) );
  DFFX1 \s_opa_i_reg[4]  ( .D(opa_i[4]), .CLK(clk_i), .Q(s_opa_i[4]) );
  DFFX1 \s_opa_i_reg[3]  ( .D(opa_i[3]), .CLK(clk_i), .QN(n1033) );
  DFFX1 \s_opa_i_reg[2]  ( .D(opa_i[2]), .CLK(clk_i), .QN(n1032) );
  DFFX1 \s_opa_i_reg[1]  ( .D(opa_i[1]), .CLK(clk_i), .Q(s_opa_i[1]) );
  DFFX1 \s_opa_i_reg[0]  ( .D(opa_i[0]), .CLK(clk_i), .QN(n1037) );
  DFFX1 \s_opb_i_reg[30]  ( .D(opb_i[30]), .CLK(clk_i), .Q(s_opb_i[30]) );
  DFFX1 \s_opb_i_reg[29]  ( .D(opb_i[29]), .CLK(clk_i), .Q(s_opb_i[29]) );
  DFFX1 \s_opb_i_reg[28]  ( .D(opb_i[28]), .CLK(clk_i), .Q(s_opb_i[28]) );
  DFFX1 \s_opb_i_reg[27]  ( .D(opb_i[27]), .CLK(clk_i), .QN(n1014) );
  DFFX1 \s_opb_i_reg[26]  ( .D(opb_i[26]), .CLK(clk_i), .QN(n1013) );
  DFFX1 \s_opb_i_reg[25]  ( .D(opb_i[25]), .CLK(clk_i), .Q(s_opb_i[25]) );
  DFFX1 \s_opb_i_reg[24]  ( .D(opb_i[24]), .CLK(clk_i), .Q(s_opb_i[24]) );
  DFFX1 \s_opb_i_reg[23]  ( .D(opb_i[23]), .CLK(clk_i), .Q(s_opb_i[23]) );
  DFFX1 \s_opb_i_reg[22]  ( .D(opb_i[22]), .CLK(clk_i), .QN(n1018) );
  DFFX1 \s_opb_i_reg[21]  ( .D(opb_i[21]), .CLK(clk_i), .Q(s_opb_i[21]) );
  DFFX1 \s_opb_i_reg[20]  ( .D(opb_i[20]), .CLK(clk_i), .Q(s_opb_i[20]) );
  DFFX1 \s_opb_i_reg[19]  ( .D(opb_i[19]), .CLK(clk_i), .QN(n1023) );
  DFFX1 \s_opb_i_reg[18]  ( .D(opb_i[18]), .CLK(clk_i), .QN(n1022) );
  DFFX1 \s_opb_i_reg[17]  ( .D(opb_i[17]), .CLK(clk_i), .QN(n1021) );
  DFFX1 \s_opb_i_reg[16]  ( .D(opb_i[16]), .CLK(clk_i), .Q(s_opb_i[16]) );
  DFFX1 \s_opb_i_reg[15]  ( .D(opb_i[15]), .CLK(clk_i), .Q(s_opb_i[15]) );
  DFFX1 \s_opb_i_reg[14]  ( .D(opb_i[14]), .CLK(clk_i), .Q(s_opb_i[14]) );
  DFFX1 \s_opb_i_reg[13]  ( .D(opb_i[13]), .CLK(clk_i), .Q(s_opb_i[13]) );
  DFFX1 \s_opb_i_reg[12]  ( .D(opb_i[12]), .CLK(clk_i), .Q(s_opb_i[12]) );
  DFFX1 \s_opb_i_reg[11]  ( .D(opb_i[11]), .CLK(clk_i), .Q(s_opb_i[11]) );
  DFFX1 \s_opb_i_reg[10]  ( .D(opb_i[10]), .CLK(clk_i), .QN(n1025) );
  DFFX1 \s_opb_i_reg[9]  ( .D(opb_i[9]), .CLK(clk_i), .QN(n1017) );
  DFFX1 \s_opb_i_reg[8]  ( .D(opb_i[8]), .CLK(clk_i), .QN(n1016) );
  DFFX1 \s_opb_i_reg[7]  ( .D(opb_i[7]), .CLK(clk_i), .QN(n1015) );
  DFFX1 \s_opb_i_reg[6]  ( .D(opb_i[6]), .CLK(clk_i), .Q(s_opb_i[6]) );
  DFFX1 \s_opb_i_reg[5]  ( .D(opb_i[5]), .CLK(clk_i), .Q(s_opb_i[5]) );
  DFFX1 \s_opb_i_reg[4]  ( .D(opb_i[4]), .CLK(clk_i), .Q(s_opb_i[4]) );
  DFFX1 \s_opb_i_reg[3]  ( .D(opb_i[3]), .CLK(clk_i), .QN(n1020) );
  DFFX1 \s_opb_i_reg[2]  ( .D(opb_i[2]), .CLK(clk_i), .QN(n1019) );
  DFFX1 \s_opb_i_reg[1]  ( .D(opb_i[1]), .CLK(clk_i), .Q(s_opb_i[1]) );
  DFFX1 \s_opb_i_reg[0]  ( .D(opb_i[0]), .CLK(clk_i), .QN(n1024) );
  DFFX1 \s_expa_reg[7]  ( .D(opa_i[30]), .CLK(clk_i), .Q(s_expa[7]) );
  DFFX1 \s_expa_reg[6]  ( .D(opa_i[29]), .CLK(clk_i), .Q(s_expa[6]) );
  DFFX1 \s_expa_reg[5]  ( .D(opa_i[28]), .CLK(clk_i), .QN(n1046) );
  DFFX1 \s_expa_reg[4]  ( .D(opa_i[27]), .CLK(clk_i), .QN(n1045) );
  DFFX1 \s_expa_reg[3]  ( .D(opa_i[26]), .CLK(clk_i), .QN(n1050) );
  DFFX1 \s_expa_reg[2]  ( .D(opa_i[25]), .CLK(clk_i), .QN(n1049) );
  DFFX1 \s_expa_reg[1]  ( .D(opa_i[24]), .CLK(clk_i), .QN(n1048) );
  DFFX1 \s_expa_reg[0]  ( .D(opa_i[23]), .CLK(clk_i), .QN(n1047) );
  DFFX1 \s_expb_reg[7]  ( .D(opb_i[30]), .CLK(clk_i), .Q(s_expb[7]) );
  DFFX1 \s_expb_reg[6]  ( .D(opb_i[29]), .CLK(clk_i), .Q(s_expb[6]) );
  DFFX1 \s_expb_reg[5]  ( .D(opb_i[28]), .CLK(clk_i), .QN(n1040) );
  DFFX1 \s_expb_reg[4]  ( .D(opb_i[27]), .CLK(clk_i), .QN(n1039) );
  DFFX1 \s_expb_reg[3]  ( .D(opb_i[26]), .CLK(clk_i), .QN(n1044) );
  DFFX1 \s_expb_reg[2]  ( .D(opb_i[25]), .CLK(clk_i), .QN(n1043) );
  DFFX1 \s_expb_reg[1]  ( .D(opb_i[24]), .CLK(clk_i), .QN(n1042) );
  DFFX1 \s_expb_reg[0]  ( .D(opb_i[23]), .CLK(clk_i), .QN(n1041) );
  DFFX1 \s_exp_10_i_reg[9]  ( .D(exp_10_i[9]), .CLK(clk_i), .Q(s_exp_10_i[9])
         );
  DFFX1 \s_exp_10_i_reg[8]  ( .D(exp_10_i[8]), .CLK(clk_i), .Q(s_exp_10_i[8])
         );
  DFFX1 \s_exp_10_i_reg[7]  ( .D(exp_10_i[7]), .CLK(clk_i), .Q(s_exp_10_i[7])
         );
  DFFX1 \s_exp_10_i_reg[6]  ( .D(exp_10_i[6]), .CLK(clk_i), .Q(s_exp_10_i[6])
         );
  DFFX1 \s_exp_10_i_reg[5]  ( .D(exp_10_i[5]), .CLK(clk_i), .Q(s_exp_10_i[5])
         );
  DFFX1 \s_exp_10_i_reg[4]  ( .D(exp_10_i[4]), .CLK(clk_i), .Q(s_exp_10_i[4])
         );
  DFFX1 \s_exp_10_i_reg[3]  ( .D(exp_10_i[3]), .CLK(clk_i), .Q(s_exp_10_i[3])
         );
  DFFX1 \s_exp_10_i_reg[2]  ( .D(exp_10_i[2]), .CLK(clk_i), .Q(s_exp_10_i[2]), 
        .QN(n62) );
  DFFX1 \s_exp_10_i_reg[1]  ( .D(exp_10_i[1]), .CLK(clk_i), .Q(s_exp_10_i[1])
         );
  DFFX1 \s_exp_10_i_reg[0]  ( .D(exp_10_i[0]), .CLK(clk_i), .Q(s_exp_10_i[0])
         );
  DFFX1 \s_fract_48_i_reg[47]  ( .D(fract_48_i[47]), .CLK(clk_i), .Q(
        s_fract_48_i[47]), .QN(n30) );
  DFFX1 \s_fract_48_i_reg[46]  ( .D(fract_48_i[46]), .CLK(clk_i), .Q(
        s_fract_48_i[46]), .QN(n57) );
  DFFX1 \s_fract_48_i_reg[45]  ( .D(fract_48_i[45]), .CLK(clk_i), .Q(
        s_fract_48_i[45]), .QN(n15) );
  DFFX1 \s_fract_48_i_reg[44]  ( .D(fract_48_i[44]), .CLK(clk_i), .Q(
        s_fract_48_i[44]), .QN(n49) );
  DFFX1 \s_fract_48_i_reg[43]  ( .D(fract_48_i[43]), .CLK(clk_i), .Q(
        s_fract_48_i[43]), .QN(n31) );
  DFFX1 \s_fract_48_i_reg[42]  ( .D(fract_48_i[42]), .CLK(clk_i), .Q(
        s_fract_48_i[42]), .QN(n46) );
  DFFX1 \s_fract_48_i_reg[41]  ( .D(fract_48_i[41]), .CLK(clk_i), .Q(
        s_fract_48_i[41]), .QN(n36) );
  DFFX1 \s_fract_48_i_reg[40]  ( .D(fract_48_i[40]), .CLK(clk_i), .Q(
        s_fract_48_i[40]), .QN(n16) );
  DFFX1 \s_fract_48_i_reg[39]  ( .D(fract_48_i[39]), .CLK(clk_i), .Q(
        s_fract_48_i[39]), .QN(n58) );
  DFFX1 \s_fract_48_i_reg[38]  ( .D(fract_48_i[38]), .CLK(clk_i), .Q(
        s_fract_48_i[38]), .QN(n33) );
  DFFX1 \s_fract_48_i_reg[37]  ( .D(fract_48_i[37]), .CLK(clk_i), .Q(
        s_fract_48_i[37]), .QN(n54) );
  DFFX1 \s_fract_48_i_reg[36]  ( .D(fract_48_i[36]), .CLK(clk_i), .Q(
        s_fract_48_i[36]), .QN(n7) );
  DFFX1 \s_fract_48_i_reg[35]  ( .D(fract_48_i[35]), .CLK(clk_i), .Q(
        s_fract_48_i[35]), .QN(n29) );
  DFFX1 \s_fract_48_i_reg[34]  ( .D(fract_48_i[34]), .CLK(clk_i), .Q(
        s_fract_48_i[34]), .QN(n52) );
  DFFX1 \s_fract_48_i_reg[33]  ( .D(fract_48_i[33]), .CLK(clk_i), .Q(
        s_fract_48_i[33]), .QN(n4) );
  DFFX1 \s_fract_48_i_reg[32]  ( .D(fract_48_i[32]), .CLK(clk_i), .Q(
        s_fract_48_i[32]), .QN(n13) );
  DFFX1 \s_fract_48_i_reg[31]  ( .D(fract_48_i[31]), .CLK(clk_i), .Q(
        s_fract_48_i[31]), .QN(n18) );
  DFFX1 \s_fract_48_i_reg[30]  ( .D(fract_48_i[30]), .CLK(clk_i), .Q(
        s_fract_48_i[30]), .QN(n6) );
  DFFX1 \s_fract_48_i_reg[29]  ( .D(fract_48_i[29]), .CLK(clk_i), .Q(
        s_fract_48_i[29]), .QN(n56) );
  DFFX1 \s_fract_48_i_reg[28]  ( .D(fract_48_i[28]), .CLK(clk_i), .Q(
        s_fract_48_i[28]), .QN(n11) );
  DFFX1 \s_fract_48_i_reg[27]  ( .D(fract_48_i[27]), .CLK(clk_i), .Q(
        s_fract_48_i[27]), .QN(n43) );
  DFFX1 \s_fract_48_i_reg[26]  ( .D(fract_48_i[26]), .CLK(clk_i), .Q(
        s_fract_48_i[26]), .QN(n10) );
  DFFX1 \s_fract_48_i_reg[25]  ( .D(fract_48_i[25]), .CLK(clk_i), .Q(
        s_fract_48_i[25]), .QN(n25) );
  DFFX1 \s_fract_48_i_reg[24]  ( .D(fract_48_i[24]), .CLK(clk_i), .Q(
        s_fract_48_i[24]), .QN(n1) );
  DFFX1 \s_fract_48_i_reg[23]  ( .D(fract_48_i[23]), .CLK(clk_i), .Q(
        s_fract_48_i[23]), .QN(n23) );
  DFFX1 \s_fract_48_i_reg[22]  ( .D(fract_48_i[22]), .CLK(clk_i), .Q(
        s_fract_48_i[22]), .QN(n47) );
  DFFX1 \s_fract_48_i_reg[21]  ( .D(fract_48_i[21]), .CLK(clk_i), .Q(
        s_fract_48_i[21]), .QN(n21) );
  DFFX1 \s_fract_48_i_reg[20]  ( .D(fract_48_i[20]), .CLK(clk_i), .Q(
        s_fract_48_i[20]), .QN(n45) );
  DFFX1 \s_fract_48_i_reg[19]  ( .D(fract_48_i[19]), .CLK(clk_i), .Q(
        s_fract_48_i[19]), .QN(n24) );
  DFFX1 \s_fract_48_i_reg[18]  ( .D(fract_48_i[18]), .CLK(clk_i), .Q(
        s_fract_48_i[18]), .QN(n3) );
  DFFX1 \s_fract_48_i_reg[17]  ( .D(fract_48_i[17]), .CLK(clk_i), .Q(
        s_fract_48_i[17]), .QN(n26) );
  DFFX1 \s_fract_48_i_reg[16]  ( .D(fract_48_i[16]), .CLK(clk_i), .Q(
        s_fract_48_i[16]), .QN(n44) );
  DFFX1 \s_fract_48_i_reg[15]  ( .D(fract_48_i[15]), .CLK(clk_i), .Q(
        s_fract_48_i[15]), .QN(n20) );
  DFFX1 \s_fract_48_i_reg[14]  ( .D(fract_48_i[14]), .CLK(clk_i), .Q(
        s_fract_48_i[14]), .QN(n48) );
  DFFX1 \s_fract_48_i_reg[13]  ( .D(fract_48_i[13]), .CLK(clk_i), .Q(
        s_fract_48_i[13]), .QN(n28) );
  DFFX1 \s_fract_48_i_reg[12]  ( .D(fract_48_i[12]), .CLK(clk_i), .Q(
        s_fract_48_i[12]), .QN(n8) );
  DFFX1 \s_fract_48_i_reg[11]  ( .D(fract_48_i[11]), .CLK(clk_i), .Q(
        s_fract_48_i[11]), .QN(n27) );
  DFFX1 \s_fract_48_i_reg[10]  ( .D(fract_48_i[10]), .CLK(clk_i), .Q(
        s_fract_48_i[10]), .QN(n9) );
  DFFX1 \s_fract_48_i_reg[9]  ( .D(fract_48_i[9]), .CLK(clk_i), .Q(
        s_fract_48_i[9]), .QN(n50) );
  DFFX1 \s_fract_48_i_reg[8]  ( .D(fract_48_i[8]), .CLK(clk_i), .Q(
        s_fract_48_i[8]), .QN(n5) );
  DFFX1 \s_fract_48_i_reg[7]  ( .D(fract_48_i[7]), .CLK(clk_i), .Q(
        s_fract_48_i[7]), .QN(n34) );
  DFFX1 \s_fract_48_i_reg[6]  ( .D(fract_48_i[6]), .CLK(clk_i), .Q(
        s_fract_48_i[6]), .QN(n63) );
  DFFX1 \s_fract_48_i_reg[5]  ( .D(fract_48_i[5]), .CLK(clk_i), .Q(
        s_fract_48_i[5]), .QN(n12) );
  DFFX1 \s_fract_48_i_reg[4]  ( .D(fract_48_i[4]), .CLK(clk_i), .Q(
        s_fract_48_i[4]), .QN(n61) );
  DFFX1 \s_fract_48_i_reg[3]  ( .D(fract_48_i[3]), .CLK(clk_i), .Q(
        s_fract_48_i[3]), .QN(n14) );
  DFFX1 \s_fract_48_i_reg[2]  ( .D(fract_48_i[2]), .CLK(clk_i), .Q(
        s_fract_48_i[2]), .QN(n53) );
  DFFX1 \s_fract_48_i_reg[1]  ( .D(fract_48_i[1]), .CLK(clk_i), .Q(
        s_fract_48_i[1]), .QN(n37) );
  DFFX1 \s_fract_48_i_reg[0]  ( .D(fract_48_i[0]), .CLK(clk_i), .Q(
        s_fract_48_i[0]), .QN(n66) );
  DFFX1 s_sign_i_reg ( .D(sign_i), .CLK(clk_i), .Q(s_output_o[31]) );
  DFFX1 \s_rmode_i_reg[1]  ( .D(rmode_i[1]), .CLK(clk_i), .Q(\s_rmode_i[1] ), 
        .QN(n65) );
  DFFX1 \s_rmode_i_reg[0]  ( .D(rmode_i[0]), .CLK(clk_i), .QN(n39) );
  DFFX1 \output_o_reg[31]  ( .D(s_output_o[31]), .CLK(clk_i), .Q(output_o[31])
         );
  DFFX1 \s_zeros_reg[5]  ( .D(N1637), .CLK(clk_i), .Q(s_zeros[5]) );
  DFFX1 \s_zeros_reg[4]  ( .D(N1636), .CLK(clk_i), .Q(s_zeros[4]) );
  DFFX1 \s_zeros_reg[3]  ( .D(N1635), .CLK(clk_i), .Q(s_zeros[3]) );
  DFFX1 \s_zeros_reg[2]  ( .D(N1634), .CLK(clk_i), .Q(s_zeros[2]) );
  DFFX1 \s_zeros_reg[1]  ( .D(N1633), .CLK(clk_i), .Q(s_zeros[1]) );
  DFFX1 \s_zeros_reg[0]  ( .D(N1632), .CLK(clk_i), .Q(s_zeros[0]) );
  DFFX1 \s_r_zeros_reg[5]  ( .D(N2979), .CLK(clk_i), .Q(s_r_zeros[5]) );
  DFFX1 \s_r_zeros_reg[4]  ( .D(N2978), .CLK(clk_i), .Q(s_r_zeros[4]) );
  DFFX1 \s_r_zeros_reg[3]  ( .D(N2977), .CLK(clk_i), .Q(s_r_zeros[3]) );
  DFFX1 \s_r_zeros_reg[2]  ( .D(N2976), .CLK(clk_i), .Q(s_r_zeros[2]) );
  DFFX1 \s_r_zeros_reg[1]  ( .D(N2975), .CLK(clk_i), .Q(s_r_zeros[1]) );
  DFFX1 \s_r_zeros_reg[0]  ( .D(N2974), .CLK(clk_i), .QN(n67) );
  DFFX1 \s_expo1_reg[7]  ( .D(N3078), .CLK(clk_i), .Q(s_expo1[7]) );
  DFFX1 \s_expo1_reg[6]  ( .D(N3077), .CLK(clk_i), .Q(s_expo1[6]) );
  DFFX1 \s_expo1_reg[5]  ( .D(N3076), .CLK(clk_i), .Q(s_expo1[5]) );
  DFFX1 \s_expo1_reg[4]  ( .D(N3075), .CLK(clk_i), .Q(s_expo1[4]) );
  DFFX1 \s_expo1_reg[3]  ( .D(N3074), .CLK(clk_i), .Q(s_expo1[3]) );
  DFFX1 \s_expo1_reg[2]  ( .D(N3073), .CLK(clk_i), .Q(s_expo1[2]) );
  DFFX1 \s_expo1_reg[1]  ( .D(N3072), .CLK(clk_i), .Q(s_expo1[1]) );
  DFFX1 \s_expo1_reg[0]  ( .D(N3071), .CLK(clk_i), .Q(s_expo1[0]) );
  DFFX1 \s_shr2_reg[5]  ( .D(N3086), .CLK(clk_i), .Q(s_shr2[5]), .QN(n55) );
  DFFX1 \s_shr2_reg[4]  ( .D(N3085), .CLK(clk_i), .Q(s_shr2[4]), .QN(n40) );
  DFFX1 \s_shr2_reg[3]  ( .D(N3084), .CLK(clk_i), .Q(s_shr2[3]), .QN(n42) );
  DFFX1 \s_shr2_reg[2]  ( .D(N3083), .CLK(clk_i), .Q(s_shr2[2]), .QN(n17) );
  DFFX1 \s_shr2_reg[1]  ( .D(N3082), .CLK(clk_i), .Q(s_shr2[1]), .QN(n59) );
  DFFX1 \s_shr2_reg[0]  ( .D(N3081), .CLK(clk_i), .Q(s_shr2[0]), .QN(n32) );
  DFFX1 \s_shl2_reg[5]  ( .D(N3070), .CLK(clk_i), .Q(s_shl2[5]) );
  DFFX1 \s_shl2_reg[4]  ( .D(N3069), .CLK(clk_i), .Q(s_shl2[4]), .QN(n41) );
  DFFX1 \s_shl2_reg[3]  ( .D(N3068), .CLK(clk_i), .Q(s_shl2[3]), .QN(n51) );
  DFFX1 \s_shl2_reg[2]  ( .D(N3067), .CLK(clk_i), .Q(s_shl2[2]), .QN(n22) );
  DFFX1 \s_shl2_reg[1]  ( .D(N3066), .CLK(clk_i), .Q(s_shl2[1]), .QN(n60) );
  DFFX1 \s_shl2_reg[0]  ( .D(N3065), .CLK(clk_i), .Q(s_shl2[0]), .QN(n35) );
  DFFX1 \s_frac2a_reg[47]  ( .D(N3236), .CLK(clk_i), .Q(s_frac2a[47]) );
  DFFX1 \s_frac2a_reg[46]  ( .D(N3235), .CLK(clk_i), .Q(s_frac2a[46]) );
  DFFX1 \s_frac2a_reg[45]  ( .D(N3234), .CLK(clk_i), .Q(s_frac2a[45]) );
  DFFX1 \s_frac2a_reg[44]  ( .D(N3233), .CLK(clk_i), .Q(s_frac2a[44]) );
  DFFX1 \s_frac2a_reg[43]  ( .D(N3232), .CLK(clk_i), .Q(s_frac2a[43]) );
  DFFX1 \s_frac2a_reg[42]  ( .D(N3231), .CLK(clk_i), .Q(s_frac2a[42]) );
  DFFX1 \s_frac2a_reg[41]  ( .D(N3230), .CLK(clk_i), .Q(s_frac2a[41]) );
  DFFX1 \s_frac2a_reg[40]  ( .D(N3229), .CLK(clk_i), .Q(s_frac2a[40]) );
  DFFX1 \s_frac2a_reg[39]  ( .D(N3228), .CLK(clk_i), .Q(s_frac2a[39]) );
  DFFX1 \s_frac2a_reg[38]  ( .D(N3227), .CLK(clk_i), .Q(s_frac2a[38]) );
  DFFX1 \s_frac2a_reg[37]  ( .D(N3226), .CLK(clk_i), .Q(s_frac2a[37]) );
  DFFX1 \s_frac2a_reg[36]  ( .D(N3225), .CLK(clk_i), .Q(s_frac2a[36]) );
  DFFX1 \s_frac2a_reg[35]  ( .D(N3224), .CLK(clk_i), .Q(s_frac2a[35]) );
  DFFX1 \s_frac2a_reg[34]  ( .D(N3223), .CLK(clk_i), .Q(s_frac2a[34]) );
  DFFX1 \s_frac2a_reg[33]  ( .D(N3222), .CLK(clk_i), .Q(s_frac2a[33]) );
  DFFX1 \s_frac2a_reg[32]  ( .D(N3221), .CLK(clk_i), .Q(s_frac2a[32]) );
  DFFX1 \s_frac2a_reg[31]  ( .D(N3220), .CLK(clk_i), .Q(s_frac2a[31]) );
  DFFX1 \s_frac2a_reg[30]  ( .D(N3219), .CLK(clk_i), .Q(s_frac2a[30]) );
  DFFX1 \s_frac2a_reg[29]  ( .D(N3218), .CLK(clk_i), .Q(s_frac2a[29]) );
  DFFX1 \s_frac2a_reg[28]  ( .D(N3217), .CLK(clk_i), .Q(s_frac2a[28]) );
  DFFX1 \s_frac2a_reg[27]  ( .D(N3216), .CLK(clk_i), .Q(s_frac2a[27]) );
  DFFX1 \s_frac2a_reg[26]  ( .D(N3215), .CLK(clk_i), .Q(s_frac2a[26]) );
  DFFX1 \s_frac2a_reg[25]  ( .D(N3214), .CLK(clk_i), .Q(s_frac2a[25]) );
  DFFX1 \s_frac2a_reg[24]  ( .D(N3213), .CLK(clk_i), .Q(s_frac2a[24]) );
  DFFX1 \s_frac2a_reg[23]  ( .D(N3212), .CLK(clk_i), .Q(s_frac2a[23]), .QN(n68) );
  DFFX1 \s_frac2a_reg[22]  ( .D(N3211), .CLK(clk_i), .Q(s_frac2a[22]), .QN(n64) );
  DFFX1 \s_frac2a_reg[21]  ( .D(N3210), .CLK(clk_i), .QN(n38) );
  DFFX1 \s_frac2a_reg[20]  ( .D(N3209), .CLK(clk_i), .QN(n1056) );
  DFFX1 \s_frac2a_reg[19]  ( .D(N3208), .CLK(clk_i), .Q(s_frac2a[19]) );
  DFFX1 \s_frac2a_reg[18]  ( .D(N3207), .CLK(clk_i), .Q(s_frac2a[18]) );
  DFFX1 \s_frac2a_reg[17]  ( .D(N3206), .CLK(clk_i), .QN(n1059) );
  DFFX1 \s_frac2a_reg[16]  ( .D(N3205), .CLK(clk_i), .QN(n1058) );
  DFFX1 \s_frac2a_reg[15]  ( .D(N3204), .CLK(clk_i), .QN(n1057) );
  DFFX1 \s_frac2a_reg[14]  ( .D(N3203), .CLK(clk_i), .Q(s_frac2a[14]) );
  DFFX1 \s_frac2a_reg[13]  ( .D(N3202), .CLK(clk_i), .Q(s_frac2a[13]) );
  DFFX1 \s_frac2a_reg[12]  ( .D(N3201), .CLK(clk_i), .Q(s_frac2a[12]) );
  DFFX1 \s_frac2a_reg[11]  ( .D(N3200), .CLK(clk_i), .Q(s_frac2a[11]) );
  DFFX1 \s_frac2a_reg[10]  ( .D(N3199), .CLK(clk_i), .Q(s_frac2a[10]) );
  DFFX1 \s_frac2a_reg[9]  ( .D(N3198), .CLK(clk_i), .QN(n1053) );
  DFFX1 \s_frac2a_reg[8]  ( .D(N3197), .CLK(clk_i), .QN(n1052) );
  DFFX1 \s_frac2a_reg[7]  ( .D(N3196), .CLK(clk_i), .QN(n1051) );
  DFFX1 \s_frac2a_reg[6]  ( .D(N3195), .CLK(clk_i), .Q(s_frac2a[6]) );
  DFFX1 \s_frac2a_reg[5]  ( .D(N3194), .CLK(clk_i), .Q(s_frac2a[5]) );
  DFFX1 \s_frac2a_reg[4]  ( .D(N3193), .CLK(clk_i), .Q(s_frac2a[4]) );
  DFFX1 \s_frac2a_reg[3]  ( .D(N3192), .CLK(clk_i), .QN(n1055) );
  DFFX1 \s_frac2a_reg[2]  ( .D(N3191), .CLK(clk_i), .QN(n1054) );
  DFFX1 \s_frac2a_reg[1]  ( .D(N3190), .CLK(clk_i), .Q(s_frac2a[1]) );
  DFFX1 \s_frac2a_reg[0]  ( .D(N3189), .CLK(clk_i), .Q(s_frac2a[0]) );
  DFFX1 \s_frac_rnd_reg[24]  ( .D(N3327), .CLK(clk_i), .Q(s_frac_rnd[24]) );
  DFFX1 ine_o_reg ( .D(N3532), .CLK(clk_i), .Q(ine_o) );
  DFFX1 \output_o_reg[30]  ( .D(s_output_o[30]), .CLK(clk_i), .Q(output_o[30])
         );
  DFFX1 \output_o_reg[29]  ( .D(s_output_o[29]), .CLK(clk_i), .Q(output_o[29])
         );
  DFFX1 \output_o_reg[28]  ( .D(s_output_o[28]), .CLK(clk_i), .Q(output_o[28])
         );
  DFFX1 \output_o_reg[27]  ( .D(s_output_o[27]), .CLK(clk_i), .Q(output_o[27])
         );
  DFFX1 \output_o_reg[26]  ( .D(s_output_o[26]), .CLK(clk_i), .Q(output_o[26])
         );
  DFFX1 \output_o_reg[25]  ( .D(s_output_o[25]), .CLK(clk_i), .Q(output_o[25])
         );
  DFFX1 \output_o_reg[24]  ( .D(s_output_o[24]), .CLK(clk_i), .Q(output_o[24])
         );
  DFFX1 \output_o_reg[23]  ( .D(s_output_o[23]), .CLK(clk_i), .Q(output_o[23])
         );
  DFFX1 \s_frac_rnd_reg[23]  ( .D(N3326), .CLK(clk_i), .Q(s_frac_rnd[23]) );
  DFFX1 \s_frac_rnd_reg[22]  ( .D(N3325), .CLK(clk_i), .Q(s_frac_rnd[22]) );
  DFFX1 \output_o_reg[22]  ( .D(s_output_o[22]), .CLK(clk_i), .Q(output_o[22])
         );
  DFFX1 \s_frac_rnd_reg[21]  ( .D(N3324), .CLK(clk_i), .Q(s_frac_rnd[21]) );
  DFFX1 \output_o_reg[21]  ( .D(s_output_o[21]), .CLK(clk_i), .Q(output_o[21])
         );
  DFFX1 \s_frac_rnd_reg[20]  ( .D(N3323), .CLK(clk_i), .Q(s_frac_rnd[20]) );
  DFFX1 \output_o_reg[20]  ( .D(s_output_o[20]), .CLK(clk_i), .Q(output_o[20])
         );
  DFFX1 \s_frac_rnd_reg[19]  ( .D(N3322), .CLK(clk_i), .Q(s_frac_rnd[19]) );
  DFFX1 \output_o_reg[19]  ( .D(s_output_o[19]), .CLK(clk_i), .Q(output_o[19])
         );
  DFFX1 \s_frac_rnd_reg[18]  ( .D(N3321), .CLK(clk_i), .Q(s_frac_rnd[18]) );
  DFFX1 \output_o_reg[18]  ( .D(s_output_o[18]), .CLK(clk_i), .Q(output_o[18])
         );
  DFFX1 \s_frac_rnd_reg[17]  ( .D(N3320), .CLK(clk_i), .Q(s_frac_rnd[17]) );
  DFFX1 \output_o_reg[17]  ( .D(s_output_o[17]), .CLK(clk_i), .Q(output_o[17])
         );
  DFFX1 \s_frac_rnd_reg[16]  ( .D(N3319), .CLK(clk_i), .Q(s_frac_rnd[16]) );
  DFFX1 \output_o_reg[16]  ( .D(s_output_o[16]), .CLK(clk_i), .Q(output_o[16])
         );
  DFFX1 \s_frac_rnd_reg[15]  ( .D(N3318), .CLK(clk_i), .Q(s_frac_rnd[15]) );
  DFFX1 \output_o_reg[15]  ( .D(s_output_o[15]), .CLK(clk_i), .Q(output_o[15])
         );
  DFFX1 \s_frac_rnd_reg[14]  ( .D(N3317), .CLK(clk_i), .Q(s_frac_rnd[14]) );
  DFFX1 \output_o_reg[14]  ( .D(s_output_o[14]), .CLK(clk_i), .Q(output_o[14])
         );
  DFFX1 \s_frac_rnd_reg[13]  ( .D(N3316), .CLK(clk_i), .Q(s_frac_rnd[13]) );
  DFFX1 \output_o_reg[13]  ( .D(s_output_o[13]), .CLK(clk_i), .Q(output_o[13])
         );
  DFFX1 \s_frac_rnd_reg[12]  ( .D(N3315), .CLK(clk_i), .Q(s_frac_rnd[12]) );
  DFFX1 \output_o_reg[12]  ( .D(s_output_o[12]), .CLK(clk_i), .Q(output_o[12])
         );
  DFFX1 \s_frac_rnd_reg[11]  ( .D(N3314), .CLK(clk_i), .Q(s_frac_rnd[11]) );
  DFFX1 \output_o_reg[11]  ( .D(s_output_o[11]), .CLK(clk_i), .Q(output_o[11])
         );
  DFFX1 \s_frac_rnd_reg[10]  ( .D(N3313), .CLK(clk_i), .Q(s_frac_rnd[10]) );
  DFFX1 \output_o_reg[10]  ( .D(s_output_o[10]), .CLK(clk_i), .Q(output_o[10])
         );
  DFFX1 \s_frac_rnd_reg[9]  ( .D(N3312), .CLK(clk_i), .Q(s_frac_rnd[9]) );
  DFFX1 \output_o_reg[9]  ( .D(s_output_o[9]), .CLK(clk_i), .Q(output_o[9]) );
  DFFX1 \s_frac_rnd_reg[8]  ( .D(N3311), .CLK(clk_i), .Q(s_frac_rnd[8]) );
  DFFX1 \output_o_reg[8]  ( .D(s_output_o[8]), .CLK(clk_i), .Q(output_o[8]) );
  DFFX1 \s_frac_rnd_reg[7]  ( .D(N3310), .CLK(clk_i), .Q(s_frac_rnd[7]) );
  DFFX1 \output_o_reg[7]  ( .D(s_output_o[7]), .CLK(clk_i), .Q(output_o[7]) );
  DFFX1 \s_frac_rnd_reg[6]  ( .D(N3309), .CLK(clk_i), .Q(s_frac_rnd[6]) );
  DFFX1 \output_o_reg[6]  ( .D(s_output_o[6]), .CLK(clk_i), .Q(output_o[6]) );
  DFFX1 \s_frac_rnd_reg[5]  ( .D(N3308), .CLK(clk_i), .Q(s_frac_rnd[5]) );
  DFFX1 \output_o_reg[5]  ( .D(s_output_o[5]), .CLK(clk_i), .Q(output_o[5]) );
  DFFX1 \s_frac_rnd_reg[4]  ( .D(N3307), .CLK(clk_i), .Q(s_frac_rnd[4]) );
  DFFX1 \output_o_reg[4]  ( .D(s_output_o[4]), .CLK(clk_i), .Q(output_o[4]) );
  DFFX1 \s_frac_rnd_reg[3]  ( .D(N3306), .CLK(clk_i), .Q(s_frac_rnd[3]) );
  DFFX1 \output_o_reg[3]  ( .D(s_output_o[3]), .CLK(clk_i), .Q(output_o[3]) );
  DFFX1 \s_frac_rnd_reg[2]  ( .D(N3305), .CLK(clk_i), .Q(s_frac_rnd[2]) );
  DFFX1 \output_o_reg[2]  ( .D(s_output_o[2]), .CLK(clk_i), .Q(output_o[2]) );
  DFFX1 \s_frac_rnd_reg[1]  ( .D(N3304), .CLK(clk_i), .Q(s_frac_rnd[1]) );
  DFFX1 \output_o_reg[1]  ( .D(s_output_o[1]), .CLK(clk_i), .Q(output_o[1]) );
  DFFX1 \s_frac_rnd_reg[0]  ( .D(N3303), .CLK(clk_i), .Q(s_frac_rnd[0]) );
  DFFX1 \output_o_reg[0]  ( .D(s_output_o[0]), .CLK(clk_i), .Q(output_o[0]) );
  post_norm_mul_1_DW01_addsub_0 r1595 ( .A({1'b0, \U3/U1/Z_5 , \U3/U1/Z_4 , 
        \U3/U1/Z_3 , \U3/U1/Z_2 , \U3/U1/Z_1 , \U3/U1/Z_0 }), .B({\U3/U2/Z_6 , 
        \U3/U2/Z_5 , \U3/U2/Z_4 , \U3/U2/Z_3 , \U3/U2/Z_2 , \U3/U2/Z_1 , 
        \U3/U2/Z_0 }), .CI(1'b0), .ADD_SUB(\U3/U3/Z_0 ), .SUM({N3005, N3024, 
        N3023, N3022, N3021, N3020, N3019}) );
  post_norm_mul_1_DW01_inc_0 add_233 ( .A(s_expo2b), .SUM({N3354, N3353, N3352, 
        N3351, N3350, N3349, N3348, N3347, N3346}) );
  post_norm_mul_1_DW01_inc_1 add_222 ( .A(s_frac2a[47:23]), .SUM({N3302, N3301, 
        N3300, N3299, N3298, N3297, N3296, N3295, N3294, N3293, N3292, N3291, 
        N3290, N3289, N3288, N3287, N3286, N3285, N3284, N3283, N3282, N3281, 
        N3280, N3279, N3278}) );
  post_norm_mul_1_DW01_sub_1 sub_141 ( .A({s_exp_10a[9:2], \U3/U2/Z_1 , 
        s_exp_10a[0]}), .B({1'b0, 1'b0, 1'b0, 1'b0, s_zeros}), .CI(1'b0), 
        .DIFF(s_exp_10b) );
  AO22X1 U3 ( .IN1(s_frac_rnd[10]), .IN2(n69), .IN3(s_frac_rnd[9]), .IN4(n70), 
        .Q(s_output_o[9]) );
  AO22X1 U4 ( .IN1(n69), .IN2(s_frac_rnd[9]), .IN3(s_frac_rnd[8]), .IN4(n70), 
        .Q(s_output_o[8]) );
  AO22X1 U5 ( .IN1(s_frac_rnd[8]), .IN2(n69), .IN3(s_frac_rnd[7]), .IN4(n70), 
        .Q(s_output_o[7]) );
  AO22X1 U6 ( .IN1(s_frac_rnd[7]), .IN2(n69), .IN3(s_frac_rnd[6]), .IN4(n70), 
        .Q(s_output_o[6]) );
  AO22X1 U7 ( .IN1(s_frac_rnd[6]), .IN2(n69), .IN3(s_frac_rnd[5]), .IN4(n70), 
        .Q(s_output_o[5]) );
  AO22X1 U8 ( .IN1(s_frac_rnd[5]), .IN2(n69), .IN3(s_frac_rnd[4]), .IN4(n70), 
        .Q(s_output_o[4]) );
  AO22X1 U9 ( .IN1(s_frac_rnd[4]), .IN2(n69), .IN3(s_frac_rnd[3]), .IN4(n70), 
        .Q(s_output_o[3]) );
  AO221X1 U10 ( .IN1(n71), .IN2(N3353), .IN3(n72), .IN4(s_expo2b[7]), .IN5(n73), .Q(s_output_o[30]) );
  AO22X1 U11 ( .IN1(s_frac_rnd[3]), .IN2(n69), .IN3(s_frac_rnd[2]), .IN4(n70), 
        .Q(s_output_o[2]) );
  AO221X1 U12 ( .IN1(n71), .IN2(N3352), .IN3(n72), .IN4(s_expo2b[6]), .IN5(n73), .Q(s_output_o[29]) );
  AO221X1 U13 ( .IN1(n71), .IN2(N3351), .IN3(n72), .IN4(s_expo2b[5]), .IN5(n73), .Q(s_output_o[28]) );
  AO221X1 U14 ( .IN1(n71), .IN2(N3350), .IN3(n72), .IN4(s_expo2b[4]), .IN5(n73), .Q(s_output_o[27]) );
  AO221X1 U15 ( .IN1(n71), .IN2(N3349), .IN3(n72), .IN4(s_expo2b[3]), .IN5(n73), .Q(s_output_o[26]) );
  AO221X1 U16 ( .IN1(n71), .IN2(N3348), .IN3(n72), .IN4(s_expo2b[2]), .IN5(n73), .Q(s_output_o[25]) );
  AO221X1 U17 ( .IN1(n71), .IN2(N3347), .IN3(n72), .IN4(s_expo2b[1]), .IN5(n73), .Q(s_output_o[24]) );
  AO221X1 U18 ( .IN1(N3346), .IN2(n71), .IN3(n72), .IN4(s_expo2b[0]), .IN5(n73), .Q(s_output_o[23]) );
  AO221X1 U19 ( .IN1(n74), .IN2(n75), .IN3(n76), .IN4(n77), .IN5(n78), .Q(
        s_output_o[22]) );
  AO222X1 U20 ( .IN1(s_frac_rnd[22]), .IN2(n70), .IN3(n79), .IN4(n80), .IN5(
        s_frac_rnd[23]), .IN6(n69), .Q(n78) );
  INVX0 U21 ( .INP(n81), .ZN(n80) );
  NAND2X0 U22 ( .IN1(n82), .IN2(n83), .QN(n79) );
  AO22X1 U23 ( .IN1(s_frac_rnd[22]), .IN2(n69), .IN3(s_frac_rnd[21]), .IN4(n70), .Q(s_output_o[21]) );
  AO22X1 U24 ( .IN1(s_frac_rnd[21]), .IN2(n69), .IN3(s_frac_rnd[20]), .IN4(n70), .Q(s_output_o[20]) );
  AO22X1 U25 ( .IN1(s_frac_rnd[2]), .IN2(n69), .IN3(s_frac_rnd[1]), .IN4(n70), 
        .Q(s_output_o[1]) );
  AO22X1 U26 ( .IN1(s_frac_rnd[20]), .IN2(n69), .IN3(s_frac_rnd[19]), .IN4(n70), .Q(s_output_o[19]) );
  AO22X1 U27 ( .IN1(s_frac_rnd[19]), .IN2(n69), .IN3(s_frac_rnd[18]), .IN4(n70), .Q(s_output_o[18]) );
  AO22X1 U28 ( .IN1(s_frac_rnd[18]), .IN2(n69), .IN3(s_frac_rnd[17]), .IN4(n70), .Q(s_output_o[17]) );
  AO22X1 U29 ( .IN1(s_frac_rnd[17]), .IN2(n69), .IN3(s_frac_rnd[16]), .IN4(n70), .Q(s_output_o[16]) );
  AO22X1 U30 ( .IN1(s_frac_rnd[16]), .IN2(n69), .IN3(s_frac_rnd[15]), .IN4(n70), .Q(s_output_o[15]) );
  AO22X1 U31 ( .IN1(s_frac_rnd[15]), .IN2(n69), .IN3(s_frac_rnd[14]), .IN4(n70), .Q(s_output_o[14]) );
  AO22X1 U32 ( .IN1(s_frac_rnd[14]), .IN2(n69), .IN3(s_frac_rnd[13]), .IN4(n70), .Q(s_output_o[13]) );
  AO22X1 U33 ( .IN1(s_frac_rnd[13]), .IN2(n69), .IN3(s_frac_rnd[12]), .IN4(n70), .Q(s_output_o[12]) );
  AO22X1 U34 ( .IN1(s_frac_rnd[12]), .IN2(n69), .IN3(s_frac_rnd[11]), .IN4(n70), .Q(s_output_o[11]) );
  AO22X1 U35 ( .IN1(s_frac_rnd[11]), .IN2(n69), .IN3(s_frac_rnd[10]), .IN4(n70), .Q(s_output_o[10]) );
  AO22X1 U36 ( .IN1(s_frac_rnd[1]), .IN2(n69), .IN3(s_frac_rnd[0]), .IN4(n70), 
        .Q(s_output_o[0]) );
  AND2X1 U37 ( .IN1(n72), .IN2(n84), .Q(n70) );
  NOR2X0 U38 ( .IN1(n85), .IN2(s_frac_rnd[24]), .QN(n72) );
  INVX0 U39 ( .INP(n86), .ZN(n85) );
  AND2X1 U40 ( .IN1(n71), .IN2(n84), .Q(n69) );
  INVX0 U41 ( .INP(n73), .ZN(n84) );
  NAND2X0 U42 ( .IN1(n81), .IN2(n87), .QN(n73) );
  AND2X1 U43 ( .IN1(s_frac_rnd[24]), .IN2(n86), .Q(n71) );
  NAND4X0 U44 ( .IN1(s_r_zeros[4]), .IN2(n67), .IN3(s_r_zeros[5]), .IN4(n88), 
        .QN(n86) );
  NOR3X0 U45 ( .IN1(s_r_zeros[1]), .IN2(s_r_zeros[3]), .IN3(s_r_zeros[2]), 
        .QN(n88) );
  NOR2X0 U46 ( .IN1(\U3/U3/Z_0 ), .IN2(n89), .QN(\U3/U2/Z_6 ) );
  XNOR2X1 U47 ( .IN1(n90), .IN2(n91), .Q(n89) );
  XNOR2X1 U48 ( .IN1(n92), .IN2(s_exp_10a[5]), .Q(\U3/U2/Z_5 ) );
  NAND2X0 U49 ( .IN1(n93), .IN2(n94), .QN(n92) );
  XNOR2X1 U50 ( .IN1(n95), .IN2(s_exp_10a[4]), .Q(\U3/U2/Z_4 ) );
  NAND2X0 U51 ( .IN1(n93), .IN2(n96), .QN(n95) );
  XNOR2X1 U52 ( .IN1(n97), .IN2(s_exp_10a[3]), .Q(\U3/U2/Z_3 ) );
  NAND2X0 U53 ( .IN1(n93), .IN2(n98), .QN(n97) );
  XOR2X1 U54 ( .IN1(n99), .IN2(s_exp_10a[2]), .Q(\U3/U2/Z_2 ) );
  AND2X1 U55 ( .IN1(n93), .IN2(\U3/U2/Z_1 ), .Q(n99) );
  XNOR2X1 U56 ( .IN1(s_exp_10a[0]), .IN2(\U3/U3/Z_0 ), .Q(\U3/U2/Z_0 ) );
  INVX0 U57 ( .INP(n100), .ZN(s_exp_10a[0]) );
  MUX21X1 U58 ( .IN1(s_zeros[0]), .IN2(s_fract_48_i[47]), .S(n93), .Q(
        \U3/U1/Z_0 ) );
  AND3X1 U59 ( .IN1(n83), .IN2(n82), .IN3(n101), .Q(N3532) );
  NAND4X0 U60 ( .IN1(n102), .IN2(n87), .IN3(n38), .IN4(n64), .QN(n101) );
  NAND2X0 U61 ( .IN1(n103), .IN2(n81), .QN(n87) );
  NOR2X0 U62 ( .IN1(n76), .IN2(n74), .QN(n81) );
  AND4X1 U63 ( .IN1(s_expb[7]), .IN2(s_expb[6]), .IN3(n104), .IN4(n105), .Q(
        n74) );
  NOR4X0 U64 ( .IN1(n1041), .IN2(n1042), .IN3(n1043), .IN4(n1044), .QN(n105)
         );
  NOR2X0 U65 ( .IN1(n1039), .IN2(n1040), .QN(n104) );
  AND4X1 U66 ( .IN1(s_expa[7]), .IN2(s_expa[6]), .IN3(n106), .IN4(n107), .Q(
        n76) );
  NOR4X0 U67 ( .IN1(n1047), .IN2(n1048), .IN3(n1049), .IN4(n1050), .QN(n107)
         );
  NOR2X0 U68 ( .IN1(n1045), .IN2(n1046), .QN(n106) );
  MUX21X1 U69 ( .IN1(n108), .IN2(n109), .S(s_expo2b[0]), .Q(n103) );
  AO21X1 U70 ( .IN1(s_expo1[0]), .IN2(s_frac2a[46]), .IN3(n110), .Q(
        s_expo2b[0]) );
  NOR2X0 U71 ( .IN1(n111), .IN2(n112), .QN(n109) );
  NAND4X0 U72 ( .IN1(s_expo2b[6]), .IN2(s_expo2b[1]), .IN3(s_expo2b[2]), .IN4(
        s_expo2b[3]), .QN(n112) );
  AO21X1 U73 ( .IN1(s_expo1[3]), .IN2(n113), .IN3(n114), .Q(s_expo2b[3]) );
  AO21X1 U74 ( .IN1(s_expo1[2]), .IN2(n115), .IN3(n116), .Q(s_expo2b[2]) );
  AO21X1 U75 ( .IN1(s_expo1[1]), .IN2(n117), .IN3(n118), .Q(s_expo2b[1]) );
  XNOR2X1 U76 ( .IN1(n119), .IN2(s_expo1[6]), .Q(s_expo2b[6]) );
  NAND4X0 U77 ( .IN1(s_expo2b[4]), .IN2(s_expo2b[5]), .IN3(s_expo2b[7]), .IN4(
        n120), .QN(n111) );
  INVX0 U78 ( .INP(s_expo2b[8]), .ZN(n120) );
  AO21X1 U79 ( .IN1(s_expo1[7]), .IN2(n121), .IN3(s_expo2b[8]), .Q(s_expo2b[7]) );
  NOR3X0 U80 ( .IN1(s_expo1[6]), .IN2(s_expo1[7]), .IN3(n119), .QN(s_expo2b[8]) );
  OR2X1 U81 ( .IN1(n119), .IN2(s_expo1[6]), .Q(n121) );
  INVX0 U82 ( .INP(n122), .ZN(n119) );
  AO21X1 U83 ( .IN1(s_expo1[5]), .IN2(n123), .IN3(n122), .Q(s_expo2b[5]) );
  NOR2X0 U84 ( .IN1(n123), .IN2(s_expo1[5]), .QN(n122) );
  INVX0 U85 ( .INP(n124), .ZN(n123) );
  AO21X1 U86 ( .IN1(s_expo1[4]), .IN2(n125), .IN3(n124), .Q(s_expo2b[4]) );
  NOR2X0 U87 ( .IN1(n125), .IN2(s_expo1[4]), .QN(n124) );
  INVX0 U88 ( .INP(n114), .ZN(n125) );
  NOR2X0 U89 ( .IN1(n113), .IN2(s_expo1[3]), .QN(n114) );
  INVX0 U90 ( .INP(n116), .ZN(n113) );
  NOR2X0 U91 ( .IN1(n115), .IN2(s_expo1[2]), .QN(n116) );
  INVX0 U92 ( .INP(n118), .ZN(n115) );
  NOR2X0 U93 ( .IN1(n117), .IN2(s_expo1[1]), .QN(n118) );
  INVX0 U94 ( .INP(n110), .ZN(n117) );
  NOR2X0 U95 ( .IN1(s_frac2a[46]), .IN2(s_expo1[0]), .QN(n110) );
  NOR4X0 U96 ( .IN1(n126), .IN2(n127), .IN3(n128), .IN4(n129), .QN(n108) );
  INVX0 U97 ( .INP(N3350), .ZN(n129) );
  INVX0 U98 ( .INP(N3349), .ZN(n128) );
  NAND3X0 U99 ( .IN1(n130), .IN2(N3347), .IN3(N3348), .QN(n127) );
  INVX0 U100 ( .INP(N3354), .ZN(n130) );
  NAND4X0 U101 ( .IN1(s_frac_rnd[24]), .IN2(N3353), .IN3(N3352), .IN4(N3351), 
        .QN(n126) );
  NAND4X0 U102 ( .IN1(n1026), .IN2(n1027), .IN3(n131), .IN4(n132), .QN(n82) );
  NOR4X0 U104 ( .IN1(s_opa_i[25]), .IN2(s_opa_i[24]), .IN3(s_opa_i[23]), .IN4(
        n77), .QN(n132) );
  NAND4X0 U105 ( .IN1(n133), .IN2(n134), .IN3(n135), .IN4(n136), .QN(n77) );
  NOR4X0 U107 ( .IN1(n137), .IN2(s_opa_i[4]), .IN3(s_opa_i[6]), .IN4(
        s_opa_i[5]), .QN(n136) );
  NAND3X0 U108 ( .IN1(n1029), .IN2(n1030), .IN3(n1028), .QN(n137) );
  NOR4X0 U109 ( .IN1(n138), .IN2(s_opa_i[1]), .IN3(s_opa_i[21]), .IN4(
        s_opa_i[20]), .QN(n135) );
  NAND3X0 U110 ( .IN1(n1032), .IN2(n1033), .IN3(n1031), .QN(n138) );
  NOR4X0 U111 ( .IN1(n139), .IN2(s_opa_i[14]), .IN3(s_opa_i[16]), .IN4(
        s_opa_i[15]), .QN(n134) );
  NAND3X0 U112 ( .IN1(n1035), .IN2(n1036), .IN3(n1034), .QN(n139) );
  NOR4X0 U113 ( .IN1(n140), .IN2(s_opa_i[11]), .IN3(s_opa_i[13]), .IN4(
        s_opa_i[12]), .QN(n133) );
  NAND2X0 U114 ( .IN1(n1037), .IN2(n1038), .QN(n140) );
  NOR3X0 U115 ( .IN1(s_opa_i[28]), .IN2(s_opa_i[30]), .IN3(s_opa_i[29]), .QN(
        n131) );
  NAND4X0 U116 ( .IN1(n1013), .IN2(n1014), .IN3(n141), .IN4(n142), .QN(n83) );
  NOR4X0 U117 ( .IN1(s_opb_i[25]), .IN2(s_opb_i[24]), .IN3(s_opb_i[23]), .IN4(
        n75), .QN(n142) );
  NAND4X0 U118 ( .IN1(n143), .IN2(n144), .IN3(n145), .IN4(n146), .QN(n75) );
  NOR4X0 U119 ( .IN1(n147), .IN2(s_opb_i[4]), .IN3(s_opb_i[6]), .IN4(
        s_opb_i[5]), .QN(n146) );
  NAND3X0 U120 ( .IN1(n1016), .IN2(n1017), .IN3(n1015), .QN(n147) );
  NOR4X0 U121 ( .IN1(n148), .IN2(s_opb_i[1]), .IN3(s_opb_i[21]), .IN4(
        s_opb_i[20]), .QN(n145) );
  NAND3X0 U122 ( .IN1(n1019), .IN2(n1020), .IN3(n1018), .QN(n148) );
  NOR4X0 U123 ( .IN1(n149), .IN2(s_opb_i[14]), .IN3(s_opb_i[16]), .IN4(
        s_opb_i[15]), .QN(n144) );
  NAND3X0 U124 ( .IN1(n1022), .IN2(n1023), .IN3(n1021), .QN(n149) );
  NOR4X0 U125 ( .IN1(n150), .IN2(s_opb_i[11]), .IN3(s_opb_i[13]), .IN4(
        s_opb_i[12]), .QN(n143) );
  NAND2X0 U126 ( .IN1(n1024), .IN2(n1025), .QN(n150) );
  NOR3X0 U127 ( .IN1(s_opb_i[28]), .IN2(s_opb_i[30]), .IN3(s_opb_i[29]), .QN(
        n141) );
  MUX21X1 U128 ( .IN1(N3302), .IN2(s_frac2a[47]), .S(n151), .Q(N3327) );
  MUX21X1 U129 ( .IN1(N3301), .IN2(s_frac2a[46]), .S(n151), .Q(N3326) );
  MUX21X1 U130 ( .IN1(N3300), .IN2(s_frac2a[45]), .S(n151), .Q(N3325) );
  MUX21X1 U131 ( .IN1(N3299), .IN2(s_frac2a[44]), .S(n151), .Q(N3324) );
  MUX21X1 U132 ( .IN1(N3298), .IN2(s_frac2a[43]), .S(n151), .Q(N3323) );
  MUX21X1 U133 ( .IN1(N3297), .IN2(s_frac2a[42]), .S(n151), .Q(N3322) );
  MUX21X1 U134 ( .IN1(N3296), .IN2(s_frac2a[41]), .S(n151), .Q(N3321) );
  MUX21X1 U135 ( .IN1(N3295), .IN2(s_frac2a[40]), .S(n151), .Q(N3320) );
  MUX21X1 U136 ( .IN1(N3294), .IN2(s_frac2a[39]), .S(n151), .Q(N3319) );
  MUX21X1 U137 ( .IN1(N3293), .IN2(s_frac2a[38]), .S(n151), .Q(N3318) );
  MUX21X1 U138 ( .IN1(N3292), .IN2(s_frac2a[37]), .S(n151), .Q(N3317) );
  MUX21X1 U139 ( .IN1(N3291), .IN2(s_frac2a[36]), .S(n151), .Q(N3316) );
  MUX21X1 U140 ( .IN1(N3290), .IN2(s_frac2a[35]), .S(n151), .Q(N3315) );
  MUX21X1 U141 ( .IN1(N3289), .IN2(s_frac2a[34]), .S(n151), .Q(N3314) );
  MUX21X1 U142 ( .IN1(N3288), .IN2(s_frac2a[33]), .S(n151), .Q(N3313) );
  MUX21X1 U143 ( .IN1(N3287), .IN2(s_frac2a[32]), .S(n151), .Q(N3312) );
  MUX21X1 U144 ( .IN1(N3286), .IN2(s_frac2a[31]), .S(n151), .Q(N3311) );
  MUX21X1 U145 ( .IN1(N3285), .IN2(s_frac2a[30]), .S(n151), .Q(N3310) );
  MUX21X1 U146 ( .IN1(N3284), .IN2(s_frac2a[29]), .S(n151), .Q(N3309) );
  MUX21X1 U147 ( .IN1(N3283), .IN2(s_frac2a[28]), .S(n151), .Q(N3308) );
  MUX21X1 U148 ( .IN1(N3282), .IN2(s_frac2a[27]), .S(n151), .Q(N3307) );
  MUX21X1 U149 ( .IN1(N3281), .IN2(s_frac2a[26]), .S(n151), .Q(N3306) );
  MUX21X1 U150 ( .IN1(N3280), .IN2(s_frac2a[25]), .S(n151), .Q(N3305) );
  MUX21X1 U151 ( .IN1(N3279), .IN2(s_frac2a[24]), .S(n151), .Q(N3304) );
  MUX21X1 U152 ( .IN1(N3278), .IN2(s_frac2a[23]), .S(n151), .Q(N3303) );
  AND2X1 U153 ( .IN1(n152), .IN2(n153), .Q(n151) );
  NAND4X0 U154 ( .IN1(s_frac2a[22]), .IN2(n154), .IN3(n39), .IN4(n65), .QN(
        n153) );
  NAND3X0 U155 ( .IN1(n38), .IN2(n68), .IN3(n102), .QN(n154) );
  NAND2X0 U156 ( .IN1(n155), .IN2(n156), .QN(n152) );
  NAND3X0 U157 ( .IN1(n38), .IN2(n64), .IN3(n102), .QN(n156) );
  AND4X1 U158 ( .IN1(n157), .IN2(n158), .IN3(n159), .IN4(n160), .Q(n102) );
  NOR4X0 U159 ( .IN1(n161), .IN2(s_frac2a[4]), .IN3(s_frac2a[6]), .IN4(
        s_frac2a[5]), .QN(n160) );
  NAND3X0 U160 ( .IN1(n1052), .IN2(n1053), .IN3(n1051), .QN(n161) );
  NOR4X0 U161 ( .IN1(n162), .IN2(s_frac2a[18]), .IN3(s_frac2a[1]), .IN4(
        s_frac2a[19]), .QN(n159) );
  NAND3X0 U162 ( .IN1(n1054), .IN2(n1055), .IN3(n1056), .QN(n162) );
  NOR4X0 U163 ( .IN1(n163), .IN2(s_frac2a[12]), .IN3(s_frac2a[14]), .IN4(
        s_frac2a[13]), .QN(n158) );
  NAND3X0 U164 ( .IN1(n1058), .IN2(n1059), .IN3(n1057), .QN(n163) );
  OA221X1 U165 ( .IN1(s_r_zeros[5]), .IN2(n164), .IN3(n165), .IN4(n166), .IN5(
        n167), .Q(n157) );
  NOR3X0 U166 ( .IN1(s_frac2a[0]), .IN2(s_frac2a[11]), .IN3(s_frac2a[10]), 
        .QN(n167) );
  OA21X1 U167 ( .IN1(s_r_zeros[4]), .IN2(n168), .IN3(n169), .Q(n166) );
  AO221X1 U168 ( .IN1(n168), .IN2(s_r_zeros[4]), .IN3(s_r_zeros[3]), .IN4(n170), .IN5(n171), .Q(n169) );
  OA222X1 U169 ( .IN1(s_r_zeros[3]), .IN2(n170), .IN3(s_r_zeros[2]), .IN4(n172), .IN5(n173), .IN6(n174), .Q(n171) );
  AND2X1 U170 ( .IN1(n174), .IN2(n173), .Q(n172) );
  OA22X1 U171 ( .IN1(n175), .IN2(n176), .IN3(n177), .IN4(s_r_zeros[1]), .Q(
        n173) );
  AND2X1 U172 ( .IN1(n176), .IN2(n175), .Q(n177) );
  NOR2X0 U173 ( .IN1(n178), .IN2(n179), .QN(n176) );
  MUX21X1 U174 ( .IN1(s_shr2[1]), .IN2(n180), .S(s_frac_rnd[24]), .Q(n178) );
  NAND2X0 U175 ( .IN1(n181), .IN2(n67), .QN(n175) );
  XNOR2X1 U176 ( .IN1(n32), .IN2(s_frac_rnd[24]), .Q(n181) );
  XOR2X1 U177 ( .IN1(n17), .IN2(n182), .Q(n174) );
  NOR2X0 U178 ( .IN1(n183), .IN2(n184), .QN(n170) );
  MUX21X1 U179 ( .IN1(s_shr2[3]), .IN2(n185), .S(n182), .Q(n183) );
  XNOR2X1 U180 ( .IN1(n186), .IN2(n40), .Q(n168) );
  AND2X1 U181 ( .IN1(s_r_zeros[5]), .IN2(n164), .Q(n165) );
  XOR2X1 U182 ( .IN1(n55), .IN2(n187), .Q(n164) );
  NOR2X0 U183 ( .IN1(n186), .IN2(n40), .QN(n187) );
  NAND2X0 U184 ( .IN1(n182), .IN2(n188), .QN(n186) );
  AND2X1 U185 ( .IN1(n189), .IN2(s_frac_rnd[24]), .Q(n182) );
  MUX21X1 U186 ( .IN1(n190), .IN2(n191), .S(n39), .Q(n155) );
  NOR2X0 U187 ( .IN1(s_output_o[31]), .IN2(n65), .QN(n191) );
  AND2X1 U188 ( .IN1(\s_rmode_i[1] ), .IN2(s_output_o[31]), .Q(n190) );
  OAI22X1 U189 ( .IN1(n192), .IN2(n193), .IN3(n194), .IN4(n195), .QN(N3236) );
  OA21X1 U190 ( .IN1(n196), .IN2(n197), .IN3(n198), .Q(n194) );
  MUX21X1 U191 ( .IN1(n199), .IN2(n200), .S(n41), .Q(n198) );
  OA222X1 U192 ( .IN1(n201), .IN2(n202), .IN3(n203), .IN4(n204), .IN5(n205), 
        .IN6(n206), .Q(n200) );
  OA221X1 U193 ( .IN1(n207), .IN2(n49), .IN3(n30), .IN4(n208), .IN5(n209), .Q(
        n196) );
  OA22X1 U194 ( .IN1(n210), .IN2(n57), .IN3(n211), .IN4(n15), .Q(n209) );
  OAI222X1 U195 ( .IN1(n212), .IN2(n213), .IN3(n214), .IN4(n195), .IN5(n193), 
        .IN6(n215), .QN(N3235) );
  OA21X1 U196 ( .IN1(n216), .IN2(n197), .IN3(n217), .Q(n214) );
  MUX21X1 U197 ( .IN1(n218), .IN2(n219), .S(n41), .Q(n217) );
  OA222X1 U198 ( .IN1(n202), .IN2(n220), .IN3(n221), .IN4(n204), .IN5(n222), 
        .IN6(n206), .Q(n219) );
  OA221X1 U199 ( .IN1(n207), .IN2(n31), .IN3(n57), .IN4(n208), .IN5(n223), .Q(
        n216) );
  OA22X1 U200 ( .IN1(n210), .IN2(n15), .IN3(n211), .IN4(n49), .Q(n223) );
  OAI222X1 U201 ( .IN1(n213), .IN2(n224), .IN3(n225), .IN4(n195), .IN5(n193), 
        .IN6(n226), .QN(N3234) );
  OA21X1 U202 ( .IN1(n227), .IN2(n197), .IN3(n228), .Q(n225) );
  MUX21X1 U203 ( .IN1(n229), .IN2(n230), .S(n41), .Q(n228) );
  OA222X1 U204 ( .IN1(n202), .IN2(n231), .IN3(n232), .IN4(n204), .IN5(n233), 
        .IN6(n206), .Q(n230) );
  OA221X1 U205 ( .IN1(n207), .IN2(n46), .IN3(n15), .IN4(n208), .IN5(n234), .Q(
        n227) );
  OA22X1 U206 ( .IN1(n210), .IN2(n49), .IN3(n211), .IN4(n31), .Q(n234) );
  OAI222X1 U207 ( .IN1(n235), .IN2(n213), .IN3(n236), .IN4(n195), .IN5(n193), 
        .IN6(n237), .QN(N3233) );
  OA21X1 U208 ( .IN1(n238), .IN2(n197), .IN3(n239), .Q(n236) );
  MUX21X1 U209 ( .IN1(n240), .IN2(n241), .S(n41), .Q(n239) );
  OA222X1 U210 ( .IN1(n202), .IN2(n242), .IN3(n243), .IN4(n204), .IN5(n244), 
        .IN6(n206), .Q(n241) );
  INVX0 U211 ( .INP(n245), .ZN(n206) );
  INVX0 U212 ( .INP(n246), .ZN(n204) );
  INVX0 U213 ( .INP(n247), .ZN(n202) );
  NAND2X0 U214 ( .IN1(n248), .IN2(n41), .QN(n197) );
  OA221X1 U215 ( .IN1(n207), .IN2(n36), .IN3(n208), .IN4(n49), .IN5(n249), .Q(
        n238) );
  OA22X1 U216 ( .IN1(n210), .IN2(n31), .IN3(n211), .IN4(n46), .Q(n249) );
  INVX0 U217 ( .INP(n250), .ZN(n211) );
  INVX0 U218 ( .INP(n251), .ZN(n210) );
  INVX0 U219 ( .INP(n252), .ZN(n208) );
  INVX0 U220 ( .INP(n253), .ZN(n207) );
  NAND3X0 U221 ( .IN1(n254), .IN2(n255), .IN3(n256), .QN(N3232) );
  OA222X1 U222 ( .IN1(n257), .IN2(n258), .IN3(n205), .IN4(n259), .IN5(n193), 
        .IN6(n260), .Q(n256) );
  AOI221X1 U223 ( .IN1(s_fract_48_i[43]), .IN2(n252), .IN3(s_fract_48_i[40]), 
        .IN4(n253), .IN5(n261), .QN(n205) );
  AO22X1 U224 ( .IN1(s_fract_48_i[41]), .IN2(n250), .IN3(s_fract_48_i[42]), 
        .IN4(n251), .Q(n261) );
  OA22X1 U225 ( .IN1(n262), .IN2(n263), .IN3(n201), .IN4(n264), .Q(n255) );
  OA22X1 U226 ( .IN1(n203), .IN2(n265), .IN3(n266), .IN4(n267), .Q(n254) );
  NAND3X0 U227 ( .IN1(n268), .IN2(n269), .IN3(n270), .QN(N3231) );
  OA222X1 U228 ( .IN1(n262), .IN2(n271), .IN3(n193), .IN4(n272), .IN5(n258), 
        .IN6(n273), .Q(n270) );
  OA22X1 U229 ( .IN1(n220), .IN2(n264), .IN3(n221), .IN4(n265), .Q(n269) );
  OA22X1 U230 ( .IN1(n267), .IN2(n274), .IN3(n222), .IN4(n259), .Q(n268) );
  AOI221X1 U231 ( .IN1(s_fract_48_i[42]), .IN2(n252), .IN3(s_fract_48_i[39]), 
        .IN4(n253), .IN5(n275), .QN(n222) );
  AO22X1 U232 ( .IN1(s_fract_48_i[40]), .IN2(n250), .IN3(s_fract_48_i[41]), 
        .IN4(n251), .Q(n275) );
  NAND3X0 U233 ( .IN1(n276), .IN2(n277), .IN3(n278), .QN(N3230) );
  OA222X1 U234 ( .IN1(n262), .IN2(n279), .IN3(n193), .IN4(n280), .IN5(n258), 
        .IN6(n281), .Q(n278) );
  OA22X1 U235 ( .IN1(n231), .IN2(n264), .IN3(n232), .IN4(n265), .Q(n277) );
  OA22X1 U236 ( .IN1(n267), .IN2(n282), .IN3(n233), .IN4(n259), .Q(n276) );
  AOI221X1 U237 ( .IN1(s_fract_48_i[41]), .IN2(n252), .IN3(s_fract_48_i[38]), 
        .IN4(n253), .IN5(n283), .QN(n233) );
  AO22X1 U238 ( .IN1(s_fract_48_i[39]), .IN2(n250), .IN3(s_fract_48_i[40]), 
        .IN4(n251), .Q(n283) );
  NAND3X0 U239 ( .IN1(n284), .IN2(n285), .IN3(n286), .QN(N3229) );
  OA222X1 U240 ( .IN1(n262), .IN2(n287), .IN3(n193), .IN4(n288), .IN5(n258), 
        .IN6(n289), .Q(n286) );
  OA22X1 U241 ( .IN1(n242), .IN2(n264), .IN3(n243), .IN4(n265), .Q(n285) );
  OA22X1 U242 ( .IN1(n267), .IN2(n290), .IN3(n244), .IN4(n259), .Q(n284) );
  AOI221X1 U243 ( .IN1(s_fract_48_i[40]), .IN2(n252), .IN3(s_fract_48_i[37]), 
        .IN4(n253), .IN5(n291), .QN(n244) );
  AO22X1 U244 ( .IN1(s_fract_48_i[38]), .IN2(n250), .IN3(s_fract_48_i[39]), 
        .IN4(n251), .Q(n291) );
  NAND3X0 U245 ( .IN1(n292), .IN2(n293), .IN3(n294), .QN(N3228) );
  OA222X1 U246 ( .IN1(n262), .IN2(n295), .IN3(n193), .IN4(n296), .IN5(n258), 
        .IN6(n297), .Q(n294) );
  OA22X1 U247 ( .IN1(n264), .IN2(n266), .IN3(n201), .IN4(n265), .Q(n293) );
  OA22X1 U248 ( .IN1(n267), .IN2(n298), .IN3(n203), .IN4(n259), .Q(n292) );
  AOI221X1 U249 ( .IN1(s_fract_48_i[39]), .IN2(n252), .IN3(s_fract_48_i[36]), 
        .IN4(n253), .IN5(n299), .QN(n203) );
  AO22X1 U250 ( .IN1(s_fract_48_i[37]), .IN2(n250), .IN3(s_fract_48_i[38]), 
        .IN4(n251), .Q(n299) );
  NAND3X0 U251 ( .IN1(n300), .IN2(n301), .IN3(n302), .QN(N3227) );
  OA222X1 U252 ( .IN1(n262), .IN2(n303), .IN3(n193), .IN4(n304), .IN5(n258), 
        .IN6(n305), .Q(n302) );
  OA22X1 U253 ( .IN1(n264), .IN2(n274), .IN3(n220), .IN4(n265), .Q(n301) );
  OA22X1 U254 ( .IN1(n267), .IN2(n306), .IN3(n221), .IN4(n259), .Q(n300) );
  AOI221X1 U255 ( .IN1(s_fract_48_i[38]), .IN2(n252), .IN3(s_fract_48_i[35]), 
        .IN4(n253), .IN5(n307), .QN(n221) );
  AO22X1 U256 ( .IN1(s_fract_48_i[36]), .IN2(n250), .IN3(s_fract_48_i[37]), 
        .IN4(n251), .Q(n307) );
  NAND3X0 U257 ( .IN1(n308), .IN2(n309), .IN3(n310), .QN(N3226) );
  OA222X1 U258 ( .IN1(n262), .IN2(n311), .IN3(n193), .IN4(n312), .IN5(n258), 
        .IN6(n313), .Q(n310) );
  OA22X1 U259 ( .IN1(n264), .IN2(n282), .IN3(n231), .IN4(n265), .Q(n309) );
  OA22X1 U260 ( .IN1(n267), .IN2(n314), .IN3(n232), .IN4(n259), .Q(n308) );
  AOI221X1 U261 ( .IN1(s_fract_48_i[37]), .IN2(n252), .IN3(s_fract_48_i[34]), 
        .IN4(n253), .IN5(n315), .QN(n232) );
  AO22X1 U262 ( .IN1(s_fract_48_i[35]), .IN2(n250), .IN3(s_fract_48_i[36]), 
        .IN4(n251), .Q(n315) );
  NAND3X0 U263 ( .IN1(n316), .IN2(n317), .IN3(n318), .QN(N3225) );
  OA222X1 U264 ( .IN1(n262), .IN2(n319), .IN3(n243), .IN4(n259), .IN5(n258), 
        .IN6(n320), .Q(n318) );
  AOI221X1 U265 ( .IN1(s_fract_48_i[36]), .IN2(n252), .IN3(s_fract_48_i[33]), 
        .IN4(n253), .IN5(n321), .QN(n243) );
  AO22X1 U266 ( .IN1(s_fract_48_i[34]), .IN2(n250), .IN3(s_fract_48_i[35]), 
        .IN4(n251), .Q(n321) );
  INVX0 U267 ( .INP(n322), .ZN(n319) );
  OA22X1 U268 ( .IN1(n193), .IN2(n323), .IN3(n264), .IN4(n290), .Q(n317) );
  OA22X1 U269 ( .IN1(n242), .IN2(n265), .IN3(n267), .IN4(n324), .Q(n316) );
  NAND3X0 U270 ( .IN1(n325), .IN2(n326), .IN3(n327), .QN(N3224) );
  OA222X1 U271 ( .IN1(n262), .IN2(n328), .IN3(n201), .IN4(n259), .IN5(n258), 
        .IN6(n329), .Q(n327) );
  AO221X1 U272 ( .IN1(n252), .IN2(n29), .IN3(n253), .IN4(n13), .IN5(n330), .Q(
        n201) );
  AO22X1 U273 ( .IN1(n250), .IN2(n4), .IN3(n251), .IN4(n52), .Q(n330) );
  INVX0 U274 ( .INP(n331), .ZN(n328) );
  OA22X1 U275 ( .IN1(n332), .IN2(n333), .IN3(n264), .IN4(n298), .Q(n326) );
  OA22X1 U276 ( .IN1(n265), .IN2(n266), .IN3(n267), .IN4(n334), .Q(n325) );
  NAND3X0 U277 ( .IN1(n335), .IN2(n336), .IN3(n337), .QN(N3223) );
  OA222X1 U278 ( .IN1(n262), .IN2(n338), .IN3(n220), .IN4(n259), .IN5(n258), 
        .IN6(n339), .Q(n337) );
  AO221X1 U279 ( .IN1(n252), .IN2(n52), .IN3(n253), .IN4(n18), .IN5(n340), .Q(
        n220) );
  AO22X1 U280 ( .IN1(n250), .IN2(n13), .IN3(n251), .IN4(n4), .Q(n340) );
  INVX0 U281 ( .INP(n341), .ZN(n338) );
  OA22X1 U282 ( .IN1(n333), .IN2(n342), .IN3(n264), .IN4(n306), .Q(n336) );
  OA22X1 U283 ( .IN1(n265), .IN2(n274), .IN3(n267), .IN4(n343), .Q(n335) );
  NAND3X0 U284 ( .IN1(n344), .IN2(n345), .IN3(n346), .QN(N3222) );
  OA222X1 U285 ( .IN1(n262), .IN2(n347), .IN3(n231), .IN4(n259), .IN5(n258), 
        .IN6(n348), .Q(n346) );
  AO221X1 U286 ( .IN1(n252), .IN2(n4), .IN3(n253), .IN4(n6), .IN5(n349), .Q(
        n231) );
  AO22X1 U287 ( .IN1(n250), .IN2(n18), .IN3(n251), .IN4(n13), .Q(n349) );
  INVX0 U288 ( .INP(n350), .ZN(n347) );
  OA22X1 U289 ( .IN1(n333), .IN2(n351), .IN3(n264), .IN4(n314), .Q(n345) );
  NAND2X0 U290 ( .IN1(n352), .IN2(n248), .QN(n333) );
  INVX0 U291 ( .INP(n193), .ZN(n352) );
  OA22X1 U292 ( .IN1(n265), .IN2(n282), .IN3(n267), .IN4(n353), .Q(n344) );
  NAND3X0 U293 ( .IN1(n354), .IN2(n355), .IN3(n356), .QN(N3221) );
  OA222X1 U294 ( .IN1(n357), .IN2(n262), .IN3(n242), .IN4(n259), .IN5(n258), 
        .IN6(n358), .Q(n356) );
  AO221X1 U295 ( .IN1(n252), .IN2(n13), .IN3(n253), .IN4(n56), .IN5(n359), .Q(
        n242) );
  AO22X1 U296 ( .IN1(n250), .IN2(n6), .IN3(n251), .IN4(n18), .Q(n359) );
  INVX0 U297 ( .INP(n360), .ZN(n357) );
  OA22X1 U298 ( .IN1(n193), .IN2(n361), .IN3(n264), .IN4(n324), .Q(n355) );
  NAND2X0 U299 ( .IN1(n362), .IN2(n246), .QN(n264) );
  INVX0 U300 ( .INP(n363), .ZN(n361) );
  NAND3X0 U301 ( .IN1(n364), .IN2(n41), .IN3(s_shl2[5]), .QN(n193) );
  OA22X1 U302 ( .IN1(n265), .IN2(n290), .IN3(n267), .IN4(n365), .Q(n354) );
  NAND2X0 U303 ( .IN1(n362), .IN2(n247), .QN(n267) );
  NAND2X0 U304 ( .IN1(n362), .IN2(n245), .QN(n265) );
  AO221X1 U305 ( .IN1(n362), .IN2(n366), .IN3(n367), .IN4(n368), .IN5(n369), 
        .Q(N3220) );
  OAI22X1 U306 ( .IN1(n258), .IN2(n192), .IN3(n370), .IN4(n371), .QN(n369) );
  INVX0 U307 ( .INP(n199), .ZN(n366) );
  AO221X1 U308 ( .IN1(n247), .IN2(n372), .IN3(n248), .IN4(n266), .IN5(n373), 
        .Q(n199) );
  AO22X1 U309 ( .IN1(n245), .IN2(n298), .IN3(n246), .IN4(n334), .Q(n373) );
  AO221X1 U310 ( .IN1(n252), .IN2(n18), .IN3(n253), .IN4(n11), .IN5(n374), .Q(
        n266) );
  AO22X1 U311 ( .IN1(n250), .IN2(n56), .IN3(n251), .IN4(n6), .Q(n374) );
  AO221X1 U312 ( .IN1(n375), .IN2(n376), .IN3(n377), .IN4(n378), .IN5(n379), 
        .Q(N3219) );
  OAI22X1 U313 ( .IN1(n262), .IN2(n380), .IN3(n381), .IN4(n218), .QN(n379) );
  AO221X1 U314 ( .IN1(n247), .IN2(n382), .IN3(n248), .IN4(n274), .IN5(n383), 
        .Q(n218) );
  AO22X1 U315 ( .IN1(n245), .IN2(n306), .IN3(n246), .IN4(n343), .Q(n383) );
  AO221X1 U316 ( .IN1(n252), .IN2(n6), .IN3(n253), .IN4(n43), .IN5(n384), .Q(
        n274) );
  AO22X1 U317 ( .IN1(n250), .IN2(n11), .IN3(n251), .IN4(n56), .Q(n384) );
  INVX0 U318 ( .INP(n215), .ZN(n378) );
  AO221X1 U319 ( .IN1(n375), .IN2(n385), .IN3(n377), .IN4(n386), .IN5(n387), 
        .Q(N3218) );
  OAI22X1 U320 ( .IN1(n262), .IN2(n388), .IN3(n381), .IN4(n229), .QN(n387) );
  AO221X1 U321 ( .IN1(n247), .IN2(n389), .IN3(n248), .IN4(n282), .IN5(n390), 
        .Q(n229) );
  AO22X1 U322 ( .IN1(n245), .IN2(n314), .IN3(n246), .IN4(n353), .Q(n390) );
  AO221X1 U323 ( .IN1(n252), .IN2(n56), .IN3(n253), .IN4(n10), .IN5(n391), .Q(
        n282) );
  AO22X1 U324 ( .IN1(n250), .IN2(n43), .IN3(n251), .IN4(n11), .Q(n391) );
  INVX0 U325 ( .INP(n226), .ZN(n386) );
  AO221X1 U326 ( .IN1(n375), .IN2(n392), .IN3(n377), .IN4(n393), .IN5(n394), 
        .Q(N3217) );
  OAI22X1 U327 ( .IN1(n262), .IN2(n395), .IN3(n381), .IN4(n240), .QN(n394) );
  AO221X1 U328 ( .IN1(n247), .IN2(n396), .IN3(n248), .IN4(n290), .IN5(n397), 
        .Q(n240) );
  AO22X1 U329 ( .IN1(n245), .IN2(n324), .IN3(n246), .IN4(n365), .Q(n397) );
  AO221X1 U330 ( .IN1(n252), .IN2(n11), .IN3(n253), .IN4(n25), .IN5(n398), .Q(
        n290) );
  AO22X1 U331 ( .IN1(n250), .IN2(n10), .IN3(n251), .IN4(n43), .Q(n398) );
  INVX0 U332 ( .INP(n237), .ZN(n393) );
  NOR2X0 U333 ( .IN1(n370), .IN2(n399), .QN(n375) );
  AO221X1 U334 ( .IN1(n400), .IN2(n362), .IN3(n367), .IN4(n401), .IN5(n402), 
        .Q(N3216) );
  OAI22X1 U335 ( .IN1(n258), .IN2(n260), .IN3(n370), .IN4(n263), .QN(n402) );
  INVX0 U336 ( .INP(n257), .ZN(n400) );
  AO221X1 U337 ( .IN1(n247), .IN2(n403), .IN3(n248), .IN4(n298), .IN5(n404), 
        .Q(n257) );
  AO22X1 U338 ( .IN1(n245), .IN2(n334), .IN3(n246), .IN4(n372), .Q(n404) );
  AO221X1 U339 ( .IN1(n252), .IN2(n43), .IN3(n253), .IN4(n1), .IN5(n405), .Q(
        n298) );
  AO22X1 U340 ( .IN1(n250), .IN2(n25), .IN3(n251), .IN4(n10), .Q(n405) );
  AO221X1 U341 ( .IN1(n406), .IN2(n362), .IN3(n367), .IN4(n407), .IN5(n408), 
        .Q(N3215) );
  OAI22X1 U342 ( .IN1(n370), .IN2(n271), .IN3(n272), .IN4(n258), .QN(n408) );
  INVX0 U343 ( .INP(n273), .ZN(n406) );
  AO221X1 U344 ( .IN1(n247), .IN2(n409), .IN3(n248), .IN4(n306), .IN5(n410), 
        .Q(n273) );
  AO22X1 U345 ( .IN1(n245), .IN2(n343), .IN3(n246), .IN4(n382), .Q(n410) );
  AO221X1 U346 ( .IN1(n252), .IN2(n10), .IN3(n253), .IN4(n23), .IN5(n411), .Q(
        n306) );
  AO22X1 U347 ( .IN1(n250), .IN2(n1), .IN3(n251), .IN4(n25), .Q(n411) );
  AO221X1 U348 ( .IN1(n412), .IN2(n362), .IN3(n367), .IN4(n413), .IN5(n414), 
        .Q(N3214) );
  OAI22X1 U349 ( .IN1(n370), .IN2(n279), .IN3(n280), .IN4(n258), .QN(n414) );
  INVX0 U350 ( .INP(n281), .ZN(n412) );
  AO221X1 U351 ( .IN1(n247), .IN2(n415), .IN3(n248), .IN4(n314), .IN5(n416), 
        .Q(n281) );
  AO22X1 U352 ( .IN1(n245), .IN2(n353), .IN3(n246), .IN4(n389), .Q(n416) );
  AO221X1 U353 ( .IN1(n252), .IN2(n25), .IN3(n253), .IN4(n47), .IN5(n417), .Q(
        n314) );
  AO22X1 U354 ( .IN1(n250), .IN2(n23), .IN3(n251), .IN4(n1), .Q(n417) );
  AO221X1 U355 ( .IN1(n418), .IN2(n362), .IN3(n367), .IN4(n419), .IN5(n420), 
        .Q(N3213) );
  OAI22X1 U356 ( .IN1(n370), .IN2(n287), .IN3(n288), .IN4(n258), .QN(n420) );
  INVX0 U357 ( .INP(n289), .ZN(n418) );
  AO221X1 U358 ( .IN1(n247), .IN2(n421), .IN3(n248), .IN4(n324), .IN5(n422), 
        .Q(n289) );
  AO22X1 U359 ( .IN1(n245), .IN2(n365), .IN3(n246), .IN4(n396), .Q(n422) );
  AO221X1 U360 ( .IN1(n252), .IN2(n1), .IN3(n253), .IN4(n21), .IN5(n423), .Q(
        n324) );
  AO22X1 U361 ( .IN1(n250), .IN2(n47), .IN3(n251), .IN4(n23), .Q(n423) );
  AO221X1 U362 ( .IN1(n424), .IN2(n362), .IN3(n367), .IN4(n425), .IN5(n426), 
        .Q(N3212) );
  OAI22X1 U363 ( .IN1(n370), .IN2(n295), .IN3(n296), .IN4(n258), .QN(n426) );
  INVX0 U364 ( .INP(n297), .ZN(n424) );
  AO221X1 U365 ( .IN1(n427), .IN2(n247), .IN3(n248), .IN4(n334), .IN5(n428), 
        .Q(n297) );
  AO22X1 U366 ( .IN1(n245), .IN2(n372), .IN3(n246), .IN4(n403), .Q(n428) );
  AO221X1 U367 ( .IN1(n252), .IN2(n23), .IN3(n253), .IN4(n45), .IN5(n429), .Q(
        n334) );
  AO22X1 U368 ( .IN1(n250), .IN2(n21), .IN3(n251), .IN4(n47), .Q(n429) );
  AO221X1 U369 ( .IN1(n430), .IN2(n362), .IN3(n367), .IN4(n431), .IN5(n432), 
        .Q(N3211) );
  OAI22X1 U370 ( .IN1(n370), .IN2(n303), .IN3(n304), .IN4(n258), .QN(n432) );
  INVX0 U371 ( .INP(n305), .ZN(n430) );
  AO221X1 U372 ( .IN1(n247), .IN2(n433), .IN3(n248), .IN4(n343), .IN5(n434), 
        .Q(n305) );
  AO22X1 U373 ( .IN1(n245), .IN2(n382), .IN3(n246), .IN4(n409), .Q(n434) );
  AO221X1 U374 ( .IN1(n252), .IN2(n47), .IN3(n253), .IN4(n24), .IN5(n435), .Q(
        n343) );
  AO22X1 U375 ( .IN1(n250), .IN2(n45), .IN3(n251), .IN4(n21), .Q(n435) );
  AO221X1 U376 ( .IN1(n436), .IN2(n362), .IN3(n367), .IN4(n437), .IN5(n438), 
        .Q(N3210) );
  OAI22X1 U377 ( .IN1(n370), .IN2(n311), .IN3(n312), .IN4(n258), .QN(n438) );
  INVX0 U378 ( .INP(n377), .ZN(n258) );
  INVX0 U379 ( .INP(n313), .ZN(n436) );
  AO221X1 U380 ( .IN1(n439), .IN2(n247), .IN3(n248), .IN4(n353), .IN5(n440), 
        .Q(n313) );
  AO22X1 U381 ( .IN1(n245), .IN2(n389), .IN3(n246), .IN4(n415), .Q(n440) );
  AO221X1 U382 ( .IN1(n252), .IN2(n21), .IN3(n253), .IN4(n3), .IN5(n441), .Q(
        n353) );
  AO22X1 U383 ( .IN1(n250), .IN2(n24), .IN3(n251), .IN4(n45), .Q(n441) );
  AO221X1 U384 ( .IN1(n442), .IN2(n362), .IN3(n367), .IN4(n443), .IN5(n444), 
        .Q(N3209) );
  AO22X1 U385 ( .IN1(n445), .IN2(n322), .IN3(n446), .IN4(n377), .Q(n444) );
  INVX0 U386 ( .INP(n320), .ZN(n442) );
  AO221X1 U387 ( .IN1(n247), .IN2(n447), .IN3(n248), .IN4(n365), .IN5(n448), 
        .Q(n320) );
  AO22X1 U388 ( .IN1(n245), .IN2(n396), .IN3(n246), .IN4(n421), .Q(n448) );
  AO221X1 U389 ( .IN1(n252), .IN2(n45), .IN3(n253), .IN4(n26), .IN5(n449), .Q(
        n365) );
  AO22X1 U390 ( .IN1(n250), .IN2(n3), .IN3(n251), .IN4(n24), .Q(n449) );
  AO221X1 U391 ( .IN1(n450), .IN2(n451), .IN3(n445), .IN4(n331), .IN5(n452), 
        .Q(N3208) );
  AO22X1 U392 ( .IN1(n367), .IN2(n453), .IN3(n454), .IN4(n362), .Q(n452) );
  INVX0 U393 ( .INP(n329), .ZN(n454) );
  AO221X1 U394 ( .IN1(n455), .IN2(n247), .IN3(n248), .IN4(n372), .IN5(n456), 
        .Q(n329) );
  AO22X1 U395 ( .IN1(n245), .IN2(n403), .IN3(n427), .IN4(n246), .Q(n456) );
  AO221X1 U396 ( .IN1(n252), .IN2(n24), .IN3(n253), .IN4(n44), .IN5(n457), .Q(
        n372) );
  AO22X1 U397 ( .IN1(n250), .IN2(n26), .IN3(n251), .IN4(n3), .Q(n457) );
  AO221X1 U398 ( .IN1(n450), .IN2(n458), .IN3(n445), .IN4(n341), .IN5(n459), 
        .Q(N3207) );
  AO22X1 U399 ( .IN1(n367), .IN2(n460), .IN3(n461), .IN4(n362), .Q(n459) );
  INVX0 U400 ( .INP(n339), .ZN(n461) );
  AO221X1 U401 ( .IN1(n247), .IN2(n462), .IN3(n248), .IN4(n382), .IN5(n463), 
        .Q(n339) );
  AO22X1 U402 ( .IN1(n245), .IN2(n409), .IN3(n246), .IN4(n433), .Q(n463) );
  AO221X1 U403 ( .IN1(n252), .IN2(n3), .IN3(n253), .IN4(n20), .IN5(n464), .Q(
        n382) );
  AO22X1 U404 ( .IN1(n250), .IN2(n44), .IN3(n251), .IN4(n26), .Q(n464) );
  AO221X1 U405 ( .IN1(n450), .IN2(n465), .IN3(n445), .IN4(n350), .IN5(n466), 
        .Q(N3206) );
  AO22X1 U406 ( .IN1(n367), .IN2(n467), .IN3(n468), .IN4(n362), .Q(n466) );
  INVX0 U407 ( .INP(n348), .ZN(n468) );
  AO221X1 U408 ( .IN1(n469), .IN2(n247), .IN3(n248), .IN4(n389), .IN5(n470), 
        .Q(n348) );
  AO22X1 U409 ( .IN1(n245), .IN2(n415), .IN3(n439), .IN4(n246), .Q(n470) );
  AO221X1 U410 ( .IN1(n252), .IN2(n26), .IN3(n253), .IN4(n48), .IN5(n471), .Q(
        n389) );
  AO22X1 U411 ( .IN1(n250), .IN2(n20), .IN3(n251), .IN4(n44), .Q(n471) );
  AND2X1 U412 ( .IN1(n377), .IN2(n248), .Q(n450) );
  AO221X1 U413 ( .IN1(n472), .IN2(n362), .IN3(n367), .IN4(n473), .IN5(n474), 
        .Q(N3205) );
  AO22X1 U414 ( .IN1(n445), .IN2(n360), .IN3(n363), .IN4(n377), .Q(n474) );
  NOR2X0 U415 ( .IN1(n195), .IN2(n41), .QN(n377) );
  INVX0 U416 ( .INP(n358), .ZN(n472) );
  AO221X1 U417 ( .IN1(n247), .IN2(n475), .IN3(n248), .IN4(n396), .IN5(n476), 
        .Q(n358) );
  AO22X1 U418 ( .IN1(n245), .IN2(n421), .IN3(n246), .IN4(n447), .Q(n476) );
  AO221X1 U419 ( .IN1(n252), .IN2(n44), .IN3(n253), .IN4(n28), .IN5(n477), .Q(
        n396) );
  AO22X1 U420 ( .IN1(n250), .IN2(n48), .IN3(n251), .IN4(n20), .Q(n477) );
  NAND3X0 U421 ( .IN1(n478), .IN2(n479), .IN3(n480), .QN(N3204) );
  OA222X1 U422 ( .IN1(n192), .IN2(n381), .IN3(n481), .IN4(n213), .IN5(n482), 
        .IN6(n370), .Q(n480) );
  INVX0 U423 ( .INP(n368), .ZN(n482) );
  AO221X1 U424 ( .IN1(n188), .IN2(n483), .IN3(n484), .IN4(n485), .IN5(n486), 
        .Q(n368) );
  AO22X1 U425 ( .IN1(n185), .IN2(n487), .IN3(n184), .IN4(n488), .Q(n486) );
  AO221X1 U426 ( .IN1(n455), .IN2(n246), .IN3(n427), .IN4(n245), .IN5(n489), 
        .Q(n192) );
  AO22X1 U427 ( .IN1(n248), .IN2(n403), .IN3(n332), .IN4(n247), .Q(n489) );
  AO221X1 U428 ( .IN1(n252), .IN2(n20), .IN3(n253), .IN4(n8), .IN5(n490), .Q(
        n403) );
  AO22X1 U429 ( .IN1(n250), .IN2(n28), .IN3(n251), .IN4(n48), .Q(n490) );
  OA22X1 U430 ( .IN1(n371), .IN2(n491), .IN3(n492), .IN4(n493), .Q(n479) );
  NAND2X0 U431 ( .IN1(n494), .IN2(n42), .QN(n371) );
  OA22X1 U432 ( .IN1(n495), .IN2(n496), .IN3(n497), .IN4(n498), .Q(n478) );
  INVX0 U433 ( .INP(n499), .ZN(n497) );
  NAND3X0 U434 ( .IN1(n500), .IN2(n501), .IN3(n502), .QN(N3203) );
  OA222X1 U435 ( .IN1(n215), .IN2(n381), .IN3(n503), .IN4(n213), .IN5(n380), 
        .IN6(n370), .Q(n502) );
  AOI221X1 U436 ( .IN1(n184), .IN2(n504), .IN3(n185), .IN4(n505), .IN5(n506), 
        .QN(n380) );
  AO22X1 U437 ( .IN1(n484), .IN2(n507), .IN3(n188), .IN4(n508), .Q(n506) );
  AO221X1 U438 ( .IN1(n247), .IN2(n342), .IN3(n248), .IN4(n409), .IN5(n509), 
        .Q(n215) );
  AO22X1 U439 ( .IN1(n245), .IN2(n433), .IN3(n246), .IN4(n462), .Q(n509) );
  AO221X1 U440 ( .IN1(n252), .IN2(n48), .IN3(n253), .IN4(n27), .IN5(n510), .Q(
        n409) );
  AO22X1 U441 ( .IN1(n250), .IN2(n8), .IN3(n251), .IN4(n28), .Q(n510) );
  OA22X1 U442 ( .IN1(n212), .IN2(n511), .IN3(n512), .IN4(n493), .Q(n501) );
  OA22X1 U443 ( .IN1(n513), .IN2(n496), .IN3(n514), .IN4(n498), .Q(n500) );
  INVX0 U444 ( .INP(n515), .ZN(n514) );
  NAND3X0 U445 ( .IN1(n516), .IN2(n517), .IN3(n518), .QN(N3202) );
  OA222X1 U446 ( .IN1(n226), .IN2(n381), .IN3(n519), .IN4(n213), .IN5(n388), 
        .IN6(n370), .Q(n518) );
  AOI221X1 U447 ( .IN1(n184), .IN2(n520), .IN3(n185), .IN4(n521), .IN5(n522), 
        .QN(n388) );
  AO22X1 U448 ( .IN1(n484), .IN2(n523), .IN3(n188), .IN4(n524), .Q(n522) );
  AO221X1 U449 ( .IN1(n469), .IN2(n246), .IN3(n439), .IN4(n245), .IN5(n525), 
        .Q(n226) );
  AO22X1 U450 ( .IN1(n248), .IN2(n415), .IN3(n247), .IN4(n351), .Q(n525) );
  AO221X1 U451 ( .IN1(n252), .IN2(n28), .IN3(n253), .IN4(n9), .IN5(n526), .Q(
        n415) );
  AO22X1 U452 ( .IN1(n250), .IN2(n27), .IN3(n251), .IN4(n8), .Q(n526) );
  NOR2X0 U453 ( .IN1(n51), .IN2(s_shl2[2]), .QN(n246) );
  OA22X1 U454 ( .IN1(n224), .IN2(n511), .IN3(n527), .IN4(n493), .Q(n517) );
  OA22X1 U455 ( .IN1(n528), .IN2(n496), .IN3(n529), .IN4(n498), .Q(n516) );
  INVX0 U456 ( .INP(n530), .ZN(n529) );
  NAND3X0 U457 ( .IN1(n531), .IN2(n532), .IN3(n533), .QN(N3201) );
  OA222X1 U458 ( .IN1(n237), .IN2(n381), .IN3(n534), .IN4(n213), .IN5(n395), 
        .IN6(n370), .Q(n533) );
  AOI221X1 U459 ( .IN1(n184), .IN2(n535), .IN3(n185), .IN4(n536), .IN5(n537), 
        .QN(n395) );
  AO22X1 U460 ( .IN1(n484), .IN2(n538), .IN3(n188), .IN4(n539), .Q(n537) );
  AO222X1 U461 ( .IN1(n248), .IN2(n421), .IN3(n245), .IN4(n447), .IN5(
        s_shl2[3]), .IN6(n540), .Q(n237) );
  AO221X1 U462 ( .IN1(n252), .IN2(n8), .IN3(n253), .IN4(n50), .IN5(n541), .Q(
        n421) );
  AO22X1 U463 ( .IN1(n250), .IN2(n9), .IN3(n251), .IN4(n27), .Q(n541) );
  OA22X1 U464 ( .IN1(n235), .IN2(n511), .IN3(n542), .IN4(n493), .Q(n532) );
  NAND2X0 U465 ( .IN1(n543), .IN2(n484), .QN(n511) );
  INVX0 U466 ( .INP(n392), .ZN(n235) );
  OA22X1 U467 ( .IN1(n544), .IN2(n496), .IN3(n545), .IN4(n498), .Q(n531) );
  INVX0 U468 ( .INP(n546), .ZN(n545) );
  NAND3X0 U469 ( .IN1(n547), .IN2(n548), .IN3(n549), .QN(N3200) );
  OA222X1 U470 ( .IN1(n381), .IN2(n260), .IN3(n550), .IN4(n213), .IN5(n551), 
        .IN6(n370), .Q(n549) );
  INVX0 U471 ( .INP(n401), .ZN(n551) );
  AO221X1 U472 ( .IN1(n184), .IN2(n487), .IN3(n185), .IN4(n485), .IN5(n552), 
        .Q(n401) );
  AO22X1 U473 ( .IN1(n484), .IN2(n499), .IN3(n188), .IN4(n488), .Q(n552) );
  AO221X1 U474 ( .IN1(n455), .IN2(s_shl2[2]), .IN3(n332), .IN4(s_shl2[3]), 
        .IN5(n553), .Q(n260) );
  AO21X1 U475 ( .IN1(n427), .IN2(n248), .IN3(n247), .Q(n553) );
  AOI221X1 U476 ( .IN1(s_fract_48_i[11]), .IN2(n252), .IN3(s_fract_48_i[8]), 
        .IN4(n253), .IN5(n554), .QN(n427) );
  AO22X1 U477 ( .IN1(s_fract_48_i[9]), .IN2(n250), .IN3(s_fract_48_i[10]), 
        .IN4(n251), .Q(n554) );
  INVX0 U478 ( .INP(n451), .ZN(n332) );
  INVX0 U479 ( .INP(n555), .ZN(n455) );
  OA22X1 U480 ( .IN1(n263), .IN2(n491), .IN3(n495), .IN4(n493), .Q(n548) );
  NAND2X0 U481 ( .IN1(n556), .IN2(n42), .QN(n263) );
  OA22X1 U482 ( .IN1(n481), .IN2(n496), .IN3(n492), .IN4(n498), .Q(n547) );
  INVX0 U483 ( .INP(n557), .ZN(n492) );
  NAND3X0 U484 ( .IN1(n558), .IN2(n559), .IN3(n560), .QN(N3199) );
  OA222X1 U485 ( .IN1(n381), .IN2(n272), .IN3(n271), .IN4(n491), .IN5(n561), 
        .IN6(n370), .Q(n560) );
  INVX0 U486 ( .INP(n407), .ZN(n561) );
  AO221X1 U487 ( .IN1(n188), .IN2(n504), .IN3(n484), .IN4(n515), .IN5(n562), 
        .Q(n407) );
  AO22X1 U488 ( .IN1(n185), .IN2(n507), .IN3(n184), .IN4(n505), .Q(n562) );
  NAND2X0 U489 ( .IN1(n563), .IN2(n42), .QN(n271) );
  MUX21X1 U490 ( .IN1(n376), .IN2(n508), .S(n17), .Q(n563) );
  AO221X1 U491 ( .IN1(s_shl2[2]), .IN2(n462), .IN3(s_shl2[3]), .IN4(n342), 
        .IN5(n564), .Q(n272) );
  AO21X1 U492 ( .IN1(n248), .IN2(n433), .IN3(n247), .Q(n564) );
  AO221X1 U493 ( .IN1(n252), .IN2(n9), .IN3(n253), .IN4(n34), .IN5(n565), .Q(
        n433) );
  AO22X1 U494 ( .IN1(n250), .IN2(n5), .IN3(n251), .IN4(n50), .Q(n565) );
  OA22X1 U495 ( .IN1(n513), .IN2(n493), .IN3(n503), .IN4(n496), .Q(n559) );
  OA22X1 U496 ( .IN1(n512), .IN2(n498), .IN3(n566), .IN4(n213), .Q(n558) );
  INVX0 U497 ( .INP(n567), .ZN(n512) );
  NAND3X0 U498 ( .IN1(n568), .IN2(n569), .IN3(n570), .QN(N3198) );
  OA222X1 U499 ( .IN1(n381), .IN2(n280), .IN3(n279), .IN4(n491), .IN5(n571), 
        .IN6(n370), .Q(n570) );
  INVX0 U500 ( .INP(n413), .ZN(n571) );
  AO221X1 U501 ( .IN1(n188), .IN2(n520), .IN3(n484), .IN4(n530), .IN5(n572), 
        .Q(n413) );
  AO22X1 U502 ( .IN1(n185), .IN2(n523), .IN3(n184), .IN4(n521), .Q(n572) );
  NAND2X0 U503 ( .IN1(n573), .IN2(n42), .QN(n279) );
  MUX21X1 U504 ( .IN1(n385), .IN2(n524), .S(n17), .Q(n573) );
  AO221X1 U505 ( .IN1(n469), .IN2(s_shl2[2]), .IN3(s_shl2[3]), .IN4(n351), 
        .IN5(n574), .Q(n280) );
  AO21X1 U506 ( .IN1(n439), .IN2(n248), .IN3(n247), .Q(n574) );
  NOR2X0 U507 ( .IN1(n22), .IN2(n51), .QN(n247) );
  AOI221X1 U508 ( .IN1(s_fract_48_i[9]), .IN2(n252), .IN3(s_fract_48_i[6]), 
        .IN4(n253), .IN5(n575), .QN(n439) );
  AO22X1 U509 ( .IN1(s_fract_48_i[7]), .IN2(n250), .IN3(s_fract_48_i[8]), 
        .IN4(n251), .Q(n575) );
  INVX0 U510 ( .INP(n576), .ZN(n469) );
  OA22X1 U511 ( .IN1(n528), .IN2(n493), .IN3(n519), .IN4(n496), .Q(n569) );
  OA22X1 U512 ( .IN1(n527), .IN2(n498), .IN3(n577), .IN4(n213), .Q(n568) );
  INVX0 U513 ( .INP(n578), .ZN(n527) );
  NAND3X0 U514 ( .IN1(n579), .IN2(n580), .IN3(n581), .QN(N3197) );
  OA222X1 U515 ( .IN1(n381), .IN2(n288), .IN3(n287), .IN4(n491), .IN5(n582), 
        .IN6(n370), .Q(n581) );
  INVX0 U516 ( .INP(n419), .ZN(n582) );
  AO221X1 U517 ( .IN1(n188), .IN2(n535), .IN3(n484), .IN4(n546), .IN5(n583), 
        .Q(n419) );
  AO22X1 U518 ( .IN1(n185), .IN2(n538), .IN3(n184), .IN4(n536), .Q(n583) );
  NAND2X0 U519 ( .IN1(n584), .IN2(n42), .QN(n287) );
  MUX21X1 U520 ( .IN1(n392), .IN2(n539), .S(n17), .Q(n584) );
  AO222X1 U521 ( .IN1(n248), .IN2(n447), .IN3(n245), .IN4(n475), .IN5(
        s_shl2[3]), .IN6(n585), .Q(n288) );
  NOR2X0 U522 ( .IN1(n22), .IN2(s_shl2[3]), .QN(n245) );
  AO221X1 U523 ( .IN1(n252), .IN2(n5), .IN3(n253), .IN4(n12), .IN5(n586), .Q(
        n447) );
  AO22X1 U524 ( .IN1(n250), .IN2(n63), .IN3(n251), .IN4(n34), .Q(n586) );
  OA22X1 U525 ( .IN1(n544), .IN2(n493), .IN3(n534), .IN4(n496), .Q(n580) );
  OA22X1 U526 ( .IN1(n542), .IN2(n498), .IN3(n587), .IN4(n213), .Q(n579) );
  INVX0 U527 ( .INP(n588), .ZN(n542) );
  NAND3X0 U528 ( .IN1(n589), .IN2(n590), .IN3(n591), .QN(N3196) );
  OA222X1 U529 ( .IN1(n381), .IN2(n296), .IN3(n295), .IN4(n491), .IN5(n592), 
        .IN6(n370), .Q(n591) );
  INVX0 U530 ( .INP(n425), .ZN(n592) );
  AO221X1 U531 ( .IN1(n188), .IN2(n487), .IN3(n484), .IN4(n557), .IN5(n593), 
        .Q(n425) );
  AO22X1 U532 ( .IN1(n185), .IN2(n499), .IN3(n184), .IN4(n485), .Q(n593) );
  OAI222X1 U533 ( .IN1(n488), .IN2(n399), .IN3(n483), .IN4(n594), .IN5(n42), 
        .IN6(n494), .QN(n295) );
  AND2X1 U534 ( .IN1(n595), .IN2(n17), .Q(n494) );
  NAND2X0 U535 ( .IN1(n596), .IN2(n51), .QN(n296) );
  MUX21X1 U536 ( .IN1(n451), .IN2(n555), .S(n22), .Q(n596) );
  AO221X1 U537 ( .IN1(s_fract_48_i[7]), .IN2(n252), .IN3(s_fract_48_i[4]), 
        .IN4(n253), .IN5(n597), .Q(n555) );
  AO22X1 U538 ( .IN1(s_fract_48_i[5]), .IN2(n250), .IN3(s_fract_48_i[6]), 
        .IN4(n251), .Q(n597) );
  OA22X1 U539 ( .IN1(n481), .IN2(n493), .IN3(n550), .IN4(n496), .Q(n590) );
  INVX0 U540 ( .INP(n598), .ZN(n550) );
  INVX0 U541 ( .INP(n599), .ZN(n481) );
  OA22X1 U542 ( .IN1(n495), .IN2(n498), .IN3(n600), .IN4(n213), .Q(n589) );
  INVX0 U543 ( .INP(n601), .ZN(n600) );
  INVX0 U544 ( .INP(n602), .ZN(n495) );
  NAND3X0 U545 ( .IN1(n603), .IN2(n604), .IN3(n605), .QN(N3195) );
  OA222X1 U546 ( .IN1(n381), .IN2(n304), .IN3(n303), .IN4(n491), .IN5(n606), 
        .IN6(n370), .Q(n605) );
  INVX0 U547 ( .INP(n431), .ZN(n606) );
  AO221X1 U548 ( .IN1(n188), .IN2(n505), .IN3(n484), .IN4(n567), .IN5(n607), 
        .Q(n431) );
  AO22X1 U549 ( .IN1(n185), .IN2(n515), .IN3(n184), .IN4(n507), .Q(n607) );
  AO221X1 U550 ( .IN1(s_shr2[3]), .IN2(n212), .IN3(n608), .IN4(s_shr2[2]), 
        .IN5(n609), .Q(n303) );
  AO21X1 U551 ( .IN1(n610), .IN2(n484), .IN3(n188), .Q(n609) );
  OR2X1 U552 ( .IN1(n611), .IN2(s_shl2[3]), .Q(n304) );
  MUX21X1 U553 ( .IN1(n342), .IN2(n462), .S(n22), .Q(n611) );
  AO221X1 U554 ( .IN1(n252), .IN2(n63), .IN3(n253), .IN4(n14), .IN5(n612), .Q(
        n462) );
  AO22X1 U555 ( .IN1(n250), .IN2(n61), .IN3(n251), .IN4(n12), .Q(n612) );
  OA22X1 U556 ( .IN1(n503), .IN2(n493), .IN3(n566), .IN4(n496), .Q(n604) );
  INVX0 U557 ( .INP(n613), .ZN(n566) );
  INVX0 U558 ( .INP(n614), .ZN(n503) );
  OA22X1 U559 ( .IN1(n513), .IN2(n498), .IN3(n615), .IN4(n213), .Q(n603) );
  INVX0 U560 ( .INP(n616), .ZN(n615) );
  INVX0 U561 ( .INP(n617), .ZN(n513) );
  NAND3X0 U562 ( .IN1(n618), .IN2(n619), .IN3(n620), .QN(N3194) );
  OA222X1 U563 ( .IN1(n381), .IN2(n312), .IN3(n311), .IN4(n491), .IN5(n621), 
        .IN6(n370), .Q(n620) );
  INVX0 U564 ( .INP(n437), .ZN(n621) );
  AO221X1 U565 ( .IN1(n188), .IN2(n521), .IN3(n484), .IN4(n578), .IN5(n622), 
        .Q(n437) );
  AO22X1 U566 ( .IN1(n185), .IN2(n530), .IN3(n184), .IN4(n523), .Q(n622) );
  INVX0 U567 ( .INP(n543), .ZN(n491) );
  AO221X1 U568 ( .IN1(n623), .IN2(s_shr2[2]), .IN3(s_shr2[3]), .IN4(n224), 
        .IN5(n624), .Q(n311) );
  AO21X1 U569 ( .IN1(n625), .IN2(n484), .IN3(n188), .Q(n624) );
  NAND2X0 U570 ( .IN1(n626), .IN2(n51), .QN(n312) );
  MUX21X1 U571 ( .IN1(n465), .IN2(n576), .S(n22), .Q(n626) );
  AO221X1 U572 ( .IN1(s_fract_48_i[5]), .IN2(n252), .IN3(s_fract_48_i[2]), 
        .IN4(n253), .IN5(n627), .Q(n576) );
  AO22X1 U573 ( .IN1(s_fract_48_i[3]), .IN2(n250), .IN3(s_fract_48_i[4]), 
        .IN4(n251), .Q(n627) );
  OA22X1 U574 ( .IN1(n519), .IN2(n493), .IN3(n577), .IN4(n496), .Q(n619) );
  INVX0 U575 ( .INP(n628), .ZN(n577) );
  INVX0 U576 ( .INP(n629), .ZN(n519) );
  OA22X1 U577 ( .IN1(n528), .IN2(n498), .IN3(n630), .IN4(n213), .Q(n618) );
  INVX0 U578 ( .INP(n631), .ZN(n213) );
  INVX0 U579 ( .INP(n632), .ZN(n630) );
  INVX0 U580 ( .INP(n633), .ZN(n528) );
  NAND3X0 U581 ( .IN1(n634), .IN2(n635), .IN3(n636), .QN(N3193) );
  AOI222X1 U582 ( .IN1(n443), .IN2(n445), .IN3(n637), .IN4(n631), .IN5(n322), 
        .IN6(n543), .QN(n636) );
  OA221X1 U583 ( .IN1(n539), .IN2(n17), .IN3(n392), .IN4(n42), .IN5(n638), .Q(
        n322) );
  OA21X1 U584 ( .IN1(n535), .IN2(n399), .IN3(n639), .Q(n638) );
  NOR2X0 U585 ( .IN1(n262), .IN2(n399), .QN(n631) );
  INVX0 U586 ( .INP(n370), .ZN(n445) );
  NAND2X0 U587 ( .IN1(n640), .IN2(s_shr2[4]), .QN(n370) );
  AO221X1 U588 ( .IN1(n188), .IN2(n536), .IN3(n484), .IN4(n588), .IN5(n641), 
        .Q(n443) );
  AO22X1 U589 ( .IN1(n185), .IN2(n546), .IN3(n184), .IN4(n538), .Q(n641) );
  OA22X1 U590 ( .IN1(n381), .IN2(n323), .IN3(n534), .IN4(n493), .Q(n635) );
  NAND2X0 U591 ( .IN1(n184), .IN2(n367), .QN(n493) );
  INVX0 U592 ( .INP(n642), .ZN(n534) );
  INVX0 U593 ( .INP(n446), .ZN(n323) );
  NOR2X0 U594 ( .IN1(n540), .IN2(s_shl2[3]), .QN(n446) );
  MUX21X1 U595 ( .IN1(n475), .IN2(n643), .S(s_shl2[2]), .Q(n540) );
  AO221X1 U596 ( .IN1(n252), .IN2(n61), .IN3(n253), .IN4(n37), .IN5(n644), .Q(
        n475) );
  AO22X1 U597 ( .IN1(n250), .IN2(n53), .IN3(n251), .IN4(n14), .Q(n644) );
  INVX0 U598 ( .INP(n362), .ZN(n381) );
  OA22X1 U599 ( .IN1(n587), .IN2(n496), .IN3(n544), .IN4(n498), .Q(n634) );
  NAND2X0 U600 ( .IN1(n367), .IN2(n188), .QN(n498) );
  INVX0 U601 ( .INP(n645), .ZN(n544) );
  NAND2X0 U602 ( .IN1(n367), .IN2(n185), .QN(n496) );
  INVX0 U603 ( .INP(n262), .ZN(n367) );
  NAND2X0 U604 ( .IN1(n640), .IN2(n40), .QN(n262) );
  INVX0 U605 ( .INP(n646), .ZN(n587) );
  AO222X1 U606 ( .IN1(n647), .IN2(n451), .IN3(n640), .IN4(n648), .IN5(n543), 
        .IN6(n331), .Q(N3192) );
  OA222X1 U607 ( .IN1(n487), .IN2(n399), .IN3(n488), .IN4(n594), .IN5(n42), 
        .IN6(n556), .Q(n331) );
  MUX21X1 U608 ( .IN1(n595), .IN2(n483), .S(n17), .Q(n556) );
  AO221X1 U609 ( .IN1(s_fract_48_i[44]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[45]), .IN5(n649), .Q(n483) );
  AO22X1 U610 ( .IN1(s_fract_48_i[46]), .IN2(n189), .IN3(s_fract_48_i[43]), 
        .IN4(n650), .Q(n649) );
  AND2X1 U611 ( .IN1(n650), .IN2(s_fract_48_i[47]), .Q(n595) );
  AO221X1 U612 ( .IN1(s_fract_48_i[40]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[41]), .IN5(n651), .Q(n488) );
  AO22X1 U613 ( .IN1(s_fract_48_i[42]), .IN2(n189), .IN3(s_fract_48_i[39]), 
        .IN4(n650), .Q(n651) );
  AO221X1 U614 ( .IN1(s_fract_48_i[36]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[37]), .IN5(n652), .Q(n487) );
  AO22X1 U615 ( .IN1(s_fract_48_i[38]), .IN2(n189), .IN3(s_fract_48_i[35]), 
        .IN4(n650), .Q(n652) );
  AO21X1 U616 ( .IN1(n653), .IN2(n654), .IN3(n655), .Q(n648) );
  MUX21X1 U617 ( .IN1(n453), .IN2(n656), .S(n40), .Q(n655) );
  AO222X1 U618 ( .IN1(n185), .IN2(n601), .IN3(n184), .IN4(n598), .IN5(n188), 
        .IN6(n599), .Q(n656) );
  AO221X1 U619 ( .IN1(s_fract_48_i[15]), .IN2(n650), .IN3(s_fract_48_i[18]), 
        .IN4(n189), .IN5(n657), .Q(n599) );
  AO22X1 U620 ( .IN1(s_fract_48_i[17]), .IN2(n179), .IN3(s_fract_48_i[16]), 
        .IN4(n180), .Q(n657) );
  AO221X1 U621 ( .IN1(s_fract_48_i[11]), .IN2(n650), .IN3(s_fract_48_i[14]), 
        .IN4(n189), .IN5(n658), .Q(n598) );
  AO22X1 U622 ( .IN1(s_fract_48_i[13]), .IN2(n179), .IN3(s_fract_48_i[12]), 
        .IN4(n180), .Q(n658) );
  AO221X1 U623 ( .IN1(s_fract_48_i[8]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[9]), .IN5(n659), .Q(n601) );
  AO22X1 U624 ( .IN1(s_fract_48_i[10]), .IN2(n189), .IN3(s_fract_48_i[7]), 
        .IN4(n650), .Q(n659) );
  AO221X1 U625 ( .IN1(n188), .IN2(n485), .IN3(n484), .IN4(n602), .IN5(n660), 
        .Q(n453) );
  AO22X1 U626 ( .IN1(n185), .IN2(n557), .IN3(n184), .IN4(n499), .Q(n660) );
  AO221X1 U627 ( .IN1(s_fract_48_i[27]), .IN2(n650), .IN3(s_fract_48_i[30]), 
        .IN4(n189), .IN5(n661), .Q(n499) );
  AO22X1 U628 ( .IN1(s_fract_48_i[29]), .IN2(n179), .IN3(s_fract_48_i[28]), 
        .IN4(n180), .Q(n661) );
  AO221X1 U629 ( .IN1(s_fract_48_i[23]), .IN2(n650), .IN3(s_fract_48_i[26]), 
        .IN4(n189), .IN5(n662), .Q(n557) );
  AO22X1 U630 ( .IN1(s_fract_48_i[25]), .IN2(n179), .IN3(s_fract_48_i[24]), 
        .IN4(n180), .Q(n662) );
  AO221X1 U631 ( .IN1(s_fract_48_i[19]), .IN2(n650), .IN3(s_fract_48_i[22]), 
        .IN4(n189), .IN5(n663), .Q(n602) );
  AO22X1 U632 ( .IN1(s_fract_48_i[21]), .IN2(n179), .IN3(s_fract_48_i[20]), 
        .IN4(n180), .Q(n663) );
  AO221X1 U633 ( .IN1(s_fract_48_i[32]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[33]), .IN5(n664), .Q(n485) );
  AO22X1 U634 ( .IN1(s_fract_48_i[34]), .IN2(n189), .IN3(s_fract_48_i[31]), 
        .IN4(n650), .Q(n664) );
  AO222X1 U635 ( .IN1(n179), .IN2(s_fract_48_i[5]), .IN3(s_fract_48_i[4]), 
        .IN4(n180), .IN5(s_fract_48_i[6]), .IN6(n189), .Q(n654) );
  AO221X1 U636 ( .IN1(s_fract_48_i[3]), .IN2(n252), .IN3(s_fract_48_i[0]), 
        .IN4(n253), .IN5(n665), .Q(n451) );
  AO22X1 U637 ( .IN1(s_fract_48_i[1]), .IN2(n250), .IN3(s_fract_48_i[2]), 
        .IN4(n251), .Q(n665) );
  NOR2X0 U638 ( .IN1(n35), .IN2(s_shl2[1]), .QN(n251) );
  NOR2X0 U639 ( .IN1(n60), .IN2(s_shl2[0]), .QN(n250) );
  AO222X1 U640 ( .IN1(n458), .IN2(n647), .IN3(n640), .IN4(n666), .IN5(n543), 
        .IN6(n341), .Q(N3191) );
  OA221X1 U641 ( .IN1(n639), .IN2(n376), .IN3(n505), .IN4(n399), .IN5(n667), 
        .Q(n341) );
  AOI22X1 U642 ( .IN1(n610), .IN2(n185), .IN3(n184), .IN4(n608), .QN(n667) );
  INVX0 U643 ( .INP(n508), .ZN(n608) );
  AO221X1 U644 ( .IN1(s_fract_48_i[43]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[44]), .IN5(n668), .Q(n508) );
  AO22X1 U645 ( .IN1(s_fract_48_i[45]), .IN2(n189), .IN3(s_fract_48_i[42]), 
        .IN4(n650), .Q(n668) );
  INVX0 U646 ( .INP(n504), .ZN(n610) );
  AO221X1 U647 ( .IN1(s_fract_48_i[39]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[40]), .IN5(n669), .Q(n504) );
  AO22X1 U648 ( .IN1(s_fract_48_i[41]), .IN2(n189), .IN3(s_fract_48_i[38]), 
        .IN4(n650), .Q(n669) );
  AO221X1 U649 ( .IN1(s_fract_48_i[35]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[36]), .IN5(n670), .Q(n505) );
  AO22X1 U650 ( .IN1(s_fract_48_i[37]), .IN2(n189), .IN3(s_fract_48_i[34]), 
        .IN4(n650), .Q(n670) );
  INVX0 U651 ( .INP(n212), .ZN(n376) );
  NAND2X0 U652 ( .IN1(n671), .IN2(n59), .QN(n212) );
  MUX21X1 U653 ( .IN1(s_fract_48_i[47]), .IN2(s_fract_48_i[46]), .S(n32), .Q(
        n671) );
  AO21X1 U654 ( .IN1(n653), .IN2(n672), .IN3(n673), .Q(n666) );
  MUX21X1 U655 ( .IN1(n460), .IN2(n674), .S(n40), .Q(n673) );
  AO222X1 U656 ( .IN1(n185), .IN2(n616), .IN3(n184), .IN4(n613), .IN5(n188), 
        .IN6(n614), .Q(n674) );
  AO221X1 U657 ( .IN1(s_fract_48_i[14]), .IN2(n650), .IN3(s_fract_48_i[17]), 
        .IN4(n189), .IN5(n675), .Q(n614) );
  AO22X1 U658 ( .IN1(s_fract_48_i[16]), .IN2(n179), .IN3(s_fract_48_i[15]), 
        .IN4(n180), .Q(n675) );
  AO221X1 U659 ( .IN1(s_fract_48_i[10]), .IN2(n650), .IN3(s_fract_48_i[13]), 
        .IN4(n189), .IN5(n676), .Q(n613) );
  AO22X1 U660 ( .IN1(s_fract_48_i[12]), .IN2(n179), .IN3(s_fract_48_i[11]), 
        .IN4(n180), .Q(n676) );
  AO221X1 U661 ( .IN1(s_fract_48_i[7]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[8]), .IN5(n677), .Q(n616) );
  AO22X1 U662 ( .IN1(s_fract_48_i[9]), .IN2(n189), .IN3(s_fract_48_i[6]), 
        .IN4(n650), .Q(n677) );
  AO221X1 U663 ( .IN1(n188), .IN2(n507), .IN3(n484), .IN4(n617), .IN5(n678), 
        .Q(n460) );
  AO22X1 U664 ( .IN1(n185), .IN2(n567), .IN3(n184), .IN4(n515), .Q(n678) );
  AO221X1 U665 ( .IN1(s_fract_48_i[26]), .IN2(n650), .IN3(s_fract_48_i[29]), 
        .IN4(n189), .IN5(n679), .Q(n515) );
  AO22X1 U666 ( .IN1(s_fract_48_i[28]), .IN2(n179), .IN3(s_fract_48_i[27]), 
        .IN4(n180), .Q(n679) );
  AO221X1 U667 ( .IN1(s_fract_48_i[22]), .IN2(n650), .IN3(s_fract_48_i[25]), 
        .IN4(n189), .IN5(n680), .Q(n567) );
  AO22X1 U668 ( .IN1(s_fract_48_i[24]), .IN2(n179), .IN3(s_fract_48_i[23]), 
        .IN4(n180), .Q(n680) );
  AO221X1 U669 ( .IN1(s_fract_48_i[18]), .IN2(n650), .IN3(s_fract_48_i[21]), 
        .IN4(n189), .IN5(n681), .Q(n617) );
  AO22X1 U670 ( .IN1(s_fract_48_i[20]), .IN2(n179), .IN3(s_fract_48_i[19]), 
        .IN4(n180), .Q(n681) );
  AO221X1 U671 ( .IN1(s_fract_48_i[30]), .IN2(n650), .IN3(s_fract_48_i[33]), 
        .IN4(n189), .IN5(n682), .Q(n507) );
  AO22X1 U672 ( .IN1(s_fract_48_i[32]), .IN2(n179), .IN3(s_fract_48_i[31]), 
        .IN4(n180), .Q(n682) );
  AO222X1 U673 ( .IN1(n179), .IN2(s_fract_48_i[4]), .IN3(s_fract_48_i[3]), 
        .IN4(n180), .IN5(s_fract_48_i[5]), .IN6(n189), .Q(n672) );
  INVX0 U674 ( .INP(n342), .ZN(n458) );
  AO221X1 U675 ( .IN1(s_shl2[1]), .IN2(n66), .IN3(s_shl2[0]), .IN4(n37), .IN5(
        n683), .Q(n342) );
  AO21X1 U676 ( .IN1(n252), .IN2(n53), .IN3(n253), .Q(n683) );
  NOR2X0 U677 ( .IN1(n60), .IN2(n35), .QN(n253) );
  AO222X1 U678 ( .IN1(n465), .IN2(n647), .IN3(n640), .IN4(n684), .IN5(n543), 
        .IN6(n350), .Q(N3190) );
  OA221X1 U679 ( .IN1(n639), .IN2(n385), .IN3(n521), .IN4(n399), .IN5(n685), 
        .Q(n350) );
  AOI22X1 U680 ( .IN1(n625), .IN2(n185), .IN3(n184), .IN4(n623), .QN(n685) );
  INVX0 U681 ( .INP(n524), .ZN(n623) );
  AO221X1 U682 ( .IN1(s_fract_48_i[42]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[43]), .IN5(n686), .Q(n524) );
  AO22X1 U683 ( .IN1(s_fract_48_i[44]), .IN2(n189), .IN3(s_fract_48_i[41]), 
        .IN4(n650), .Q(n686) );
  INVX0 U684 ( .INP(n520), .ZN(n625) );
  AO221X1 U685 ( .IN1(s_fract_48_i[38]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[39]), .IN5(n687), .Q(n520) );
  AO22X1 U686 ( .IN1(s_fract_48_i[40]), .IN2(n189), .IN3(s_fract_48_i[37]), 
        .IN4(n650), .Q(n687) );
  AO221X1 U687 ( .IN1(s_fract_48_i[34]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[35]), .IN5(n688), .Q(n521) );
  AO22X1 U688 ( .IN1(s_fract_48_i[36]), .IN2(n189), .IN3(s_fract_48_i[33]), 
        .IN4(n650), .Q(n688) );
  INVX0 U689 ( .INP(n224), .ZN(n385) );
  AO221X1 U690 ( .IN1(s_shr2[0]), .IN2(n57), .IN3(s_shr2[1]), .IN4(n30), .IN5(
        n689), .Q(n224) );
  AO21X1 U691 ( .IN1(n650), .IN2(n15), .IN3(n189), .Q(n689) );
  INVX0 U692 ( .INP(n188), .ZN(n639) );
  AO21X1 U693 ( .IN1(n653), .IN2(n690), .IN3(n691), .Q(n684) );
  MUX21X1 U694 ( .IN1(n467), .IN2(n692), .S(n40), .Q(n691) );
  AO222X1 U695 ( .IN1(n185), .IN2(n632), .IN3(n184), .IN4(n628), .IN5(n188), 
        .IN6(n629), .Q(n692) );
  AO221X1 U696 ( .IN1(s_fract_48_i[13]), .IN2(n650), .IN3(s_fract_48_i[16]), 
        .IN4(n189), .IN5(n693), .Q(n629) );
  AO22X1 U697 ( .IN1(s_fract_48_i[15]), .IN2(n179), .IN3(s_fract_48_i[14]), 
        .IN4(n180), .Q(n693) );
  AO221X1 U698 ( .IN1(s_fract_48_i[10]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[11]), .IN5(n694), .Q(n628) );
  AO22X1 U699 ( .IN1(s_fract_48_i[12]), .IN2(n189), .IN3(s_fract_48_i[9]), 
        .IN4(n650), .Q(n694) );
  AO221X1 U700 ( .IN1(s_fract_48_i[6]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[7]), .IN5(n695), .Q(n632) );
  AO22X1 U701 ( .IN1(s_fract_48_i[8]), .IN2(n189), .IN3(s_fract_48_i[5]), 
        .IN4(n650), .Q(n695) );
  AO221X1 U702 ( .IN1(n188), .IN2(n523), .IN3(n484), .IN4(n633), .IN5(n696), 
        .Q(n467) );
  AO22X1 U703 ( .IN1(n185), .IN2(n578), .IN3(n184), .IN4(n530), .Q(n696) );
  AO221X1 U704 ( .IN1(s_fract_48_i[25]), .IN2(n650), .IN3(s_fract_48_i[28]), 
        .IN4(n189), .IN5(n697), .Q(n530) );
  AO22X1 U705 ( .IN1(s_fract_48_i[27]), .IN2(n179), .IN3(s_fract_48_i[26]), 
        .IN4(n180), .Q(n697) );
  AO221X1 U706 ( .IN1(s_fract_48_i[21]), .IN2(n650), .IN3(s_fract_48_i[24]), 
        .IN4(n189), .IN5(n698), .Q(n578) );
  AO22X1 U707 ( .IN1(s_fract_48_i[23]), .IN2(n179), .IN3(s_fract_48_i[22]), 
        .IN4(n180), .Q(n698) );
  AO221X1 U708 ( .IN1(s_fract_48_i[17]), .IN2(n650), .IN3(s_fract_48_i[20]), 
        .IN4(n189), .IN5(n699), .Q(n633) );
  AO22X1 U709 ( .IN1(s_fract_48_i[19]), .IN2(n179), .IN3(s_fract_48_i[18]), 
        .IN4(n180), .Q(n699) );
  AO221X1 U710 ( .IN1(s_fract_48_i[29]), .IN2(n650), .IN3(s_fract_48_i[32]), 
        .IN4(n189), .IN5(n700), .Q(n523) );
  AO22X1 U711 ( .IN1(s_fract_48_i[31]), .IN2(n179), .IN3(s_fract_48_i[30]), 
        .IN4(n180), .Q(n700) );
  AO222X1 U712 ( .IN1(n179), .IN2(s_fract_48_i[3]), .IN3(s_fract_48_i[2]), 
        .IN4(n180), .IN5(s_fract_48_i[4]), .IN6(n189), .Q(n690) );
  INVX0 U713 ( .INP(n259), .ZN(n647) );
  NAND2X0 U714 ( .IN1(n362), .IN2(n248), .QN(n259) );
  NOR2X0 U715 ( .IN1(s_shl2[2]), .IN2(s_shl2[3]), .QN(n248) );
  INVX0 U716 ( .INP(n351), .ZN(n465) );
  NAND2X0 U717 ( .IN1(n701), .IN2(n60), .QN(n351) );
  MUX21X1 U718 ( .IN1(s_fract_48_i[0]), .IN2(s_fract_48_i[1]), .S(n35), .Q(
        n701) );
  AO222X1 U719 ( .IN1(n640), .IN2(n702), .IN3(n363), .IN4(n362), .IN5(n543), 
        .IN6(n360), .Q(N3189) );
  AO221X1 U720 ( .IN1(n188), .IN2(n392), .IN3(n484), .IN4(n536), .IN5(n703), 
        .Q(n360) );
  AO22X1 U721 ( .IN1(n185), .IN2(n535), .IN3(n184), .IN4(n539), .Q(n703) );
  AO221X1 U722 ( .IN1(s_fract_48_i[41]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[42]), .IN5(n704), .Q(n539) );
  AO22X1 U723 ( .IN1(s_fract_48_i[43]), .IN2(n189), .IN3(s_fract_48_i[40]), 
        .IN4(n650), .Q(n704) );
  AO221X1 U724 ( .IN1(s_fract_48_i[37]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[38]), .IN5(n705), .Q(n535) );
  AO22X1 U725 ( .IN1(s_fract_48_i[39]), .IN2(n189), .IN3(s_fract_48_i[36]), 
        .IN4(n650), .Q(n705) );
  AO221X1 U726 ( .IN1(s_fract_48_i[33]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[34]), .IN5(n706), .Q(n536) );
  AO22X1 U727 ( .IN1(s_fract_48_i[35]), .IN2(n189), .IN3(s_fract_48_i[32]), 
        .IN4(n650), .Q(n706) );
  AO221X1 U728 ( .IN1(s_fract_48_i[44]), .IN2(n650), .IN3(n189), .IN4(
        s_fract_48_i[47]), .IN5(n707), .Q(n392) );
  AO22X1 U729 ( .IN1(n179), .IN2(s_fract_48_i[46]), .IN3(s_fract_48_i[45]), 
        .IN4(n180), .Q(n707) );
  NOR2X0 U730 ( .IN1(n55), .IN2(s_shr2[4]), .QN(n543) );
  NOR2X0 U731 ( .IN1(n195), .IN2(s_shl2[4]), .QN(n362) );
  OR2X1 U732 ( .IN1(n708), .IN2(s_shl2[5]), .Q(n195) );
  NOR2X0 U733 ( .IN1(n585), .IN2(s_shl2[3]), .QN(n363) );
  OR2X1 U734 ( .IN1(n643), .IN2(s_shl2[2]), .Q(n585) );
  NAND2X0 U735 ( .IN1(s_fract_48_i[0]), .IN2(n252), .QN(n643) );
  NOR2X0 U736 ( .IN1(s_shl2[0]), .IN2(s_shl2[1]), .QN(n252) );
  AO21X1 U737 ( .IN1(n653), .IN2(n709), .IN3(n710), .Q(n702) );
  MUX21X1 U738 ( .IN1(n473), .IN2(n711), .S(n40), .Q(n710) );
  AO222X1 U739 ( .IN1(n185), .IN2(n637), .IN3(n184), .IN4(n646), .IN5(n188), 
        .IN6(n642), .Q(n711) );
  AO221X1 U740 ( .IN1(s_fract_48_i[12]), .IN2(n650), .IN3(s_fract_48_i[15]), 
        .IN4(n189), .IN5(n712), .Q(n642) );
  AO22X1 U741 ( .IN1(s_fract_48_i[14]), .IN2(n179), .IN3(s_fract_48_i[13]), 
        .IN4(n180), .Q(n712) );
  AO221X1 U742 ( .IN1(s_fract_48_i[9]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[10]), .IN5(n713), .Q(n646) );
  AO22X1 U743 ( .IN1(s_fract_48_i[11]), .IN2(n189), .IN3(s_fract_48_i[8]), 
        .IN4(n650), .Q(n713) );
  AO221X1 U744 ( .IN1(s_fract_48_i[5]), .IN2(n180), .IN3(n179), .IN4(
        s_fract_48_i[6]), .IN5(n714), .Q(n637) );
  AO22X1 U745 ( .IN1(s_fract_48_i[7]), .IN2(n189), .IN3(s_fract_48_i[4]), 
        .IN4(n650), .Q(n714) );
  AO221X1 U746 ( .IN1(n188), .IN2(n538), .IN3(n484), .IN4(n645), .IN5(n715), 
        .Q(n473) );
  AO22X1 U747 ( .IN1(n185), .IN2(n588), .IN3(n184), .IN4(n546), .Q(n715) );
  AO221X1 U748 ( .IN1(s_fract_48_i[24]), .IN2(n650), .IN3(s_fract_48_i[27]), 
        .IN4(n189), .IN5(n716), .Q(n546) );
  AO22X1 U749 ( .IN1(s_fract_48_i[26]), .IN2(n179), .IN3(s_fract_48_i[25]), 
        .IN4(n180), .Q(n716) );
  NOR2X0 U750 ( .IN1(n42), .IN2(s_shr2[2]), .QN(n184) );
  AO221X1 U751 ( .IN1(s_fract_48_i[20]), .IN2(n650), .IN3(s_fract_48_i[23]), 
        .IN4(n189), .IN5(n717), .Q(n588) );
  AO22X1 U752 ( .IN1(s_fract_48_i[22]), .IN2(n179), .IN3(s_fract_48_i[21]), 
        .IN4(n180), .Q(n717) );
  INVX0 U753 ( .INP(n594), .ZN(n185) );
  NAND2X0 U754 ( .IN1(s_shr2[2]), .IN2(n42), .QN(n594) );
  AO221X1 U755 ( .IN1(s_fract_48_i[16]), .IN2(n650), .IN3(s_fract_48_i[19]), 
        .IN4(n189), .IN5(n718), .Q(n645) );
  AO22X1 U756 ( .IN1(s_fract_48_i[18]), .IN2(n179), .IN3(s_fract_48_i[17]), 
        .IN4(n180), .Q(n718) );
  INVX0 U757 ( .INP(n399), .ZN(n484) );
  AO221X1 U758 ( .IN1(s_fract_48_i[28]), .IN2(n650), .IN3(s_fract_48_i[31]), 
        .IN4(n189), .IN5(n719), .Q(n538) );
  AO22X1 U759 ( .IN1(s_fract_48_i[30]), .IN2(n179), .IN3(s_fract_48_i[29]), 
        .IN4(n180), .Q(n719) );
  NOR2X0 U760 ( .IN1(n42), .IN2(n17), .QN(n188) );
  AO222X1 U761 ( .IN1(n179), .IN2(s_fract_48_i[2]), .IN3(s_fract_48_i[1]), 
        .IN4(n180), .IN5(s_fract_48_i[3]), .IN6(n189), .Q(n709) );
  NOR2X0 U762 ( .IN1(n59), .IN2(n32), .QN(n189) );
  NOR2X0 U763 ( .IN1(n32), .IN2(s_shr2[1]), .QN(n180) );
  NOR2X0 U764 ( .IN1(n59), .IN2(s_shr2[0]), .QN(n179) );
  NOR2X0 U765 ( .IN1(n364), .IN2(s_shr2[5]), .QN(n640) );
  INVX0 U766 ( .INP(n708), .ZN(n364) );
  NAND3X0 U767 ( .IN1(n653), .IN2(n55), .IN3(n650), .QN(n708) );
  NOR2X0 U768 ( .IN1(s_shr2[0]), .IN2(s_shr2[1]), .QN(n650) );
  NOR2X0 U769 ( .IN1(n399), .IN2(s_shr2[4]), .QN(n653) );
  NAND2X0 U770 ( .IN1(n17), .IN2(n42), .QN(n399) );
  AO21X1 U771 ( .IN1(N3024), .IN2(n93), .IN3(n720), .Q(N3086) );
  AO21X1 U772 ( .IN1(N3023), .IN2(n93), .IN3(n720), .Q(N3085) );
  AO21X1 U773 ( .IN1(N3022), .IN2(n93), .IN3(n720), .Q(N3084) );
  AO21X1 U774 ( .IN1(N3021), .IN2(n93), .IN3(n720), .Q(N3083) );
  AO21X1 U775 ( .IN1(N3020), .IN2(n93), .IN3(n720), .Q(N3082) );
  AO221X1 U776 ( .IN1(n721), .IN2(n722), .IN3(N3019), .IN4(n93), .IN5(n720), 
        .Q(N3081) );
  AND2X1 U777 ( .IN1(N3005), .IN2(n93), .Q(n720) );
  NOR2X0 U778 ( .IN1(s_exp_10b[8]), .IN2(n30), .QN(n721) );
  AO21X1 U779 ( .IN1(s_exp_10b[7]), .IN2(n722), .IN3(n723), .Q(N3078) );
  AO21X1 U780 ( .IN1(s_exp_10b[6]), .IN2(n722), .IN3(n723), .Q(N3077) );
  AO21X1 U781 ( .IN1(s_exp_10b[5]), .IN2(n722), .IN3(n723), .Q(N3076) );
  AO21X1 U782 ( .IN1(s_exp_10b[4]), .IN2(n722), .IN3(n723), .Q(N3075) );
  AO21X1 U783 ( .IN1(s_exp_10b[3]), .IN2(n722), .IN3(n723), .Q(N3074) );
  AO21X1 U784 ( .IN1(s_exp_10b[2]), .IN2(n722), .IN3(n723), .Q(N3073) );
  AO21X1 U785 ( .IN1(s_exp_10b[1]), .IN2(n722), .IN3(n723), .Q(N3072) );
  AND2X1 U786 ( .IN1(s_exp_10b[8]), .IN2(n722), .Q(n723) );
  NAND3X0 U787 ( .IN1(n724), .IN2(n725), .IN3(n722), .QN(N3071) );
  INVX0 U788 ( .INP(s_exp_10b[0]), .ZN(n724) );
  AO22X1 U789 ( .IN1(n726), .IN2(N3024), .IN3(\U3/U1/Z_5 ), .IN4(n727), .Q(
        N3070) );
  AND2X1 U790 ( .IN1(s_zeros[5]), .IN2(\U3/U3/Z_0 ), .Q(\U3/U1/Z_5 ) );
  AO22X1 U791 ( .IN1(n726), .IN2(N3023), .IN3(\U3/U1/Z_4 ), .IN4(n727), .Q(
        N3069) );
  AND2X1 U792 ( .IN1(s_zeros[4]), .IN2(\U3/U3/Z_0 ), .Q(\U3/U1/Z_4 ) );
  AO22X1 U793 ( .IN1(n726), .IN2(N3022), .IN3(\U3/U1/Z_3 ), .IN4(n727), .Q(
        N3068) );
  AND2X1 U794 ( .IN1(s_zeros[3]), .IN2(\U3/U3/Z_0 ), .Q(\U3/U1/Z_3 ) );
  AO22X1 U795 ( .IN1(n726), .IN2(N3021), .IN3(\U3/U1/Z_2 ), .IN4(n727), .Q(
        N3067) );
  AND2X1 U796 ( .IN1(s_zeros[2]), .IN2(\U3/U3/Z_0 ), .Q(\U3/U1/Z_2 ) );
  AO22X1 U797 ( .IN1(n726), .IN2(N3020), .IN3(\U3/U1/Z_1 ), .IN4(n727), .Q(
        N3066) );
  AND3X1 U798 ( .IN1(n725), .IN2(n728), .IN3(n729), .Q(n727) );
  AND2X1 U799 ( .IN1(s_zeros[1]), .IN2(\U3/U3/Z_0 ), .Q(\U3/U1/Z_1 ) );
  AO22X1 U800 ( .IN1(n726), .IN2(N3019), .IN3(n730), .IN4(n722), .Q(N3065) );
  AND3X1 U801 ( .IN1(n729), .IN2(n728), .IN3(\U3/U3/Z_0 ), .Q(n722) );
  AND2X1 U802 ( .IN1(n725), .IN2(s_zeros[0]), .Q(n730) );
  INVX0 U803 ( .INP(s_exp_10b[8]), .ZN(n725) );
  AOI21X1 U804 ( .IN1(n728), .IN2(n729), .IN3(n93), .QN(n726) );
  INVX0 U805 ( .INP(\U3/U3/Z_0 ), .ZN(n93) );
  NOR2X0 U806 ( .IN1(s_exp_10a[9]), .IN2(n731), .QN(\U3/U3/Z_0 ) );
  AND4X1 U807 ( .IN1(n100), .IN2(n90), .IN3(n732), .IN4(n91), .Q(n731) );
  INVX0 U808 ( .INP(s_exp_10a[6]), .ZN(n91) );
  XOR2X1 U809 ( .IN1(n733), .IN2(s_exp_10_i[6]), .Q(s_exp_10a[6]) );
  NOR2X0 U810 ( .IN1(s_exp_10a[8]), .IN2(s_exp_10a[7]), .QN(n732) );
  XOR2X1 U811 ( .IN1(s_exp_10_i[7]), .IN2(n734), .Q(s_exp_10a[7]) );
  AND2X1 U812 ( .IN1(n733), .IN2(s_exp_10_i[6]), .Q(n734) );
  XOR2X1 U813 ( .IN1(s_exp_10_i[8]), .IN2(n735), .Q(s_exp_10a[8]) );
  NOR2X0 U814 ( .IN1(n94), .IN2(s_exp_10a[5]), .QN(n90) );
  XNOR2X1 U815 ( .IN1(n736), .IN2(s_exp_10_i[5]), .Q(s_exp_10a[5]) );
  NAND2X0 U816 ( .IN1(s_exp_10_i[4]), .IN2(n737), .QN(n736) );
  OR2X1 U817 ( .IN1(n96), .IN2(s_exp_10a[4]), .Q(n94) );
  XOR2X1 U818 ( .IN1(s_exp_10_i[4]), .IN2(n737), .Q(s_exp_10a[4]) );
  OR2X1 U819 ( .IN1(n98), .IN2(s_exp_10a[3]), .Q(n96) );
  XOR2X1 U820 ( .IN1(s_exp_10_i[3]), .IN2(n738), .Q(s_exp_10a[3]) );
  NOR2X0 U821 ( .IN1(n739), .IN2(n62), .QN(n738) );
  OR2X1 U822 ( .IN1(\U3/U2/Z_1 ), .IN2(s_exp_10a[2]), .Q(n98) );
  XOR2X1 U823 ( .IN1(n739), .IN2(n62), .Q(s_exp_10a[2]) );
  XOR2X1 U824 ( .IN1(s_exp_10_i[0]), .IN2(n30), .Q(n100) );
  XNOR2X1 U825 ( .IN1(n740), .IN2(s_exp_10_i[9]), .Q(s_exp_10a[9]) );
  NAND2X0 U826 ( .IN1(s_exp_10_i[8]), .IN2(n735), .QN(n740) );
  AND3X1 U827 ( .IN1(s_exp_10_i[6]), .IN2(n733), .IN3(s_exp_10_i[7]), .Q(n735)
         );
  AND3X1 U828 ( .IN1(s_exp_10_i[4]), .IN2(n737), .IN3(s_exp_10_i[5]), .Q(n733)
         );
  AND3X1 U829 ( .IN1(s_exp_10_i[2]), .IN2(n741), .IN3(s_exp_10_i[3]), .Q(n737)
         );
  INVX0 U830 ( .INP(n739), .ZN(n741) );
  NAND3X0 U831 ( .IN1(s_exp_10_i[1]), .IN2(s_exp_10_i[0]), .IN3(
        s_fract_48_i[47]), .QN(n739) );
  NAND4X0 U832 ( .IN1(n742), .IN2(n743), .IN3(n744), .IN4(n745), .QN(n729) );
  NOR4X0 U833 ( .IN1(s_exp_10b[3]), .IN2(s_exp_10b[2]), .IN3(s_exp_10b[1]), 
        .IN4(s_exp_10b[0]), .QN(n745) );
  NOR3X0 U834 ( .IN1(s_exp_10b[6]), .IN2(s_exp_10b[8]), .IN3(s_exp_10b[7]), 
        .QN(n744) );
  INVX0 U835 ( .INP(s_exp_10b[5]), .ZN(n743) );
  INVX0 U836 ( .INP(s_exp_10b[4]), .ZN(n742) );
  INVX0 U837 ( .INP(s_exp_10b[9]), .ZN(n728) );
  XNOR2X1 U838 ( .IN1(n746), .IN2(s_exp_10_i[1]), .Q(\U3/U2/Z_1 ) );
  NAND2X0 U839 ( .IN1(s_fract_48_i[47]), .IN2(s_exp_10_i[0]), .QN(n746) );
  NOR4X0 U840 ( .IN1(n747), .IN2(n748), .IN3(n749), .IN4(n750), .QN(N2979) );
  NAND4X0 U841 ( .IN1(n751), .IN2(n752), .IN3(n6), .IN4(n18), .QN(n747) );
  NOR3X0 U842 ( .IN1(n748), .IN2(n753), .IN3(n750), .QN(N2978) );
  OA221X1 U843 ( .IN1(n754), .IN2(n749), .IN3(n755), .IN4(n756), .IN5(n757), 
        .Q(n753) );
  NAND2X0 U844 ( .IN1(n758), .IN2(n20), .QN(n756) );
  NOR4X0 U845 ( .IN1(n759), .IN2(n760), .IN3(n761), .IN4(n762), .QN(n754) );
  NAND3X0 U846 ( .IN1(n763), .IN2(n764), .IN3(n765), .QN(n762) );
  NAND4X0 U847 ( .IN1(n766), .IN2(n13), .IN3(n767), .IN4(n768), .QN(n765) );
  NOR4X0 U848 ( .IN1(n769), .IN2(s_fract_48_i[36]), .IN3(s_fract_48_i[38]), 
        .IN4(s_fract_48_i[37]), .QN(n768) );
  NAND3X0 U849 ( .IN1(n16), .IN2(n36), .IN3(n58), .QN(n769) );
  AND3X1 U850 ( .IN1(n4), .IN2(n29), .IN3(n52), .Q(n767) );
  INVX0 U851 ( .INP(n770), .ZN(n766) );
  NAND4X0 U852 ( .IN1(n771), .IN2(n772), .IN3(n773), .IN4(n774), .QN(n761) );
  NAND4X0 U853 ( .IN1(n775), .IN2(n776), .IN3(n777), .IN4(n778), .QN(n760) );
  NAND4X0 U854 ( .IN1(n3), .IN2(n1), .IN3(n6), .IN4(n18), .QN(n759) );
  AND2X1 U855 ( .IN1(n779), .IN2(n780), .Q(N2977) );
  NAND4X0 U856 ( .IN1(n781), .IN2(n782), .IN3(n783), .IN4(n784), .QN(n780) );
  OA21X1 U857 ( .IN1(n5), .IN2(n785), .IN3(n786), .Q(n783) );
  NAND2X0 U858 ( .IN1(n787), .IN2(n788), .QN(n781) );
  NAND4X0 U859 ( .IN1(n789), .IN2(n790), .IN3(n791), .IN4(n792), .QN(n788) );
  NOR2X0 U860 ( .IN1(s_fract_48_i[15]), .IN2(s_fract_48_i[12]), .QN(n791) );
  NAND3X0 U861 ( .IN1(n751), .IN2(n793), .IN3(n794), .QN(n789) );
  NAND4X0 U862 ( .IN1(n778), .IN2(n777), .IN3(n795), .IN4(n796), .QN(n793) );
  AND4X1 U863 ( .IN1(n797), .IN2(n763), .IN3(n775), .IN4(n776), .Q(n796) );
  NAND2X0 U864 ( .IN1(n798), .IN2(n799), .QN(n797) );
  AO221X1 U865 ( .IN1(n800), .IN2(n801), .IN3(n802), .IN4(n803), .IN5(n804), 
        .Q(n799) );
  INVX0 U866 ( .INP(n805), .ZN(n804) );
  NAND4X0 U867 ( .IN1(n806), .IN2(n46), .IN3(n807), .IN4(n808), .QN(n803) );
  AND2X1 U868 ( .IN1(n809), .IN2(n810), .Q(n808) );
  NOR2X0 U869 ( .IN1(s_fract_48_i[39]), .IN2(n16), .QN(n800) );
  AND3X1 U870 ( .IN1(n6), .IN2(n18), .IN3(n1), .Q(n795) );
  MUX21X1 U871 ( .IN1(n811), .IN2(n812), .S(n748), .Q(N2976) );
  NAND4X0 U872 ( .IN1(n813), .IN2(n814), .IN3(n12), .IN4(n34), .QN(n811) );
  NAND2X0 U873 ( .IN1(n787), .IN2(n815), .QN(n813) );
  NAND4X0 U874 ( .IN1(n8), .IN2(n20), .IN3(n792), .IN4(n816), .QN(n815) );
  OA21X1 U875 ( .IN1(n817), .IN2(n749), .IN3(n790), .Q(n816) );
  INVX0 U876 ( .INP(n794), .ZN(n749) );
  AND4X1 U877 ( .IN1(n818), .IN2(n771), .IN3(n774), .IN4(n772), .Q(n817) );
  NAND3X0 U878 ( .IN1(n3), .IN2(n24), .IN3(n819), .QN(n774) );
  OA21X1 U879 ( .IN1(n820), .IN2(n821), .IN3(n764), .Q(n818) );
  AND3X1 U880 ( .IN1(n763), .IN2(n775), .IN3(n822), .Q(n821) );
  NAND2X0 U881 ( .IN1(n752), .IN2(n823), .QN(n822) );
  NAND3X0 U882 ( .IN1(n6), .IN2(n18), .IN3(n824), .QN(n823) );
  NAND2X0 U883 ( .IN1(n798), .IN2(n825), .QN(n824) );
  NAND4X0 U884 ( .IN1(n7), .IN2(n58), .IN3(n826), .IN4(n827), .QN(n825) );
  OA21X1 U885 ( .IN1(n828), .IN2(n829), .IN3(n830), .Q(n827) );
  AND3X1 U886 ( .IN1(n810), .IN2(n806), .IN3(n807), .Q(n828) );
  OR2X1 U887 ( .IN1(n831), .IN2(n832), .Q(n810) );
  NAND3X0 U888 ( .IN1(n833), .IN2(n43), .IN3(n834), .QN(n775) );
  INVX0 U889 ( .INP(n750), .ZN(n787) );
  AO22X1 U890 ( .IN1(n779), .IN2(n835), .IN3(n836), .IN4(n837), .Q(N2975) );
  NAND2X0 U891 ( .IN1(n53), .IN2(n14), .QN(n837) );
  NAND4X0 U892 ( .IN1(n838), .IN2(n814), .IN3(n784), .IN4(n839), .QN(n835) );
  OA21X1 U893 ( .IN1(n840), .IN2(n750), .IN3(n782), .Q(n839) );
  AND3X1 U894 ( .IN1(n790), .IN2(n841), .IN3(n842), .Q(n840) );
  NAND2X0 U895 ( .IN1(n794), .IN2(n843), .QN(n842) );
  NAND4X0 U896 ( .IN1(n3), .IN2(n24), .IN3(n772), .IN4(n844), .QN(n843) );
  OA21X1 U897 ( .IN1(n845), .IN2(n820), .IN3(n764), .Q(n844) );
  NAND3X0 U898 ( .IN1(s_fract_48_i[22]), .IN2(n21), .IN3(n846), .QN(n764) );
  AND3X1 U899 ( .IN1(n776), .IN2(n778), .IN3(n847), .Q(n845) );
  NAND2X0 U900 ( .IN1(n752), .IN2(n848), .QN(n847) );
  AO221X1 U901 ( .IN1(n849), .IN2(n850), .IN3(n798), .IN4(n851), .IN5(n852), 
        .Q(n848) );
  NAND3X0 U902 ( .IN1(n6), .IN2(n18), .IN3(n853), .QN(n852) );
  NAND3X0 U903 ( .IN1(n854), .IN2(n826), .IN3(n855), .QN(n851) );
  NAND2X0 U904 ( .IN1(n802), .IN2(n856), .QN(n855) );
  NAND3X0 U905 ( .IN1(n46), .IN2(n31), .IN3(n807), .QN(n856) );
  NAND3X0 U906 ( .IN1(n7), .IN2(n54), .IN3(n857), .QN(n826) );
  NOR2X0 U907 ( .IN1(s_fract_48_i[33]), .IN2(n858), .QN(n849) );
  NAND3X0 U908 ( .IN1(n1), .IN2(n25), .IN3(n859), .QN(n778) );
  NAND3X0 U909 ( .IN1(n8), .IN2(n28), .IN3(n755), .QN(n790) );
  NAND2X0 U910 ( .IN1(n860), .IN2(s_fract_48_i[10]), .QN(n784) );
  NAND2X0 U911 ( .IN1(s_fract_48_i[6]), .IN2(n12), .QN(n814) );
  AO222X1 U912 ( .IN1(n779), .IN2(n861), .IN3(n862), .IN4(n836), .IN5(
        s_fract_48_i[1]), .IN6(n66), .Q(N2974) );
  NOR2X0 U913 ( .IN1(s_fract_48_i[2]), .IN2(n812), .QN(n862) );
  NAND4X0 U914 ( .IN1(n838), .IN2(n12), .IN3(n786), .IN4(n863), .QN(n861) );
  OA21X1 U915 ( .IN1(n864), .IN2(n750), .IN3(n782), .Q(n863) );
  NAND3X0 U916 ( .IN1(n750), .IN2(n9), .IN3(n860), .QN(n782) );
  NAND3X0 U917 ( .IN1(n9), .IN2(n27), .IN3(n860), .QN(n750) );
  INVX0 U918 ( .INP(n865), .ZN(n860) );
  AND4X1 U919 ( .IN1(n866), .IN2(n792), .IN3(n841), .IN4(n757), .Q(n864) );
  OR2X1 U920 ( .IN1(n758), .IN2(n794), .Q(n757) );
  NAND2X0 U921 ( .IN1(n867), .IN2(s_fract_48_i[15]), .QN(n841) );
  NAND2X0 U922 ( .IN1(s_fract_48_i[13]), .IN2(n8), .QN(n792) );
  NAND2X0 U923 ( .IN1(n794), .IN2(n868), .QN(n866) );
  NAND4X0 U924 ( .IN1(n869), .IN2(n771), .IN3(n772), .IN4(n773), .QN(n868) );
  NAND2X0 U925 ( .IN1(s_fract_48_i[19]), .IN2(n3), .QN(n773) );
  NAND2X0 U926 ( .IN1(n870), .IN2(n820), .QN(n772) );
  NAND2X0 U927 ( .IN1(n846), .IN2(s_fract_48_i[21]), .QN(n771) );
  NAND2X0 U928 ( .IN1(n751), .IN2(n871), .QN(n869) );
  NAND4X0 U929 ( .IN1(n872), .IN2(n763), .IN3(n776), .IN4(n777), .QN(n871) );
  NAND2X0 U930 ( .IN1(s_fract_48_i[25]), .IN2(n1), .QN(n777) );
  NAND2X0 U931 ( .IN1(n834), .IN2(s_fract_48_i[27]), .QN(n776) );
  OR2X1 U932 ( .IN1(n833), .IN2(n752), .Q(n763) );
  NAND2X0 U933 ( .IN1(n752), .IN2(n873), .QN(n872) );
  AO221X1 U934 ( .IN1(s_fract_48_i[31]), .IN2(n6), .IN3(n798), .IN4(n874), 
        .IN5(n875), .Q(n873) );
  AO21X1 U935 ( .IN1(n850), .IN2(s_fract_48_i[33]), .IN3(n876), .Q(n875) );
  INVX0 U936 ( .INP(n853), .ZN(n876) );
  NAND2X0 U937 ( .IN1(n858), .IN2(n877), .QN(n853) );
  NAND4X0 U938 ( .IN1(n878), .IN2(n805), .IN3(n854), .IN4(n830), .QN(n874) );
  NAND2X0 U939 ( .IN1(s_fract_48_i[37]), .IN2(n7), .QN(n830) );
  NAND2X0 U940 ( .IN1(n801), .IN2(s_fract_48_i[39]), .QN(n854) );
  NAND3X0 U941 ( .IN1(n801), .IN2(n829), .IN3(n879), .QN(n805) );
  NAND2X0 U942 ( .IN1(n802), .IN2(n880), .QN(n878) );
  NAND3X0 U943 ( .IN1(n809), .IN2(n806), .IN3(n881), .QN(n880) );
  OR2X1 U944 ( .IN1(n807), .IN2(s_fract_48_i[46]), .Q(n881) );
  NAND3X0 U945 ( .IN1(n770), .IN2(n15), .IN3(n832), .QN(n807) );
  NAND2X0 U946 ( .IN1(n832), .IN2(n882), .QN(n770) );
  NAND2X0 U947 ( .IN1(n832), .IN2(s_fract_48_i[45]), .QN(n806) );
  NOR2X0 U948 ( .IN1(n831), .IN2(s_fract_48_i[44]), .QN(n832) );
  NAND2X0 U949 ( .IN1(s_fract_48_i[43]), .IN2(n46), .QN(n809) );
  INVX0 U950 ( .INP(n829), .ZN(n802) );
  NAND3X0 U951 ( .IN1(n801), .IN2(n36), .IN3(n879), .QN(n829) );
  INVX0 U952 ( .INP(n857), .ZN(n801) );
  NAND3X0 U953 ( .IN1(n54), .IN2(n33), .IN3(n7), .QN(n857) );
  INVX0 U954 ( .INP(n877), .ZN(n798) );
  NAND2X0 U955 ( .IN1(n858), .IN2(n29), .QN(n877) );
  AND3X1 U956 ( .IN1(n4), .IN2(n52), .IN3(n850), .Q(n858) );
  NOR2X0 U957 ( .IN1(s_fract_48_i[30]), .IN2(s_fract_48_i[32]), .QN(n850) );
  NOR2X0 U958 ( .IN1(n833), .IN2(s_fract_48_i[29]), .QN(n752) );
  NAND3X0 U959 ( .IN1(n43), .IN2(n11), .IN3(n834), .QN(n833) );
  INVX0 U960 ( .INP(n859), .ZN(n834) );
  NAND3X0 U961 ( .IN1(n25), .IN2(n10), .IN3(n1), .QN(n859) );
  INVX0 U962 ( .INP(n820), .ZN(n751) );
  NAND2X0 U963 ( .IN1(n870), .IN2(n23), .QN(n820) );
  AND3X1 U964 ( .IN1(n21), .IN2(n47), .IN3(n846), .Q(n870) );
  INVX0 U965 ( .INP(n819), .ZN(n846) );
  NAND3X0 U966 ( .IN1(n24), .IN2(n45), .IN3(n3), .QN(n819) );
  NOR2X0 U967 ( .IN1(n758), .IN2(s_fract_48_i[17]), .QN(n794) );
  NAND3X0 U968 ( .IN1(n20), .IN2(n44), .IN3(n867), .QN(n758) );
  INVX0 U969 ( .INP(n755), .ZN(n867) );
  NAND3X0 U970 ( .IN1(n28), .IN2(n48), .IN3(n8), .QN(n755) );
  NAND3X0 U971 ( .IN1(n865), .IN2(n5), .IN3(n883), .QN(n786) );
  NAND3X0 U972 ( .IN1(n5), .IN2(n50), .IN3(n883), .QN(n865) );
  NAND2X0 U973 ( .IN1(n884), .IN2(n785), .QN(n838) );
  INVX0 U974 ( .INP(n883), .ZN(n785) );
  NOR2X0 U975 ( .IN1(n885), .IN2(s_fract_48_i[7]), .QN(n883) );
  INVX0 U976 ( .INP(n748), .ZN(n779) );
  NAND2X0 U977 ( .IN1(n812), .IN2(n61), .QN(n748) );
  AND3X1 U978 ( .IN1(n53), .IN2(n14), .IN3(n836), .Q(n812) );
  NOR2X0 U979 ( .IN1(s_fract_48_i[0]), .IN2(s_fract_48_i[1]), .QN(n836) );
  NOR4X0 U980 ( .IN1(n886), .IN2(n887), .IN3(n888), .IN4(n889), .QN(N1637) );
  NAND4X0 U981 ( .IN1(n890), .IN2(n891), .IN3(n892), .IN4(n20), .QN(n886) );
  NOR4X0 U982 ( .IN1(n893), .IN2(n888), .IN3(n889), .IN4(n887), .QN(N1636) );
  NOR4X0 U983 ( .IN1(n894), .IN2(n895), .IN3(n896), .IN4(n897), .QN(n893) );
  NAND4X0 U984 ( .IN1(n898), .IN2(n899), .IN3(n900), .IN4(n901), .QN(n897) );
  NAND4X0 U985 ( .IN1(n902), .IN2(n903), .IN3(n904), .IN4(n905), .QN(n896) );
  NAND4X0 U986 ( .IN1(n906), .IN2(n907), .IN3(n908), .IN4(n909), .QN(n895) );
  NAND4X0 U987 ( .IN1(n20), .IN2(n3), .IN3(n1), .IN4(n6), .QN(n894) );
  NOR2X0 U988 ( .IN1(n910), .IN2(n911), .QN(N1635) );
  OA221X1 U989 ( .IN1(n912), .IN2(n889), .IN3(n33), .IN4(n913), .IN5(n914), 
        .Q(n910) );
  NOR4X0 U990 ( .IN1(n915), .IN2(n916), .IN3(n917), .IN4(n918), .QN(n912) );
  INVX0 U991 ( .INP(n919), .ZN(n918) );
  NOR2X0 U992 ( .IN1(n920), .IN2(n921), .QN(n916) );
  AND4X1 U993 ( .IN1(n922), .IN2(n907), .IN3(n909), .IN4(n908), .Q(n920) );
  NAND3X0 U994 ( .IN1(n23), .IN2(n1), .IN3(n923), .QN(n909) );
  AOI21X1 U995 ( .IN1(n891), .IN2(n924), .IN3(n925), .QN(n922) );
  NAND4X0 U996 ( .IN1(n20), .IN2(n3), .IN3(n906), .IN4(n926), .QN(n924) );
  OA21X1 U997 ( .IN1(n927), .IN2(n928), .IN3(n905), .Q(n926) );
  INVX0 U998 ( .INP(n929), .ZN(n928) );
  NAND4X0 U999 ( .IN1(n930), .IN2(n931), .IN3(n18), .IN4(n7), .QN(n915) );
  NOR2X0 U1000 ( .IN1(n932), .IN2(n911), .QN(N1634) );
  INVX0 U1001 ( .INP(n933), .ZN(n911) );
  NOR4X0 U1002 ( .IN1(n934), .IN2(n935), .IN3(s_fract_48_i[39]), .IN4(n936), 
        .QN(n932) );
  INVX0 U1003 ( .INP(n937), .ZN(n936) );
  AO21X1 U1004 ( .IN1(n938), .IN2(n939), .IN3(n831), .Q(n934) );
  NAND4X0 U1005 ( .IN1(n930), .IN2(n940), .IN3(n941), .IN4(n942), .QN(n939) );
  OA21X1 U1006 ( .IN1(n943), .IN2(n888), .IN3(n919), .Q(n942) );
  NAND3X0 U1007 ( .IN1(n29), .IN2(n7), .IN3(n944), .QN(n919) );
  AND3X1 U1008 ( .IN1(n945), .IN2(n902), .IN3(n899), .Q(n943) );
  NAND2X0 U1009 ( .IN1(n946), .IN2(s_fract_48_i[26]), .QN(n899) );
  OR2X1 U1010 ( .IN1(n947), .IN2(n921), .Q(n945) );
  NOR3X0 U1011 ( .IN1(n948), .IN2(s_fract_48_i[24]), .IN3(s_fract_48_i[23]), 
        .QN(n947) );
  NOR2X0 U1012 ( .IN1(n949), .IN2(n950), .QN(n948) );
  NOR4X0 U1013 ( .IN1(n951), .IN2(n952), .IN3(s_fract_48_i[18]), .IN4(
        s_fract_48_i[15]), .QN(n949) );
  AO221X1 U1014 ( .IN1(n953), .IN2(n929), .IN3(n929), .IN4(n954), .IN5(n955), 
        .Q(n951) );
  INVX0 U1015 ( .INP(n905), .ZN(n955) );
  NAND4X0 U1016 ( .IN1(n956), .IN2(n957), .IN3(n958), .IN4(n959), .QN(n954) );
  NAND2X0 U1017 ( .IN1(n960), .IN2(s_fract_48_i[10]), .QN(n958) );
  AOI21X1 U1018 ( .IN1(n961), .IN2(n962), .IN3(n927), .QN(n953) );
  AO222X1 U1019 ( .IN1(n882), .IN2(s_fract_48_i[44]), .IN3(n933), .IN4(n963), 
        .IN5(n964), .IN6(s_fract_48_i[43]), .Q(N1633) );
  NAND3X0 U1020 ( .IN1(n965), .IN2(n937), .IN3(n966), .QN(n963) );
  NAND2X0 U1021 ( .IN1(n938), .IN2(n967), .QN(n966) );
  NAND4X0 U1022 ( .IN1(n29), .IN2(n7), .IN3(n940), .IN4(n968), .QN(n967) );
  OA21X1 U1023 ( .IN1(n969), .IN2(n888), .IN3(n930), .Q(n968) );
  NAND3X0 U1024 ( .IN1(n970), .IN2(n4), .IN3(n971), .QN(n930) );
  INVX0 U1025 ( .INP(n972), .ZN(n888) );
  AND3X1 U1026 ( .IN1(n900), .IN2(n901), .IN3(n973), .Q(n969) );
  NAND2X0 U1027 ( .IN1(n890), .IN2(n974), .QN(n973) );
  NAND4X0 U1028 ( .IN1(n23), .IN2(n1), .IN3(n907), .IN4(n975), .QN(n974) );
  OA21X1 U1029 ( .IN1(n976), .IN2(n950), .IN3(n898), .Q(n975) );
  INVX0 U1030 ( .INP(n891), .ZN(n950) );
  AND3X1 U1031 ( .IN1(n905), .IN2(n977), .IN3(n978), .Q(n976) );
  NAND2X0 U1032 ( .IN1(n929), .IN2(n979), .QN(n978) );
  NAND4X0 U1033 ( .IN1(n27), .IN2(n8), .IN3(n959), .IN4(n980), .QN(n979) );
  OA21X1 U1034 ( .IN1(n981), .IN2(n927), .IN3(n956), .Q(n980) );
  NAND2X0 U1035 ( .IN1(n982), .IN2(s_fract_48_i[8]), .QN(n956) );
  AND3X1 U1036 ( .IN1(n983), .IN2(n961), .IN3(n984), .Q(n981) );
  OR2X1 U1037 ( .IN1(n985), .IN2(n885), .Q(n983) );
  NAND3X0 U1038 ( .IN1(n26), .IN2(n3), .IN3(n986), .QN(n905) );
  NAND3X0 U1039 ( .IN1(n987), .IN2(n21), .IN3(n988), .QN(n907) );
  NAND2X0 U1040 ( .IN1(n989), .IN2(s_fract_48_i[28]), .QN(n901) );
  NAND2X0 U1041 ( .IN1(n990), .IN2(s_fract_48_i[40]), .QN(n937) );
  AO222X1 U1042 ( .IN1(n933), .IN2(n991), .IN3(n992), .IN4(s_fract_48_i[45]), 
        .IN5(n964), .IN6(s_fract_48_i[43]), .Q(N1632) );
  INVX0 U1043 ( .INP(n887), .ZN(n964) );
  NOR2X0 U1044 ( .IN1(s_fract_48_i[47]), .IN2(s_fract_48_i[46]), .QN(n992) );
  NAND4X0 U1045 ( .IN1(n993), .IN2(n914), .IN3(n994), .IN4(n965), .QN(n991) );
  NAND3X0 U1046 ( .IN1(n913), .IN2(n16), .IN3(n990), .QN(n965) );
  INVX0 U1047 ( .INP(n935), .ZN(n994) );
  NOR2X0 U1048 ( .IN1(n831), .IN2(n990), .QN(n935) );
  NAND3X0 U1049 ( .IN1(n889), .IN2(n33), .IN3(n995), .QN(n914) );
  NAND2X0 U1050 ( .IN1(n938), .IN2(n996), .QN(n993) );
  NAND4X0 U1051 ( .IN1(n997), .IN2(n941), .IN3(n931), .IN4(n940), .QN(n996) );
  OR2X1 U1052 ( .IN1(n970), .IN2(n972), .Q(n940) );
  NAND2X0 U1053 ( .IN1(s_fract_48_i[35]), .IN2(n7), .QN(n931) );
  INVX0 U1054 ( .INP(n917), .ZN(n941) );
  NOR2X0 U1055 ( .IN1(n944), .IN2(n4), .QN(n917) );
  NAND2X0 U1056 ( .IN1(n972), .IN2(n998), .QN(n997) );
  NAND4X0 U1057 ( .IN1(n999), .IN2(n900), .IN3(n902), .IN4(n903), .QN(n998) );
  NAND2X0 U1058 ( .IN1(s_fract_48_i[29]), .IN2(n6), .QN(n903) );
  NAND3X0 U1059 ( .IN1(n921), .IN2(n10), .IN3(n946), .QN(n902) );
  NAND3X0 U1060 ( .IN1(n1000), .IN2(n11), .IN3(n989), .QN(n900) );
  NAND2X0 U1061 ( .IN1(n890), .IN2(n1001), .QN(n999) );
  NAND4X0 U1062 ( .IN1(n1002), .IN2(n898), .IN3(n904), .IN4(n908), .QN(n1001)
         );
  NAND2X0 U1063 ( .IN1(n988), .IN2(s_fract_48_i[21]), .QN(n908) );
  NAND2X0 U1064 ( .IN1(s_fract_48_i[23]), .IN2(n1), .QN(n904) );
  INVX0 U1065 ( .INP(n925), .ZN(n898) );
  NOR2X0 U1066 ( .IN1(n987), .IN2(n891), .QN(n925) );
  NAND2X0 U1067 ( .IN1(n891), .IN2(n1003), .QN(n1002) );
  NAND3X0 U1068 ( .IN1(n977), .IN2(n906), .IN3(n1004), .QN(n1003) );
  MUX21X1 U1069 ( .IN1(n1005), .IN2(n1006), .S(n929), .Q(n1004) );
  NOR2X0 U1070 ( .IN1(n1005), .IN2(s_fract_48_i[13]), .QN(n929) );
  NOR4X0 U1071 ( .IN1(n1007), .IN2(n1008), .IN3(n1009), .IN4(n1010), .QN(n1006) );
  NOR2X0 U1072 ( .IN1(n1011), .IN2(n927), .QN(n1010) );
  OA221X1 U1073 ( .IN1(s_fract_48_i[2]), .IN2(n962), .IN3(s_fract_48_i[6]), 
        .IN4(n12), .IN5(n984), .Q(n1011) );
  NAND2X0 U1074 ( .IN1(n985), .IN2(s_fract_48_i[3]), .QN(n984) );
  NAND3X0 U1075 ( .IN1(n961), .IN2(n14), .IN3(n985), .QN(n962) );
  NAND4X0 U1076 ( .IN1(n985), .IN2(n37), .IN3(n53), .IN4(n14), .QN(n961) );
  NOR2X0 U1077 ( .IN1(n885), .IN2(s_fract_48_i[4]), .QN(n985) );
  INVX0 U1078 ( .INP(n884), .ZN(n885) );
  NOR2X0 U1079 ( .IN1(s_fract_48_i[5]), .IN2(s_fract_48_i[6]), .QN(n884) );
  INVX0 U1080 ( .INP(n957), .ZN(n1009) );
  NAND3X0 U1081 ( .IN1(n1012), .IN2(n9), .IN3(n960), .QN(n957) );
  INVX0 U1082 ( .INP(n959), .ZN(n1008) );
  NAND3X0 U1083 ( .IN1(n927), .IN2(n5), .IN3(n982), .QN(n959) );
  NAND3X0 U1084 ( .IN1(n34), .IN2(n5), .IN3(n982), .QN(n927) );
  INVX0 U1085 ( .INP(n1012), .ZN(n982) );
  NAND3X0 U1086 ( .IN1(n9), .IN2(n50), .IN3(n960), .QN(n1012) );
  NOR2X0 U1087 ( .IN1(s_fract_48_i[12]), .IN2(s_fract_48_i[11]), .QN(n960) );
  NOR2X0 U1088 ( .IN1(s_fract_48_i[12]), .IN2(n27), .QN(n1007) );
  NAND2X0 U1089 ( .IN1(n892), .IN2(n48), .QN(n1005) );
  INVX0 U1090 ( .INP(n952), .ZN(n906) );
  NOR2X0 U1091 ( .IN1(n26), .IN2(s_fract_48_i[18]), .QN(n952) );
  NAND2X0 U1092 ( .IN1(n892), .IN2(s_fract_48_i[15]), .QN(n977) );
  INVX0 U1093 ( .INP(n986), .ZN(n892) );
  NAND3X0 U1094 ( .IN1(n26), .IN2(n3), .IN3(n44), .QN(n986) );
  NOR2X0 U1095 ( .IN1(n987), .IN2(s_fract_48_i[19]), .QN(n891) );
  NAND3X0 U1096 ( .IN1(n45), .IN2(n21), .IN3(n988), .QN(n987) );
  INVX0 U1097 ( .INP(n923), .ZN(n988) );
  NAND3X0 U1098 ( .IN1(n23), .IN2(n1), .IN3(n47), .QN(n923) );
  INVX0 U1099 ( .INP(n921), .ZN(n890) );
  NAND3X0 U1100 ( .IN1(n25), .IN2(n10), .IN3(n946), .QN(n921) );
  INVX0 U1101 ( .INP(n1000), .ZN(n946) );
  NAND3X0 U1102 ( .IN1(n43), .IN2(n11), .IN3(n989), .QN(n1000) );
  NOR2X0 U1103 ( .IN1(s_fract_48_i[30]), .IN2(s_fract_48_i[29]), .QN(n989) );
  NOR2X0 U1104 ( .IN1(n970), .IN2(s_fract_48_i[31]), .QN(n972) );
  NAND3X0 U1105 ( .IN1(n13), .IN2(n4), .IN3(n971), .QN(n970) );
  INVX0 U1106 ( .INP(n944), .ZN(n971) );
  NAND3X0 U1107 ( .IN1(n29), .IN2(n7), .IN3(n52), .QN(n944) );
  INVX0 U1108 ( .INP(n889), .ZN(n938) );
  NAND3X0 U1109 ( .IN1(n54), .IN2(n33), .IN3(n995), .QN(n889) );
  INVX0 U1110 ( .INP(n913), .ZN(n995) );
  NAND2X0 U1111 ( .IN1(n990), .IN2(n879), .QN(n913) );
  NOR2X0 U1112 ( .IN1(s_fract_48_i[40]), .IN2(s_fract_48_i[39]), .QN(n879) );
  NOR2X0 U1113 ( .IN1(n831), .IN2(s_fract_48_i[41]), .QN(n990) );
  NAND2X0 U1114 ( .IN1(n46), .IN2(n31), .QN(n831) );
  NOR2X0 U1115 ( .IN1(n887), .IN2(s_fract_48_i[43]), .QN(n933) );
  NAND2X0 U1116 ( .IN1(n882), .IN2(n49), .QN(n887) );
  AND3X1 U1117 ( .IN1(n57), .IN2(n30), .IN3(n15), .Q(n882) );
endmodule


module pre_norm_div_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [10:0] carry;

  FADDX1 U2_4 ( .A(A[4]), .B(n11), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  FADDX1 U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n13), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  FADDX1 U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVX0 U1 ( .INP(A[5]), .ZN(n9) );
  INVX0 U2 ( .INP(A[6]), .ZN(n5) );
  INVX0 U3 ( .INP(A[7]), .ZN(n6) );
  AND2X1 U4 ( .IN1(n7), .IN2(n4), .Q(n1) );
  INVX0 U5 ( .INP(carry[5]), .ZN(n10) );
  NAND2X1 U6 ( .IN1(n8), .IN2(B[0]), .QN(carry[1]) );
  INVX0 U7 ( .INP(B[1]), .ZN(n12) );
  INVX0 U8 ( .INP(A[0]), .ZN(n8) );
  INVX0 U9 ( .INP(B[2]), .ZN(n13) );
  INVX0 U10 ( .INP(B[3]), .ZN(n14) );
  INVX0 U11 ( .INP(B[4]), .ZN(n11) );
  AND2X1 U12 ( .IN1(n9), .IN2(n10), .Q(n2) );
  AND2X1 U13 ( .IN1(n5), .IN2(n2), .Q(n3) );
  AND2X1 U14 ( .IN1(n6), .IN2(n3), .Q(n4) );
  INVX0 U15 ( .INP(A[8]), .ZN(n7) );
  XOR2X1 U16 ( .IN1(n2), .IN2(A[6]), .Q(DIFF[6]) );
  XOR2X1 U17 ( .IN1(n3), .IN2(A[7]), .Q(DIFF[7]) );
  XOR2X1 U18 ( .IN1(n4), .IN2(A[8]), .Q(DIFF[8]) );
  XOR2X1 U19 ( .IN1(n1), .IN2(A[9]), .Q(DIFF[9]) );
  XOR2X1 U20 ( .IN1(B[0]), .IN2(A[0]), .Q(DIFF[0]) );
  XOR2X1 U21 ( .IN1(n10), .IN2(A[5]), .Q(DIFF[5]) );
endmodule


module pre_norm_div_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:1] carry;

  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .IN1(B[9]), .IN2(carry[9]), .Q(SUM[9]) );
  AND2X1 U2 ( .IN1(A[0]), .IN2(B[0]), .Q(n1) );
  XOR2X1 U3 ( .IN1(A[0]), .IN2(B[0]), .Q(SUM[0]) );
endmodule


module pre_norm_div_1 ( clk_i, opa_i, opb_i, exp_10_o, dvdnd_50_o, dvsor_27_o
 );
  input [31:0] opa_i;
  input [31:0] opb_i;
  output [9:0] exp_10_o;
  output [49:0] dvdnd_50_o;
  output [26:0] dvsor_27_o;
  input clk_i;
  wire   N1526, N1527, N1528, N1529, N1530, N1531, N1532, N1533, N1535, N1536,
         N1537, N1538, N1539, N1540, N1541, N1542, N1545, N1546, N1547, N1548,
         N1549, N1550, N1551, N1552, N1554, N1555, N1556, N1557, N1558, N1559,
         N1560, N1561, N1562, N1563, N1564, N1565, N1566, N1567, N1568, N1569,
         N1570, N1571, N1572, N1573, N1574, N1575, N1576, N1577, N1578, N1579,
         N1580, N1581, N1582, N1583, n3, n4, n5, n6, n7, n8, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389;
  wire   [9:0] s_exp_10_o;
  wire   [5:0] s_dvd_zeros;
  wire   [9:0] s_expa_in;
  wire   [9:0] s_expb_in;
  assign dvsor_27_o[24] = 1'b0;
  assign dvsor_27_o[25] = 1'b0;
  assign dvsor_27_o[26] = 1'b0;
  assign dvdnd_50_o[0] = 1'b0;
  assign dvdnd_50_o[1] = 1'b0;
  assign dvdnd_50_o[2] = 1'b0;
  assign dvdnd_50_o[3] = 1'b0;
  assign dvdnd_50_o[4] = 1'b0;
  assign dvdnd_50_o[5] = 1'b0;
  assign dvdnd_50_o[6] = 1'b0;
  assign dvdnd_50_o[7] = 1'b0;
  assign dvdnd_50_o[8] = 1'b0;
  assign dvdnd_50_o[9] = 1'b0;
  assign dvdnd_50_o[10] = 1'b0;
  assign dvdnd_50_o[11] = 1'b0;
  assign dvdnd_50_o[12] = 1'b0;
  assign dvdnd_50_o[13] = 1'b0;
  assign dvdnd_50_o[14] = 1'b0;
  assign dvdnd_50_o[15] = 1'b0;
  assign dvdnd_50_o[16] = 1'b0;
  assign dvdnd_50_o[17] = 1'b0;
  assign dvdnd_50_o[18] = 1'b0;
  assign dvdnd_50_o[19] = 1'b0;
  assign dvdnd_50_o[20] = 1'b0;
  assign dvdnd_50_o[21] = 1'b0;
  assign dvdnd_50_o[22] = 1'b0;
  assign dvdnd_50_o[23] = 1'b0;
  assign dvdnd_50_o[24] = 1'b0;
  assign dvdnd_50_o[25] = 1'b0;
  assign N1527 = opa_i[24];
  assign N1528 = opa_i[25];
  assign N1529 = opa_i[26];
  assign N1530 = opa_i[27];
  assign N1531 = opa_i[28];
  assign N1532 = opa_i[29];
  assign N1533 = opa_i[30];
  assign N1536 = opb_i[24];
  assign N1537 = opb_i[25];
  assign N1538 = opb_i[26];
  assign N1539 = opb_i[27];
  assign N1540 = opb_i[28];
  assign N1541 = opb_i[29];
  assign N1542 = opb_i[30];

  DFFX1 \s_expa_in_reg[7]  ( .D(N1533), .CLK(clk_i), .Q(s_expa_in[7]) );
  DFFX1 \s_expa_in_reg[6]  ( .D(N1532), .CLK(clk_i), .Q(s_expa_in[6]) );
  DFFX1 \s_expa_in_reg[5]  ( .D(N1531), .CLK(clk_i), .Q(s_expa_in[5]) );
  DFFX1 \s_expa_in_reg[4]  ( .D(N1530), .CLK(clk_i), .Q(s_expa_in[4]) );
  DFFX1 \s_expa_in_reg[3]  ( .D(N1529), .CLK(clk_i), .Q(s_expa_in[3]) );
  DFFX1 \s_expa_in_reg[2]  ( .D(N1528), .CLK(clk_i), .Q(s_expa_in[2]) );
  DFFX1 \s_expa_in_reg[1]  ( .D(N1527), .CLK(clk_i), .Q(s_expa_in[1]) );
  DFFX1 \s_expa_in_reg[0]  ( .D(N1526), .CLK(clk_i), .Q(s_expa_in[0]), .QN(n3)
         );
  DFFX1 \s_expb_in_reg[7]  ( .D(N1542), .CLK(clk_i), .Q(s_expb_in[7]) );
  DFFX1 \s_expb_in_reg[6]  ( .D(N1541), .CLK(clk_i), .Q(s_expb_in[6]) );
  DFFX1 \s_expb_in_reg[5]  ( .D(N1540), .CLK(clk_i), .Q(s_expb_in[5]), .QN(n8)
         );
  DFFX1 \s_expb_in_reg[4]  ( .D(N1539), .CLK(clk_i), .QN(n5) );
  DFFX1 \s_expb_in_reg[3]  ( .D(N1538), .CLK(clk_i), .QN(n6) );
  DFFX1 \s_expb_in_reg[2]  ( .D(N1537), .CLK(clk_i), .QN(n4) );
  DFFX1 \s_expb_in_reg[1]  ( .D(N1536), .CLK(clk_i), .Q(s_expb_in[1]) );
  DFFX1 \s_expb_in_reg[0]  ( .D(N1535), .CLK(clk_i), .QN(n7) );
  DFFX1 \s_exp_10_o_reg[9]  ( .D(N1583), .CLK(clk_i), .Q(s_exp_10_o[9]) );
  DFFX1 \exp_10_o_reg[9]  ( .D(s_exp_10_o[9]), .CLK(clk_i), .Q(exp_10_o[9]) );
  DFFX1 \s_exp_10_o_reg[8]  ( .D(N1582), .CLK(clk_i), .Q(s_exp_10_o[8]) );
  DFFX1 \exp_10_o_reg[8]  ( .D(s_exp_10_o[8]), .CLK(clk_i), .Q(exp_10_o[8]) );
  DFFX1 \s_exp_10_o_reg[7]  ( .D(N1581), .CLK(clk_i), .Q(s_exp_10_o[7]) );
  DFFX1 \exp_10_o_reg[7]  ( .D(s_exp_10_o[7]), .CLK(clk_i), .Q(exp_10_o[7]) );
  DFFX1 \s_exp_10_o_reg[6]  ( .D(N1580), .CLK(clk_i), .Q(s_exp_10_o[6]) );
  DFFX1 \exp_10_o_reg[6]  ( .D(s_exp_10_o[6]), .CLK(clk_i), .Q(exp_10_o[6]) );
  DFFX1 \s_exp_10_o_reg[5]  ( .D(N1579), .CLK(clk_i), .Q(s_exp_10_o[5]) );
  DFFX1 \exp_10_o_reg[5]  ( .D(s_exp_10_o[5]), .CLK(clk_i), .Q(exp_10_o[5]) );
  DFFX1 \s_exp_10_o_reg[4]  ( .D(N1578), .CLK(clk_i), .Q(s_exp_10_o[4]) );
  DFFX1 \exp_10_o_reg[4]  ( .D(s_exp_10_o[4]), .CLK(clk_i), .Q(exp_10_o[4]) );
  DFFX1 \s_exp_10_o_reg[3]  ( .D(N1577), .CLK(clk_i), .Q(s_exp_10_o[3]) );
  DFFX1 \exp_10_o_reg[3]  ( .D(s_exp_10_o[3]), .CLK(clk_i), .Q(exp_10_o[3]) );
  DFFX1 \s_exp_10_o_reg[2]  ( .D(N1576), .CLK(clk_i), .Q(s_exp_10_o[2]) );
  DFFX1 \exp_10_o_reg[2]  ( .D(s_exp_10_o[2]), .CLK(clk_i), .Q(exp_10_o[2]) );
  DFFX1 \s_exp_10_o_reg[1]  ( .D(N1575), .CLK(clk_i), .Q(s_exp_10_o[1]) );
  DFFX1 \exp_10_o_reg[1]  ( .D(s_exp_10_o[1]), .CLK(clk_i), .Q(exp_10_o[1]) );
  DFFX1 \s_exp_10_o_reg[0]  ( .D(N1574), .CLK(clk_i), .Q(s_exp_10_o[0]) );
  DFFX1 \exp_10_o_reg[0]  ( .D(s_exp_10_o[0]), .CLK(clk_i), .Q(exp_10_o[0]) );
  pre_norm_div_1_DW01_sub_0 sub_0_root_add_118_2 ( .A({N1573, N1572, N1571, 
        N1570, N1569, N1568, N1567, N1566, N1565, N1564}), .B({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, s_dvd_zeros[4:0]}), .CI(1'b0), .DIFF({N1583, N1582, 
        N1581, N1580, N1579, N1578, N1577, N1576, N1575, N1574}) );
  pre_norm_div_1_DW01_add_0 add_1_root_add_118_2 ( .A({1'b0, N1552, N1551, 
        N1550, N1549, N1548, N1547, N1546, N1545, n3}), .B({N1563, N1562, 
        N1561, N1560, N1559, N1558, N1557, N1556, N1555, N1554}), .CI(1'b0), 
        .SUM({N1573, N1572, N1571, N1570, N1569, N1568, N1567, N1566, N1565, 
        N1564}) );
  INVX1 U3 ( .INP(n298), .ZN(N1563) );
  INVX1 U4 ( .INP(n298), .ZN(N1562) );
  INVX1 U5 ( .INP(n370), .ZN(N1552) );
  AO222X1 U7 ( .IN1(n10), .IN2(n11), .IN3(n12), .IN4(n13), .IN5(n14), .IN6(n15), .Q(dvsor_27_o[9]) );
  AO222X1 U8 ( .IN1(n16), .IN2(n10), .IN3(n17), .IN4(n12), .IN5(n18), .IN6(n14), .Q(dvsor_27_o[8]) );
  NOR2X0 U9 ( .IN1(n19), .IN2(n20), .QN(dvsor_27_o[7]) );
  AOI22X1 U10 ( .IN1(n21), .IN2(n22), .IN3(n23), .IN4(n24), .QN(n20) );
  AND2X1 U11 ( .IN1(n25), .IN2(n26), .Q(n22) );
  NOR2X0 U12 ( .IN1(n19), .IN2(n27), .QN(dvsor_27_o[6]) );
  NOR2X0 U13 ( .IN1(n19), .IN2(n28), .QN(dvsor_27_o[5]) );
  NOR2X0 U14 ( .IN1(n29), .IN2(n30), .QN(dvsor_27_o[4]) );
  INVX0 U15 ( .INP(n31), .ZN(n30) );
  AND2X1 U16 ( .IN1(n25), .IN2(n14), .Q(dvsor_27_o[3]) );
  NOR2X0 U17 ( .IN1(n32), .IN2(n34), .QN(dvsor_27_o[2]) );
  NAND3X0 U18 ( .IN1(n35), .IN2(n36), .IN3(n37), .QN(dvsor_27_o[23]) );
  OA221X1 U19 ( .IN1(n38), .IN2(n39), .IN3(n40), .IN4(n41), .IN5(n42), .Q(
        dvsor_27_o[22]) );
  OA22X1 U20 ( .IN1(n43), .IN2(n44), .IN3(n45), .IN4(n46), .Q(n42) );
  AO21X1 U21 ( .IN1(n47), .IN2(n37), .IN3(n48), .Q(n44) );
  OA221X1 U22 ( .IN1(opb_i[22]), .IN2(n49), .IN3(opb_i[19]), .IN4(n50), .IN5(
        n51), .Q(n40) );
  OA22X1 U23 ( .IN1(opb_i[20]), .IN2(n52), .IN3(opb_i[21]), .IN4(n53), .Q(n51)
         );
  INVX0 U24 ( .INP(n27), .ZN(n38) );
  NAND2X0 U25 ( .IN1(n54), .IN2(n26), .QN(n27) );
  MUX21X1 U26 ( .IN1(n55), .IN2(n56), .S(n57), .Q(n54) );
  OA221X1 U27 ( .IN1(n58), .IN2(n39), .IN3(n59), .IN4(n41), .IN5(n60), .Q(
        dvsor_27_o[21]) );
  OA22X1 U28 ( .IN1(n61), .IN2(n62), .IN3(n63), .IN4(n46), .Q(n60) );
  NAND2X0 U29 ( .IN1(n37), .IN2(n57), .QN(n46) );
  AO21X1 U30 ( .IN1(n37), .IN2(n15), .IN3(n43), .Q(n62) );
  NAND2X0 U31 ( .IN1(n21), .IN2(n39), .QN(n43) );
  NAND2X0 U32 ( .IN1(n24), .IN2(n39), .QN(n41) );
  OA221X1 U33 ( .IN1(opb_i[21]), .IN2(n49), .IN3(opb_i[18]), .IN4(n50), .IN5(
        n64), .Q(n59) );
  OA22X1 U34 ( .IN1(opb_i[19]), .IN2(n52), .IN3(opb_i[20]), .IN4(n53), .Q(n64)
         );
  INVX0 U35 ( .INP(n65), .ZN(n53) );
  INVX0 U36 ( .INP(n66), .ZN(n52) );
  INVX0 U37 ( .INP(n67), .ZN(n50) );
  INVX0 U38 ( .INP(n28), .ZN(n58) );
  NAND2X0 U39 ( .IN1(n68), .IN2(n26), .QN(n28) );
  MUX21X1 U40 ( .IN1(n13), .IN2(n11), .S(n57), .Q(n68) );
  NAND4X0 U41 ( .IN1(n69), .IN2(n70), .IN3(n71), .IN4(n72), .QN(dvsor_27_o[20]) );
  AOI22X1 U42 ( .IN1(n66), .IN2(opb_i[18]), .IN3(n65), .IN4(opb_i[19]), .QN(
        n72) );
  AOI22X1 U43 ( .IN1(opb_i[17]), .IN2(n67), .IN3(n73), .IN4(opb_i[20]), .QN(
        n71) );
  AOI22X1 U44 ( .IN1(n31), .IN2(n19), .IN3(n18), .IN4(n74), .QN(n70) );
  AOI22X1 U45 ( .IN1(n12), .IN2(n75), .IN3(n76), .IN4(n10), .QN(n69) );
  NOR2X0 U46 ( .IN1(n77), .IN2(n32), .QN(dvsor_27_o[1]) );
  INVX0 U47 ( .INP(n14), .ZN(n32) );
  AO221X1 U48 ( .IN1(n78), .IN2(n10), .IN3(n14), .IN4(n79), .IN5(n80), .Q(
        dvsor_27_o[19]) );
  AO222X1 U49 ( .IN1(n81), .IN2(n25), .IN3(n74), .IN4(n23), .IN5(n82), .IN6(
        n12), .Q(n80) );
  AO221X1 U52 ( .IN1(opb_i[16]), .IN2(n67), .IN3(opb_i[19]), .IN4(n73), .IN5(
        n83), .Q(n79) );
  AO22X1 U53 ( .IN1(opb_i[18]), .IN2(n65), .IN3(n66), .IN4(opb_i[17]), .Q(n83)
         );
  AO221X1 U54 ( .IN1(n45), .IN2(n10), .IN3(n14), .IN4(n48), .IN5(n84), .Q(
        dvsor_27_o[18]) );
  AO222X1 U55 ( .IN1(n81), .IN2(n55), .IN3(n56), .IN4(n74), .IN5(n47), .IN6(
        n12), .Q(n84) );
  AO221X1 U56 ( .IN1(n67), .IN2(opb_i[15]), .IN3(opb_i[18]), .IN4(n73), .IN5(
        n85), .Q(n48) );
  AO22X1 U57 ( .IN1(n65), .IN2(opb_i[17]), .IN3(opb_i[16]), .IN4(n66), .Q(n85)
         );
  AO221X1 U58 ( .IN1(n63), .IN2(n10), .IN3(n14), .IN4(n61), .IN5(n86), .Q(
        dvsor_27_o[17]) );
  AO222X1 U59 ( .IN1(n81), .IN2(n13), .IN3(n74), .IN4(n11), .IN5(n12), .IN6(
        n15), .Q(n86) );
  AO221X1 U60 ( .IN1(opb_i[14]), .IN2(n67), .IN3(n73), .IN4(opb_i[17]), .IN5(
        n87), .Q(n61) );
  AO22X1 U61 ( .IN1(opb_i[16]), .IN2(n65), .IN3(n66), .IN4(opb_i[15]), .Q(n87)
         );
  AO221X1 U62 ( .IN1(n75), .IN2(n10), .IN3(n14), .IN4(n76), .IN5(n88), .Q(
        dvsor_27_o[16]) );
  AO222X1 U63 ( .IN1(n74), .IN2(n16), .IN3(n81), .IN4(n17), .IN5(n18), .IN6(
        n12), .Q(n88) );
  AND2X1 U64 ( .IN1(n19), .IN2(n24), .Q(n81) );
  NOR2X0 U65 ( .IN1(n21), .IN2(n37), .QN(n24) );
  AO221X1 U67 ( .IN1(n67), .IN2(opb_i[13]), .IN3(opb_i[16]), .IN4(n73), .IN5(
        n89), .Q(n76) );
  AO22X1 U68 ( .IN1(n65), .IN2(opb_i[15]), .IN3(opb_i[14]), .IN4(n66), .Q(n89)
         );
  AO221X1 U69 ( .IN1(n82), .IN2(n10), .IN3(n78), .IN4(n14), .IN5(n90), .Q(
        dvsor_27_o[15]) );
  AO22X1 U70 ( .IN1(n12), .IN2(n23), .IN3(n74), .IN4(n25), .Q(n90) );
  INVX0 U71 ( .INP(n36), .ZN(n78) );
  AO221X1 U72 ( .IN1(n67), .IN2(n91), .IN3(n73), .IN4(n92), .IN5(n93), .Q(n36)
         );
  AO22X1 U73 ( .IN1(n65), .IN2(n94), .IN3(n66), .IN4(n95), .Q(n93) );
  AO221X1 U74 ( .IN1(n74), .IN2(n55), .IN3(n56), .IN4(n12), .IN5(n96), .Q(
        dvsor_27_o[14]) );
  AO22X1 U75 ( .IN1(n45), .IN2(n14), .IN3(n47), .IN4(n10), .Q(n96) );
  AOI221X1 U76 ( .IN1(n67), .IN2(n97), .IN3(n73), .IN4(n94), .IN5(n98), .QN(
        n45) );
  AO22X1 U77 ( .IN1(n65), .IN2(n95), .IN3(n66), .IN4(n91), .Q(n98) );
  AO221X1 U78 ( .IN1(n10), .IN2(n15), .IN3(n63), .IN4(n14), .IN5(n99), .Q(
        dvsor_27_o[13]) );
  AO22X1 U79 ( .IN1(n12), .IN2(n11), .IN3(n74), .IN4(n13), .Q(n99) );
  INVX0 U80 ( .INP(n77), .ZN(n13) );
  NAND2X0 U81 ( .IN1(n100), .IN2(n101), .QN(n77) );
  MUX21X1 U82 ( .IN1(opb_i[1]), .IN2(opb_i[0]), .S(n102), .Q(n100) );
  NOR2X0 U83 ( .IN1(n26), .IN2(n57), .QN(n74) );
  AO221X1 U84 ( .IN1(n67), .IN2(opb_i[2]), .IN3(opb_i[5]), .IN4(n73), .IN5(
        n103), .Q(n11) );
  AO22X1 U85 ( .IN1(n65), .IN2(opb_i[4]), .IN3(opb_i[3]), .IN4(n66), .Q(n103)
         );
  AOI221X1 U86 ( .IN1(n67), .IN2(n104), .IN3(n73), .IN4(n95), .IN5(n105), .QN(
        n63) );
  AO22X1 U87 ( .IN1(n65), .IN2(n91), .IN3(n66), .IN4(n97), .Q(n105) );
  AO221X1 U88 ( .IN1(opb_i[6]), .IN2(n67), .IN3(n73), .IN4(opb_i[9]), .IN5(
        n106), .Q(n15) );
  AO22X1 U89 ( .IN1(opb_i[8]), .IN2(n65), .IN3(opb_i[7]), .IN4(n66), .Q(n106)
         );
  AO222X1 U90 ( .IN1(n75), .IN2(n14), .IN3(n18), .IN4(n10), .IN5(n31), .IN6(
        n37), .Q(dvsor_27_o[12]) );
  MUX21X1 U91 ( .IN1(n17), .IN2(n16), .S(n57), .Q(n31) );
  AOI221X1 U92 ( .IN1(n67), .IN2(n107), .IN3(n73), .IN4(n108), .IN5(n109), 
        .QN(n16) );
  AO22X1 U93 ( .IN1(n65), .IN2(n110), .IN3(n66), .IN4(n111), .Q(n109) );
  AOI221X1 U94 ( .IN1(n67), .IN2(n112), .IN3(n73), .IN4(n113), .IN5(n114), 
        .QN(n18) );
  AO22X1 U95 ( .IN1(n65), .IN2(n115), .IN3(n66), .IN4(n116), .Q(n114) );
  AOI221X1 U96 ( .IN1(n67), .IN2(n117), .IN3(n73), .IN4(n91), .IN5(n118), .QN(
        n75) );
  AO22X1 U97 ( .IN1(n65), .IN2(n97), .IN3(n66), .IN4(n104), .Q(n118) );
  AO222X1 U98 ( .IN1(n10), .IN2(n23), .IN3(n12), .IN4(n25), .IN5(n82), .IN6(
        n14), .Q(dvsor_27_o[11]) );
  INVX0 U99 ( .INP(n35), .ZN(n82) );
  AO221X1 U100 ( .IN1(n67), .IN2(n113), .IN3(n73), .IN4(n97), .IN5(n119), .Q(
        n35) );
  AO22X1 U101 ( .IN1(n65), .IN2(n104), .IN3(n66), .IN4(n117), .Q(n119) );
  AO221X1 U102 ( .IN1(opb_i[0]), .IN2(n67), .IN3(n73), .IN4(opb_i[3]), .IN5(
        n120), .Q(n25) );
  AO22X1 U103 ( .IN1(n65), .IN2(opb_i[2]), .IN3(opb_i[1]), .IN4(n66), .Q(n120)
         );
  AO221X1 U104 ( .IN1(n67), .IN2(opb_i[4]), .IN3(opb_i[7]), .IN4(n73), .IN5(
        n121), .Q(n23) );
  AO22X1 U105 ( .IN1(opb_i[6]), .IN2(n65), .IN3(opb_i[5]), .IN4(n66), .Q(n121)
         );
  AO222X1 U106 ( .IN1(n56), .IN2(n10), .IN3(n55), .IN4(n12), .IN5(n47), .IN6(
        n14), .Q(dvsor_27_o[10]) );
  AOI221X1 U107 ( .IN1(n67), .IN2(n115), .IN3(n73), .IN4(n104), .IN5(n122), 
        .QN(n47) );
  AO22X1 U108 ( .IN1(n65), .IN2(n117), .IN3(n66), .IN4(n113), .Q(n122) );
  NOR2X0 U109 ( .IN1(n26), .IN2(n21), .QN(n12) );
  INVX0 U110 ( .INP(n34), .ZN(n55) );
  AO221X1 U111 ( .IN1(n123), .IN2(n124), .IN3(n102), .IN4(n107), .IN5(n125), 
        .Q(n34) );
  AO21X1 U112 ( .IN1(n73), .IN2(n111), .IN3(n67), .Q(n125) );
  NOR2X0 U113 ( .IN1(n29), .IN2(n57), .QN(n10) );
  AOI221X1 U114 ( .IN1(n67), .IN2(n110), .IN3(n73), .IN4(n116), .IN5(n126), 
        .QN(n56) );
  AO22X1 U115 ( .IN1(n65), .IN2(n112), .IN3(n66), .IN4(n108), .Q(n126) );
  NOR2X0 U116 ( .IN1(n102), .IN2(n101), .QN(n66) );
  NOR2X0 U117 ( .IN1(n123), .IN2(n127), .QN(n65) );
  NOR2X0 U118 ( .IN1(n101), .IN2(n127), .QN(n67) );
  INVX0 U119 ( .INP(n102), .ZN(n127) );
  AND2X1 U120 ( .IN1(n14), .IN2(n17), .Q(dvsor_27_o[0]) );
  NOR2X0 U121 ( .IN1(n124), .IN2(n49), .QN(n17) );
  INVX0 U122 ( .INP(n73), .ZN(n49) );
  NOR2X0 U123 ( .IN1(n123), .IN2(n102), .QN(n73) );
  NOR2X0 U124 ( .IN1(n29), .IN2(n21), .QN(n14) );
  NAND2X0 U125 ( .IN1(n39), .IN2(n26), .QN(n29) );
  NAND4X0 U126 ( .IN1(n128), .IN2(n129), .IN3(n130), .IN4(n131), .QN(
        dvdnd_50_o[49]) );
  NOR4X0 U127 ( .IN1(n132), .IN2(n133), .IN3(n134), .IN4(n135), .QN(n131) );
  NOR2X0 U128 ( .IN1(n136), .IN2(n137), .QN(n130) );
  INVX0 U129 ( .INP(n138), .ZN(n129) );
  OA21X1 U130 ( .IN1(n139), .IN2(n140), .IN3(n141), .Q(dvdnd_50_o[48]) );
  MUX21X1 U131 ( .IN1(n142), .IN2(n143), .S(n144), .Q(n141) );
  OA222X1 U132 ( .IN1(n145), .IN2(n146), .IN3(n147), .IN4(n148), .IN5(n149), 
        .IN6(n150), .Q(n143) );
  INVX0 U133 ( .INP(n151), .ZN(n142) );
  OA221X1 U134 ( .IN1(opa_i[22]), .IN2(n152), .IN3(opa_i[19]), .IN4(n153), 
        .IN5(n154), .Q(n139) );
  OA22X1 U135 ( .IN1(opa_i[21]), .IN2(n155), .IN3(opa_i[20]), .IN4(n156), .Q(
        n154) );
  OA21X1 U136 ( .IN1(n157), .IN2(n140), .IN3(n158), .Q(dvdnd_50_o[47]) );
  MUX21X1 U137 ( .IN1(n159), .IN2(n160), .S(n144), .Q(n158) );
  OA222X1 U138 ( .IN1(n145), .IN2(n161), .IN3(n162), .IN4(n148), .IN5(n150), 
        .IN6(n163), .Q(n160) );
  NAND2X0 U139 ( .IN1(s_dvd_zeros[3]), .IN2(s_dvd_zeros[2]), .QN(n150) );
  NAND2X0 U140 ( .IN1(s_dvd_zeros[3]), .IN2(n164), .QN(n148) );
  INVX0 U141 ( .INP(n165), .ZN(n145) );
  INVX0 U142 ( .INP(n166), .ZN(n159) );
  NAND3X0 U143 ( .IN1(n167), .IN2(n144), .IN3(n164), .QN(n140) );
  OA221X1 U144 ( .IN1(opa_i[21]), .IN2(n152), .IN3(opa_i[18]), .IN4(n153), 
        .IN5(n168), .Q(n157) );
  OA22X1 U145 ( .IN1(opa_i[20]), .IN2(n155), .IN3(opa_i[19]), .IN4(n156), .Q(
        n168) );
  INVX0 U146 ( .INP(n133), .ZN(n156) );
  INVX0 U147 ( .INP(n134), .ZN(n155) );
  INVX0 U148 ( .INP(n132), .ZN(n153) );
  NAND4X0 U149 ( .IN1(n169), .IN2(n170), .IN3(n171), .IN4(n172), .QN(
        dvdnd_50_o[46]) );
  AOI22X1 U150 ( .IN1(n134), .IN2(opa_i[19]), .IN3(n133), .IN4(opa_i[18]), 
        .QN(n172) );
  AOI22X1 U151 ( .IN1(opa_i[17]), .IN2(n132), .IN3(n173), .IN4(opa_i[20]), 
        .QN(n171) );
  AOI22X1 U152 ( .IN1(s_dvd_zeros[4]), .IN2(n174), .IN3(n175), .IN4(n176), 
        .QN(n170) );
  AOI22X1 U153 ( .IN1(n177), .IN2(n178), .IN3(n179), .IN4(n180), .QN(n169) );
  AO221X1 U154 ( .IN1(n136), .IN2(n180), .IN3(n181), .IN4(n138), .IN5(n182), 
        .Q(dvdnd_50_o[45]) );
  AO222X1 U155 ( .IN1(n183), .IN2(n184), .IN3(n176), .IN4(n185), .IN5(n135), 
        .IN6(n178), .Q(n182) );
  AO221X1 U156 ( .IN1(opa_i[18]), .IN2(n134), .IN3(n133), .IN4(opa_i[17]), 
        .IN5(n186), .Q(n138) );
  AO22X1 U157 ( .IN1(opa_i[19]), .IN2(n173), .IN3(opa_i[16]), .IN4(n132), .Q(
        n186) );
  AO221X1 U158 ( .IN1(n147), .IN2(n180), .IN3(n181), .IN4(n146), .IN5(n187), 
        .Q(dvdnd_50_o[44]) );
  AO222X1 U159 ( .IN1(n188), .IN2(n183), .IN3(n189), .IN4(n176), .IN5(n149), 
        .IN6(n178), .Q(n187) );
  AO221X1 U160 ( .IN1(n132), .IN2(opa_i[15]), .IN3(opa_i[18]), .IN4(n173), 
        .IN5(n190), .Q(n146) );
  AO22X1 U161 ( .IN1(opa_i[16]), .IN2(n133), .IN3(n134), .IN4(opa_i[17]), .Q(
        n190) );
  AO221X1 U162 ( .IN1(n162), .IN2(n180), .IN3(n181), .IN4(n161), .IN5(n191), 
        .Q(dvdnd_50_o[43]) );
  AO222X1 U163 ( .IN1(n192), .IN2(n183), .IN3(n176), .IN4(n193), .IN5(n178), 
        .IN6(n163), .Q(n191) );
  AO221X1 U164 ( .IN1(opa_i[14]), .IN2(n132), .IN3(n173), .IN4(opa_i[17]), 
        .IN5(n194), .Q(n161) );
  AO22X1 U165 ( .IN1(n133), .IN2(opa_i[15]), .IN3(opa_i[16]), .IN4(n134), .Q(
        n194) );
  AO221X1 U166 ( .IN1(n180), .IN2(n177), .IN3(n181), .IN4(n179), .IN5(n195), 
        .Q(dvdnd_50_o[42]) );
  AO222X1 U167 ( .IN1(n196), .IN2(n176), .IN3(n197), .IN4(n183), .IN5(n178), 
        .IN6(n175), .Q(n195) );
  NOR2X0 U168 ( .IN1(n144), .IN2(s_dvd_zeros[2]), .QN(n183) );
  AO221X1 U169 ( .IN1(n132), .IN2(opa_i[13]), .IN3(opa_i[16]), .IN4(n173), 
        .IN5(n198), .Q(n179) );
  AO22X1 U170 ( .IN1(opa_i[14]), .IN2(n133), .IN3(n134), .IN4(opa_i[15]), .Q(
        n198) );
  AO221X1 U171 ( .IN1(n176), .IN2(n184), .IN3(n178), .IN4(n185), .IN5(n199), 
        .Q(dvdnd_50_o[41]) );
  AO22X1 U172 ( .IN1(n181), .IN2(n136), .IN3(n135), .IN4(n180), .Q(n199) );
  AOI221X1 U173 ( .IN1(n132), .IN2(n200), .IN3(n173), .IN4(n201), .IN5(n202), 
        .QN(n136) );
  AO22X1 U174 ( .IN1(n133), .IN2(n203), .IN3(n134), .IN4(n204), .Q(n202) );
  AO221X1 U175 ( .IN1(n188), .IN2(n176), .IN3(n189), .IN4(n178), .IN5(n205), 
        .Q(dvdnd_50_o[40]) );
  AO22X1 U176 ( .IN1(n147), .IN2(n181), .IN3(n149), .IN4(n180), .Q(n205) );
  AOI221X1 U177 ( .IN1(n132), .IN2(n206), .IN3(n173), .IN4(n204), .IN5(n207), 
        .QN(n147) );
  AO22X1 U178 ( .IN1(n133), .IN2(n200), .IN3(n134), .IN4(n203), .Q(n207) );
  AO221X1 U179 ( .IN1(n192), .IN2(n176), .IN3(n178), .IN4(n193), .IN5(n208), 
        .Q(dvdnd_50_o[39]) );
  AO22X1 U180 ( .IN1(n162), .IN2(n181), .IN3(n180), .IN4(n163), .Q(n208) );
  AOI221X1 U181 ( .IN1(n132), .IN2(n209), .IN3(n173), .IN4(n203), .IN5(n210), 
        .QN(n162) );
  AO22X1 U182 ( .IN1(n133), .IN2(n206), .IN3(n134), .IN4(n200), .Q(n210) );
  NOR2X0 U183 ( .IN1(n167), .IN2(n164), .QN(n176) );
  AO222X1 U184 ( .IN1(n181), .IN2(n177), .IN3(n180), .IN4(n175), .IN5(n174), 
        .IN6(s_dvd_zeros[3]), .Q(dvdnd_50_o[38]) );
  AOI221X1 U185 ( .IN1(n132), .IN2(n211), .IN3(n173), .IN4(n200), .IN5(n212), 
        .QN(n177) );
  AO22X1 U186 ( .IN1(n133), .IN2(n209), .IN3(n134), .IN4(n206), .Q(n212) );
  AO222X1 U187 ( .IN1(n180), .IN2(n185), .IN3(n178), .IN4(n184), .IN5(n181), 
        .IN6(n135), .Q(dvdnd_50_o[37]) );
  AOI221X1 U188 ( .IN1(n132), .IN2(n213), .IN3(n173), .IN4(n206), .IN5(n214), 
        .QN(n135) );
  AO22X1 U189 ( .IN1(n133), .IN2(n211), .IN3(n134), .IN4(n209), .Q(n214) );
  AO222X1 U190 ( .IN1(n189), .IN2(n180), .IN3(n188), .IN4(n178), .IN5(n149), 
        .IN6(n181), .Q(dvdnd_50_o[36]) );
  AOI221X1 U191 ( .IN1(n132), .IN2(n215), .IN3(n173), .IN4(n209), .IN5(n216), 
        .QN(n149) );
  AO22X1 U192 ( .IN1(n133), .IN2(n213), .IN3(n134), .IN4(n211), .Q(n216) );
  AO222X1 U193 ( .IN1(n180), .IN2(n193), .IN3(n192), .IN4(n178), .IN5(n181), 
        .IN6(n163), .Q(dvdnd_50_o[35]) );
  AO221X1 U194 ( .IN1(n132), .IN2(opa_i[6]), .IN3(n173), .IN4(opa_i[9]), .IN5(
        n217), .Q(n163) );
  AO22X1 U195 ( .IN1(opa_i[7]), .IN2(n133), .IN3(opa_i[8]), .IN4(n134), .Q(
        n217) );
  AO222X1 U196 ( .IN1(n196), .IN2(n180), .IN3(n197), .IN4(n178), .IN5(n181), 
        .IN6(n175), .Q(dvdnd_50_o[34]) );
  AOI221X1 U197 ( .IN1(n132), .IN2(n218), .IN3(n173), .IN4(n213), .IN5(n219), 
        .QN(n175) );
  AO22X1 U198 ( .IN1(n133), .IN2(n220), .IN3(n134), .IN4(n215), .Q(n219) );
  NOR2X0 U199 ( .IN1(n167), .IN2(s_dvd_zeros[2]), .QN(n178) );
  AND2X1 U200 ( .IN1(n221), .IN2(s_dvd_zeros[2]), .Q(n180) );
  INVX0 U201 ( .INP(n164), .ZN(s_dvd_zeros[2]) );
  NOR2X0 U202 ( .IN1(s_dvd_zeros[4]), .IN2(n128), .QN(dvdnd_50_o[33]) );
  AOI22X1 U203 ( .IN1(n165), .IN2(n184), .IN3(n222), .IN4(n164), .QN(n128) );
  AND2X1 U204 ( .IN1(n167), .IN2(n185), .Q(n222) );
  AO221X1 U205 ( .IN1(n132), .IN2(opa_i[4]), .IN3(opa_i[7]), .IN4(n173), .IN5(
        n223), .Q(n185) );
  AO22X1 U206 ( .IN1(opa_i[5]), .IN2(n133), .IN3(opa_i[6]), .IN4(n134), .Q(
        n223) );
  NOR2X0 U207 ( .IN1(n164), .IN2(s_dvd_zeros[3]), .QN(n165) );
  NOR2X0 U208 ( .IN1(s_dvd_zeros[4]), .IN2(n151), .QN(dvdnd_50_o[32]) );
  NAND2X0 U209 ( .IN1(n224), .IN2(n167), .QN(n151) );
  MUX21X1 U210 ( .IN1(n188), .IN2(n189), .S(n164), .Q(n224) );
  AOI221X1 U211 ( .IN1(n132), .IN2(n225), .IN3(n173), .IN4(n220), .IN5(n226), 
        .QN(n189) );
  AO22X1 U212 ( .IN1(n133), .IN2(n227), .IN3(n134), .IN4(n218), .Q(n226) );
  INVX0 U213 ( .INP(n228), .ZN(n188) );
  NOR2X0 U214 ( .IN1(s_dvd_zeros[4]), .IN2(n166), .QN(dvdnd_50_o[31]) );
  NAND2X0 U215 ( .IN1(n229), .IN2(n167), .QN(n166) );
  MUX21X1 U216 ( .IN1(n192), .IN2(n193), .S(n164), .Q(n229) );
  AO221X1 U217 ( .IN1(n132), .IN2(opa_i[2]), .IN3(n173), .IN4(opa_i[5]), .IN5(
        n230), .Q(n193) );
  AO22X1 U218 ( .IN1(opa_i[3]), .IN2(n133), .IN3(n134), .IN4(opa_i[4]), .Q(
        n230) );
  INVX0 U219 ( .INP(n231), .ZN(n192) );
  AND2X1 U220 ( .IN1(n174), .IN2(n221), .Q(dvdnd_50_o[30]) );
  MUX21X1 U221 ( .IN1(n197), .IN2(n196), .S(n164), .Q(n174) );
  AOI221X1 U222 ( .IN1(n132), .IN2(n232), .IN3(n173), .IN4(n227), .IN5(n233), 
        .QN(n196) );
  AO22X1 U223 ( .IN1(n133), .IN2(n234), .IN3(n134), .IN4(n225), .Q(n233) );
  AND2X1 U224 ( .IN1(n184), .IN2(n181), .Q(dvdnd_50_o[29]) );
  AO221X1 U225 ( .IN1(opa_i[0]), .IN2(n132), .IN3(opa_i[3]), .IN4(n173), .IN5(
        n235), .Q(n184) );
  AO22X1 U226 ( .IN1(opa_i[1]), .IN2(n133), .IN3(n134), .IN4(opa_i[2]), .Q(
        n235) );
  NOR2X0 U227 ( .IN1(n236), .IN2(s_dvd_zeros[1]), .QN(n134) );
  NOR2X0 U228 ( .IN1(n237), .IN2(s_dvd_zeros[0]), .QN(n133) );
  NOR2X0 U229 ( .IN1(n238), .IN2(n228), .QN(dvdnd_50_o[28]) );
  AO221X1 U230 ( .IN1(s_dvd_zeros[0]), .IN2(n232), .IN3(s_dvd_zeros[1]), .IN4(
        n239), .IN5(n240), .Q(n228) );
  AO21X1 U231 ( .IN1(n173), .IN2(n234), .IN3(n132), .Q(n240) );
  NOR2X0 U232 ( .IN1(n236), .IN2(n237), .QN(n132) );
  INVX0 U233 ( .INP(s_dvd_zeros[0]), .ZN(n236) );
  NOR2X0 U234 ( .IN1(n238), .IN2(n231), .QN(dvdnd_50_o[27]) );
  NAND2X0 U235 ( .IN1(n241), .IN2(n237), .QN(n231) );
  INVX0 U236 ( .INP(s_dvd_zeros[1]), .ZN(n237) );
  MUX21X1 U237 ( .IN1(opa_i[1]), .IN2(opa_i[0]), .S(s_dvd_zeros[0]), .Q(n241)
         );
  AND2X1 U238 ( .IN1(n181), .IN2(n197), .Q(dvdnd_50_o[26]) );
  NOR2X0 U239 ( .IN1(n239), .IN2(n152), .QN(n197) );
  INVX0 U240 ( .INP(n173), .ZN(n152) );
  NOR2X0 U241 ( .IN1(s_dvd_zeros[0]), .IN2(s_dvd_zeros[1]), .QN(n173) );
  AO22X1 U242 ( .IN1(n242), .IN2(n243), .IN3(n244), .IN4(n245), .Q(
        s_dvd_zeros[1]) );
  NAND2X0 U243 ( .IN1(n246), .IN2(n247), .QN(n245) );
  NAND4X0 U244 ( .IN1(n248), .IN2(n249), .IN3(n250), .IN4(n251), .QN(n243) );
  OA21X1 U245 ( .IN1(n252), .IN2(n253), .IN3(n254), .Q(n251) );
  AND3X1 U246 ( .IN1(n255), .IN2(n256), .IN3(n257), .Q(n252) );
  NAND2X0 U247 ( .IN1(n258), .IN2(n259), .QN(n257) );
  NAND3X0 U248 ( .IN1(n260), .IN2(n218), .IN3(n261), .QN(n259) );
  INVX0 U249 ( .INP(n262), .ZN(n261) );
  AO222X1 U250 ( .IN1(n242), .IN2(n263), .IN3(n264), .IN4(n244), .IN5(
        opa_i[22]), .IN6(n265), .Q(s_dvd_zeros[0]) );
  INVX0 U251 ( .INP(n137), .ZN(n265) );
  AND2X1 U252 ( .IN1(n247), .IN2(n266), .Q(n264) );
  NAND4X0 U253 ( .IN1(n249), .IN2(n267), .IN3(n268), .IN4(n269), .QN(n263) );
  OA21X1 U254 ( .IN1(n270), .IN2(n253), .IN3(n254), .Q(n269) );
  OR3X1 U255 ( .IN1(opa_i[17]), .IN2(opa_i[18]), .IN3(n271), .Q(n254) );
  AND3X1 U256 ( .IN1(n255), .IN2(n272), .IN3(n273), .Q(n270) );
  MUX21X1 U257 ( .IN1(n274), .IN2(n275), .S(n258), .Q(n273) );
  OA221X1 U258 ( .IN1(opa_i[1]), .IN2(n260), .IN3(opa_i[5]), .IN4(n227), .IN5(
        n276), .Q(n275) );
  NAND2X0 U259 ( .IN1(n277), .IN2(n215), .QN(n274) );
  NAND4X0 U260 ( .IN1(n278), .IN2(n209), .IN3(n206), .IN4(n211), .QN(n255) );
  INVX0 U261 ( .INP(n238), .ZN(n181) );
  NAND2X0 U262 ( .IN1(n221), .IN2(n164), .QN(n238) );
  MUX21X1 U263 ( .IN1(n266), .IN2(n279), .S(n242), .Q(n164) );
  NOR4X0 U264 ( .IN1(opa_i[18]), .IN2(opa_i[16]), .IN3(n280), .IN4(n281), .QN(
        n279) );
  NOR2X0 U265 ( .IN1(n282), .IN2(n253), .QN(n281) );
  NOR4X0 U266 ( .IN1(n283), .IN2(n284), .IN3(opa_i[8]), .IN4(opa_i[11]), .QN(
        n282) );
  AO21X1 U267 ( .IN1(n258), .IN2(n285), .IN3(n286), .Q(n283) );
  INVX0 U268 ( .INP(n256), .ZN(n286) );
  NAND3X0 U269 ( .IN1(n260), .IN2(n276), .IN3(n287), .QN(n285) );
  NAND3X0 U270 ( .IN1(n227), .IN2(n218), .IN3(n288), .QN(n287) );
  NAND2X0 U271 ( .IN1(opa_i[2]), .IN2(n289), .QN(n276) );
  NAND3X0 U272 ( .IN1(n290), .IN2(n234), .IN3(n289), .QN(n260) );
  AND3X1 U273 ( .IN1(n220), .IN2(n215), .IN3(n277), .Q(n258) );
  INVX0 U274 ( .INP(n250), .ZN(n280) );
  NAND2X0 U275 ( .IN1(opa_i[17]), .IN2(n267), .QN(n250) );
  INVX0 U276 ( .INP(opa_i[18]), .ZN(n267) );
  NOR2X0 U277 ( .IN1(s_dvd_zeros[3]), .IN2(s_dvd_zeros[4]), .QN(n221) );
  INVX0 U278 ( .INP(n144), .ZN(s_dvd_zeros[4]) );
  NAND3X0 U279 ( .IN1(n277), .IN2(n291), .IN3(n242), .QN(n144) );
  INVX0 U280 ( .INP(n278), .ZN(n277) );
  NAND4X0 U281 ( .IN1(n209), .IN2(n206), .IN3(n213), .IN4(n211), .QN(n278) );
  INVX0 U282 ( .INP(opa_i[9]), .ZN(n211) );
  INVX0 U283 ( .INP(n167), .ZN(s_dvd_zeros[3]) );
  NAND2X0 U284 ( .IN1(n242), .IN2(n292), .QN(n167) );
  AO221X1 U285 ( .IN1(opa_i[15]), .IN2(n271), .IN3(n291), .IN4(n293), .IN5(
        n294), .Q(n292) );
  NAND3X0 U286 ( .IN1(n268), .IN2(n249), .IN3(n248), .QN(n294) );
  NAND2X0 U287 ( .IN1(opa_i[13]), .IN2(n295), .QN(n248) );
  NAND3X0 U288 ( .IN1(n253), .IN2(n203), .IN3(n295), .QN(n249) );
  NAND3X0 U289 ( .IN1(n296), .IN2(n201), .IN3(n271), .QN(n268) );
  NAND4X0 U290 ( .IN1(n206), .IN2(n213), .IN3(n272), .IN4(n297), .QN(n293) );
  OA21X1 U291 ( .IN1(n262), .IN2(n290), .IN3(n256), .Q(n297) );
  NAND3X0 U292 ( .IN1(n209), .IN2(n206), .IN3(opa_i[9]), .QN(n256) );
  NAND4X0 U293 ( .IN1(n289), .IN2(n239), .IN3(n232), .IN4(n234), .QN(n290) );
  INVX0 U294 ( .INP(opa_i[2]), .ZN(n234) );
  INVX0 U295 ( .INP(opa_i[1]), .ZN(n232) );
  INVX0 U296 ( .INP(opa_i[0]), .ZN(n239) );
  INVX0 U297 ( .INP(n288), .ZN(n289) );
  NAND3X0 U298 ( .IN1(n227), .IN2(n218), .IN3(n225), .QN(n288) );
  INVX0 U299 ( .INP(opa_i[3]), .ZN(n225) );
  INVX0 U300 ( .INP(opa_i[5]), .ZN(n218) );
  NAND3X0 U301 ( .IN1(n220), .IN2(n215), .IN3(n227), .QN(n262) );
  INVX0 U302 ( .INP(opa_i[4]), .ZN(n227) );
  INVX0 U303 ( .INP(opa_i[7]), .ZN(n215) );
  INVX0 U304 ( .INP(opa_i[6]), .ZN(n220) );
  INVX0 U305 ( .INP(n284), .ZN(n272) );
  NOR2X0 U306 ( .IN1(n209), .IN2(opa_i[11]), .QN(n284) );
  INVX0 U307 ( .INP(opa_i[10]), .ZN(n209) );
  INVX0 U308 ( .INP(opa_i[8]), .ZN(n213) );
  INVX0 U309 ( .INP(opa_i[11]), .ZN(n206) );
  INVX0 U310 ( .INP(n253), .ZN(n291) );
  NAND3X0 U311 ( .IN1(n200), .IN2(n203), .IN3(n295), .QN(n253) );
  INVX0 U312 ( .INP(n296), .ZN(n295) );
  NAND3X0 U313 ( .IN1(n204), .IN2(n201), .IN3(n271), .QN(n296) );
  INVX0 U314 ( .INP(opa_i[15]), .ZN(n201) );
  INVX0 U315 ( .INP(opa_i[14]), .ZN(n204) );
  INVX0 U316 ( .INP(opa_i[13]), .ZN(n203) );
  INVX0 U317 ( .INP(opa_i[12]), .ZN(n200) );
  NOR3X0 U318 ( .IN1(opa_i[17]), .IN2(opa_i[18]), .IN3(opa_i[16]), .QN(n271)
         );
  NOR2X0 U319 ( .IN1(n266), .IN2(opa_i[19]), .QN(n242) );
  NAND3X0 U320 ( .IN1(n246), .IN2(n247), .IN3(n244), .QN(n266) );
  NOR2X0 U321 ( .IN1(n137), .IN2(opa_i[22]), .QN(n244) );
  INVX0 U322 ( .INP(opa_i[21]), .ZN(n247) );
  INVX0 U323 ( .INP(opa_i[20]), .ZN(n246) );
  NOR3X0 U324 ( .IN1(s_expb_in[6]), .IN2(s_expb_in[7]), .IN3(n299), .QN(n298)
         );
  XNOR2X1 U325 ( .IN1(s_expb_in[7]), .IN2(n300), .Q(N1561) );
  NOR2X0 U326 ( .IN1(s_expb_in[6]), .IN2(n299), .QN(n300) );
  XOR2X1 U327 ( .IN1(n299), .IN2(s_expb_in[6]), .Q(N1560) );
  NAND2X0 U328 ( .IN1(n301), .IN2(n8), .QN(n299) );
  XNOR2X1 U329 ( .IN1(s_expb_in[5]), .IN2(n301), .Q(N1559) );
  AO22X1 U330 ( .IN1(n19), .IN2(n302), .IN3(n303), .IN4(n5), .Q(n301) );
  NAND2X0 U331 ( .IN1(n304), .IN2(n39), .QN(n303) );
  XNOR3X1 U332 ( .IN1(n5), .IN2(n19), .IN3(n304), .Q(N1558) );
  INVX0 U333 ( .INP(n302), .ZN(n304) );
  AO22X1 U334 ( .IN1(n37), .IN2(n305), .IN3(n306), .IN4(n6), .Q(n302) );
  OR2X1 U335 ( .IN1(n305), .IN2(n37), .Q(n306) );
  INVX0 U336 ( .INP(n26), .ZN(n37) );
  INVX0 U337 ( .INP(n39), .ZN(n19) );
  NAND3X0 U338 ( .IN1(n307), .IN2(n308), .IN3(n309), .QN(n39) );
  XNOR3X1 U339 ( .IN1(n6), .IN2(n26), .IN3(n305), .Q(N1557) );
  AO22X1 U340 ( .IN1(n21), .IN2(n310), .IN3(n311), .IN4(n4), .Q(n305) );
  NAND2X0 U341 ( .IN1(n312), .IN2(n57), .QN(n311) );
  INVX0 U342 ( .INP(n57), .ZN(n21) );
  NAND2X0 U343 ( .IN1(n307), .IN2(n313), .QN(n26) );
  AO221X1 U344 ( .IN1(opb_i[15]), .IN2(n314), .IN3(n308), .IN4(n315), .IN5(
        n316), .Q(n313) );
  NAND3X0 U345 ( .IN1(n317), .IN2(n318), .IN3(n319), .QN(n316) );
  NAND4X0 U346 ( .IN1(n320), .IN2(n321), .IN3(n322), .IN4(n323), .QN(n315) );
  NOR2X0 U347 ( .IN1(opb_i[8]), .IN2(opb_i[11]), .QN(n322) );
  OR3X1 U348 ( .IN1(n324), .IN2(opb_i[2]), .IN3(n325), .Q(n321) );
  INVX0 U349 ( .INP(n326), .ZN(n308) );
  XNOR3X1 U350 ( .IN1(n57), .IN2(n4), .IN3(n310), .Q(N1556) );
  INVX0 U351 ( .INP(n312), .ZN(n310) );
  OA22X1 U352 ( .IN1(n327), .IN2(n101), .IN3(n328), .IN4(s_expb_in[1]), .Q(
        n312) );
  AND2X1 U353 ( .IN1(n327), .IN2(n101), .Q(n328) );
  MUX21X1 U354 ( .IN1(n329), .IN2(n330), .S(n307), .Q(n57) );
  NOR4X0 U355 ( .IN1(opb_i[18]), .IN2(opb_i[16]), .IN3(n331), .IN4(n332), .QN(
        n330) );
  NOR2X0 U356 ( .IN1(n333), .IN2(n326), .QN(n332) );
  NOR4X0 U357 ( .IN1(n334), .IN2(n335), .IN3(opb_i[8]), .IN4(opb_i[11]), .QN(
        n333) );
  AO21X1 U358 ( .IN1(n336), .IN2(n337), .IN3(n338), .Q(n334) );
  INVX0 U359 ( .INP(n320), .ZN(n338) );
  NAND3X0 U360 ( .IN1(n339), .IN2(n340), .IN3(n341), .QN(n337) );
  NAND3X0 U361 ( .IN1(n108), .IN2(n112), .IN3(n342), .QN(n341) );
  INVX0 U362 ( .INP(n343), .ZN(n331) );
  XNOR3X1 U363 ( .IN1(s_expb_in[1]), .IN2(n101), .IN3(n327), .Q(N1555) );
  INVX0 U364 ( .INP(n123), .ZN(n101) );
  AO22X1 U365 ( .IN1(n307), .IN2(n344), .IN3(n345), .IN4(n346), .Q(n123) );
  NAND2X0 U366 ( .IN1(n347), .IN2(n348), .QN(n346) );
  NAND4X0 U367 ( .IN1(n319), .IN2(n318), .IN3(n343), .IN4(n349), .QN(n344) );
  OA21X1 U368 ( .IN1(n350), .IN2(n326), .IN3(n351), .Q(n349) );
  AND3X1 U369 ( .IN1(n352), .IN2(n320), .IN3(n353), .Q(n350) );
  NAND3X0 U370 ( .IN1(n104), .IN2(n97), .IN3(opb_i[9]), .QN(n320) );
  OAI21X1 U371 ( .IN1(n354), .IN2(n324), .IN3(n336), .QN(n352) );
  NAND4X0 U372 ( .IN1(n108), .IN2(n112), .IN3(n116), .IN4(n115), .QN(n324) );
  INVX0 U373 ( .INP(n339), .ZN(n354) );
  NAND2X0 U374 ( .IN1(opb_i[17]), .IN2(n355), .QN(n343) );
  NAND2X0 U375 ( .IN1(opb_i[13]), .IN2(n356), .QN(n319) );
  AO21X1 U376 ( .IN1(n102), .IN2(n7), .IN3(n327), .Q(N1554) );
  NOR2X0 U377 ( .IN1(n7), .IN2(n102), .QN(n327) );
  AO222X1 U378 ( .IN1(n307), .IN2(n357), .IN3(n358), .IN4(n345), .IN5(
        opb_i[22]), .IN6(n359), .Q(n102) );
  INVX0 U379 ( .INP(n360), .ZN(n359) );
  AND2X1 U380 ( .IN1(n348), .IN2(n329), .Q(n358) );
  NAND4X0 U381 ( .IN1(n318), .IN2(n355), .IN3(n317), .IN4(n361), .QN(n357) );
  OA21X1 U382 ( .IN1(n362), .IN2(n326), .IN3(n351), .Q(n361) );
  OR3X1 U383 ( .IN1(opb_i[17]), .IN2(opb_i[18]), .IN3(n314), .Q(n351) );
  AND3X1 U384 ( .IN1(n353), .IN2(n323), .IN3(n363), .Q(n362) );
  MUX21X1 U385 ( .IN1(n364), .IN2(n365), .S(n336), .Q(n363) );
  AND3X1 U386 ( .IN1(n116), .IN2(n115), .IN3(n309), .Q(n336) );
  INVX0 U387 ( .INP(opb_i[6]), .ZN(n116) );
  OA221X1 U388 ( .IN1(opb_i[1]), .IN2(n339), .IN3(opb_i[5]), .IN4(n108), .IN5(
        n340), .Q(n365) );
  NAND2X0 U389 ( .IN1(opb_i[2]), .IN2(n366), .QN(n340) );
  NAND3X0 U390 ( .IN1(n325), .IN2(n111), .IN3(n366), .QN(n339) );
  INVX0 U391 ( .INP(opb_i[2]), .ZN(n111) );
  NAND3X0 U392 ( .IN1(n124), .IN2(n107), .IN3(n366), .QN(n325) );
  INVX0 U393 ( .INP(n342), .ZN(n366) );
  NAND3X0 U394 ( .IN1(n108), .IN2(n112), .IN3(n110), .QN(n342) );
  INVX0 U395 ( .INP(opb_i[3]), .ZN(n110) );
  INVX0 U396 ( .INP(opb_i[5]), .ZN(n112) );
  INVX0 U397 ( .INP(opb_i[4]), .ZN(n108) );
  INVX0 U398 ( .INP(opb_i[1]), .ZN(n107) );
  INVX0 U399 ( .INP(opb_i[0]), .ZN(n124) );
  NAND2X0 U400 ( .IN1(n309), .IN2(n115), .QN(n364) );
  INVX0 U401 ( .INP(opb_i[7]), .ZN(n115) );
  INVX0 U402 ( .INP(n367), .ZN(n309) );
  INVX0 U403 ( .INP(n335), .ZN(n323) );
  NOR2X0 U404 ( .IN1(n104), .IN2(opb_i[11]), .QN(n335) );
  NAND4X0 U405 ( .IN1(n367), .IN2(n104), .IN3(n97), .IN4(n117), .QN(n353) );
  NAND4X0 U406 ( .IN1(n104), .IN2(n97), .IN3(n113), .IN4(n117), .QN(n367) );
  INVX0 U407 ( .INP(opb_i[9]), .ZN(n117) );
  INVX0 U408 ( .INP(opb_i[8]), .ZN(n113) );
  INVX0 U409 ( .INP(opb_i[11]), .ZN(n97) );
  INVX0 U410 ( .INP(opb_i[10]), .ZN(n104) );
  NAND3X0 U411 ( .IN1(n368), .IN2(n92), .IN3(n314), .QN(n317) );
  INVX0 U412 ( .INP(opb_i[18]), .ZN(n355) );
  NAND3X0 U413 ( .IN1(n326), .IN2(n95), .IN3(n356), .QN(n318) );
  NAND3X0 U414 ( .IN1(n91), .IN2(n95), .IN3(n356), .QN(n326) );
  INVX0 U415 ( .INP(n368), .ZN(n356) );
  NAND3X0 U416 ( .IN1(n94), .IN2(n92), .IN3(n314), .QN(n368) );
  NOR3X0 U417 ( .IN1(opb_i[17]), .IN2(opb_i[18]), .IN3(opb_i[16]), .QN(n314)
         );
  INVX0 U418 ( .INP(opb_i[15]), .ZN(n92) );
  INVX0 U419 ( .INP(opb_i[14]), .ZN(n94) );
  INVX0 U420 ( .INP(opb_i[13]), .ZN(n95) );
  INVX0 U421 ( .INP(opb_i[12]), .ZN(n91) );
  NOR2X0 U422 ( .IN1(n329), .IN2(opb_i[19]), .QN(n307) );
  NAND3X0 U423 ( .IN1(n347), .IN2(n348), .IN3(n345), .QN(n329) );
  NOR2X0 U424 ( .IN1(n360), .IN2(opb_i[22]), .QN(n345) );
  INVX0 U425 ( .INP(opb_i[21]), .ZN(n348) );
  INVX0 U426 ( .INP(opb_i[20]), .ZN(n347) );
  NAND2X0 U427 ( .IN1(s_expa_in[7]), .IN2(n369), .QN(n370) );
  INVX0 U428 ( .INP(n371), .ZN(n369) );
  XNOR2X1 U429 ( .IN1(n371), .IN2(s_expa_in[7]), .Q(N1551) );
  AO21X1 U430 ( .IN1(s_expa_in[6]), .IN2(n372), .IN3(n371), .Q(N1550) );
  NOR2X0 U431 ( .IN1(n372), .IN2(s_expa_in[6]), .QN(n371) );
  INVX0 U432 ( .INP(n373), .ZN(n372) );
  AO21X1 U433 ( .IN1(s_expa_in[5]), .IN2(n374), .IN3(n373), .Q(N1549) );
  NOR2X0 U434 ( .IN1(n374), .IN2(s_expa_in[5]), .QN(n373) );
  INVX0 U435 ( .INP(n375), .ZN(n374) );
  AO21X1 U436 ( .IN1(s_expa_in[4]), .IN2(n376), .IN3(n375), .Q(N1548) );
  NOR2X0 U437 ( .IN1(n376), .IN2(s_expa_in[4]), .QN(n375) );
  INVX0 U438 ( .INP(n377), .ZN(n376) );
  AO21X1 U439 ( .IN1(s_expa_in[3]), .IN2(n378), .IN3(n377), .Q(N1547) );
  NOR2X0 U440 ( .IN1(n378), .IN2(s_expa_in[3]), .QN(n377) );
  INVX0 U441 ( .INP(n379), .ZN(n378) );
  AO21X1 U442 ( .IN1(s_expa_in[2]), .IN2(n380), .IN3(n379), .Q(N1546) );
  NOR2X0 U443 ( .IN1(n380), .IN2(s_expa_in[2]), .QN(n379) );
  INVX0 U444 ( .INP(n381), .ZN(n380) );
  AO21X1 U445 ( .IN1(s_expa_in[1]), .IN2(s_expa_in[0]), .IN3(n381), .Q(N1545)
         );
  NOR2X0 U446 ( .IN1(s_expa_in[1]), .IN2(s_expa_in[0]), .QN(n381) );
  NAND2X0 U447 ( .IN1(n360), .IN2(n382), .QN(N1535) );
  NAND4X0 U448 ( .IN1(n382), .IN2(n383), .IN3(n384), .IN4(n385), .QN(n360) );
  NOR4X0 U449 ( .IN1(N1542), .IN2(N1541), .IN3(N1540), .IN4(N1539), .QN(n385)
         );
  NOR2X0 U450 ( .IN1(N1538), .IN2(N1537), .QN(n384) );
  INVX0 U451 ( .INP(N1536), .ZN(n383) );
  INVX0 U452 ( .INP(opb_i[23]), .ZN(n382) );
  NAND2X0 U454 ( .IN1(n137), .IN2(n386), .QN(N1526) );
  NAND4X0 U455 ( .IN1(n386), .IN2(n387), .IN3(n388), .IN4(n389), .QN(n137) );
  NOR4X0 U456 ( .IN1(N1533), .IN2(N1532), .IN3(N1531), .IN4(N1530), .QN(n389)
         );
  NOR2X0 U457 ( .IN1(N1529), .IN2(N1528), .QN(n388) );
  INVX0 U458 ( .INP(N1527), .ZN(n387) );
  INVX0 U459 ( .INP(opa_i[23]), .ZN(n386) );
endmodule


module serial_div_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [26:0] A;
  input [26:0] B;
  output [26:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [27:0] carry;

  FADDX1 U2_26 ( .A(A[26]), .B(n2), .CI(carry[26]), .S(DIFF[26]) );
  FADDX1 U2_25 ( .A(A[25]), .B(n3), .CI(carry[25]), .CO(carry[26]), .S(
        DIFF[25]) );
  FADDX1 U2_24 ( .A(A[24]), .B(n4), .CI(carry[24]), .CO(carry[25]), .S(
        DIFF[24]) );
  FADDX1 U2_23 ( .A(A[23]), .B(n5), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  FADDX1 U2_22 ( .A(A[22]), .B(n6), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FADDX1 U2_21 ( .A(A[21]), .B(n7), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  FADDX1 U2_20 ( .A(A[20]), .B(n8), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FADDX1 U2_19 ( .A(A[19]), .B(n9), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FADDX1 U2_18 ( .A(A[18]), .B(n10), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  FADDX1 U2_17 ( .A(A[17]), .B(n11), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FADDX1 U2_16 ( .A(A[16]), .B(n12), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FADDX1 U2_15 ( .A(A[15]), .B(n13), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FADDX1 U2_14 ( .A(A[14]), .B(n14), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FADDX1 U2_13 ( .A(A[13]), .B(n15), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FADDX1 U2_12 ( .A(A[12]), .B(n16), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FADDX1 U2_11 ( .A(A[11]), .B(n17), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FADDX1 U2_10 ( .A(A[10]), .B(n18), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FADDX1 U2_9 ( .A(A[9]), .B(n19), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FADDX1 U2_8 ( .A(A[8]), .B(n20), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  FADDX1 U2_7 ( .A(A[7]), .B(n21), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  FADDX1 U2_6 ( .A(A[6]), .B(n22), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  FADDX1 U2_5 ( .A(A[5]), .B(n23), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  FADDX1 U2_4 ( .A(A[4]), .B(n24), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  FADDX1 U2_3 ( .A(A[3]), .B(n25), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n26), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  FADDX1 U2_1 ( .A(A[1]), .B(n27), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVX0 U1 ( .INP(B[25]), .ZN(n3) );
  INVX0 U2 ( .INP(B[24]), .ZN(n4) );
  NAND2X1 U3 ( .IN1(n1), .IN2(B[0]), .QN(carry[1]) );
  INVX0 U4 ( .INP(B[1]), .ZN(n27) );
  INVX0 U5 ( .INP(A[0]), .ZN(n1) );
  INVX0 U6 ( .INP(B[2]), .ZN(n26) );
  INVX0 U7 ( .INP(B[3]), .ZN(n25) );
  INVX0 U8 ( .INP(B[4]), .ZN(n24) );
  INVX0 U9 ( .INP(B[5]), .ZN(n23) );
  INVX0 U10 ( .INP(B[6]), .ZN(n22) );
  INVX0 U11 ( .INP(B[7]), .ZN(n21) );
  INVX0 U12 ( .INP(B[8]), .ZN(n20) );
  INVX0 U13 ( .INP(B[9]), .ZN(n19) );
  INVX0 U14 ( .INP(B[10]), .ZN(n18) );
  INVX0 U15 ( .INP(B[11]), .ZN(n17) );
  INVX0 U16 ( .INP(B[12]), .ZN(n16) );
  INVX0 U17 ( .INP(B[13]), .ZN(n15) );
  INVX0 U18 ( .INP(B[14]), .ZN(n14) );
  INVX0 U19 ( .INP(B[15]), .ZN(n13) );
  INVX0 U20 ( .INP(B[16]), .ZN(n12) );
  INVX0 U21 ( .INP(B[17]), .ZN(n11) );
  INVX0 U22 ( .INP(B[18]), .ZN(n10) );
  INVX0 U23 ( .INP(B[19]), .ZN(n9) );
  INVX0 U24 ( .INP(B[20]), .ZN(n8) );
  INVX0 U25 ( .INP(B[21]), .ZN(n7) );
  INVX0 U26 ( .INP(B[22]), .ZN(n6) );
  INVX0 U27 ( .INP(B[23]), .ZN(n5) );
  INVX0 U28 ( .INP(B[26]), .ZN(n2) );
  XOR2X1 U29 ( .IN1(B[0]), .IN2(A[0]), .Q(DIFF[0]) );
endmodule


module serial_div_1 ( clk_i, dvdnd_i, dvsor_i, sign_dvd_i, sign_div_i, start_i, 
        ready_o, qutnt_o, rmndr_o, sign_o, div_zero_o );
  input [49:0] dvdnd_i;
  input [26:0] dvsor_i;
  output [26:0] qutnt_o;
  output [26:0] rmndr_o;
  input clk_i, sign_dvd_i, sign_div_i, start_i;
  output ready_o, sign_o, div_zero_o;
  wire   s_start_i, N102, s_state, N132, N133, N134, N135, N136, N137, N138,
         N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N157, N160, N161, N162,
         N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, N173,
         N174, N175, N176, N177, N178, N179, N180, N181, N182, N183, N184,
         N185, N186, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, \lt_150/A[0] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315;
  wire   [49:0] s_dvdnd_i;
  wire   [26:0] s_dvsor_i;
  wire   [4:0] s_count;
  wire   [26:0] s_dvd;
  assign div_zero_o = N102;

  DFFX1 \s_dvdnd_i_reg[49]  ( .D(dvdnd_i[49]), .CLK(clk_i), .Q(s_dvdnd_i[49]), 
        .QN(n14) );
  DFFX1 \s_dvdnd_i_reg[48]  ( .D(dvdnd_i[48]), .CLK(clk_i), .Q(s_dvdnd_i[48])
         );
  DFFX1 \s_dvdnd_i_reg[47]  ( .D(dvdnd_i[47]), .CLK(clk_i), .Q(s_dvdnd_i[47])
         );
  DFFX1 \s_dvdnd_i_reg[46]  ( .D(dvdnd_i[46]), .CLK(clk_i), .Q(s_dvdnd_i[46])
         );
  DFFX1 \s_dvdnd_i_reg[45]  ( .D(dvdnd_i[45]), .CLK(clk_i), .Q(s_dvdnd_i[45])
         );
  DFFX1 \s_dvdnd_i_reg[44]  ( .D(dvdnd_i[44]), .CLK(clk_i), .Q(s_dvdnd_i[44])
         );
  DFFX1 \s_dvdnd_i_reg[43]  ( .D(dvdnd_i[43]), .CLK(clk_i), .Q(s_dvdnd_i[43])
         );
  DFFX1 \s_dvdnd_i_reg[42]  ( .D(dvdnd_i[42]), .CLK(clk_i), .Q(s_dvdnd_i[42])
         );
  DFFX1 \s_dvdnd_i_reg[41]  ( .D(dvdnd_i[41]), .CLK(clk_i), .Q(s_dvdnd_i[41])
         );
  DFFX1 \s_dvdnd_i_reg[40]  ( .D(dvdnd_i[40]), .CLK(clk_i), .Q(s_dvdnd_i[40])
         );
  DFFX1 \s_dvdnd_i_reg[39]  ( .D(dvdnd_i[39]), .CLK(clk_i), .Q(s_dvdnd_i[39]), 
        .QN(n15) );
  DFFX1 \s_dvdnd_i_reg[38]  ( .D(dvdnd_i[38]), .CLK(clk_i), .Q(s_dvdnd_i[38]), 
        .QN(n6) );
  DFFX1 \s_dvdnd_i_reg[37]  ( .D(dvdnd_i[37]), .CLK(clk_i), .Q(s_dvdnd_i[37])
         );
  DFFX1 \s_dvdnd_i_reg[36]  ( .D(dvdnd_i[36]), .CLK(clk_i), .Q(s_dvdnd_i[36])
         );
  DFFX1 \s_dvdnd_i_reg[35]  ( .D(dvdnd_i[35]), .CLK(clk_i), .Q(s_dvdnd_i[35])
         );
  DFFX1 \s_dvdnd_i_reg[34]  ( .D(dvdnd_i[34]), .CLK(clk_i), .Q(s_dvdnd_i[34])
         );
  DFFX1 \s_dvdnd_i_reg[33]  ( .D(dvdnd_i[33]), .CLK(clk_i), .Q(s_dvdnd_i[33])
         );
  DFFX1 \s_dvdnd_i_reg[32]  ( .D(dvdnd_i[32]), .CLK(clk_i), .Q(s_dvdnd_i[32])
         );
  DFFX1 \s_dvdnd_i_reg[31]  ( .D(dvdnd_i[31]), .CLK(clk_i), .Q(s_dvdnd_i[31])
         );
  DFFX1 \s_dvdnd_i_reg[30]  ( .D(dvdnd_i[30]), .CLK(clk_i), .Q(s_dvdnd_i[30])
         );
  DFFX1 \s_dvdnd_i_reg[29]  ( .D(dvdnd_i[29]), .CLK(clk_i), .Q(s_dvdnd_i[29])
         );
  DFFX1 \s_dvdnd_i_reg[28]  ( .D(dvdnd_i[28]), .CLK(clk_i), .Q(s_dvdnd_i[28])
         );
  DFFX1 \s_dvdnd_i_reg[27]  ( .D(dvdnd_i[27]), .CLK(clk_i), .Q(s_dvdnd_i[27])
         );
  DFFX1 \s_dvdnd_i_reg[26]  ( .D(dvdnd_i[26]), .CLK(clk_i), .Q(s_dvdnd_i[26]), 
        .QN(n13) );
  DFFX1 \s_dvdnd_i_reg[25]  ( .D(dvdnd_i[25]), .CLK(clk_i), .QN(n309) );
  DFFX1 \s_dvdnd_i_reg[24]  ( .D(dvdnd_i[24]), .CLK(clk_i), .QN(n308) );
  DFFX1 \s_dvdnd_i_reg[23]  ( .D(dvdnd_i[23]), .CLK(clk_i), .QN(n307) );
  DFFX1 \s_dvdnd_i_reg[22]  ( .D(dvdnd_i[22]), .CLK(clk_i), .QN(n305) );
  DFFX1 \s_dvdnd_i_reg[21]  ( .D(dvdnd_i[21]), .CLK(clk_i), .QN(n304) );
  DFFX1 \s_dvdnd_i_reg[20]  ( .D(dvdnd_i[20]), .CLK(clk_i), .QN(n306) );
  DFFX1 \s_dvdnd_i_reg[19]  ( .D(dvdnd_i[19]), .CLK(clk_i), .QN(n311) );
  DFFX1 \s_dvdnd_i_reg[18]  ( .D(dvdnd_i[18]), .CLK(clk_i), .QN(n310) );
  DFFX1 \s_dvdnd_i_reg[17]  ( .D(dvdnd_i[17]), .CLK(clk_i), .Q(s_dvdnd_i[17])
         );
  DFFX1 \s_dvdnd_i_reg[16]  ( .D(dvdnd_i[16]), .CLK(clk_i), .Q(s_dvdnd_i[16])
         );
  DFFX1 \s_dvdnd_i_reg[15]  ( .D(dvdnd_i[15]), .CLK(clk_i), .Q(s_dvdnd_i[15])
         );
  DFFX1 \s_dvdnd_i_reg[14]  ( .D(dvdnd_i[14]), .CLK(clk_i), .QN(n315) );
  DFFX1 \s_dvdnd_i_reg[13]  ( .D(dvdnd_i[13]), .CLK(clk_i), .QN(n314) );
  DFFX1 \s_dvdnd_i_reg[12]  ( .D(dvdnd_i[12]), .CLK(clk_i), .QN(n313) );
  DFFX1 \s_dvdnd_i_reg[11]  ( .D(dvdnd_i[11]), .CLK(clk_i), .Q(s_dvdnd_i[11])
         );
  DFFX1 \s_dvdnd_i_reg[10]  ( .D(dvdnd_i[10]), .CLK(clk_i), .Q(s_dvdnd_i[10])
         );
  DFFX1 \s_dvdnd_i_reg[9]  ( .D(dvdnd_i[9]), .CLK(clk_i), .Q(s_dvdnd_i[9]) );
  DFFX1 \s_dvdnd_i_reg[8]  ( .D(dvdnd_i[8]), .CLK(clk_i), .Q(s_dvdnd_i[8]) );
  DFFX1 \s_dvdnd_i_reg[7]  ( .D(dvdnd_i[7]), .CLK(clk_i), .Q(s_dvdnd_i[7]) );
  DFFX1 \s_dvdnd_i_reg[6]  ( .D(dvdnd_i[6]), .CLK(clk_i), .Q(s_dvdnd_i[6]) );
  DFFX1 \s_dvdnd_i_reg[5]  ( .D(dvdnd_i[5]), .CLK(clk_i), .QN(n278) );
  DFFX1 \s_dvdnd_i_reg[4]  ( .D(dvdnd_i[4]), .CLK(clk_i), .QN(n277) );
  DFFX1 \s_dvdnd_i_reg[3]  ( .D(dvdnd_i[3]), .CLK(clk_i), .QN(n303) );
  DFFX1 \s_dvdnd_i_reg[2]  ( .D(dvdnd_i[2]), .CLK(clk_i), .Q(n10) );
  DFFX1 \s_dvdnd_i_reg[1]  ( .D(dvdnd_i[1]), .CLK(clk_i), .QN(n312) );
  DFFX1 \s_dvdnd_i_reg[0]  ( .D(dvdnd_i[0]), .CLK(clk_i), .Q(s_dvdnd_i[0]) );
  DFFX1 \s_dvsor_i_reg[26]  ( .D(dvsor_i[26]), .CLK(clk_i), .Q(s_dvsor_i[26])
         );
  DFFX1 \s_dvsor_i_reg[25]  ( .D(dvsor_i[25]), .CLK(clk_i), .Q(s_dvsor_i[25])
         );
  DFFX1 \s_dvsor_i_reg[24]  ( .D(dvsor_i[24]), .CLK(clk_i), .Q(s_dvsor_i[24])
         );
  DFFX1 \s_dvsor_i_reg[23]  ( .D(dvsor_i[23]), .CLK(clk_i), .Q(s_dvsor_i[23])
         );
  DFFX1 \s_dvsor_i_reg[22]  ( .D(dvsor_i[22]), .CLK(clk_i), .Q(s_dvsor_i[22])
         );
  DFFX1 \s_dvsor_i_reg[21]  ( .D(dvsor_i[21]), .CLK(clk_i), .Q(s_dvsor_i[21])
         );
  DFFX1 \s_dvsor_i_reg[20]  ( .D(dvsor_i[20]), .CLK(clk_i), .Q(s_dvsor_i[20])
         );
  DFFX1 \s_dvsor_i_reg[19]  ( .D(dvsor_i[19]), .CLK(clk_i), .Q(s_dvsor_i[19])
         );
  DFFX1 \s_dvsor_i_reg[18]  ( .D(dvsor_i[18]), .CLK(clk_i), .Q(s_dvsor_i[18])
         );
  DFFX1 \s_dvsor_i_reg[17]  ( .D(dvsor_i[17]), .CLK(clk_i), .Q(s_dvsor_i[17])
         );
  DFFX1 \s_dvsor_i_reg[16]  ( .D(dvsor_i[16]), .CLK(clk_i), .Q(s_dvsor_i[16])
         );
  DFFX1 \s_dvsor_i_reg[15]  ( .D(dvsor_i[15]), .CLK(clk_i), .Q(s_dvsor_i[15])
         );
  DFFX1 \s_dvsor_i_reg[14]  ( .D(dvsor_i[14]), .CLK(clk_i), .Q(s_dvsor_i[14])
         );
  DFFX1 \s_dvsor_i_reg[13]  ( .D(dvsor_i[13]), .CLK(clk_i), .Q(s_dvsor_i[13])
         );
  DFFX1 \s_dvsor_i_reg[12]  ( .D(dvsor_i[12]), .CLK(clk_i), .Q(s_dvsor_i[12])
         );
  DFFX1 \s_dvsor_i_reg[11]  ( .D(dvsor_i[11]), .CLK(clk_i), .Q(s_dvsor_i[11])
         );
  DFFX1 \s_dvsor_i_reg[10]  ( .D(dvsor_i[10]), .CLK(clk_i), .Q(s_dvsor_i[10]), 
        .QN(n12) );
  DFFX1 \s_dvsor_i_reg[9]  ( .D(dvsor_i[9]), .CLK(clk_i), .Q(s_dvsor_i[9]) );
  DFFX1 \s_dvsor_i_reg[8]  ( .D(dvsor_i[8]), .CLK(clk_i), .Q(s_dvsor_i[8]) );
  DFFX1 \s_dvsor_i_reg[7]  ( .D(dvsor_i[7]), .CLK(clk_i), .Q(s_dvsor_i[7]) );
  DFFX1 \s_dvsor_i_reg[6]  ( .D(dvsor_i[6]), .CLK(clk_i), .Q(s_dvsor_i[6]) );
  DFFX1 \s_dvsor_i_reg[5]  ( .D(dvsor_i[5]), .CLK(clk_i), .Q(s_dvsor_i[5]) );
  DFFX1 \s_dvsor_i_reg[4]  ( .D(dvsor_i[4]), .CLK(clk_i), .Q(s_dvsor_i[4]) );
  DFFX1 \s_dvsor_i_reg[3]  ( .D(dvsor_i[3]), .CLK(clk_i), .Q(s_dvsor_i[3]) );
  DFFX1 \s_dvsor_i_reg[2]  ( .D(dvsor_i[2]), .CLK(clk_i), .Q(s_dvsor_i[2]) );
  DFFX1 \s_dvsor_i_reg[1]  ( .D(dvsor_i[1]), .CLK(clk_i), .Q(s_dvsor_i[1]) );
  DFFX1 \s_dvsor_i_reg[0]  ( .D(dvsor_i[0]), .CLK(clk_i), .Q(s_dvsor_i[0]), 
        .QN(n5) );
  DFFX1 s_start_i_reg ( .D(start_i), .CLK(clk_i), .Q(s_start_i), .QN(n7) );
  DFFX1 \s_count_reg[0]  ( .D(n236), .CLK(clk_i), .Q(s_count[0]), .QN(n9) );
  DFFX1 s_state_reg ( .D(n234), .CLK(clk_i), .Q(s_state), .QN(n3) );
  DFFX1 s_ready_o_reg ( .D(n233), .CLK(clk_i), .Q(ready_o) );
  DFFX1 \s_count_reg[4]  ( .D(n235), .CLK(clk_i), .Q(s_count[4]), .QN(n11) );
  DFFX1 \s_count_reg[1]  ( .D(n232), .CLK(clk_i), .Q(s_count[1]), .QN(n2) );
  DFFX1 \s_count_reg[2]  ( .D(n231), .CLK(clk_i), .Q(s_count[2]), .QN(n8) );
  DFFX1 \s_count_reg[3]  ( .D(n230), .CLK(clk_i), .Q(s_count[3]), .QN(n4) );
  DFFX1 \s_rmndr_o_reg[0]  ( .D(n176), .CLK(clk_i), .Q(rmndr_o[0]) );
  DFFX1 \s_dvd_reg[1]  ( .D(n202), .CLK(clk_i), .Q(s_dvd[1]) );
  DFFX1 \s_rmndr_o_reg[1]  ( .D(n175), .CLK(clk_i), .Q(rmndr_o[1]) );
  DFFX1 \s_dvd_reg[2]  ( .D(n201), .CLK(clk_i), .Q(s_dvd[2]) );
  DFFX1 \s_rmndr_o_reg[2]  ( .D(n174), .CLK(clk_i), .Q(rmndr_o[2]) );
  DFFX1 \s_dvd_reg[3]  ( .D(n200), .CLK(clk_i), .Q(s_dvd[3]) );
  DFFX1 \s_rmndr_o_reg[3]  ( .D(n173), .CLK(clk_i), .Q(rmndr_o[3]) );
  DFFX1 \s_dvd_reg[4]  ( .D(n199), .CLK(clk_i), .Q(s_dvd[4]) );
  DFFX1 \s_rmndr_o_reg[4]  ( .D(n172), .CLK(clk_i), .Q(rmndr_o[4]) );
  DFFX1 \s_dvd_reg[5]  ( .D(n198), .CLK(clk_i), .Q(s_dvd[5]) );
  DFFX1 \s_rmndr_o_reg[5]  ( .D(n171), .CLK(clk_i), .Q(rmndr_o[5]) );
  DFFX1 \s_dvd_reg[6]  ( .D(n197), .CLK(clk_i), .Q(s_dvd[6]) );
  DFFX1 \s_rmndr_o_reg[6]  ( .D(n170), .CLK(clk_i), .Q(rmndr_o[6]) );
  DFFX1 \s_dvd_reg[7]  ( .D(n196), .CLK(clk_i), .Q(s_dvd[7]) );
  DFFX1 \s_rmndr_o_reg[7]  ( .D(n169), .CLK(clk_i), .Q(rmndr_o[7]) );
  DFFX1 \s_dvd_reg[8]  ( .D(n195), .CLK(clk_i), .Q(s_dvd[8]) );
  DFFX1 \s_rmndr_o_reg[8]  ( .D(n168), .CLK(clk_i), .Q(rmndr_o[8]) );
  DFFX1 \s_dvd_reg[9]  ( .D(n194), .CLK(clk_i), .Q(s_dvd[9]) );
  DFFX1 \s_rmndr_o_reg[9]  ( .D(n167), .CLK(clk_i), .Q(rmndr_o[9]) );
  DFFX1 \s_dvd_reg[10]  ( .D(n193), .CLK(clk_i), .Q(s_dvd[10]) );
  DFFX1 \s_rmndr_o_reg[10]  ( .D(n166), .CLK(clk_i), .Q(rmndr_o[10]) );
  DFFX1 \s_dvd_reg[11]  ( .D(n192), .CLK(clk_i), .Q(s_dvd[11]) );
  DFFX1 \s_rmndr_o_reg[11]  ( .D(n165), .CLK(clk_i), .Q(rmndr_o[11]) );
  DFFX1 \s_dvd_reg[12]  ( .D(n191), .CLK(clk_i), .Q(s_dvd[12]) );
  DFFX1 \s_rmndr_o_reg[12]  ( .D(n164), .CLK(clk_i), .Q(rmndr_o[12]) );
  DFFX1 \s_dvd_reg[13]  ( .D(n190), .CLK(clk_i), .Q(s_dvd[13]) );
  DFFX1 \s_rmndr_o_reg[13]  ( .D(n163), .CLK(clk_i), .Q(rmndr_o[13]) );
  DFFX1 \s_dvd_reg[14]  ( .D(n189), .CLK(clk_i), .Q(s_dvd[14]) );
  DFFX1 \s_rmndr_o_reg[14]  ( .D(n162), .CLK(clk_i), .Q(rmndr_o[14]) );
  DFFX1 \s_dvd_reg[15]  ( .D(n188), .CLK(clk_i), .Q(s_dvd[15]) );
  DFFX1 \s_rmndr_o_reg[15]  ( .D(n161), .CLK(clk_i), .Q(rmndr_o[15]) );
  DFFX1 \s_dvd_reg[16]  ( .D(n187), .CLK(clk_i), .Q(s_dvd[16]) );
  DFFX1 \s_rmndr_o_reg[16]  ( .D(n160), .CLK(clk_i), .Q(rmndr_o[16]) );
  DFFX1 \s_dvd_reg[17]  ( .D(n186), .CLK(clk_i), .Q(s_dvd[17]) );
  DFFX1 \s_rmndr_o_reg[17]  ( .D(n159), .CLK(clk_i), .Q(rmndr_o[17]) );
  DFFX1 \s_dvd_reg[18]  ( .D(n185), .CLK(clk_i), .Q(s_dvd[18]) );
  DFFX1 \s_rmndr_o_reg[18]  ( .D(n158), .CLK(clk_i), .Q(rmndr_o[18]) );
  DFFX1 \s_dvd_reg[19]  ( .D(n184), .CLK(clk_i), .Q(s_dvd[19]) );
  DFFX1 \s_rmndr_o_reg[19]  ( .D(n157), .CLK(clk_i), .Q(rmndr_o[19]) );
  DFFX1 \s_dvd_reg[20]  ( .D(n183), .CLK(clk_i), .Q(s_dvd[20]) );
  DFFX1 \s_rmndr_o_reg[20]  ( .D(n156), .CLK(clk_i), .Q(rmndr_o[20]) );
  DFFX1 \s_dvd_reg[21]  ( .D(n182), .CLK(clk_i), .Q(s_dvd[21]) );
  DFFX1 \s_rmndr_o_reg[21]  ( .D(n155), .CLK(clk_i), .Q(rmndr_o[21]) );
  DFFX1 \s_dvd_reg[22]  ( .D(n181), .CLK(clk_i), .Q(s_dvd[22]) );
  DFFX1 \s_rmndr_o_reg[22]  ( .D(n154), .CLK(clk_i), .Q(rmndr_o[22]) );
  DFFX1 \s_dvd_reg[23]  ( .D(n180), .CLK(clk_i), .Q(s_dvd[23]) );
  DFFX1 \s_rmndr_o_reg[23]  ( .D(n153), .CLK(clk_i), .Q(rmndr_o[23]) );
  DFFX1 \s_dvd_reg[24]  ( .D(n179), .CLK(clk_i), .Q(s_dvd[24]) );
  DFFX1 \s_rmndr_o_reg[24]  ( .D(n152), .CLK(clk_i), .Q(rmndr_o[24]) );
  DFFX1 \s_dvd_reg[25]  ( .D(n178), .CLK(clk_i), .Q(s_dvd[25]) );
  DFFX1 \s_rmndr_o_reg[25]  ( .D(n151), .CLK(clk_i), .Q(rmndr_o[25]) );
  DFFX1 \s_dvd_reg[26]  ( .D(n177), .CLK(clk_i), .Q(s_dvd[26]) );
  DFFX1 \s_qutnt_o_reg[26]  ( .D(n203), .CLK(clk_i), .Q(qutnt_o[26]) );
  DFFX1 \s_qutnt_o_reg[25]  ( .D(n204), .CLK(clk_i), .Q(qutnt_o[25]) );
  DFFX1 \s_qutnt_o_reg[24]  ( .D(n205), .CLK(clk_i), .Q(qutnt_o[24]) );
  DFFX1 \s_qutnt_o_reg[23]  ( .D(n206), .CLK(clk_i), .Q(qutnt_o[23]), .QN(n280) );
  DFFX1 \s_qutnt_o_reg[22]  ( .D(n207), .CLK(clk_i), .Q(qutnt_o[22]), .QN(n281) );
  DFFX1 \s_qutnt_o_reg[21]  ( .D(n208), .CLK(clk_i), .Q(qutnt_o[21]), .QN(n282) );
  DFFX1 \s_qutnt_o_reg[20]  ( .D(n209), .CLK(clk_i), .Q(qutnt_o[20]), .QN(n283) );
  DFFX1 \s_qutnt_o_reg[19]  ( .D(n210), .CLK(clk_i), .Q(qutnt_o[19]), .QN(n284) );
  DFFX1 \s_qutnt_o_reg[18]  ( .D(n211), .CLK(clk_i), .Q(qutnt_o[18]), .QN(n285) );
  DFFX1 \s_qutnt_o_reg[17]  ( .D(n212), .CLK(clk_i), .Q(qutnt_o[17]), .QN(n286) );
  DFFX1 \s_qutnt_o_reg[16]  ( .D(n213), .CLK(clk_i), .Q(qutnt_o[16]), .QN(n287) );
  DFFX1 \s_qutnt_o_reg[15]  ( .D(n214), .CLK(clk_i), .Q(qutnt_o[15]), .QN(n288) );
  DFFX1 \s_qutnt_o_reg[14]  ( .D(n215), .CLK(clk_i), .Q(qutnt_o[14]), .QN(n289) );
  DFFX1 \s_qutnt_o_reg[13]  ( .D(n216), .CLK(clk_i), .Q(qutnt_o[13]), .QN(n290) );
  DFFX1 \s_qutnt_o_reg[12]  ( .D(n217), .CLK(clk_i), .Q(qutnt_o[12]), .QN(n291) );
  DFFX1 \s_qutnt_o_reg[11]  ( .D(n218), .CLK(clk_i), .Q(qutnt_o[11]), .QN(n292) );
  DFFX1 \s_qutnt_o_reg[10]  ( .D(n219), .CLK(clk_i), .Q(qutnt_o[10]), .QN(n293) );
  DFFX1 \s_qutnt_o_reg[9]  ( .D(n220), .CLK(clk_i), .Q(qutnt_o[9]), .QN(n294)
         );
  DFFX1 \s_qutnt_o_reg[8]  ( .D(n221), .CLK(clk_i), .Q(qutnt_o[8]), .QN(n295)
         );
  DFFX1 \s_qutnt_o_reg[7]  ( .D(n222), .CLK(clk_i), .Q(qutnt_o[7]), .QN(n296)
         );
  DFFX1 \s_qutnt_o_reg[6]  ( .D(n223), .CLK(clk_i), .Q(qutnt_o[6]), .QN(n297)
         );
  DFFX1 \s_qutnt_o_reg[5]  ( .D(n224), .CLK(clk_i), .Q(qutnt_o[5]), .QN(n298)
         );
  DFFX1 \s_qutnt_o_reg[4]  ( .D(n225), .CLK(clk_i), .Q(qutnt_o[4]), .QN(n299)
         );
  DFFX1 \s_qutnt_o_reg[3]  ( .D(n226), .CLK(clk_i), .Q(qutnt_o[3]), .QN(n300)
         );
  DFFX1 \s_qutnt_o_reg[2]  ( .D(n227), .CLK(clk_i), .Q(qutnt_o[2]), .QN(n301)
         );
  DFFX1 \s_qutnt_o_reg[1]  ( .D(n228), .CLK(clk_i), .Q(qutnt_o[1]), .QN(n302)
         );
  DFFX1 \s_qutnt_o_reg[0]  ( .D(n229), .CLK(clk_i), .Q(qutnt_o[0]) );
  DFFX1 \s_rmndr_o_reg[26]  ( .D(n150), .CLK(clk_i), .Q(rmndr_o[26]), .QN(n279) );
  serial_div_1_DW01_sub_0 sub_154 ( .A({N157, N156, N155, N154, N153, N152, 
        N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, 
        N139, N138, N137, N136, N135, N134, N133, N132, \lt_150/A[0] }), .B(
        s_dvsor_i), .CI(1'b0), .DIFF({N186, N185, N184, N183, N182, N181, N180, 
        N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, 
        N167, N166, N165, N164, N163, N162, N161, N160}) );
  XOR2X1 U3 ( .IN1(sign_dvd_i), .IN2(sign_div_i), .Q(sign_o) );
  MUX21X1 U4 ( .IN1(n16), .IN2(n17), .S(s_count[0]), .Q(n236) );
  AND2X1 U5 ( .IN1(n18), .IN2(n19), .Q(n16) );
  NAND3X0 U7 ( .IN1(n20), .IN2(n21), .IN3(n19), .QN(n235) );
  NAND2X0 U8 ( .IN1(s_count[4]), .IN2(n22), .QN(n20) );
  OAI21X1 U9 ( .IN1(n3), .IN2(n23), .IN3(n7), .QN(n234) );
  AO22X1 U10 ( .IN1(ready_o), .IN2(n18), .IN3(n23), .IN4(n7), .Q(n233) );
  NAND3X0 U11 ( .IN1(n19), .IN2(n24), .IN3(n25), .QN(n232) );
  MUX21X1 U12 ( .IN1(n26), .IN2(n2), .S(n17), .Q(n25) );
  AO22X1 U13 ( .IN1(n27), .IN2(n19), .IN3(s_count[2]), .IN4(n28), .Q(n231) );
  AO21X1 U14 ( .IN1(n19), .IN2(n26), .IN3(n17), .Q(n28) );
  NAND2X0 U15 ( .IN1(n29), .IN2(n19), .QN(n230) );
  XOR2X1 U16 ( .IN1(n4), .IN2(n27), .Q(n29) );
  INVX0 U17 ( .INP(n22), .ZN(n27) );
  NAND3X0 U18 ( .IN1(n18), .IN2(n8), .IN3(n30), .QN(n22) );
  MUX21X1 U19 ( .IN1(n31), .IN2(qutnt_o[0]), .S(n19), .Q(n229) );
  NOR2X0 U20 ( .IN1(s_start_i), .IN2(n23), .QN(n19) );
  NOR2X0 U21 ( .IN1(n32), .IN2(n33), .QN(n23) );
  MUX21X1 U22 ( .IN1(n34), .IN2(n31), .S(n35), .Q(n228) );
  NOR2X0 U23 ( .IN1(n33), .IN2(n36), .QN(n35) );
  NOR2X0 U24 ( .IN1(s_start_i), .IN2(n302), .QN(n34) );
  MUX21X1 U25 ( .IN1(n37), .IN2(n31), .S(n38), .Q(n227) );
  NOR2X0 U26 ( .IN1(n33), .IN2(n39), .QN(n38) );
  NOR2X0 U27 ( .IN1(s_start_i), .IN2(n301), .QN(n37) );
  MUX21X1 U28 ( .IN1(n40), .IN2(n31), .S(n41), .Q(n226) );
  NOR2X0 U29 ( .IN1(n33), .IN2(n42), .QN(n41) );
  NOR2X0 U30 ( .IN1(s_start_i), .IN2(n300), .QN(n40) );
  MUX21X1 U31 ( .IN1(n43), .IN2(n31), .S(n44), .Q(n225) );
  NOR2X0 U32 ( .IN1(n33), .IN2(n45), .QN(n44) );
  NOR2X0 U33 ( .IN1(s_start_i), .IN2(n299), .QN(n43) );
  MUX21X1 U34 ( .IN1(n46), .IN2(n31), .S(n47), .Q(n224) );
  NOR2X0 U35 ( .IN1(n33), .IN2(n48), .QN(n47) );
  NOR2X0 U36 ( .IN1(s_start_i), .IN2(n298), .QN(n46) );
  MUX21X1 U37 ( .IN1(n49), .IN2(n31), .S(n50), .Q(n223) );
  NOR2X0 U38 ( .IN1(n33), .IN2(n51), .QN(n50) );
  NOR2X0 U39 ( .IN1(s_start_i), .IN2(n297), .QN(n49) );
  MUX21X1 U40 ( .IN1(n52), .IN2(n31), .S(n53), .Q(n222) );
  NOR2X0 U41 ( .IN1(n33), .IN2(n54), .QN(n53) );
  NAND2X0 U42 ( .IN1(n4), .IN2(n11), .QN(n33) );
  NOR2X0 U43 ( .IN1(s_start_i), .IN2(n296), .QN(n52) );
  MUX21X1 U44 ( .IN1(n55), .IN2(n31), .S(n56), .Q(n221) );
  NOR2X0 U45 ( .IN1(n32), .IN2(n57), .QN(n56) );
  NOR2X0 U46 ( .IN1(s_start_i), .IN2(n295), .QN(n55) );
  MUX21X1 U47 ( .IN1(n58), .IN2(n31), .S(n59), .Q(n220) );
  NOR2X0 U48 ( .IN1(n36), .IN2(n57), .QN(n59) );
  NOR2X0 U49 ( .IN1(s_start_i), .IN2(n294), .QN(n58) );
  MUX21X1 U50 ( .IN1(n60), .IN2(n31), .S(n61), .Q(n219) );
  NOR2X0 U51 ( .IN1(n39), .IN2(n57), .QN(n61) );
  NOR2X0 U52 ( .IN1(s_start_i), .IN2(n293), .QN(n60) );
  MUX21X1 U53 ( .IN1(n62), .IN2(n31), .S(n63), .Q(n218) );
  NOR2X0 U54 ( .IN1(n42), .IN2(n57), .QN(n63) );
  NOR2X0 U55 ( .IN1(s_start_i), .IN2(n292), .QN(n62) );
  MUX21X1 U56 ( .IN1(n64), .IN2(n31), .S(n65), .Q(n217) );
  NOR2X0 U57 ( .IN1(n45), .IN2(n57), .QN(n65) );
  NOR2X0 U58 ( .IN1(s_start_i), .IN2(n291), .QN(n64) );
  MUX21X1 U59 ( .IN1(n66), .IN2(n31), .S(n67), .Q(n216) );
  NOR2X0 U60 ( .IN1(n48), .IN2(n57), .QN(n67) );
  NOR2X0 U61 ( .IN1(s_start_i), .IN2(n290), .QN(n66) );
  MUX21X1 U62 ( .IN1(n68), .IN2(n31), .S(n69), .Q(n215) );
  NOR2X0 U63 ( .IN1(n51), .IN2(n57), .QN(n69) );
  NOR2X0 U64 ( .IN1(s_start_i), .IN2(n289), .QN(n68) );
  MUX21X1 U65 ( .IN1(n70), .IN2(n31), .S(n71), .Q(n214) );
  NOR2X0 U66 ( .IN1(n54), .IN2(n57), .QN(n71) );
  NAND2X0 U67 ( .IN1(s_count[3]), .IN2(n11), .QN(n57) );
  NOR2X0 U68 ( .IN1(s_start_i), .IN2(n288), .QN(n70) );
  MUX21X1 U69 ( .IN1(n72), .IN2(n31), .S(n73), .Q(n213) );
  NOR2X0 U70 ( .IN1(n32), .IN2(n74), .QN(n73) );
  NOR2X0 U71 ( .IN1(s_start_i), .IN2(n287), .QN(n72) );
  MUX21X1 U72 ( .IN1(n75), .IN2(n31), .S(n76), .Q(n212) );
  NOR2X0 U73 ( .IN1(n36), .IN2(n74), .QN(n76) );
  NOR2X0 U74 ( .IN1(s_start_i), .IN2(n286), .QN(n75) );
  MUX21X1 U75 ( .IN1(n77), .IN2(n31), .S(n78), .Q(n211) );
  NOR2X0 U76 ( .IN1(n39), .IN2(n74), .QN(n78) );
  NAND3X0 U77 ( .IN1(s_count[1]), .IN2(n9), .IN3(n79), .QN(n39) );
  NOR2X0 U78 ( .IN1(s_start_i), .IN2(n285), .QN(n77) );
  MUX21X1 U79 ( .IN1(n80), .IN2(n31), .S(n81), .Q(n210) );
  NOR2X0 U80 ( .IN1(n42), .IN2(n74), .QN(n81) );
  NAND2X0 U81 ( .IN1(n82), .IN2(n79), .QN(n42) );
  NOR2X0 U82 ( .IN1(s_start_i), .IN2(n284), .QN(n80) );
  MUX21X1 U83 ( .IN1(n83), .IN2(n31), .S(n84), .Q(n209) );
  NOR2X0 U84 ( .IN1(n45), .IN2(n74), .QN(n84) );
  NAND2X0 U85 ( .IN1(n85), .IN2(n30), .QN(n45) );
  NOR2X0 U86 ( .IN1(s_start_i), .IN2(n283), .QN(n83) );
  MUX21X1 U87 ( .IN1(n86), .IN2(n31), .S(n87), .Q(n208) );
  NOR2X0 U88 ( .IN1(n48), .IN2(n74), .QN(n87) );
  NAND3X0 U89 ( .IN1(s_count[0]), .IN2(n2), .IN3(n85), .QN(n48) );
  NOR2X0 U90 ( .IN1(s_start_i), .IN2(n282), .QN(n86) );
  MUX21X1 U91 ( .IN1(n88), .IN2(n31), .S(n89), .Q(n207) );
  NOR2X0 U92 ( .IN1(n51), .IN2(n74), .QN(n89) );
  NAND3X0 U93 ( .IN1(s_count[1]), .IN2(n9), .IN3(n85), .QN(n51) );
  NOR2X0 U94 ( .IN1(s_start_i), .IN2(n281), .QN(n88) );
  MUX21X1 U95 ( .IN1(n90), .IN2(n31), .S(n91), .Q(n206) );
  NOR2X0 U96 ( .IN1(n54), .IN2(n74), .QN(n91) );
  NAND2X0 U97 ( .IN1(s_count[4]), .IN2(n4), .QN(n74) );
  NAND2X0 U98 ( .IN1(n85), .IN2(n82), .QN(n54) );
  INVX0 U99 ( .INP(n24), .ZN(n82) );
  NAND2X0 U100 ( .IN1(s_count[1]), .IN2(s_count[0]), .QN(n24) );
  NOR2X0 U101 ( .IN1(n8), .IN2(n3), .QN(n85) );
  NOR2X0 U102 ( .IN1(s_start_i), .IN2(n280), .QN(n90) );
  MUX21X1 U103 ( .IN1(n31), .IN2(qutnt_o[24]), .S(n92), .Q(n205) );
  OA21X1 U104 ( .IN1(n32), .IN2(n21), .IN3(n7), .Q(n92) );
  NAND3X0 U105 ( .IN1(n30), .IN2(n8), .IN3(s_state), .QN(n32) );
  INVX0 U106 ( .INP(n26), .ZN(n30) );
  NAND2X0 U107 ( .IN1(n9), .IN2(n2), .QN(n26) );
  MUX21X1 U108 ( .IN1(n31), .IN2(qutnt_o[25]), .S(n93), .Q(n204) );
  OA21X1 U109 ( .IN1(n21), .IN2(n36), .IN3(n7), .Q(n93) );
  NAND3X0 U110 ( .IN1(s_count[0]), .IN2(n2), .IN3(n79), .QN(n36) );
  NOR2X0 U111 ( .IN1(n3), .IN2(s_count[2]), .QN(n79) );
  AO22X1 U112 ( .IN1(qutnt_o[26]), .IN2(n94), .IN3(n95), .IN4(n31), .Q(n203)
         );
  NOR2X0 U113 ( .IN1(n3), .IN2(n96), .QN(n95) );
  AO21X1 U114 ( .IN1(n96), .IN2(n7), .IN3(n17), .Q(n94) );
  MUX21X1 U115 ( .IN1(n97), .IN2(s_dvd[1]), .S(n98), .Q(n202) );
  AO222X1 U116 ( .IN1(n99), .IN2(N132), .IN3(N161), .IN4(n100), .IN5(s_dvd[2]), 
        .IN6(n98), .Q(n201) );
  AO222X1 U117 ( .IN1(n99), .IN2(N133), .IN3(N162), .IN4(n100), .IN5(s_dvd[3]), 
        .IN6(n98), .Q(n200) );
  AO222X1 U118 ( .IN1(n99), .IN2(N134), .IN3(N163), .IN4(n100), .IN5(s_dvd[4]), 
        .IN6(n98), .Q(n199) );
  AO222X1 U119 ( .IN1(n99), .IN2(N135), .IN3(N164), .IN4(n100), .IN5(s_dvd[5]), 
        .IN6(n98), .Q(n198) );
  AO222X1 U120 ( .IN1(n99), .IN2(N136), .IN3(N165), .IN4(n100), .IN5(s_dvd[6]), 
        .IN6(n98), .Q(n197) );
  AO222X1 U121 ( .IN1(n99), .IN2(N137), .IN3(N166), .IN4(n100), .IN5(s_dvd[7]), 
        .IN6(n98), .Q(n196) );
  AO222X1 U122 ( .IN1(n99), .IN2(N138), .IN3(N167), .IN4(n100), .IN5(s_dvd[8]), 
        .IN6(n98), .Q(n195) );
  AO222X1 U123 ( .IN1(n99), .IN2(N139), .IN3(N168), .IN4(n100), .IN5(s_dvd[9]), 
        .IN6(n98), .Q(n194) );
  AO222X1 U124 ( .IN1(n99), .IN2(N140), .IN3(N169), .IN4(n100), .IN5(s_dvd[10]), .IN6(n98), .Q(n193) );
  AO222X1 U125 ( .IN1(n99), .IN2(N141), .IN3(N170), .IN4(n100), .IN5(s_dvd[11]), .IN6(n98), .Q(n192) );
  AO222X1 U126 ( .IN1(n99), .IN2(N142), .IN3(N171), .IN4(n100), .IN5(s_dvd[12]), .IN6(n98), .Q(n191) );
  AO222X1 U127 ( .IN1(n99), .IN2(N143), .IN3(N172), .IN4(n100), .IN5(s_dvd[13]), .IN6(n98), .Q(n190) );
  AO222X1 U128 ( .IN1(n99), .IN2(N144), .IN3(N173), .IN4(n100), .IN5(s_dvd[14]), .IN6(n98), .Q(n189) );
  AO222X1 U129 ( .IN1(n99), .IN2(N145), .IN3(N174), .IN4(n100), .IN5(s_dvd[15]), .IN6(n98), .Q(n188) );
  AO222X1 U130 ( .IN1(n99), .IN2(N146), .IN3(N175), .IN4(n100), .IN5(s_dvd[16]), .IN6(n98), .Q(n187) );
  AO222X1 U131 ( .IN1(n99), .IN2(N147), .IN3(N176), .IN4(n100), .IN5(s_dvd[17]), .IN6(n98), .Q(n186) );
  AO222X1 U132 ( .IN1(n99), .IN2(N148), .IN3(N177), .IN4(n100), .IN5(s_dvd[18]), .IN6(n98), .Q(n185) );
  AO222X1 U133 ( .IN1(n99), .IN2(N149), .IN3(N178), .IN4(n100), .IN5(s_dvd[19]), .IN6(n98), .Q(n184) );
  AO222X1 U134 ( .IN1(n99), .IN2(N150), .IN3(N179), .IN4(n100), .IN5(s_dvd[20]), .IN6(n98), .Q(n183) );
  AO222X1 U135 ( .IN1(n99), .IN2(N151), .IN3(N180), .IN4(n100), .IN5(s_dvd[21]), .IN6(n98), .Q(n182) );
  AO222X1 U136 ( .IN1(n99), .IN2(N152), .IN3(N181), .IN4(n100), .IN5(s_dvd[22]), .IN6(n98), .Q(n181) );
  AO222X1 U137 ( .IN1(n99), .IN2(N153), .IN3(N182), .IN4(n100), .IN5(s_dvd[23]), .IN6(n98), .Q(n180) );
  AO222X1 U138 ( .IN1(n99), .IN2(N154), .IN3(N183), .IN4(n100), .IN5(s_dvd[24]), .IN6(n98), .Q(n179) );
  AO222X1 U139 ( .IN1(n99), .IN2(N155), .IN3(N184), .IN4(n100), .IN5(s_dvd[25]), .IN6(n98), .Q(n178) );
  AO222X1 U140 ( .IN1(n99), .IN2(N156), .IN3(N185), .IN4(n100), .IN5(s_dvd[26]), .IN6(n98), .Q(n177) );
  NOR2X0 U141 ( .IN1(n98), .IN2(n101), .QN(n100) );
  NOR2X0 U142 ( .IN1(n98), .IN2(n102), .QN(n99) );
  NAND2X0 U143 ( .IN1(s_state), .IN2(n7), .QN(n98) );
  AO22X1 U144 ( .IN1(rmndr_o[0]), .IN2(n17), .IN3(n103), .IN4(n97), .Q(n176)
         );
  MUX21X1 U145 ( .IN1(N160), .IN2(\lt_150/A[0] ), .S(n101), .Q(n97) );
  AO222X1 U146 ( .IN1(n104), .IN2(N132), .IN3(n105), .IN4(N161), .IN5(
        rmndr_o[1]), .IN6(n17), .Q(n175) );
  AO222X1 U147 ( .IN1(n104), .IN2(N133), .IN3(n105), .IN4(N162), .IN5(
        rmndr_o[2]), .IN6(n17), .Q(n174) );
  AO222X1 U148 ( .IN1(n104), .IN2(N134), .IN3(n105), .IN4(N163), .IN5(
        rmndr_o[3]), .IN6(n17), .Q(n173) );
  AO222X1 U149 ( .IN1(n104), .IN2(N135), .IN3(n105), .IN4(N164), .IN5(
        rmndr_o[4]), .IN6(n17), .Q(n172) );
  AO222X1 U150 ( .IN1(n104), .IN2(N136), .IN3(n105), .IN4(N165), .IN5(
        rmndr_o[5]), .IN6(n17), .Q(n171) );
  AO222X1 U151 ( .IN1(n104), .IN2(N137), .IN3(n105), .IN4(N166), .IN5(
        rmndr_o[6]), .IN6(n17), .Q(n170) );
  AO222X1 U152 ( .IN1(n104), .IN2(N138), .IN3(n105), .IN4(N167), .IN5(
        rmndr_o[7]), .IN6(n17), .Q(n169) );
  AO222X1 U153 ( .IN1(n104), .IN2(N139), .IN3(n105), .IN4(N168), .IN5(
        rmndr_o[8]), .IN6(n17), .Q(n168) );
  AO222X1 U154 ( .IN1(n104), .IN2(N140), .IN3(n105), .IN4(N169), .IN5(
        rmndr_o[9]), .IN6(n17), .Q(n167) );
  AO222X1 U155 ( .IN1(n104), .IN2(N141), .IN3(n105), .IN4(N170), .IN5(
        rmndr_o[10]), .IN6(n17), .Q(n166) );
  AO222X1 U156 ( .IN1(n104), .IN2(N142), .IN3(n105), .IN4(N171), .IN5(
        rmndr_o[11]), .IN6(n17), .Q(n165) );
  AO222X1 U157 ( .IN1(n104), .IN2(N143), .IN3(n105), .IN4(N172), .IN5(
        rmndr_o[12]), .IN6(n17), .Q(n164) );
  AO222X1 U158 ( .IN1(n104), .IN2(N144), .IN3(n105), .IN4(N173), .IN5(
        rmndr_o[13]), .IN6(n17), .Q(n163) );
  AO222X1 U159 ( .IN1(n104), .IN2(N145), .IN3(n105), .IN4(N174), .IN5(
        rmndr_o[14]), .IN6(n17), .Q(n162) );
  AO222X1 U160 ( .IN1(n104), .IN2(N146), .IN3(n105), .IN4(N175), .IN5(
        rmndr_o[15]), .IN6(n17), .Q(n161) );
  AO222X1 U161 ( .IN1(n104), .IN2(N147), .IN3(n105), .IN4(N176), .IN5(
        rmndr_o[16]), .IN6(n17), .Q(n160) );
  AO222X1 U162 ( .IN1(n104), .IN2(N148), .IN3(n105), .IN4(N177), .IN5(
        rmndr_o[17]), .IN6(n17), .Q(n159) );
  AO222X1 U163 ( .IN1(n104), .IN2(N149), .IN3(n105), .IN4(N178), .IN5(
        rmndr_o[18]), .IN6(n17), .Q(n158) );
  AO222X1 U164 ( .IN1(n104), .IN2(N150), .IN3(n105), .IN4(N179), .IN5(
        rmndr_o[19]), .IN6(n17), .Q(n157) );
  AO222X1 U165 ( .IN1(n104), .IN2(N151), .IN3(n105), .IN4(N180), .IN5(
        rmndr_o[20]), .IN6(n17), .Q(n156) );
  AO222X1 U166 ( .IN1(n104), .IN2(N152), .IN3(n105), .IN4(N181), .IN5(
        rmndr_o[21]), .IN6(n17), .Q(n155) );
  AO222X1 U167 ( .IN1(n104), .IN2(N153), .IN3(n105), .IN4(N182), .IN5(
        rmndr_o[22]), .IN6(n17), .Q(n154) );
  AO222X1 U168 ( .IN1(n104), .IN2(N154), .IN3(n105), .IN4(N183), .IN5(
        rmndr_o[23]), .IN6(n17), .Q(n153) );
  AO222X1 U169 ( .IN1(n104), .IN2(N155), .IN3(n105), .IN4(N184), .IN5(
        rmndr_o[24]), .IN6(n17), .Q(n152) );
  AO222X1 U170 ( .IN1(n104), .IN2(N156), .IN3(n105), .IN4(N185), .IN5(
        rmndr_o[25]), .IN6(n17), .Q(n151) );
  AND2X1 U171 ( .IN1(n103), .IN2(n102), .Q(n105) );
  INVX0 U172 ( .INP(n101), .ZN(n102) );
  INVX0 U173 ( .INP(n106), .ZN(n104) );
  OAI21X1 U174 ( .IN1(n107), .IN2(n106), .IN3(n108), .QN(n150) );
  MUX21X1 U175 ( .IN1(n109), .IN2(n279), .S(n17), .Q(n108) );
  NAND2X0 U176 ( .IN1(N186), .IN2(n31), .QN(n109) );
  NOR2X0 U177 ( .IN1(n101), .IN2(s_start_i), .QN(n31) );
  NAND2X0 U178 ( .IN1(n103), .IN2(n101), .QN(n106) );
  AO21X1 U179 ( .IN1(s_dvsor_i[26]), .IN2(n107), .IN3(n110), .Q(n101) );
  OA221X1 U180 ( .IN1(s_dvsor_i[25]), .IN2(n111), .IN3(s_dvsor_i[26]), .IN4(
        n107), .IN5(n112), .Q(n110) );
  AO221X1 U181 ( .IN1(s_dvsor_i[24]), .IN2(n113), .IN3(s_dvsor_i[25]), .IN4(
        n111), .IN5(n114), .Q(n112) );
  OA221X1 U182 ( .IN1(s_dvsor_i[23]), .IN2(n115), .IN3(s_dvsor_i[24]), .IN4(
        n113), .IN5(n116), .Q(n114) );
  AO221X1 U183 ( .IN1(s_dvsor_i[22]), .IN2(n117), .IN3(s_dvsor_i[23]), .IN4(
        n115), .IN5(n118), .Q(n116) );
  OA221X1 U184 ( .IN1(s_dvsor_i[21]), .IN2(n119), .IN3(s_dvsor_i[22]), .IN4(
        n117), .IN5(n120), .Q(n118) );
  AO221X1 U185 ( .IN1(s_dvsor_i[20]), .IN2(n121), .IN3(s_dvsor_i[21]), .IN4(
        n119), .IN5(n122), .Q(n120) );
  OA221X1 U186 ( .IN1(s_dvsor_i[19]), .IN2(n123), .IN3(s_dvsor_i[20]), .IN4(
        n121), .IN5(n124), .Q(n122) );
  AO221X1 U187 ( .IN1(s_dvsor_i[18]), .IN2(n125), .IN3(s_dvsor_i[19]), .IN4(
        n123), .IN5(n126), .Q(n124) );
  OA221X1 U188 ( .IN1(s_dvsor_i[17]), .IN2(n127), .IN3(s_dvsor_i[18]), .IN4(
        n125), .IN5(n128), .Q(n126) );
  AO221X1 U189 ( .IN1(s_dvsor_i[16]), .IN2(n129), .IN3(s_dvsor_i[17]), .IN4(
        n127), .IN5(n130), .Q(n128) );
  OA221X1 U190 ( .IN1(s_dvsor_i[15]), .IN2(n131), .IN3(s_dvsor_i[16]), .IN4(
        n129), .IN5(n132), .Q(n130) );
  AO221X1 U191 ( .IN1(s_dvsor_i[14]), .IN2(n133), .IN3(s_dvsor_i[15]), .IN4(
        n131), .IN5(n134), .Q(n132) );
  OA221X1 U192 ( .IN1(s_dvsor_i[13]), .IN2(n135), .IN3(s_dvsor_i[14]), .IN4(
        n133), .IN5(n136), .Q(n134) );
  AO221X1 U193 ( .IN1(s_dvsor_i[12]), .IN2(n137), .IN3(s_dvsor_i[13]), .IN4(
        n135), .IN5(n138), .Q(n136) );
  OA221X1 U194 ( .IN1(s_dvsor_i[11]), .IN2(n139), .IN3(s_dvsor_i[12]), .IN4(
        n137), .IN5(n140), .Q(n138) );
  AO221X1 U195 ( .IN1(s_dvsor_i[10]), .IN2(n141), .IN3(s_dvsor_i[11]), .IN4(
        n139), .IN5(n142), .Q(n140) );
  OA221X1 U196 ( .IN1(s_dvsor_i[9]), .IN2(n143), .IN3(s_dvsor_i[10]), .IN4(
        n141), .IN5(n144), .Q(n142) );
  AO221X1 U197 ( .IN1(s_dvsor_i[8]), .IN2(n145), .IN3(s_dvsor_i[9]), .IN4(n143), .IN5(n146), .Q(n144) );
  OA221X1 U198 ( .IN1(s_dvsor_i[7]), .IN2(n147), .IN3(s_dvsor_i[8]), .IN4(n145), .IN5(n148), .Q(n146) );
  AO221X1 U199 ( .IN1(s_dvsor_i[6]), .IN2(n149), .IN3(s_dvsor_i[7]), .IN4(n147), .IN5(n237), .Q(n148) );
  OA221X1 U200 ( .IN1(s_dvsor_i[5]), .IN2(n238), .IN3(s_dvsor_i[6]), .IN4(n149), .IN5(n239), .Q(n237) );
  AO221X1 U201 ( .IN1(s_dvsor_i[4]), .IN2(n240), .IN3(s_dvsor_i[5]), .IN4(n238), .IN5(n241), .Q(n239) );
  OA221X1 U202 ( .IN1(s_dvsor_i[3]), .IN2(n242), .IN3(s_dvsor_i[4]), .IN4(n240), .IN5(n243), .Q(n241) );
  AO222X1 U203 ( .IN1(n244), .IN2(n245), .IN3(s_dvsor_i[2]), .IN4(n246), .IN5(
        s_dvsor_i[3]), .IN6(n242), .Q(n243) );
  OR2X1 U204 ( .IN1(n245), .IN2(n244), .Q(n246) );
  AO22X1 U205 ( .IN1(n247), .IN2(n248), .IN3(s_dvsor_i[1]), .IN4(n249), .Q(
        n245) );
  OR2X1 U206 ( .IN1(n248), .IN2(n247), .Q(n249) );
  INVX0 U207 ( .INP(N132), .ZN(n248) );
  NOR2X0 U208 ( .IN1(n5), .IN2(\lt_150/A[0] ), .QN(n247) );
  INVX0 U209 ( .INP(N133), .ZN(n244) );
  INVX0 U210 ( .INP(N134), .ZN(n242) );
  INVX0 U211 ( .INP(N135), .ZN(n240) );
  INVX0 U212 ( .INP(N136), .ZN(n238) );
  INVX0 U213 ( .INP(N137), .ZN(n149) );
  INVX0 U214 ( .INP(N138), .ZN(n147) );
  INVX0 U215 ( .INP(N139), .ZN(n145) );
  INVX0 U216 ( .INP(N140), .ZN(n143) );
  INVX0 U217 ( .INP(N141), .ZN(n141) );
  INVX0 U218 ( .INP(N142), .ZN(n139) );
  INVX0 U219 ( .INP(N143), .ZN(n137) );
  INVX0 U220 ( .INP(N144), .ZN(n135) );
  INVX0 U221 ( .INP(N145), .ZN(n133) );
  INVX0 U222 ( .INP(N146), .ZN(n131) );
  INVX0 U223 ( .INP(N147), .ZN(n129) );
  INVX0 U224 ( .INP(N148), .ZN(n127) );
  INVX0 U225 ( .INP(N149), .ZN(n125) );
  INVX0 U226 ( .INP(N150), .ZN(n123) );
  INVX0 U227 ( .INP(N151), .ZN(n121) );
  INVX0 U228 ( .INP(N152), .ZN(n119) );
  INVX0 U229 ( .INP(N153), .ZN(n117) );
  INVX0 U230 ( .INP(N154), .ZN(n115) );
  NOR2X0 U231 ( .IN1(n17), .IN2(s_start_i), .QN(n103) );
  INVX0 U232 ( .INP(n18), .ZN(n17) );
  NAND2X0 U233 ( .IN1(n7), .IN2(n3), .QN(n18) );
  NOR2X0 U234 ( .IN1(n13), .IN2(n96), .QN(\lt_150/A[0] ) );
  INVX0 U235 ( .INP(n107), .ZN(N157) );
  NAND2X0 U236 ( .IN1(s_dvd[26]), .IN2(n96), .QN(n107) );
  INVX0 U237 ( .INP(n111), .ZN(N156) );
  NAND2X0 U238 ( .IN1(s_dvd[25]), .IN2(n96), .QN(n111) );
  INVX0 U239 ( .INP(n113), .ZN(N155) );
  NAND2X0 U240 ( .IN1(s_dvd[24]), .IN2(n96), .QN(n113) );
  MUX21X1 U241 ( .IN1(s_dvdnd_i[49]), .IN2(s_dvd[23]), .S(n96), .Q(N154) );
  MUX21X1 U242 ( .IN1(s_dvdnd_i[48]), .IN2(s_dvd[22]), .S(n96), .Q(N153) );
  MUX21X1 U243 ( .IN1(s_dvdnd_i[47]), .IN2(s_dvd[21]), .S(n96), .Q(N152) );
  MUX21X1 U244 ( .IN1(s_dvdnd_i[46]), .IN2(s_dvd[20]), .S(n96), .Q(N151) );
  MUX21X1 U245 ( .IN1(s_dvdnd_i[45]), .IN2(s_dvd[19]), .S(n96), .Q(N150) );
  MUX21X1 U246 ( .IN1(s_dvdnd_i[44]), .IN2(s_dvd[18]), .S(n96), .Q(N149) );
  MUX21X1 U247 ( .IN1(s_dvdnd_i[43]), .IN2(s_dvd[17]), .S(n96), .Q(N148) );
  MUX21X1 U248 ( .IN1(s_dvdnd_i[42]), .IN2(s_dvd[16]), .S(n96), .Q(N147) );
  MUX21X1 U249 ( .IN1(s_dvdnd_i[41]), .IN2(s_dvd[15]), .S(n96), .Q(N146) );
  MUX21X1 U250 ( .IN1(s_dvdnd_i[40]), .IN2(s_dvd[14]), .S(n96), .Q(N145) );
  MUX21X1 U251 ( .IN1(s_dvdnd_i[39]), .IN2(s_dvd[13]), .S(n96), .Q(N144) );
  MUX21X1 U252 ( .IN1(s_dvdnd_i[38]), .IN2(s_dvd[12]), .S(n96), .Q(N143) );
  MUX21X1 U253 ( .IN1(s_dvdnd_i[37]), .IN2(s_dvd[11]), .S(n96), .Q(N142) );
  MUX21X1 U254 ( .IN1(s_dvdnd_i[36]), .IN2(s_dvd[10]), .S(n96), .Q(N141) );
  MUX21X1 U255 ( .IN1(s_dvdnd_i[35]), .IN2(s_dvd[9]), .S(n96), .Q(N140) );
  MUX21X1 U256 ( .IN1(s_dvdnd_i[34]), .IN2(s_dvd[8]), .S(n96), .Q(N139) );
  MUX21X1 U257 ( .IN1(s_dvdnd_i[33]), .IN2(s_dvd[7]), .S(n96), .Q(N138) );
  MUX21X1 U258 ( .IN1(s_dvdnd_i[32]), .IN2(s_dvd[6]), .S(n96), .Q(N137) );
  MUX21X1 U259 ( .IN1(s_dvdnd_i[31]), .IN2(s_dvd[5]), .S(n96), .Q(N136) );
  MUX21X1 U260 ( .IN1(s_dvdnd_i[30]), .IN2(s_dvd[4]), .S(n96), .Q(N135) );
  MUX21X1 U261 ( .IN1(s_dvdnd_i[29]), .IN2(s_dvd[3]), .S(n96), .Q(N134) );
  MUX21X1 U262 ( .IN1(s_dvdnd_i[28]), .IN2(s_dvd[2]), .S(n96), .Q(N133) );
  MUX21X1 U263 ( .IN1(s_dvdnd_i[27]), .IN2(s_dvd[1]), .S(n96), .Q(N132) );
  OR4X1 U264 ( .IN1(n21), .IN2(n2), .IN3(s_count[0]), .IN4(s_count[2]), .Q(n96) );
  NAND2X0 U265 ( .IN1(s_count[4]), .IN2(s_count[3]), .QN(n21) );
  NOR4X0 U266 ( .IN1(n250), .IN2(n251), .IN3(n252), .IN4(n253), .QN(N102) );
  NAND4X0 U267 ( .IN1(n5), .IN2(n12), .IN3(n254), .IN4(n255), .QN(n253) );
  NOR4X0 U268 ( .IN1(s_dvsor_i[14]), .IN2(s_dvsor_i[13]), .IN3(s_dvsor_i[12]), 
        .IN4(s_dvsor_i[11]), .QN(n255) );
  NAND4X0 U269 ( .IN1(n256), .IN2(n257), .IN3(n258), .IN4(n259), .QN(n254) );
  NOR4X0 U270 ( .IN1(n260), .IN2(n261), .IN3(n262), .IN4(n263), .QN(n259) );
  OR4X1 U271 ( .IN1(s_dvdnd_i[33]), .IN2(s_dvdnd_i[34]), .IN3(s_dvdnd_i[32]), 
        .IN4(n264), .Q(n263) );
  OR3X1 U272 ( .IN1(s_dvdnd_i[35]), .IN2(s_dvdnd_i[37]), .IN3(s_dvdnd_i[36]), 
        .Q(n264) );
  NAND4X0 U273 ( .IN1(n15), .IN2(n303), .IN3(n6), .IN4(n265), .QN(n262) );
  NOR3X0 U274 ( .IN1(s_dvdnd_i[40]), .IN2(s_dvdnd_i[42]), .IN3(s_dvdnd_i[41]), 
        .QN(n265) );
  OR4X1 U275 ( .IN1(s_dvdnd_i[44]), .IN2(s_dvdnd_i[45]), .IN3(s_dvdnd_i[43]), 
        .IN4(n266), .Q(n261) );
  OR3X1 U276 ( .IN1(s_dvdnd_i[46]), .IN2(s_dvdnd_i[48]), .IN3(s_dvdnd_i[47]), 
        .Q(n266) );
  NAND4X0 U277 ( .IN1(n277), .IN2(n278), .IN3(n14), .IN4(n267), .QN(n260) );
  NOR4X0 U278 ( .IN1(s_dvdnd_i[9]), .IN2(s_dvdnd_i[8]), .IN3(s_dvdnd_i[7]), 
        .IN4(s_dvdnd_i[6]), .QN(n267) );
  NOR4X0 U279 ( .IN1(n268), .IN2(n269), .IN3(n270), .IN4(n271), .QN(n258) );
  NAND3X0 U280 ( .IN1(n304), .IN2(n305), .IN3(n306), .QN(n271) );
  NAND3X0 U281 ( .IN1(n308), .IN2(n309), .IN3(n307), .QN(n270) );
  OR3X1 U282 ( .IN1(s_dvdnd_i[27]), .IN2(s_dvdnd_i[28]), .IN3(s_dvdnd_i[26]), 
        .Q(n269) );
  OR4X1 U283 ( .IN1(s_dvdnd_i[29]), .IN2(n10), .IN3(s_dvdnd_i[30]), .IN4(
        s_dvdnd_i[31]), .Q(n268) );
  NOR4X0 U284 ( .IN1(n272), .IN2(s_dvdnd_i[15]), .IN3(s_dvdnd_i[17]), .IN4(
        s_dvdnd_i[16]), .QN(n257) );
  NAND3X0 U285 ( .IN1(n311), .IN2(n312), .IN3(n310), .QN(n272) );
  NOR4X0 U286 ( .IN1(n273), .IN2(s_dvdnd_i[0]), .IN3(s_dvdnd_i[11]), .IN4(
        s_dvdnd_i[10]), .QN(n256) );
  NAND3X0 U287 ( .IN1(n314), .IN2(n315), .IN3(n313), .QN(n273) );
  OR4X1 U288 ( .IN1(s_dvsor_i[16]), .IN2(s_dvsor_i[17]), .IN3(s_dvsor_i[15]), 
        .IN4(n274), .Q(n252) );
  OR4X1 U289 ( .IN1(s_dvsor_i[20]), .IN2(s_dvsor_i[1]), .IN3(s_dvsor_i[19]), 
        .IN4(s_dvsor_i[18]), .Q(n274) );
  OR4X1 U290 ( .IN1(s_dvsor_i[22]), .IN2(s_dvsor_i[23]), .IN3(s_dvsor_i[21]), 
        .IN4(n275), .Q(n251) );
  OR4X1 U291 ( .IN1(s_dvsor_i[2]), .IN2(s_dvsor_i[26]), .IN3(s_dvsor_i[25]), 
        .IN4(s_dvsor_i[24]), .Q(n275) );
  OR4X1 U292 ( .IN1(s_dvsor_i[4]), .IN2(s_dvsor_i[5]), .IN3(s_dvsor_i[3]), 
        .IN4(n276), .Q(n250) );
  OR4X1 U293 ( .IN1(s_dvsor_i[9]), .IN2(s_dvsor_i[8]), .IN3(s_dvsor_i[7]), 
        .IN4(s_dvsor_i[6]), .Q(n276) );
endmodule


module post_norm_div_1_DW01_inc_0 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[8]), .IN2(A[8]), .Q(SUM[8]) );
endmodule


module post_norm_div_1_DW01_inc_1 ( A, SUM );
  input [24:0] A;
  output [24:0] SUM;

  wire   [24:2] carry;

  HADDX1 U1_1_23 ( .A0(A[23]), .B0(carry[23]), .C1(SUM[24]), .SO(SUM[23]) );
  HADDX1 U1_1_22 ( .A0(A[22]), .B0(carry[22]), .C1(carry[23]), .SO(SUM[22]) );
  HADDX1 U1_1_21 ( .A0(A[21]), .B0(carry[21]), .C1(carry[22]), .SO(SUM[21]) );
  HADDX1 U1_1_20 ( .A0(A[20]), .B0(carry[20]), .C1(carry[21]), .SO(SUM[20]) );
  HADDX1 U1_1_19 ( .A0(A[19]), .B0(carry[19]), .C1(carry[20]), .SO(SUM[19]) );
  HADDX1 U1_1_18 ( .A0(A[18]), .B0(carry[18]), .C1(carry[19]), .SO(SUM[18]) );
  HADDX1 U1_1_17 ( .A0(A[17]), .B0(carry[17]), .C1(carry[18]), .SO(SUM[17]) );
  HADDX1 U1_1_16 ( .A0(A[16]), .B0(carry[16]), .C1(carry[17]), .SO(SUM[16]) );
  HADDX1 U1_1_15 ( .A0(A[15]), .B0(carry[15]), .C1(carry[16]), .SO(SUM[15]) );
  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
endmodule


module post_norm_div_1 ( clk_i, opa_i, opb_i, qutnt_i, rmndr_i, exp_10_i, 
        sign_i, rmode_i, output_o, ine_o );
  input [31:0] opa_i;
  input [31:0] opb_i;
  input [26:0] qutnt_i;
  input [26:0] rmndr_i;
  input [9:0] exp_10_i;
  input [1:0] rmode_i;
  output [31:0] output_o;
  input clk_i, sign_i;
  output ine_o;
  wire   s_sign_i, \s_rmode_i[1] , N161, N162, N166, N167, N172, N173, N174,
         N175, N176, N177, \s_shl1[0] , N238, N239, N240, N241, N242, N243,
         N244, N245, N246, N247, N248, N249, N250, N251, N252, N253, N254,
         N255, N256, N257, N258, N259, N260, N261, N262, N263, N264, N1065,
         N1066, N1067, N1068, N1069, N1070, N1071, N1072, N1073, N1074, N1075,
         N1076, N1077, N1078, N1079, N1080, N1081, N1082, N1083, N1084, N1085,
         N1086, N1087, N1088, N1089, N1091, N1092, N1093, N1094, N1095, N1096,
         N1097, N1098, N1099, \s_fraco2[22] , N1100, N1101, N1102, N1103,
         N1104, N1105, N1106, N1107, N1108, N1109, N1110, N1111, N1112, N1113,
         N1114, N1115, N1116, N1117, N1118, N1119, N1120, N1121, N1122, N1123,
         N1124, N1125, N1126, N1127, N1128, N1129, N1130, N1131, N1386, n246,
         n248, n263, \sub_1_root_sub_150_2/CI , n1, n2, n3, n4, n5, n6, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n247, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466;
  wire   [30:0] s_opa_i;
  wire   [30:0] s_opb_i;
  wire   [7:0] s_expa;
  wire   [7:0] s_expb;
  wire   [26:0] s_qutnt_i;
  wire   [26:0] s_rmndr_i;
  wire   [9:0] s_exp_10_i;
  wire   [31:0] s_output_o;
  wire   [9:0] s_exp_10b;
  wire   [8:0] s_expo1;
  wire   [5:0] s_shr1;
  wire   [26:0] s_fraco1;
  wire   [8:0] s_expo2;
  wire   [8:0] s_expo3;

  DFFX1 \s_opa_i_reg[30]  ( .D(opa_i[30]), .CLK(clk_i), .Q(s_opa_i[30]) );
  DFFX1 \s_opa_i_reg[29]  ( .D(opa_i[29]), .CLK(clk_i), .Q(s_opa_i[29]) );
  DFFX1 \s_opa_i_reg[28]  ( .D(opa_i[28]), .CLK(clk_i), .Q(s_opa_i[28]) );
  DFFX1 \s_opa_i_reg[27]  ( .D(opa_i[27]), .CLK(clk_i), .QN(n406) );
  DFFX1 \s_opa_i_reg[26]  ( .D(opa_i[26]), .CLK(clk_i), .QN(n405) );
  DFFX1 \s_opa_i_reg[25]  ( .D(opa_i[25]), .CLK(clk_i), .Q(s_opa_i[25]) );
  DFFX1 \s_opa_i_reg[24]  ( .D(opa_i[24]), .CLK(clk_i), .Q(s_opa_i[24]) );
  DFFX1 \s_opa_i_reg[23]  ( .D(opa_i[23]), .CLK(clk_i), .Q(s_opa_i[23]) );
  DFFX1 \s_opa_i_reg[22]  ( .D(opa_i[22]), .CLK(clk_i), .QN(n410) );
  DFFX1 \s_opa_i_reg[21]  ( .D(opa_i[21]), .CLK(clk_i), .Q(s_opa_i[21]) );
  DFFX1 \s_opa_i_reg[20]  ( .D(opa_i[20]), .CLK(clk_i), .Q(s_opa_i[20]) );
  DFFX1 \s_opa_i_reg[19]  ( .D(opa_i[19]), .CLK(clk_i), .QN(n415) );
  DFFX1 \s_opa_i_reg[18]  ( .D(opa_i[18]), .CLK(clk_i), .QN(n414) );
  DFFX1 \s_opa_i_reg[17]  ( .D(opa_i[17]), .CLK(clk_i), .QN(n413) );
  DFFX1 \s_opa_i_reg[16]  ( .D(opa_i[16]), .CLK(clk_i), .Q(s_opa_i[16]) );
  DFFX1 \s_opa_i_reg[15]  ( .D(opa_i[15]), .CLK(clk_i), .Q(s_opa_i[15]) );
  DFFX1 \s_opa_i_reg[14]  ( .D(opa_i[14]), .CLK(clk_i), .Q(s_opa_i[14]) );
  DFFX1 \s_opa_i_reg[13]  ( .D(opa_i[13]), .CLK(clk_i), .Q(s_opa_i[13]) );
  DFFX1 \s_opa_i_reg[12]  ( .D(opa_i[12]), .CLK(clk_i), .Q(s_opa_i[12]) );
  DFFX1 \s_opa_i_reg[11]  ( .D(opa_i[11]), .CLK(clk_i), .Q(s_opa_i[11]) );
  DFFX1 \s_opa_i_reg[10]  ( .D(opa_i[10]), .CLK(clk_i), .QN(n417) );
  DFFX1 \s_opa_i_reg[9]  ( .D(opa_i[9]), .CLK(clk_i), .QN(n409) );
  DFFX1 \s_opa_i_reg[8]  ( .D(opa_i[8]), .CLK(clk_i), .QN(n408) );
  DFFX1 \s_opa_i_reg[7]  ( .D(opa_i[7]), .CLK(clk_i), .QN(n407) );
  DFFX1 \s_opa_i_reg[6]  ( .D(opa_i[6]), .CLK(clk_i), .Q(s_opa_i[6]) );
  DFFX1 \s_opa_i_reg[5]  ( .D(opa_i[5]), .CLK(clk_i), .Q(s_opa_i[5]) );
  DFFX1 \s_opa_i_reg[4]  ( .D(opa_i[4]), .CLK(clk_i), .Q(s_opa_i[4]) );
  DFFX1 \s_opa_i_reg[3]  ( .D(opa_i[3]), .CLK(clk_i), .QN(n412) );
  DFFX1 \s_opa_i_reg[2]  ( .D(opa_i[2]), .CLK(clk_i), .QN(n411) );
  DFFX1 \s_opa_i_reg[1]  ( .D(opa_i[1]), .CLK(clk_i), .Q(s_opa_i[1]) );
  DFFX1 \s_opa_i_reg[0]  ( .D(opa_i[0]), .CLK(clk_i), .QN(n416) );
  DFFX1 \s_opb_i_reg[30]  ( .D(opb_i[30]), .CLK(clk_i), .Q(s_opb_i[30]) );
  DFFX1 \s_opb_i_reg[29]  ( .D(opb_i[29]), .CLK(clk_i), .Q(s_opb_i[29]) );
  DFFX1 \s_opb_i_reg[28]  ( .D(opb_i[28]), .CLK(clk_i), .Q(s_opb_i[28]) );
  DFFX1 \s_opb_i_reg[27]  ( .D(opb_i[27]), .CLK(clk_i), .QN(n438) );
  DFFX1 \s_opb_i_reg[26]  ( .D(opb_i[26]), .CLK(clk_i), .QN(n437) );
  DFFX1 \s_opb_i_reg[25]  ( .D(opb_i[25]), .CLK(clk_i), .Q(s_opb_i[25]) );
  DFFX1 \s_opb_i_reg[24]  ( .D(opb_i[24]), .CLK(clk_i), .Q(s_opb_i[24]) );
  DFFX1 \s_opb_i_reg[23]  ( .D(opb_i[23]), .CLK(clk_i), .Q(s_opb_i[23]) );
  DFFX1 \s_opb_i_reg[22]  ( .D(opb_i[22]), .CLK(clk_i), .QN(n442) );
  DFFX1 \s_opb_i_reg[21]  ( .D(opb_i[21]), .CLK(clk_i), .Q(s_opb_i[21]) );
  DFFX1 \s_opb_i_reg[20]  ( .D(opb_i[20]), .CLK(clk_i), .Q(s_opb_i[20]) );
  DFFX1 \s_opb_i_reg[19]  ( .D(opb_i[19]), .CLK(clk_i), .QN(n447) );
  DFFX1 \s_opb_i_reg[18]  ( .D(opb_i[18]), .CLK(clk_i), .QN(n446) );
  DFFX1 \s_opb_i_reg[17]  ( .D(opb_i[17]), .CLK(clk_i), .QN(n445) );
  DFFX1 \s_opb_i_reg[16]  ( .D(opb_i[16]), .CLK(clk_i), .Q(s_opb_i[16]) );
  DFFX1 \s_opb_i_reg[15]  ( .D(opb_i[15]), .CLK(clk_i), .Q(s_opb_i[15]) );
  DFFX1 \s_opb_i_reg[14]  ( .D(opb_i[14]), .CLK(clk_i), .Q(s_opb_i[14]) );
  DFFX1 \s_opb_i_reg[13]  ( .D(opb_i[13]), .CLK(clk_i), .Q(s_opb_i[13]) );
  DFFX1 \s_opb_i_reg[12]  ( .D(opb_i[12]), .CLK(clk_i), .Q(s_opb_i[12]) );
  DFFX1 \s_opb_i_reg[11]  ( .D(opb_i[11]), .CLK(clk_i), .Q(s_opb_i[11]) );
  DFFX1 \s_opb_i_reg[10]  ( .D(opb_i[10]), .CLK(clk_i), .QN(n449) );
  DFFX1 \s_opb_i_reg[9]  ( .D(opb_i[9]), .CLK(clk_i), .QN(n441) );
  DFFX1 \s_opb_i_reg[8]  ( .D(opb_i[8]), .CLK(clk_i), .QN(n440) );
  DFFX1 \s_opb_i_reg[7]  ( .D(opb_i[7]), .CLK(clk_i), .QN(n439) );
  DFFX1 \s_opb_i_reg[6]  ( .D(opb_i[6]), .CLK(clk_i), .Q(s_opb_i[6]) );
  DFFX1 \s_opb_i_reg[5]  ( .D(opb_i[5]), .CLK(clk_i), .Q(s_opb_i[5]) );
  DFFX1 \s_opb_i_reg[4]  ( .D(opb_i[4]), .CLK(clk_i), .Q(s_opb_i[4]) );
  DFFX1 \s_opb_i_reg[3]  ( .D(opb_i[3]), .CLK(clk_i), .QN(n444) );
  DFFX1 \s_opb_i_reg[2]  ( .D(opb_i[2]), .CLK(clk_i), .QN(n443) );
  DFFX1 \s_opb_i_reg[1]  ( .D(opb_i[1]), .CLK(clk_i), .Q(s_opb_i[1]) );
  DFFX1 \s_opb_i_reg[0]  ( .D(opb_i[0]), .CLK(clk_i), .QN(n448) );
  DFFX1 \s_expa_reg[7]  ( .D(opa_i[30]), .CLK(clk_i), .Q(s_expa[7]) );
  DFFX1 \s_expa_reg[6]  ( .D(opa_i[29]), .CLK(clk_i), .Q(s_expa[6]) );
  DFFX1 \s_expa_reg[5]  ( .D(opa_i[28]), .CLK(clk_i), .QN(n425) );
  DFFX1 \s_expa_reg[4]  ( .D(opa_i[27]), .CLK(clk_i), .QN(n424) );
  DFFX1 \s_expa_reg[3]  ( .D(opa_i[26]), .CLK(clk_i), .QN(n429) );
  DFFX1 \s_expa_reg[2]  ( .D(opa_i[25]), .CLK(clk_i), .QN(n428) );
  DFFX1 \s_expa_reg[1]  ( .D(opa_i[24]), .CLK(clk_i), .QN(n427) );
  DFFX1 \s_expa_reg[0]  ( .D(opa_i[23]), .CLK(clk_i), .QN(n426) );
  DFFX1 \s_expb_reg[7]  ( .D(opb_i[30]), .CLK(clk_i), .Q(s_expb[7]) );
  DFFX1 \s_expb_reg[6]  ( .D(opb_i[29]), .CLK(clk_i), .Q(s_expb[6]) );
  DFFX1 \s_expb_reg[5]  ( .D(opb_i[28]), .CLK(clk_i), .QN(n419) );
  DFFX1 \s_expb_reg[4]  ( .D(opb_i[27]), .CLK(clk_i), .QN(n418) );
  DFFX1 \s_expb_reg[3]  ( .D(opb_i[26]), .CLK(clk_i), .QN(n423) );
  DFFX1 \s_expb_reg[2]  ( .D(opb_i[25]), .CLK(clk_i), .QN(n422) );
  DFFX1 \s_expb_reg[1]  ( .D(opb_i[24]), .CLK(clk_i), .QN(n421) );
  DFFX1 \s_expb_reg[0]  ( .D(opb_i[23]), .CLK(clk_i), .QN(n420) );
  DFFX1 \s_qutnt_i_reg[26]  ( .D(qutnt_i[26]), .CLK(clk_i), .Q(n18), .QN(
        \sub_1_root_sub_150_2/CI ) );
  DFFX1 \s_qutnt_i_reg[25]  ( .D(qutnt_i[25]), .CLK(clk_i), .Q(s_qutnt_i[25]), 
        .QN(n30) );
  DFFX1 \s_qutnt_i_reg[24]  ( .D(qutnt_i[24]), .CLK(clk_i), .Q(s_qutnt_i[24]), 
        .QN(n25) );
  DFFX1 \s_qutnt_i_reg[23]  ( .D(qutnt_i[23]), .CLK(clk_i), .Q(s_qutnt_i[23]), 
        .QN(n5) );
  DFFX1 \s_qutnt_i_reg[22]  ( .D(qutnt_i[22]), .CLK(clk_i), .Q(s_qutnt_i[22]), 
        .QN(n13) );
  DFFX1 \s_qutnt_i_reg[21]  ( .D(qutnt_i[21]), .CLK(clk_i), .Q(s_qutnt_i[21]), 
        .QN(n2) );
  DFFX1 \s_qutnt_i_reg[20]  ( .D(qutnt_i[20]), .CLK(clk_i), .Q(s_qutnt_i[20]), 
        .QN(n31) );
  DFFX1 \s_qutnt_i_reg[19]  ( .D(qutnt_i[19]), .CLK(clk_i), .Q(s_qutnt_i[19]), 
        .QN(n16) );
  DFFX1 \s_qutnt_i_reg[18]  ( .D(qutnt_i[18]), .CLK(clk_i), .Q(s_qutnt_i[18]), 
        .QN(n27) );
  DFFX1 \s_qutnt_i_reg[17]  ( .D(qutnt_i[17]), .CLK(clk_i), .Q(s_qutnt_i[17]), 
        .QN(n15) );
  DFFX1 \s_qutnt_i_reg[16]  ( .D(qutnt_i[16]), .CLK(clk_i), .Q(s_qutnt_i[16]), 
        .QN(n4) );
  DFFX1 \s_qutnt_i_reg[15]  ( .D(qutnt_i[15]), .CLK(clk_i), .Q(s_qutnt_i[15]), 
        .QN(n23) );
  DFFX1 \s_qutnt_i_reg[14]  ( .D(qutnt_i[14]), .CLK(clk_i), .Q(s_qutnt_i[14]), 
        .QN(n29) );
  DFFX1 \s_qutnt_i_reg[13]  ( .D(qutnt_i[13]), .CLK(clk_i), .Q(s_qutnt_i[13]), 
        .QN(n11) );
  DFFX1 \s_qutnt_i_reg[12]  ( .D(qutnt_i[12]), .CLK(clk_i), .QN(n3) );
  DFFX1 \s_qutnt_i_reg[11]  ( .D(qutnt_i[11]), .CLK(clk_i), .QN(n8) );
  DFFX1 \s_qutnt_i_reg[10]  ( .D(qutnt_i[10]), .CLK(clk_i), .QN(n19) );
  DFFX1 \s_qutnt_i_reg[9]  ( .D(qutnt_i[9]), .CLK(clk_i), .Q(s_qutnt_i[9]), 
        .QN(n1) );
  DFFX1 \s_qutnt_i_reg[8]  ( .D(qutnt_i[8]), .CLK(clk_i), .Q(s_qutnt_i[8]), 
        .QN(n22) );
  DFFX1 \s_qutnt_i_reg[7]  ( .D(qutnt_i[7]), .CLK(clk_i), .Q(s_qutnt_i[7]), 
        .QN(n10) );
  DFFX1 \s_qutnt_i_reg[6]  ( .D(qutnt_i[6]), .CLK(clk_i), .Q(s_qutnt_i[6]), 
        .QN(n24) );
  DFFX1 \s_qutnt_i_reg[5]  ( .D(qutnt_i[5]), .CLK(clk_i), .Q(s_qutnt_i[5]), 
        .QN(n14) );
  DFFX1 \s_qutnt_i_reg[4]  ( .D(qutnt_i[4]), .CLK(clk_i), .Q(s_qutnt_i[4]), 
        .QN(n28) );
  DFFX1 \s_qutnt_i_reg[3]  ( .D(qutnt_i[3]), .CLK(clk_i), .Q(s_qutnt_i[3]), 
        .QN(n12) );
  DFFX1 \s_qutnt_i_reg[2]  ( .D(qutnt_i[2]), .CLK(clk_i), .Q(s_qutnt_i[2]) );
  DFFX1 \s_qutnt_i_reg[1]  ( .D(qutnt_i[1]), .CLK(clk_i), .Q(s_qutnt_i[1]) );
  DFFX1 \s_qutnt_i_reg[0]  ( .D(qutnt_i[0]), .CLK(clk_i), .Q(s_qutnt_i[0]), 
        .QN(n34) );
  DFFX1 \s_rmndr_i_reg[26]  ( .D(rmndr_i[26]), .CLK(clk_i), .QN(n455) );
  DFFX1 \s_rmndr_i_reg[25]  ( .D(rmndr_i[25]), .CLK(clk_i), .QN(n458) );
  DFFX1 \s_rmndr_i_reg[24]  ( .D(rmndr_i[24]), .CLK(clk_i), .QN(n457) );
  DFFX1 \s_rmndr_i_reg[23]  ( .D(rmndr_i[23]), .CLK(clk_i), .Q(s_rmndr_i[23])
         );
  DFFX1 \s_rmndr_i_reg[22]  ( .D(rmndr_i[22]), .CLK(clk_i), .Q(s_rmndr_i[22])
         );
  DFFX1 \s_rmndr_i_reg[21]  ( .D(rmndr_i[21]), .CLK(clk_i), .Q(s_rmndr_i[21])
         );
  DFFX1 \s_rmndr_i_reg[20]  ( .D(rmndr_i[20]), .CLK(clk_i), .QN(n460) );
  DFFX1 \s_rmndr_i_reg[19]  ( .D(rmndr_i[19]), .CLK(clk_i), .QN(n462) );
  DFFX1 \s_rmndr_i_reg[18]  ( .D(rmndr_i[18]), .CLK(clk_i), .QN(n461) );
  DFFX1 \s_rmndr_i_reg[17]  ( .D(rmndr_i[17]), .CLK(clk_i), .Q(s_rmndr_i[17])
         );
  DFFX1 \s_rmndr_i_reg[16]  ( .D(rmndr_i[16]), .CLK(clk_i), .Q(s_rmndr_i[16])
         );
  DFFX1 \s_rmndr_i_reg[15]  ( .D(rmndr_i[15]), .CLK(clk_i), .Q(s_rmndr_i[15])
         );
  DFFX1 \s_rmndr_i_reg[14]  ( .D(rmndr_i[14]), .CLK(clk_i), .QN(n464) );
  DFFX1 \s_rmndr_i_reg[13]  ( .D(rmndr_i[13]), .CLK(clk_i), .QN(n463) );
  DFFX1 \s_rmndr_i_reg[12]  ( .D(rmndr_i[12]), .CLK(clk_i), .QN(n466) );
  DFFX1 \s_rmndr_i_reg[11]  ( .D(rmndr_i[11]), .CLK(clk_i), .QN(n465) );
  DFFX1 \s_rmndr_i_reg[10]  ( .D(rmndr_i[10]), .CLK(clk_i), .Q(s_rmndr_i[10])
         );
  DFFX1 \s_rmndr_i_reg[9]  ( .D(rmndr_i[9]), .CLK(clk_i), .QN(n452) );
  DFFX1 \s_rmndr_i_reg[8]  ( .D(rmndr_i[8]), .CLK(clk_i), .QN(n451) );
  DFFX1 \s_rmndr_i_reg[7]  ( .D(rmndr_i[7]), .CLK(clk_i), .QN(n454) );
  DFFX1 \s_rmndr_i_reg[6]  ( .D(rmndr_i[6]), .CLK(clk_i), .QN(n453) );
  DFFX1 \s_rmndr_i_reg[5]  ( .D(rmndr_i[5]), .CLK(clk_i), .Q(s_rmndr_i[5]) );
  DFFX1 \s_rmndr_i_reg[4]  ( .D(rmndr_i[4]), .CLK(clk_i), .Q(s_rmndr_i[4]) );
  DFFX1 \s_rmndr_i_reg[3]  ( .D(rmndr_i[3]), .CLK(clk_i), .Q(s_rmndr_i[3]) );
  DFFX1 \s_rmndr_i_reg[2]  ( .D(rmndr_i[2]), .CLK(clk_i), .QN(n456) );
  DFFX1 \s_rmndr_i_reg[1]  ( .D(rmndr_i[1]), .CLK(clk_i), .QN(n459) );
  DFFX1 \s_rmndr_i_reg[0]  ( .D(rmndr_i[0]), .CLK(clk_i), .Q(s_rmndr_i[0]) );
  DFFX1 \s_exp_10_i_reg[9]  ( .D(exp_10_i[9]), .CLK(clk_i), .Q(s_exp_10_i[9])
         );
  DFFX1 \s_exp_10_i_reg[8]  ( .D(exp_10_i[8]), .CLK(clk_i), .Q(s_exp_10_i[8])
         );
  DFFX1 \s_exp_10_i_reg[7]  ( .D(exp_10_i[7]), .CLK(clk_i), .Q(s_exp_10_i[7])
         );
  DFFX1 \s_exp_10_i_reg[6]  ( .D(exp_10_i[6]), .CLK(clk_i), .Q(s_exp_10_i[6])
         );
  DFFX1 \s_exp_10_i_reg[5]  ( .D(exp_10_i[5]), .CLK(clk_i), .Q(s_exp_10_i[5])
         );
  DFFX1 \s_exp_10_i_reg[4]  ( .D(exp_10_i[4]), .CLK(clk_i), .Q(s_exp_10_i[4])
         );
  DFFX1 \s_exp_10_i_reg[3]  ( .D(exp_10_i[3]), .CLK(clk_i), .Q(s_exp_10_i[3])
         );
  DFFX1 \s_exp_10_i_reg[2]  ( .D(exp_10_i[2]), .CLK(clk_i), .Q(s_exp_10_i[2])
         );
  DFFX1 \s_exp_10_i_reg[1]  ( .D(exp_10_i[1]), .CLK(clk_i), .Q(s_exp_10_i[1])
         );
  DFFX1 \s_exp_10_i_reg[0]  ( .D(exp_10_i[0]), .CLK(clk_i), .Q(s_exp_10_i[0])
         );
  DFFX1 s_sign_i_reg ( .D(sign_i), .CLK(clk_i), .Q(s_sign_i) );
  DFFX1 \s_rmode_i_reg[1]  ( .D(rmode_i[1]), .CLK(clk_i), .Q(\s_rmode_i[1] ), 
        .QN(n32) );
  DFFX1 \s_rmode_i_reg[0]  ( .D(rmode_i[0]), .CLK(clk_i), .QN(n17) );
  DFFX1 \output_o_reg[31]  ( .D(s_output_o[31]), .CLK(clk_i), .Q(output_o[31])
         );
  DFFSSRX1 \s_expo1_reg[8]  ( .D(n263), .RSTB(s_exp_10b[8]), .SETB(1'b1), 
        .CLK(clk_i), .Q(s_expo1[8]) );
  DFFSSRX1 \s_expo1_reg[7]  ( .D(n263), .RSTB(s_exp_10b[7]), .SETB(1'b1), 
        .CLK(clk_i), .QN(n33) );
  DFFSSRX1 \s_expo1_reg[6]  ( .D(n263), .RSTB(s_exp_10b[6]), .SETB(1'b1), 
        .CLK(clk_i), .Q(s_expo1[6]) );
  DFFX1 \s_expo1_reg[5]  ( .D(N167), .CLK(clk_i), .Q(s_expo1[5]) );
  DFFX1 \s_expo1_reg[4]  ( .D(N166), .CLK(clk_i), .Q(s_expo1[4]) );
  DFFSSRX1 \s_expo1_reg[3]  ( .D(n263), .RSTB(s_exp_10b[3]), .SETB(1'b1), 
        .CLK(clk_i), .Q(s_expo1[3]) );
  DFFSSRX1 \s_expo1_reg[2]  ( .D(n263), .RSTB(s_exp_10b[2]), .SETB(1'b1), 
        .CLK(clk_i), .Q(s_expo1[2]) );
  DFFSSRX1 \s_expo1_reg[1]  ( .D(n263), .RSTB(s_exp_10b[1]), .SETB(1'b1), 
        .CLK(clk_i), .Q(s_expo1[1]) );
  DFFX1 \s_expo1_reg[0]  ( .D(N162), .CLK(clk_i), .Q(s_expo1[0]) );
  DFFX1 \s_shr1_reg[5]  ( .D(N177), .CLK(clk_i), .Q(s_shr1[5]) );
  DFFX1 \s_shr1_reg[4]  ( .D(N176), .CLK(clk_i), .Q(s_shr1[4]), .QN(n20) );
  DFFX1 \s_shr1_reg[3]  ( .D(N175), .CLK(clk_i), .Q(s_shr1[3]), .QN(n21) );
  DFFX1 \s_shr1_reg[2]  ( .D(N174), .CLK(clk_i), .Q(s_shr1[2]), .QN(n6) );
  DFFX1 \s_shr1_reg[1]  ( .D(N173), .CLK(clk_i), .Q(s_shr1[1]), .QN(n26) );
  DFFX1 \s_shr1_reg[0]  ( .D(N172), .CLK(clk_i), .Q(s_shr1[0]), .QN(n9) );
  DFFX1 \s_shl1_reg[0]  ( .D(N161), .CLK(clk_i), .Q(\s_shl1[0] ) );
  DFFX1 \s_fraco1_reg[26]  ( .D(N264), .CLK(clk_i), .Q(s_fraco1[26]) );
  DFFX1 \s_fraco1_reg[25]  ( .D(N263), .CLK(clk_i), .Q(s_fraco1[25]) );
  DFFX1 \s_fraco1_reg[24]  ( .D(N262), .CLK(clk_i), .Q(s_fraco1[24]) );
  DFFX1 \s_fraco1_reg[23]  ( .D(N261), .CLK(clk_i), .Q(s_fraco1[23]) );
  DFFX1 \s_fraco1_reg[22]  ( .D(N260), .CLK(clk_i), .Q(s_fraco1[22]) );
  DFFX1 \s_fraco1_reg[21]  ( .D(N259), .CLK(clk_i), .Q(s_fraco1[21]) );
  DFFX1 \s_fraco1_reg[20]  ( .D(N258), .CLK(clk_i), .Q(s_fraco1[20]) );
  DFFX1 \s_fraco1_reg[19]  ( .D(N257), .CLK(clk_i), .Q(s_fraco1[19]) );
  DFFX1 \s_fraco1_reg[18]  ( .D(N256), .CLK(clk_i), .Q(s_fraco1[18]) );
  DFFX1 \s_fraco1_reg[17]  ( .D(N255), .CLK(clk_i), .Q(s_fraco1[17]) );
  DFFX1 \s_fraco1_reg[16]  ( .D(N254), .CLK(clk_i), .Q(s_fraco1[16]) );
  DFFX1 \s_fraco1_reg[15]  ( .D(N253), .CLK(clk_i), .Q(s_fraco1[15]) );
  DFFX1 \s_fraco1_reg[14]  ( .D(N252), .CLK(clk_i), .Q(s_fraco1[14]) );
  DFFX1 \s_fraco1_reg[13]  ( .D(N251), .CLK(clk_i), .Q(s_fraco1[13]) );
  DFFX1 \s_fraco1_reg[12]  ( .D(N250), .CLK(clk_i), .Q(s_fraco1[12]) );
  DFFX1 \s_fraco1_reg[11]  ( .D(N249), .CLK(clk_i), .Q(s_fraco1[11]) );
  DFFX1 \s_fraco1_reg[10]  ( .D(N248), .CLK(clk_i), .Q(s_fraco1[10]) );
  DFFX1 \s_fraco1_reg[9]  ( .D(N247), .CLK(clk_i), .Q(s_fraco1[9]) );
  DFFX1 \s_fraco1_reg[8]  ( .D(N246), .CLK(clk_i), .Q(s_fraco1[8]) );
  DFFX1 \s_fraco1_reg[7]  ( .D(N245), .CLK(clk_i), .Q(s_fraco1[7]) );
  DFFX1 \s_fraco1_reg[6]  ( .D(N244), .CLK(clk_i), .Q(s_fraco1[6]) );
  DFFX1 \s_fraco1_reg[5]  ( .D(N243), .CLK(clk_i), .Q(s_fraco1[5]) );
  DFFX1 \s_fraco1_reg[4]  ( .D(N242), .CLK(clk_i), .Q(s_fraco1[4]) );
  DFFX1 \s_fraco1_reg[3]  ( .D(N241), .CLK(clk_i), .Q(s_fraco1[3]) );
  DFFX1 \s_fraco1_reg[2]  ( .D(N240), .CLK(clk_i), .Q(s_fraco1[2]) );
  DFFX1 \s_fraco1_reg[1]  ( .D(N239), .CLK(clk_i), .Q(n450) );
  DFFX1 \s_fraco1_reg[0]  ( .D(N238), .CLK(clk_i), .Q(s_fraco1[0]) );
  DFFX1 \s_fraco2_reg[22]  ( .D(N1131), .CLK(clk_i), .Q(\s_fraco2[22] ) );
  DFFX1 \s_fraco2_reg[21]  ( .D(N1130), .CLK(clk_i), .QN(n391) );
  DFFX1 \s_fraco2_reg[20]  ( .D(N1129), .CLK(clk_i), .QN(n392) );
  DFFX1 \s_fraco2_reg[19]  ( .D(N1128), .CLK(clk_i), .QN(n394) );
  DFFX1 \s_fraco2_reg[18]  ( .D(N1127), .CLK(clk_i), .QN(n395) );
  DFFX1 \s_fraco2_reg[17]  ( .D(N1126), .CLK(clk_i), .QN(n396) );
  DFFX1 \s_fraco2_reg[16]  ( .D(N1125), .CLK(clk_i), .QN(n397) );
  DFFX1 \s_fraco2_reg[15]  ( .D(N1124), .CLK(clk_i), .QN(n398) );
  DFFX1 \s_fraco2_reg[14]  ( .D(N1123), .CLK(clk_i), .QN(n399) );
  DFFX1 \s_fraco2_reg[13]  ( .D(N1122), .CLK(clk_i), .QN(n400) );
  DFFX1 \s_fraco2_reg[12]  ( .D(N1121), .CLK(clk_i), .QN(n401) );
  DFFX1 \s_fraco2_reg[11]  ( .D(N1120), .CLK(clk_i), .QN(n402) );
  DFFX1 \s_fraco2_reg[10]  ( .D(N1119), .CLK(clk_i), .QN(n403) );
  DFFX1 \s_fraco2_reg[9]  ( .D(N1118), .CLK(clk_i), .QN(n383) );
  DFFX1 \s_fraco2_reg[8]  ( .D(N1117), .CLK(clk_i), .QN(n384) );
  DFFX1 \s_fraco2_reg[7]  ( .D(N1116), .CLK(clk_i), .QN(n385) );
  DFFX1 \s_fraco2_reg[6]  ( .D(N1115), .CLK(clk_i), .QN(n386) );
  DFFX1 \s_fraco2_reg[5]  ( .D(N1114), .CLK(clk_i), .QN(n387) );
  DFFX1 \s_fraco2_reg[4]  ( .D(N1113), .CLK(clk_i), .QN(n388) );
  DFFX1 \s_fraco2_reg[3]  ( .D(N1112), .CLK(clk_i), .QN(n389) );
  DFFX1 \s_fraco2_reg[2]  ( .D(N1111), .CLK(clk_i), .QN(n390) );
  DFFX1 \s_fraco2_reg[1]  ( .D(N1110), .CLK(clk_i), .QN(n393) );
  DFFX1 \s_fraco2_reg[0]  ( .D(N1109), .CLK(clk_i), .QN(n404) );
  DFFX1 \s_expo3_reg[8]  ( .D(N1108), .CLK(clk_i), .QN(n430) );
  DFFX1 \s_expo3_reg[7]  ( .D(N1107), .CLK(clk_i), .Q(s_expo3[7]) );
  DFFX1 \s_expo3_reg[6]  ( .D(N1106), .CLK(clk_i), .Q(s_expo3[6]) );
  DFFX1 \s_expo3_reg[5]  ( .D(N1105), .CLK(clk_i), .Q(s_expo3[5]), .QN(n432)
         );
  DFFX1 \s_expo3_reg[4]  ( .D(N1104), .CLK(clk_i), .Q(s_expo3[4]), .QN(n431)
         );
  DFFX1 \s_expo3_reg[3]  ( .D(N1103), .CLK(clk_i), .Q(s_expo3[3]), .QN(n436)
         );
  DFFX1 \s_expo3_reg[2]  ( .D(N1102), .CLK(clk_i), .Q(s_expo3[2]), .QN(n435)
         );
  DFFX1 \s_expo3_reg[1]  ( .D(N1101), .CLK(clk_i), .Q(s_expo3[1]), .QN(n434)
         );
  DFFX1 \s_expo3_reg[0]  ( .D(N1100), .CLK(clk_i), .Q(s_expo3[0]), .QN(n433)
         );
  DFFX1 ine_o_reg ( .D(N1386), .CLK(clk_i), .Q(ine_o) );
  DFFX1 \output_o_reg[22]  ( .D(s_output_o[22]), .CLK(clk_i), .Q(output_o[22])
         );
  DFFSSRX1 \output_o_reg[24]  ( .D(n246), .RSTB(s_expo3[1]), .SETB(n248), 
        .CLK(clk_i), .Q(output_o[24]) );
  DFFSSRX1 \output_o_reg[25]  ( .D(n246), .RSTB(s_expo3[2]), .SETB(n248), 
        .CLK(clk_i), .Q(output_o[25]) );
  DFFSSRX1 \output_o_reg[26]  ( .D(n246), .RSTB(s_expo3[3]), .SETB(n248), 
        .CLK(clk_i), .Q(output_o[26]) );
  DFFSSRX1 \output_o_reg[27]  ( .D(n246), .RSTB(s_expo3[4]), .SETB(n248), 
        .CLK(clk_i), .Q(output_o[27]) );
  DFFSSRX1 \output_o_reg[28]  ( .D(n246), .RSTB(s_expo3[5]), .SETB(n248), 
        .CLK(clk_i), .Q(output_o[28]) );
  DFFSSRX1 \output_o_reg[29]  ( .D(n246), .RSTB(s_expo3[6]), .SETB(n248), 
        .CLK(clk_i), .Q(output_o[29]) );
  DFFSSRX1 \output_o_reg[30]  ( .D(n246), .RSTB(s_expo3[7]), .SETB(n248), 
        .CLK(clk_i), .Q(output_o[30]) );
  DFFX1 \output_o_reg[9]  ( .D(s_output_o[9]), .CLK(clk_i), .Q(output_o[9]) );
  DFFX1 \output_o_reg[8]  ( .D(s_output_o[8]), .CLK(clk_i), .Q(output_o[8]) );
  DFFX1 \output_o_reg[7]  ( .D(s_output_o[7]), .CLK(clk_i), .Q(output_o[7]) );
  DFFX1 \output_o_reg[6]  ( .D(s_output_o[6]), .CLK(clk_i), .Q(output_o[6]) );
  DFFX1 \output_o_reg[5]  ( .D(s_output_o[5]), .CLK(clk_i), .Q(output_o[5]) );
  DFFX1 \output_o_reg[4]  ( .D(s_output_o[4]), .CLK(clk_i), .Q(output_o[4]) );
  DFFX1 \output_o_reg[3]  ( .D(s_output_o[3]), .CLK(clk_i), .Q(output_o[3]) );
  DFFX1 \output_o_reg[2]  ( .D(s_output_o[2]), .CLK(clk_i), .Q(output_o[2]) );
  DFFX1 \output_o_reg[21]  ( .D(s_output_o[21]), .CLK(clk_i), .Q(output_o[21])
         );
  DFFX1 \output_o_reg[20]  ( .D(s_output_o[20]), .CLK(clk_i), .Q(output_o[20])
         );
  DFFX1 \output_o_reg[1]  ( .D(s_output_o[1]), .CLK(clk_i), .Q(output_o[1]) );
  DFFX1 \output_o_reg[19]  ( .D(s_output_o[19]), .CLK(clk_i), .Q(output_o[19])
         );
  DFFX1 \output_o_reg[18]  ( .D(s_output_o[18]), .CLK(clk_i), .Q(output_o[18])
         );
  DFFX1 \output_o_reg[17]  ( .D(s_output_o[17]), .CLK(clk_i), .Q(output_o[17])
         );
  DFFX1 \output_o_reg[16]  ( .D(s_output_o[16]), .CLK(clk_i), .Q(output_o[16])
         );
  DFFX1 \output_o_reg[15]  ( .D(s_output_o[15]), .CLK(clk_i), .Q(output_o[15])
         );
  DFFX1 \output_o_reg[14]  ( .D(s_output_o[14]), .CLK(clk_i), .Q(output_o[14])
         );
  DFFX1 \output_o_reg[13]  ( .D(s_output_o[13]), .CLK(clk_i), .Q(output_o[13])
         );
  DFFX1 \output_o_reg[12]  ( .D(s_output_o[12]), .CLK(clk_i), .Q(output_o[12])
         );
  DFFX1 \output_o_reg[11]  ( .D(s_output_o[11]), .CLK(clk_i), .Q(output_o[11])
         );
  DFFX1 \output_o_reg[10]  ( .D(s_output_o[10]), .CLK(clk_i), .Q(output_o[10])
         );
  DFFX1 \output_o_reg[0]  ( .D(s_output_o[0]), .CLK(clk_i), .Q(output_o[0]) );
  DFFSSRX1 \output_o_reg[23]  ( .D(n246), .RSTB(s_expo3[0]), .SETB(n248), 
        .CLK(clk_i), .Q(output_o[23]) );
  post_norm_div_1_DW01_inc_0 add_216 ( .A(s_expo2), .SUM({N1099, N1098, N1097, 
        N1096, N1095, N1094, N1093, N1092, N1091}) );
  post_norm_div_1_DW01_inc_1 add_209 ( .A({1'b0, s_fraco1[26:3]}), .SUM({N1089, 
        N1088, N1087, N1086, N1085, N1084, N1083, N1082, N1081, N1080, N1079, 
        N1078, N1077, N1076, N1075, N1074, N1073, N1072, N1071, N1070, N1069, 
        N1068, N1067, N1066, N1065}) );
  NOR2X0 U3 ( .IN1(n35), .IN2(n383), .QN(s_output_o[9]) );
  NOR2X0 U4 ( .IN1(n35), .IN2(n384), .QN(s_output_o[8]) );
  NOR2X0 U5 ( .IN1(n35), .IN2(n385), .QN(s_output_o[7]) );
  NOR2X0 U6 ( .IN1(n35), .IN2(n386), .QN(s_output_o[6]) );
  NOR2X0 U7 ( .IN1(n35), .IN2(n387), .QN(s_output_o[5]) );
  NOR2X0 U14 ( .IN1(n35), .IN2(n388), .QN(s_output_o[4]) );
  NOR2X0 U15 ( .IN1(n35), .IN2(n389), .QN(s_output_o[3]) );
  OR2X1 U16 ( .IN1(n36), .IN2(s_sign_i), .Q(s_output_o[31]) );
  NOR2X0 U17 ( .IN1(n35), .IN2(n390), .QN(s_output_o[2]) );
  AO21X1 U18 ( .IN1(\s_fraco2[22] ), .IN2(n37), .IN3(n36), .Q(s_output_o[22])
         );
  AO222X1 U19 ( .IN1(n38), .IN2(n39), .IN3(n46), .IN4(n47), .IN5(n48), .IN6(
        n49), .Q(n36) );
  OR2X1 U20 ( .IN1(n50), .IN2(n48), .Q(n47) );
  INVX0 U21 ( .INP(n35), .ZN(n37) );
  NOR2X0 U22 ( .IN1(n35), .IN2(n391), .QN(s_output_o[21]) );
  NOR2X0 U23 ( .IN1(n35), .IN2(n392), .QN(s_output_o[20]) );
  NOR2X0 U24 ( .IN1(n35), .IN2(n393), .QN(s_output_o[1]) );
  NOR2X0 U25 ( .IN1(n35), .IN2(n394), .QN(s_output_o[19]) );
  NOR2X0 U26 ( .IN1(n35), .IN2(n395), .QN(s_output_o[18]) );
  NOR2X0 U27 ( .IN1(n35), .IN2(n396), .QN(s_output_o[17]) );
  NOR2X0 U28 ( .IN1(n35), .IN2(n397), .QN(s_output_o[16]) );
  NOR2X0 U29 ( .IN1(n35), .IN2(n398), .QN(s_output_o[15]) );
  NOR2X0 U30 ( .IN1(n35), .IN2(n399), .QN(s_output_o[14]) );
  NOR2X0 U31 ( .IN1(n35), .IN2(n400), .QN(s_output_o[13]) );
  NOR2X0 U32 ( .IN1(n35), .IN2(n401), .QN(s_output_o[12]) );
  NOR2X0 U33 ( .IN1(n35), .IN2(n402), .QN(s_output_o[11]) );
  NOR2X0 U34 ( .IN1(n35), .IN2(n403), .QN(s_output_o[10]) );
  NOR2X0 U35 ( .IN1(n35), .IN2(n404), .QN(s_output_o[0]) );
  NAND2X0 U36 ( .IN1(n248), .IN2(n246), .QN(n35) );
  NOR3X0 U37 ( .IN1(n48), .IN2(n46), .IN3(n51), .QN(n248) );
  INVX0 U38 ( .INP(n52), .ZN(n46) );
  INVX0 U39 ( .INP(n53), .ZN(n48) );
  AO22X1 U40 ( .IN1(n54), .IN2(n18), .IN3(s_qutnt_i[25]), .IN4(n55), .Q(N264)
         );
  AO222X1 U42 ( .IN1(s_qutnt_i[24]), .IN2(n55), .IN3(n56), .IN4(n57), .IN5(n54), .IN6(s_qutnt_i[25]), .Q(N263) );
  OAI222X1 U43 ( .IN1(n5), .IN2(n58), .IN3(n59), .IN4(n60), .IN5(n25), .IN6(
        n61), .QN(N262) );
  AO222X1 U44 ( .IN1(s_qutnt_i[22]), .IN2(n55), .IN3(n56), .IN4(n62), .IN5(
        s_qutnt_i[23]), .IN6(n54), .Q(N261) );
  AO222X1 U45 ( .IN1(s_qutnt_i[21]), .IN2(n55), .IN3(n63), .IN4(n64), .IN5(
        s_qutnt_i[22]), .IN6(n54), .Q(N260) );
  NOR2X0 U46 ( .IN1(s_shr1[3]), .IN2(n65), .QN(n63) );
  OAI222X1 U47 ( .IN1(n2), .IN2(n61), .IN3(n31), .IN4(n58), .IN5(n66), .IN6(
        n65), .QN(N259) );
  AO222X1 U48 ( .IN1(s_qutnt_i[20]), .IN2(n54), .IN3(s_qutnt_i[19]), .IN4(n55), 
        .IN5(n67), .IN6(n68), .Q(N258) );
  AO222X1 U49 ( .IN1(s_qutnt_i[19]), .IN2(n54), .IN3(s_qutnt_i[18]), .IN4(n55), 
        .IN5(n69), .IN6(n68), .Q(N257) );
  AO222X1 U50 ( .IN1(s_qutnt_i[18]), .IN2(n54), .IN3(s_qutnt_i[17]), .IN4(n55), 
        .IN5(n70), .IN6(n68), .Q(N256) );
  AO222X1 U51 ( .IN1(s_qutnt_i[17]), .IN2(n54), .IN3(s_qutnt_i[16]), .IN4(n55), 
        .IN5(n71), .IN6(n68), .Q(N255) );
  AO222X1 U52 ( .IN1(s_qutnt_i[16]), .IN2(n54), .IN3(s_qutnt_i[15]), .IN4(n55), 
        .IN5(n72), .IN6(n68), .Q(N254) );
  AO221X1 U53 ( .IN1(s_qutnt_i[14]), .IN2(n55), .IN3(s_qutnt_i[15]), .IN4(n54), 
        .IN5(n73), .Q(N253) );
  OAI222X1 U54 ( .IN1(n60), .IN2(n74), .IN3(n75), .IN4(n76), .IN5(n77), .IN6(
        n78), .QN(n73) );
  AO221X1 U55 ( .IN1(s_qutnt_i[13]), .IN2(n55), .IN3(s_qutnt_i[14]), .IN4(n54), 
        .IN5(n79), .Q(N252) );
  AO222X1 U56 ( .IN1(n80), .IN2(n64), .IN3(n81), .IN4(n56), .IN5(n82), .IN6(
        n83), .Q(n79) );
  INVX0 U57 ( .INP(n77), .ZN(n83) );
  INVX0 U58 ( .INP(n84), .ZN(n81) );
  NAND2X0 U59 ( .IN1(n85), .IN2(n86), .QN(N251) );
  OA222X1 U60 ( .IN1(n87), .IN2(n60), .IN3(n88), .IN4(n89), .IN5(n90), .IN6(
        n75), .Q(n86) );
  OA222X1 U61 ( .IN1(n61), .IN2(n11), .IN3(n91), .IN4(n77), .IN5(n58), .IN6(n3), .Q(n85) );
  NAND2X0 U62 ( .IN1(n92), .IN2(n93), .QN(N250) );
  OA222X1 U63 ( .IN1(n60), .IN2(n94), .IN3(n59), .IN4(n89), .IN5(n75), .IN6(
        n95), .Q(n93) );
  OA222X1 U64 ( .IN1(n61), .IN2(n3), .IN3(n77), .IN4(n96), .IN5(n58), .IN6(n8), 
        .Q(n92) );
  NAND2X0 U65 ( .IN1(n97), .IN2(n98), .QN(N249) );
  OA222X1 U66 ( .IN1(n60), .IN2(n99), .IN3(n76), .IN4(n89), .IN5(n78), .IN6(
        n75), .Q(n98) );
  OA222X1 U67 ( .IN1(n61), .IN2(n8), .IN3(n74), .IN4(n77), .IN5(n58), .IN6(n19), .Q(n97) );
  NAND4X0 U68 ( .IN1(n100), .IN2(n101), .IN3(n102), .IN4(n103), .QN(N248) );
  OA222X1 U69 ( .IN1(n61), .IN2(n19), .IN3(n77), .IN4(n84), .IN5(n58), .IN6(n1), .Q(n103) );
  OA22X1 U70 ( .IN1(n75), .IN2(n104), .IN3(n60), .IN4(n105), .Q(n102) );
  OR3X1 U71 ( .IN1(n106), .IN2(s_shr1[3]), .IN3(n107), .Q(n101) );
  NAND2X0 U72 ( .IN1(n108), .IN2(n109), .QN(n100) );
  NAND3X0 U73 ( .IN1(n110), .IN2(n111), .IN3(n112), .QN(N247) );
  OA222X1 U74 ( .IN1(n61), .IN2(n1), .IN3(n87), .IN4(n77), .IN5(n58), .IN6(n22), .Q(n112) );
  OA22X1 U75 ( .IN1(n88), .IN2(n113), .IN3(n90), .IN4(n89), .Q(n111) );
  OA22X1 U76 ( .IN1(n91), .IN2(n75), .IN3(n60), .IN4(n114), .Q(n110) );
  NAND3X0 U77 ( .IN1(n115), .IN2(n116), .IN3(n117), .QN(N246) );
  OA222X1 U78 ( .IN1(n61), .IN2(n22), .IN3(n77), .IN4(n94), .IN5(n58), .IN6(
        n10), .Q(n117) );
  OA22X1 U79 ( .IN1(n59), .IN2(n113), .IN3(n89), .IN4(n95), .Q(n116) );
  OA22X1 U80 ( .IN1(n75), .IN2(n96), .IN3(n60), .IN4(n118), .Q(n115) );
  NAND3X0 U81 ( .IN1(n119), .IN2(n120), .IN3(n121), .QN(N245) );
  OA222X1 U82 ( .IN1(n61), .IN2(n10), .IN3(n77), .IN4(n99), .IN5(n58), .IN6(
        n24), .Q(n121) );
  OA22X1 U83 ( .IN1(n76), .IN2(n113), .IN3(n78), .IN4(n89), .Q(n120) );
  INVX0 U84 ( .INP(n122), .ZN(n78) );
  NAND2X0 U85 ( .IN1(n123), .IN2(n124), .QN(n113) );
  INVX0 U86 ( .INP(n62), .ZN(n76) );
  OA22X1 U87 ( .IN1(n74), .IN2(n75), .IN3(n60), .IN4(n125), .Q(n119) );
  NAND4X0 U88 ( .IN1(n126), .IN2(n127), .IN3(n128), .IN4(n129), .QN(N244) );
  OA222X1 U89 ( .IN1(n61), .IN2(n24), .IN3(n77), .IN4(n105), .IN5(n58), .IN6(
        n14), .Q(n129) );
  OA22X1 U90 ( .IN1(n75), .IN2(n84), .IN3(n60), .IN4(n130), .Q(n128) );
  NAND3X0 U91 ( .IN1(n64), .IN2(n21), .IN3(n123), .QN(n127) );
  MUX21X1 U92 ( .IN1(n131), .IN2(n108), .S(n6), .Q(n64) );
  INVX0 U93 ( .INP(n132), .ZN(n108) );
  NOR2X0 U94 ( .IN1(\sub_1_root_sub_150_2/CI ), .IN2(n133), .QN(n131) );
  NAND2X0 U95 ( .IN1(n109), .IN2(n82), .QN(n126) );
  INVX0 U96 ( .INP(n104), .ZN(n82) );
  INVX0 U97 ( .INP(n89), .ZN(n109) );
  NAND3X0 U98 ( .IN1(n134), .IN2(n135), .IN3(n136), .QN(N243) );
  OA222X1 U99 ( .IN1(n61), .IN2(n14), .IN3(n77), .IN4(n114), .IN5(n58), .IN6(
        n28), .Q(n136) );
  OA22X1 U100 ( .IN1(n91), .IN2(n89), .IN3(n87), .IN4(n75), .Q(n135) );
  OA22X1 U101 ( .IN1(n66), .IN2(n106), .IN3(n137), .IN4(n60), .Q(n134) );
  NAND2X0 U102 ( .IN1(n138), .IN2(n21), .QN(n66) );
  MUX21X1 U103 ( .IN1(n57), .IN2(n139), .S(n6), .Q(n138) );
  INVX0 U104 ( .INP(n88), .ZN(n57) );
  NAND3X0 U105 ( .IN1(n140), .IN2(n141), .IN3(n142), .QN(N242) );
  OA222X1 U106 ( .IN1(n61), .IN2(n28), .IN3(n77), .IN4(n118), .IN5(n58), .IN6(
        n12), .Q(n142) );
  NAND2X0 U107 ( .IN1(n143), .IN2(n68), .QN(n77) );
  INVX0 U108 ( .INP(n54), .ZN(n61) );
  OA22X1 U109 ( .IN1(n89), .IN2(n96), .IN3(n75), .IN4(n94), .Q(n141) );
  NAND2X0 U110 ( .IN1(n80), .IN2(n6), .QN(n75) );
  NAND2X0 U111 ( .IN1(n80), .IN2(s_shr1[2]), .QN(n89) );
  NOR2X0 U112 ( .IN1(n21), .IN2(n65), .QN(n80) );
  AOI22X1 U113 ( .IN1(n67), .IN2(n123), .IN3(n144), .IN4(n56), .QN(n140) );
  INVX0 U114 ( .INP(n60), .ZN(n56) );
  NAND2X0 U115 ( .IN1(n68), .IN2(n124), .QN(n60) );
  INVX0 U116 ( .INP(n65), .ZN(n68) );
  NAND2X0 U117 ( .IN1(n145), .IN2(n20), .QN(n65) );
  INVX0 U118 ( .INP(n106), .ZN(n123) );
  NAND2X0 U119 ( .IN1(s_shr1[4]), .IN2(n145), .QN(n106) );
  NOR2X0 U120 ( .IN1(n146), .IN2(s_shr1[3]), .QN(n67) );
  MUX21X1 U121 ( .IN1(n59), .IN2(n95), .S(n6), .Q(n146) );
  AO222X1 U122 ( .IN1(s_qutnt_i[2]), .IN2(n55), .IN3(n147), .IN4(n148), .IN5(
        s_qutnt_i[3]), .IN6(n54), .Q(N241) );
  MUX21X1 U123 ( .IN1(n69), .IN2(n149), .S(n20), .Q(n148) );
  AOI222X1 U124 ( .IN1(n74), .IN2(n150), .IN3(n99), .IN4(n151), .IN5(n125), 
        .IN6(n143), .QN(n149) );
  AO221X1 U125 ( .IN1(n152), .IN2(n22), .IN3(n153), .IN4(n1), .IN5(n154), .Q(
        n125) );
  AO22X1 U126 ( .IN1(n155), .IN2(n10), .IN3(n156), .IN4(n19), .Q(n154) );
  AO221X1 U127 ( .IN1(n152), .IN2(n3), .IN3(n153), .IN4(n11), .IN5(n157), .Q(
        n99) );
  AO22X1 U128 ( .IN1(n155), .IN2(n8), .IN3(n156), .IN4(n29), .Q(n157) );
  AOI221X1 U129 ( .IN1(s_qutnt_i[16]), .IN2(n152), .IN3(s_qutnt_i[17]), .IN4(
        n153), .IN5(n158), .QN(n74) );
  AO22X1 U130 ( .IN1(s_qutnt_i[15]), .IN2(n155), .IN3(s_qutnt_i[18]), .IN4(
        n156), .Q(n158) );
  AND2X1 U131 ( .IN1(n159), .IN2(n21), .Q(n69) );
  MUX21X1 U132 ( .IN1(n62), .IN2(n122), .S(n6), .Q(n159) );
  AO221X1 U133 ( .IN1(s_qutnt_i[20]), .IN2(n152), .IN3(s_qutnt_i[21]), .IN4(
        n153), .IN5(n160), .Q(n122) );
  AO22X1 U134 ( .IN1(s_qutnt_i[19]), .IN2(n155), .IN3(s_qutnt_i[22]), .IN4(
        n156), .Q(n160) );
  AO221X1 U135 ( .IN1(n152), .IN2(s_qutnt_i[24]), .IN3(n153), .IN4(
        s_qutnt_i[25]), .IN5(n161), .Q(n62) );
  AO22X1 U136 ( .IN1(s_qutnt_i[23]), .IN2(n155), .IN3(n156), .IN4(n18), .Q(
        n161) );
  OA21X1 U137 ( .IN1(n162), .IN2(n163), .IN3(n145), .Q(n147) );
  OA222X1 U138 ( .IN1(s_qutnt_i[6]), .IN2(n164), .IN3(s_qutnt_i[4]), .IN4(n165), .IN5(s_qutnt_i[5]), .IN6(n166), .Q(n162) );
  AO222X1 U139 ( .IN1(s_qutnt_i[1]), .IN2(n55), .IN3(n167), .IN4(n168), .IN5(
        s_qutnt_i[2]), .IN6(n54), .Q(N240) );
  MUX21X1 U140 ( .IN1(n70), .IN2(n169), .S(n20), .Q(n168) );
  AOI222X1 U141 ( .IN1(n84), .IN2(n150), .IN3(n105), .IN4(n151), .IN5(n130), 
        .IN6(n143), .QN(n169) );
  AO221X1 U142 ( .IN1(n152), .IN2(n10), .IN3(n153), .IN4(n22), .IN5(n170), .Q(
        n130) );
  AO22X1 U143 ( .IN1(n155), .IN2(n24), .IN3(n156), .IN4(n1), .Q(n170) );
  AO221X1 U144 ( .IN1(n152), .IN2(n8), .IN3(n153), .IN4(n3), .IN5(n171), .Q(
        n105) );
  AO22X1 U145 ( .IN1(n155), .IN2(n19), .IN3(n156), .IN4(n11), .Q(n171) );
  AO221X1 U146 ( .IN1(n152), .IN2(n23), .IN3(n153), .IN4(n4), .IN5(n172), .Q(
        n84) );
  AO22X1 U147 ( .IN1(n155), .IN2(n29), .IN3(n156), .IN4(n15), .Q(n172) );
  AOI222X1 U148 ( .IN1(n124), .IN2(n104), .IN3(n143), .IN4(n132), .IN5(
        s_shr1[3]), .IN6(n107), .QN(n70) );
  NAND3X0 U149 ( .IN1(n6), .IN2(n18), .IN3(n155), .QN(n107) );
  AO221X1 U150 ( .IN1(n152), .IN2(n5), .IN3(n153), .IN4(n25), .IN5(n173), .Q(
        n132) );
  AO22X1 U151 ( .IN1(n155), .IN2(n13), .IN3(n156), .IN4(n30), .Q(n173) );
  AO221X1 U152 ( .IN1(n152), .IN2(n16), .IN3(n153), .IN4(n31), .IN5(n174), .Q(
        n104) );
  AO22X1 U153 ( .IN1(n155), .IN2(n27), .IN3(n156), .IN4(n2), .Q(n174) );
  OA21X1 U154 ( .IN1(n175), .IN2(n163), .IN3(n145), .Q(n167) );
  OA222X1 U155 ( .IN1(s_qutnt_i[5]), .IN2(n164), .IN3(s_qutnt_i[3]), .IN4(n165), .IN5(s_qutnt_i[4]), .IN6(n166), .Q(n175) );
  AO222X1 U156 ( .IN1(s_qutnt_i[0]), .IN2(n55), .IN3(n176), .IN4(n177), .IN5(
        s_qutnt_i[1]), .IN6(n54), .Q(N239) );
  MUX21X1 U157 ( .IN1(n71), .IN2(n178), .S(n20), .Q(n177) );
  AOI222X1 U158 ( .IN1(n150), .IN2(n87), .IN3(n114), .IN4(n151), .IN5(n143), 
        .IN6(n137), .QN(n178) );
  AOI221X1 U159 ( .IN1(s_qutnt_i[6]), .IN2(n152), .IN3(s_qutnt_i[7]), .IN4(
        n153), .IN5(n179), .QN(n137) );
  AO22X1 U160 ( .IN1(s_qutnt_i[5]), .IN2(n155), .IN3(s_qutnt_i[8]), .IN4(n156), 
        .Q(n179) );
  AO221X1 U161 ( .IN1(n152), .IN2(n19), .IN3(n153), .IN4(n8), .IN5(n180), .Q(
        n114) );
  AO22X1 U162 ( .IN1(n155), .IN2(n1), .IN3(n156), .IN4(n3), .Q(n180) );
  AOI221X1 U163 ( .IN1(s_qutnt_i[14]), .IN2(n152), .IN3(s_qutnt_i[15]), .IN4(
        n153), .IN5(n181), .QN(n87) );
  AO22X1 U164 ( .IN1(s_qutnt_i[13]), .IN2(n155), .IN3(s_qutnt_i[16]), .IN4(
        n156), .Q(n181) );
  AOI221X1 U165 ( .IN1(n90), .IN2(s_shr1[2]), .IN3(s_shr1[3]), .IN4(n88), 
        .IN5(n182), .QN(n71) );
  AO21X1 U166 ( .IN1(n91), .IN2(n124), .IN3(n150), .Q(n182) );
  AOI221X1 U167 ( .IN1(s_qutnt_i[18]), .IN2(n152), .IN3(s_qutnt_i[19]), .IN4(
        n153), .IN5(n183), .QN(n91) );
  AO22X1 U168 ( .IN1(s_qutnt_i[17]), .IN2(n155), .IN3(s_qutnt_i[20]), .IN4(
        n156), .Q(n183) );
  NAND2X0 U169 ( .IN1(n184), .IN2(n26), .QN(n88) );
  MUX21X1 U170 ( .IN1(n18), .IN2(s_qutnt_i[25]), .S(n9), .Q(n184) );
  INVX0 U171 ( .INP(n139), .ZN(n90) );
  AO221X1 U172 ( .IN1(s_qutnt_i[22]), .IN2(n152), .IN3(n153), .IN4(
        s_qutnt_i[23]), .IN5(n185), .Q(n139) );
  AO22X1 U173 ( .IN1(s_qutnt_i[21]), .IN2(n155), .IN3(n156), .IN4(
        s_qutnt_i[24]), .Q(n185) );
  OA21X1 U174 ( .IN1(n186), .IN2(n163), .IN3(n145), .Q(n176) );
  OA222X1 U175 ( .IN1(s_qutnt_i[4]), .IN2(n164), .IN3(s_qutnt_i[2]), .IN4(n165), .IN5(s_qutnt_i[3]), .IN6(n166), .Q(n186) );
  INVX0 U176 ( .INP(n58), .ZN(n55) );
  NAND2X0 U177 ( .IN1(\s_shl1[0] ), .IN2(n187), .QN(n58) );
  AO22X1 U178 ( .IN1(s_qutnt_i[0]), .IN2(n54), .IN3(n188), .IN4(n189), .Q(N238) );
  MUX21X1 U179 ( .IN1(n72), .IN2(n190), .S(n20), .Q(n189) );
  AOI222X1 U180 ( .IN1(n94), .IN2(n150), .IN3(n118), .IN4(n151), .IN5(n143), 
        .IN6(n191), .QN(n190) );
  INVX0 U181 ( .INP(n144), .ZN(n191) );
  AO221X1 U182 ( .IN1(s_qutnt_i[5]), .IN2(n152), .IN3(s_qutnt_i[6]), .IN4(n153), .IN5(n192), .Q(n144) );
  AO22X1 U183 ( .IN1(s_qutnt_i[4]), .IN2(n155), .IN3(s_qutnt_i[7]), .IN4(n156), 
        .Q(n192) );
  NOR2X0 U184 ( .IN1(n6), .IN2(s_shr1[3]), .QN(n143) );
  NOR2X0 U185 ( .IN1(n21), .IN2(s_shr1[2]), .QN(n151) );
  AO221X1 U186 ( .IN1(n152), .IN2(n1), .IN3(n153), .IN4(n19), .IN5(n193), .Q(
        n118) );
  AO22X1 U187 ( .IN1(n155), .IN2(n22), .IN3(n156), .IN4(n8), .Q(n193) );
  AO221X1 U188 ( .IN1(n152), .IN2(n11), .IN3(n153), .IN4(n29), .IN5(n194), .Q(
        n94) );
  AO22X1 U189 ( .IN1(n155), .IN2(n3), .IN3(n156), .IN4(n23), .Q(n194) );
  AOI221X1 U190 ( .IN1(s_shr1[2]), .IN2(n95), .IN3(s_shr1[3]), .IN4(n59), 
        .IN5(n195), .QN(n72) );
  AO21X1 U191 ( .IN1(n124), .IN2(n96), .IN3(n150), .Q(n195) );
  NOR2X0 U192 ( .IN1(n21), .IN2(n6), .QN(n150) );
  AO221X1 U193 ( .IN1(n152), .IN2(n15), .IN3(n153), .IN4(n27), .IN5(n196), .Q(
        n96) );
  AO22X1 U194 ( .IN1(n155), .IN2(n4), .IN3(n156), .IN4(n16), .Q(n196) );
  AO221X1 U195 ( .IN1(s_shr1[0]), .IN2(n30), .IN3(s_shr1[1]), .IN4(
        \sub_1_root_sub_150_2/CI ), .IN5(n197), .Q(n59) );
  AO21X1 U196 ( .IN1(n155), .IN2(n25), .IN3(n156), .Q(n197) );
  AO221X1 U197 ( .IN1(n152), .IN2(n2), .IN3(n153), .IN4(n13), .IN5(n198), .Q(
        n95) );
  AO22X1 U198 ( .IN1(n155), .IN2(n31), .IN3(n156), .IN4(n5), .Q(n198) );
  OA21X1 U199 ( .IN1(n199), .IN2(n163), .IN3(n145), .Q(n188) );
  NOR2X0 U200 ( .IN1(n187), .IN2(s_shr1[5]), .QN(n145) );
  OA222X1 U201 ( .IN1(s_qutnt_i[3]), .IN2(n164), .IN3(s_qutnt_i[1]), .IN4(n165), .IN5(s_qutnt_i[2]), .IN6(n166), .Q(n199) );
  INVX0 U202 ( .INP(n153), .ZN(n166) );
  NOR2X0 U203 ( .IN1(n26), .IN2(s_shr1[0]), .QN(n153) );
  INVX0 U204 ( .INP(n152), .ZN(n165) );
  NOR2X0 U205 ( .IN1(n9), .IN2(s_shr1[1]), .QN(n152) );
  INVX0 U206 ( .INP(n156), .ZN(n164) );
  NOR2X0 U207 ( .IN1(n26), .IN2(n9), .QN(n156) );
  NOR2X0 U208 ( .IN1(n200), .IN2(\s_shl1[0] ), .QN(n54) );
  INVX0 U209 ( .INP(n187), .ZN(n200) );
  NOR3X0 U210 ( .IN1(n163), .IN2(s_shr1[5]), .IN3(n133), .QN(n187) );
  INVX0 U211 ( .INP(n155), .ZN(n133) );
  NOR2X0 U212 ( .IN1(s_shr1[0]), .IN2(s_shr1[1]), .QN(n155) );
  NAND2X0 U213 ( .IN1(n124), .IN2(n20), .QN(n163) );
  NOR2X0 U214 ( .IN1(s_shr1[2]), .IN2(s_shr1[3]), .QN(n124) );
  AO21X1 U215 ( .IN1(n201), .IN2(n202), .IN3(n203), .Q(N177) );
  XOR2X1 U216 ( .IN1(n204), .IN2(n205), .Q(n201) );
  AO21X1 U217 ( .IN1(n206), .IN2(n202), .IN3(n203), .Q(N176) );
  XNOR2X1 U218 ( .IN1(n207), .IN2(n208), .Q(n206) );
  AO21X1 U219 ( .IN1(n209), .IN2(n202), .IN3(n203), .Q(N175) );
  XNOR2X1 U220 ( .IN1(n210), .IN2(n211), .Q(n209) );
  AO21X1 U221 ( .IN1(n212), .IN2(n202), .IN3(n203), .Q(N174) );
  XNOR2X1 U222 ( .IN1(n213), .IN2(s_exp_10b[2]), .Q(n212) );
  AO21X1 U223 ( .IN1(n214), .IN2(n202), .IN3(n203), .Q(N173) );
  XOR2X1 U224 ( .IN1(s_exp_10b[1]), .IN2(n215), .Q(n214) );
  AO21X1 U225 ( .IN1(n216), .IN2(n202), .IN3(n203), .Q(N172) );
  AND2X1 U226 ( .IN1(n217), .IN2(n202), .Q(n203) );
  XNOR2X1 U227 ( .IN1(s_exp_10b[6]), .IN2(n218), .Q(n217) );
  NOR2X0 U228 ( .IN1(n204), .IN2(n205), .QN(n218) );
  NAND2X0 U229 ( .IN1(n207), .IN2(n219), .QN(n205) );
  NOR2X0 U230 ( .IN1(n211), .IN2(s_exp_10b[3]), .QN(n207) );
  NAND2X0 U231 ( .IN1(n213), .IN2(n220), .QN(n211) );
  NOR2X0 U232 ( .IN1(n215), .IN2(s_exp_10b[1]), .QN(n213) );
  AO21X1 U233 ( .IN1(n221), .IN2(n18), .IN3(n215), .Q(n216) );
  NOR2X0 U234 ( .IN1(n18), .IN2(n221), .QN(n215) );
  AND2X1 U235 ( .IN1(n204), .IN2(n263), .Q(N167) );
  NOR2X0 U236 ( .IN1(n219), .IN2(n202), .QN(N166) );
  INVX0 U237 ( .INP(n208), .ZN(n219) );
  NAND2X0 U238 ( .IN1(n263), .IN2(n221), .QN(N162) );
  INVX0 U239 ( .INP(n222), .ZN(n221) );
  INVX0 U240 ( .INP(n202), .ZN(n263) );
  NOR3X0 U241 ( .IN1(n202), .IN2(s_exp_10b[8]), .IN3(n18), .QN(N161) );
  NAND2X0 U242 ( .IN1(n223), .IN2(n224), .QN(n202) );
  NAND4X0 U243 ( .IN1(n220), .IN2(n210), .IN3(n225), .IN4(n226), .QN(n224) );
  NOR4X0 U244 ( .IN1(s_exp_10b[1]), .IN2(n208), .IN3(n204), .IN4(n222), .QN(
        n226) );
  AO21X1 U245 ( .IN1(s_exp_10_i[0]), .IN2(n18), .IN3(n227), .Q(n222) );
  AO21X1 U246 ( .IN1(s_exp_10_i[5]), .IN2(n228), .IN3(n229), .Q(n204) );
  AO21X1 U247 ( .IN1(s_exp_10_i[4]), .IN2(n230), .IN3(n231), .Q(n208) );
  AO21X1 U248 ( .IN1(s_exp_10_i[1]), .IN2(n232), .IN3(n233), .Q(s_exp_10b[1])
         );
  NOR3X0 U249 ( .IN1(s_exp_10b[7]), .IN2(s_exp_10b[8]), .IN3(s_exp_10b[6]), 
        .QN(n225) );
  AO21X1 U250 ( .IN1(s_exp_10_i[6]), .IN2(n234), .IN3(n235), .Q(s_exp_10b[6])
         );
  AO21X1 U251 ( .IN1(s_exp_10_i[8]), .IN2(n236), .IN3(n237), .Q(s_exp_10b[8])
         );
  AO21X1 U252 ( .IN1(s_exp_10_i[7]), .IN2(n238), .IN3(n239), .Q(s_exp_10b[7])
         );
  INVX0 U253 ( .INP(s_exp_10b[3]), .ZN(n210) );
  AO21X1 U254 ( .IN1(s_exp_10_i[3]), .IN2(n240), .IN3(n241), .Q(s_exp_10b[3])
         );
  INVX0 U255 ( .INP(s_exp_10b[2]), .ZN(n220) );
  AO21X1 U256 ( .IN1(s_exp_10_i[2]), .IN2(n242), .IN3(n243), .Q(s_exp_10b[2])
         );
  XNOR2X1 U257 ( .IN1(n237), .IN2(s_exp_10_i[9]), .Q(n223) );
  NOR2X0 U258 ( .IN1(n236), .IN2(s_exp_10_i[8]), .QN(n237) );
  INVX0 U259 ( .INP(n239), .ZN(n236) );
  NOR2X0 U260 ( .IN1(n238), .IN2(s_exp_10_i[7]), .QN(n239) );
  INVX0 U261 ( .INP(n235), .ZN(n238) );
  NOR2X0 U262 ( .IN1(n234), .IN2(s_exp_10_i[6]), .QN(n235) );
  INVX0 U263 ( .INP(n229), .ZN(n234) );
  NOR2X0 U264 ( .IN1(n228), .IN2(s_exp_10_i[5]), .QN(n229) );
  INVX0 U265 ( .INP(n231), .ZN(n228) );
  NOR2X0 U266 ( .IN1(n230), .IN2(s_exp_10_i[4]), .QN(n231) );
  INVX0 U267 ( .INP(n241), .ZN(n230) );
  NOR2X0 U268 ( .IN1(n240), .IN2(s_exp_10_i[3]), .QN(n241) );
  INVX0 U269 ( .INP(n243), .ZN(n240) );
  NOR2X0 U270 ( .IN1(n242), .IN2(s_exp_10_i[2]), .QN(n243) );
  INVX0 U271 ( .INP(n233), .ZN(n242) );
  NOR2X0 U272 ( .IN1(n232), .IN2(s_exp_10_i[1]), .QN(n233) );
  INVX0 U273 ( .INP(n227), .ZN(n232) );
  NOR2X0 U274 ( .IN1(n18), .IN2(s_exp_10_i[0]), .QN(n227) );
  NOR2X0 U275 ( .IN1(n244), .IN2(n245), .QN(N1386) );
  INVX0 U276 ( .INP(n246), .ZN(n245) );
  NOR2X0 U277 ( .IN1(n39), .IN2(n38), .QN(n246) );
  INVX0 U278 ( .INP(n247), .ZN(n38) );
  AND4X1 U279 ( .IN1(n405), .IN2(n406), .IN3(n249), .IN4(n250), .Q(n39) );
  NOR4X0 U280 ( .IN1(s_opa_i[25]), .IN2(s_opa_i[24]), .IN3(s_opa_i[23]), .IN4(
        n50), .QN(n250) );
  NAND4X0 U281 ( .IN1(n251), .IN2(n252), .IN3(n253), .IN4(n254), .QN(n50) );
  NOR4X0 U282 ( .IN1(n255), .IN2(s_opa_i[4]), .IN3(s_opa_i[6]), .IN4(
        s_opa_i[5]), .QN(n254) );
  NAND3X0 U283 ( .IN1(n408), .IN2(n409), .IN3(n407), .QN(n255) );
  NOR4X0 U284 ( .IN1(n256), .IN2(s_opa_i[1]), .IN3(s_opa_i[21]), .IN4(
        s_opa_i[20]), .QN(n253) );
  NAND3X0 U285 ( .IN1(n411), .IN2(n412), .IN3(n410), .QN(n256) );
  NOR4X0 U286 ( .IN1(n257), .IN2(s_opa_i[14]), .IN3(s_opa_i[16]), .IN4(
        s_opa_i[15]), .QN(n252) );
  NAND3X0 U287 ( .IN1(n414), .IN2(n415), .IN3(n413), .QN(n257) );
  NOR4X0 U288 ( .IN1(n258), .IN2(s_opa_i[11]), .IN3(s_opa_i[13]), .IN4(
        s_opa_i[12]), .QN(n251) );
  NAND2X0 U289 ( .IN1(n416), .IN2(n417), .QN(n258) );
  NOR3X0 U290 ( .IN1(s_opa_i[28]), .IN2(s_opa_i[30]), .IN3(s_opa_i[29]), .QN(
        n249) );
  NOR4X0 U291 ( .IN1(n259), .IN2(n260), .IN3(s_shr1[5]), .IN4(n261), .QN(n244)
         );
  OA221X1 U292 ( .IN1(s_shr1[3]), .IN2(n262), .IN3(s_shr1[4]), .IN4(n264), 
        .IN5(n265), .Q(n261) );
  AO222X1 U293 ( .IN1(n266), .IN2(n267), .IN3(s_shr1[2]), .IN4(n268), .IN5(
        n262), .IN6(s_shr1[3]), .Q(n265) );
  OR2X1 U294 ( .IN1(n267), .IN2(n266), .Q(n268) );
  AO22X1 U295 ( .IN1(n269), .IN2(n270), .IN3(s_shr1[1]), .IN4(n271), .Q(n267)
         );
  OR2X1 U296 ( .IN1(n270), .IN2(n269), .Q(n271) );
  MUX21X1 U297 ( .IN1(n272), .IN2(n273), .S(n274), .Q(n270) );
  OR2X1 U298 ( .IN1(s_qutnt_i[0]), .IN2(s_qutnt_i[1]), .Q(n273) );
  AND4X1 U299 ( .IN1(n275), .IN2(n276), .IN3(n277), .IN4(n12), .Q(n272) );
  NAND2X0 U300 ( .IN1(n278), .IN2(n279), .QN(n275) );
  OR4X1 U301 ( .IN1(n280), .IN2(n281), .IN3(n282), .IN4(n283), .Q(n279) );
  AND2X1 U302 ( .IN1(n284), .IN2(n285), .Q(n280) );
  NAND4X0 U303 ( .IN1(n286), .IN2(n287), .IN3(n288), .IN4(n23), .QN(n285) );
  NAND3X0 U304 ( .IN1(n4), .IN2(n15), .IN3(n289), .QN(n288) );
  NAND2X0 U305 ( .IN1(n290), .IN2(n291), .QN(n286) );
  NAND3X0 U306 ( .IN1(n292), .IN2(n293), .IN3(n294), .QN(n291) );
  NAND2X0 U307 ( .IN1(n295), .IN2(n30), .QN(n294) );
  AOI221X1 U308 ( .IN1(n296), .IN2(n297), .IN3(s_qutnt_i[1]), .IN4(n34), .IN5(
        n9), .QN(n269) );
  NAND4X0 U309 ( .IN1(n298), .IN2(n299), .IN3(n277), .IN4(n12), .QN(n297) );
  NAND2X0 U310 ( .IN1(n278), .IN2(n300), .QN(n298) );
  NAND4X0 U311 ( .IN1(n301), .IN2(n302), .IN3(n303), .IN4(n1), .QN(n300) );
  NAND2X0 U312 ( .IN1(n284), .IN2(n304), .QN(n301) );
  AO221X1 U313 ( .IN1(s_qutnt_i[17]), .IN2(n4), .IN3(n290), .IN4(n305), .IN5(
        n306), .Q(n304) );
  NAND2X0 U314 ( .IN1(n287), .IN2(n23), .QN(n306) );
  OR2X1 U315 ( .IN1(n289), .IN2(n16), .Q(n287) );
  NAND4X0 U316 ( .IN1(n307), .IN2(n308), .IN3(n292), .IN4(n2), .QN(n305) );
  NAND3X0 U317 ( .IN1(n2), .IN2(n13), .IN3(n309), .QN(n292) );
  NAND3X0 U318 ( .IN1(\sub_1_root_sub_150_2/CI ), .IN2(n25), .IN3(n310), .QN(
        n308) );
  NAND2X0 U319 ( .IN1(n295), .IN2(s_qutnt_i[25]), .QN(n307) );
  NOR2X0 U320 ( .IN1(n309), .IN2(s_qutnt_i[24]), .QN(n295) );
  AND4X1 U321 ( .IN1(n276), .IN2(n277), .IN3(n299), .IN4(n311), .Q(n266) );
  OA22X1 U322 ( .IN1(n274), .IN2(n312), .IN3(n313), .IN4(n314), .Q(n311) );
  NOR4X0 U323 ( .IN1(n315), .IN2(n316), .IN3(n281), .IN4(n317), .QN(n313) );
  OA21X1 U324 ( .IN1(s_qutnt_i[15]), .IN2(n318), .IN3(n284), .Q(n317) );
  MUX21X1 U325 ( .IN1(n319), .IN2(n320), .S(n290), .Q(n318) );
  NAND3X0 U326 ( .IN1(n2), .IN2(n5), .IN3(n293), .QN(n320) );
  NAND2X0 U327 ( .IN1(s_qutnt_i[22]), .IN2(n2), .QN(n293) );
  NOR2X0 U328 ( .IN1(s_qutnt_i[19]), .IN2(n289), .QN(n319) );
  NAND2X0 U329 ( .IN1(n321), .IN2(n12), .QN(n312) );
  INVX0 U330 ( .INP(n296), .ZN(n274) );
  NAND2X0 U331 ( .IN1(n322), .IN2(s_qutnt_i[5]), .QN(n299) );
  NAND2X0 U332 ( .IN1(n323), .IN2(s_qutnt_i[7]), .QN(n277) );
  NAND3X0 U333 ( .IN1(n324), .IN2(n14), .IN3(n322), .QN(n276) );
  MUX21X1 U334 ( .IN1(n325), .IN2(n326), .S(n314), .Q(n262) );
  NAND2X0 U335 ( .IN1(n323), .IN2(n10), .QN(n326) );
  NOR4X0 U336 ( .IN1(n327), .IN2(n328), .IN3(n283), .IN4(n282), .QN(n325) );
  INVX0 U337 ( .INP(n302), .ZN(n282) );
  NAND3X0 U338 ( .IN1(n19), .IN2(n1), .IN3(n329), .QN(n302) );
  NOR2X0 U339 ( .IN1(n19), .IN2(s_qutnt_i[9]), .QN(n283) );
  AO21X1 U340 ( .IN1(n310), .IN2(n290), .IN3(n281), .Q(n328) );
  NOR2X0 U341 ( .IN1(n330), .IN2(n284), .QN(n281) );
  NOR3X0 U342 ( .IN1(s_qutnt_i[19]), .IN2(s_qutnt_i[20]), .IN3(n289), .QN(n290) );
  NAND3X0 U343 ( .IN1(n15), .IN2(n27), .IN3(n4), .QN(n289) );
  INVX0 U344 ( .INP(n309), .ZN(n310) );
  NAND3X0 U345 ( .IN1(n13), .IN2(n5), .IN3(n2), .QN(n309) );
  OR4X1 U346 ( .IN1(n316), .IN2(n315), .IN3(s_qutnt_i[15]), .IN4(s_qutnt_i[9]), 
        .Q(n327) );
  NOR2X0 U347 ( .IN1(n329), .IN2(n3), .QN(n315) );
  INVX0 U348 ( .INP(n303), .ZN(n316) );
  NAND3X0 U349 ( .IN1(n330), .IN2(n3), .IN3(n331), .QN(n303) );
  AND2X1 U350 ( .IN1(n264), .IN2(s_shr1[4]), .Q(n260) );
  NAND3X0 U351 ( .IN1(n284), .IN2(n23), .IN3(n278), .QN(n264) );
  INVX0 U352 ( .INP(n314), .ZN(n278) );
  NAND3X0 U353 ( .IN1(n10), .IN2(n22), .IN3(n323), .QN(n314) );
  INVX0 U354 ( .INP(n324), .ZN(n323) );
  NAND3X0 U355 ( .IN1(n14), .IN2(n24), .IN3(n322), .QN(n324) );
  INVX0 U356 ( .INP(n321), .ZN(n322) );
  NAND3X0 U357 ( .IN1(n12), .IN2(n28), .IN3(n296), .QN(n321) );
  NOR3X0 U358 ( .IN1(s_qutnt_i[1]), .IN2(s_qutnt_i[2]), .IN3(s_qutnt_i[0]), 
        .QN(n296) );
  NOR2X0 U359 ( .IN1(n330), .IN2(s_qutnt_i[14]), .QN(n284) );
  NAND3X0 U360 ( .IN1(n3), .IN2(n11), .IN3(n331), .QN(n330) );
  INVX0 U361 ( .INP(n329), .ZN(n331) );
  NAND3X0 U362 ( .IN1(n8), .IN2(n1), .IN3(n19), .QN(n329) );
  NAND2X0 U363 ( .IN1(n332), .IN2(n333), .QN(n259) );
  NAND3X0 U364 ( .IN1(n53), .IN2(n52), .IN3(n51), .QN(n333) );
  NAND3X0 U365 ( .IN1(n247), .IN2(n430), .IN3(n334), .QN(n51) );
  NAND4X0 U366 ( .IN1(s_expo3[7]), .IN2(s_expo3[6]), .IN3(n335), .IN4(n336), 
        .QN(n334) );
  NOR4X0 U367 ( .IN1(n433), .IN2(n434), .IN3(n435), .IN4(n436), .QN(n336) );
  NOR2X0 U368 ( .IN1(n431), .IN2(n432), .QN(n335) );
  NAND4X0 U369 ( .IN1(n437), .IN2(n438), .IN3(n337), .IN4(n338), .QN(n247) );
  NOR4X0 U370 ( .IN1(s_opb_i[25]), .IN2(s_opb_i[24]), .IN3(s_opb_i[23]), .IN4(
        n49), .QN(n338) );
  NAND4X0 U371 ( .IN1(n339), .IN2(n340), .IN3(n341), .IN4(n342), .QN(n49) );
  NOR4X0 U372 ( .IN1(n343), .IN2(s_opb_i[4]), .IN3(s_opb_i[6]), .IN4(
        s_opb_i[5]), .QN(n342) );
  NAND3X0 U373 ( .IN1(n440), .IN2(n441), .IN3(n439), .QN(n343) );
  NOR4X0 U374 ( .IN1(n344), .IN2(s_opb_i[1]), .IN3(s_opb_i[21]), .IN4(
        s_opb_i[20]), .QN(n341) );
  NAND3X0 U375 ( .IN1(n443), .IN2(n444), .IN3(n442), .QN(n344) );
  NOR4X0 U376 ( .IN1(n345), .IN2(s_opb_i[14]), .IN3(s_opb_i[16]), .IN4(
        s_opb_i[15]), .QN(n340) );
  NAND3X0 U377 ( .IN1(n446), .IN2(n447), .IN3(n445), .QN(n345) );
  NOR4X0 U378 ( .IN1(n346), .IN2(s_opb_i[11]), .IN3(s_opb_i[13]), .IN4(
        s_opb_i[12]), .QN(n339) );
  NAND2X0 U379 ( .IN1(n448), .IN2(n449), .QN(n346) );
  NOR3X0 U380 ( .IN1(s_opb_i[28]), .IN2(s_opb_i[30]), .IN3(s_opb_i[29]), .QN(
        n337) );
  NAND4X0 U381 ( .IN1(s_expa[7]), .IN2(s_expa[6]), .IN3(n347), .IN4(n348), 
        .QN(n52) );
  NOR4X0 U382 ( .IN1(n426), .IN2(n427), .IN3(n428), .IN4(n429), .QN(n348) );
  NOR2X0 U383 ( .IN1(n424), .IN2(n425), .QN(n347) );
  NAND4X0 U384 ( .IN1(s_expb[7]), .IN2(s_expb[6]), .IN3(n349), .IN4(n350), 
        .QN(n53) );
  NOR4X0 U385 ( .IN1(n420), .IN2(n421), .IN3(n422), .IN4(n423), .QN(n350) );
  NOR2X0 U386 ( .IN1(n418), .IN2(n419), .QN(n349) );
  AO222X1 U387 ( .IN1(N1088), .IN2(n351), .IN3(N1087), .IN4(n352), .IN5(
        s_fraco1[25]), .IN6(n353), .Q(N1131) );
  AO222X1 U388 ( .IN1(n351), .IN2(N1087), .IN3(N1086), .IN4(n352), .IN5(
        s_fraco1[24]), .IN6(n353), .Q(N1130) );
  AO222X1 U389 ( .IN1(N1086), .IN2(n351), .IN3(N1085), .IN4(n352), .IN5(
        s_fraco1[23]), .IN6(n353), .Q(N1129) );
  AO222X1 U390 ( .IN1(N1085), .IN2(n351), .IN3(N1084), .IN4(n352), .IN5(
        s_fraco1[22]), .IN6(n353), .Q(N1128) );
  AO222X1 U391 ( .IN1(N1084), .IN2(n351), .IN3(N1083), .IN4(n352), .IN5(
        s_fraco1[21]), .IN6(n353), .Q(N1127) );
  AO222X1 U392 ( .IN1(N1083), .IN2(n351), .IN3(N1082), .IN4(n352), .IN5(
        s_fraco1[20]), .IN6(n353), .Q(N1126) );
  AO222X1 U393 ( .IN1(N1082), .IN2(n351), .IN3(N1081), .IN4(n352), .IN5(
        s_fraco1[19]), .IN6(n353), .Q(N1125) );
  AO222X1 U394 ( .IN1(N1081), .IN2(n351), .IN3(N1080), .IN4(n352), .IN5(
        s_fraco1[18]), .IN6(n353), .Q(N1124) );
  AO222X1 U395 ( .IN1(N1080), .IN2(n351), .IN3(N1079), .IN4(n352), .IN5(
        s_fraco1[17]), .IN6(n353), .Q(N1123) );
  AO222X1 U396 ( .IN1(N1079), .IN2(n351), .IN3(N1078), .IN4(n352), .IN5(
        s_fraco1[16]), .IN6(n353), .Q(N1122) );
  AO222X1 U397 ( .IN1(N1078), .IN2(n351), .IN3(N1077), .IN4(n352), .IN5(
        s_fraco1[15]), .IN6(n353), .Q(N1121) );
  AO222X1 U398 ( .IN1(N1077), .IN2(n351), .IN3(N1076), .IN4(n352), .IN5(
        s_fraco1[14]), .IN6(n353), .Q(N1120) );
  AO222X1 U399 ( .IN1(N1076), .IN2(n351), .IN3(N1075), .IN4(n352), .IN5(
        s_fraco1[13]), .IN6(n353), .Q(N1119) );
  AO222X1 U400 ( .IN1(N1075), .IN2(n351), .IN3(N1074), .IN4(n352), .IN5(
        s_fraco1[12]), .IN6(n353), .Q(N1118) );
  AO222X1 U401 ( .IN1(N1074), .IN2(n351), .IN3(N1073), .IN4(n352), .IN5(
        s_fraco1[11]), .IN6(n353), .Q(N1117) );
  AO222X1 U402 ( .IN1(N1073), .IN2(n351), .IN3(N1072), .IN4(n352), .IN5(
        s_fraco1[10]), .IN6(n353), .Q(N1116) );
  AO222X1 U403 ( .IN1(N1072), .IN2(n351), .IN3(N1071), .IN4(n352), .IN5(
        s_fraco1[9]), .IN6(n353), .Q(N1115) );
  AO222X1 U404 ( .IN1(N1071), .IN2(n351), .IN3(N1070), .IN4(n352), .IN5(
        s_fraco1[8]), .IN6(n353), .Q(N1114) );
  AO222X1 U405 ( .IN1(N1070), .IN2(n351), .IN3(N1069), .IN4(n352), .IN5(
        s_fraco1[7]), .IN6(n353), .Q(N1113) );
  AO222X1 U406 ( .IN1(N1069), .IN2(n351), .IN3(N1068), .IN4(n352), .IN5(
        s_fraco1[6]), .IN6(n353), .Q(N1112) );
  AO222X1 U407 ( .IN1(N1068), .IN2(n351), .IN3(N1067), .IN4(n352), .IN5(
        s_fraco1[5]), .IN6(n353), .Q(N1111) );
  AO222X1 U408 ( .IN1(N1067), .IN2(n351), .IN3(N1066), .IN4(n352), .IN5(
        s_fraco1[4]), .IN6(n353), .Q(N1110) );
  AO222X1 U409 ( .IN1(N1066), .IN2(n351), .IN3(N1065), .IN4(n352), .IN5(
        s_fraco1[3]), .IN6(n353), .Q(N1109) );
  NOR2X0 U410 ( .IN1(n351), .IN2(n353), .QN(n352) );
  MUX21X1 U411 ( .IN1(s_expo2[8]), .IN2(N1099), .S(n351), .Q(N1108) );
  XNOR2X1 U412 ( .IN1(n354), .IN2(s_expo1[8]), .Q(s_expo2[8]) );
  NAND2X0 U413 ( .IN1(n355), .IN2(n33), .QN(n354) );
  MUX21X1 U414 ( .IN1(s_expo2[7]), .IN2(N1098), .S(n351), .Q(N1107) );
  XNOR2X1 U415 ( .IN1(n355), .IN2(n33), .Q(s_expo2[7]) );
  MUX21X1 U416 ( .IN1(s_expo2[6]), .IN2(N1097), .S(n351), .Q(N1106) );
  AO21X1 U417 ( .IN1(s_expo1[6]), .IN2(n356), .IN3(n355), .Q(s_expo2[6]) );
  NOR2X0 U418 ( .IN1(n356), .IN2(s_expo1[6]), .QN(n355) );
  INVX0 U419 ( .INP(n357), .ZN(n356) );
  MUX21X1 U420 ( .IN1(s_expo2[5]), .IN2(N1096), .S(n351), .Q(N1105) );
  AO21X1 U421 ( .IN1(s_expo1[5]), .IN2(n358), .IN3(n357), .Q(s_expo2[5]) );
  NOR2X0 U422 ( .IN1(n358), .IN2(s_expo1[5]), .QN(n357) );
  INVX0 U423 ( .INP(n359), .ZN(n358) );
  MUX21X1 U424 ( .IN1(s_expo2[4]), .IN2(N1095), .S(n351), .Q(N1104) );
  AO21X1 U425 ( .IN1(s_expo1[4]), .IN2(n360), .IN3(n359), .Q(s_expo2[4]) );
  NOR2X0 U426 ( .IN1(n360), .IN2(s_expo1[4]), .QN(n359) );
  INVX0 U427 ( .INP(n361), .ZN(n360) );
  MUX21X1 U428 ( .IN1(s_expo2[3]), .IN2(N1094), .S(n351), .Q(N1103) );
  AO21X1 U429 ( .IN1(s_expo1[3]), .IN2(n362), .IN3(n361), .Q(s_expo2[3]) );
  NOR2X0 U430 ( .IN1(n362), .IN2(s_expo1[3]), .QN(n361) );
  INVX0 U431 ( .INP(n363), .ZN(n362) );
  MUX21X1 U432 ( .IN1(s_expo2[2]), .IN2(N1093), .S(n351), .Q(N1102) );
  AO21X1 U433 ( .IN1(s_expo1[2]), .IN2(n364), .IN3(n363), .Q(s_expo2[2]) );
  NOR2X0 U434 ( .IN1(n364), .IN2(s_expo1[2]), .QN(n363) );
  INVX0 U435 ( .INP(n365), .ZN(n364) );
  MUX21X1 U436 ( .IN1(s_expo2[1]), .IN2(N1092), .S(n351), .Q(N1101) );
  AO21X1 U437 ( .IN1(s_expo1[1]), .IN2(n366), .IN3(n365), .Q(s_expo2[1]) );
  NOR2X0 U438 ( .IN1(n366), .IN2(s_expo1[1]), .QN(n365) );
  INVX0 U439 ( .INP(n367), .ZN(n366) );
  MUX21X1 U440 ( .IN1(s_expo2[0]), .IN2(N1091), .S(n351), .Q(N1100) );
  NOR2X0 U441 ( .IN1(n368), .IN2(n353), .QN(n351) );
  OA21X1 U442 ( .IN1(n332), .IN2(n369), .IN3(n370), .Q(n353) );
  NAND4X0 U443 ( .IN1(s_fraco1[2]), .IN2(n371), .IN3(n17), .IN4(n32), .QN(n370) );
  OR3X1 U444 ( .IN1(n450), .IN2(s_fraco1[3]), .IN3(n372), .Q(n371) );
  MUX21X1 U445 ( .IN1(n373), .IN2(n374), .S(n17), .Q(n369) );
  OR2X1 U446 ( .IN1(n32), .IN2(s_sign_i), .Q(n374) );
  NAND2X0 U447 ( .IN1(s_sign_i), .IN2(\s_rmode_i[1] ), .QN(n373) );
  NOR3X0 U448 ( .IN1(n450), .IN2(s_fraco1[2]), .IN3(n372), .QN(n332) );
  NAND4X0 U449 ( .IN1(n375), .IN2(n376), .IN3(n377), .IN4(n378), .QN(n372) );
  NOR4X0 U450 ( .IN1(n379), .IN2(s_rmndr_i[3]), .IN3(s_rmndr_i[5]), .IN4(
        s_rmndr_i[4]), .QN(n378) );
  NAND4X0 U451 ( .IN1(n453), .IN2(n454), .IN3(n451), .IN4(n452), .QN(n379) );
  NOR4X0 U452 ( .IN1(n380), .IN2(s_rmndr_i[21]), .IN3(s_rmndr_i[23]), .IN4(
        s_rmndr_i[22]), .QN(n377) );
  NAND4X0 U453 ( .IN1(n457), .IN2(n458), .IN3(n455), .IN4(n456), .QN(n380) );
  NOR4X0 U454 ( .IN1(n381), .IN2(s_rmndr_i[15]), .IN3(s_rmndr_i[17]), .IN4(
        s_rmndr_i[16]), .QN(n376) );
  NAND4X0 U455 ( .IN1(n461), .IN2(n462), .IN3(n459), .IN4(n460), .QN(n381) );
  NOR4X0 U456 ( .IN1(n382), .IN2(s_fraco1[0]), .IN3(s_rmndr_i[10]), .IN4(
        s_rmndr_i[0]), .QN(n375) );
  NAND4X0 U457 ( .IN1(n465), .IN2(n466), .IN3(n463), .IN4(n464), .QN(n382) );
  INVX0 U458 ( .INP(N1089), .ZN(n368) );
  AO21X1 U459 ( .IN1(s_expo1[0]), .IN2(s_fraco1[26]), .IN3(n367), .Q(
        s_expo2[0]) );
  NOR2X0 U460 ( .IN1(s_fraco1[26]), .IN2(s_expo1[0]), .QN(n367) );
endmodule


module pre_norm_sqrt_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [9:0] carry;

  FADDX1 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1 U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  INVX0 U1 ( .INP(A[5]), .ZN(n5) );
  INVX0 U2 ( .INP(A[6]), .ZN(n3) );
  INVX0 U3 ( .INP(A[0]), .ZN(n11) );
  INVX0 U4 ( .INP(carry[5]), .ZN(n6) );
  AND2X1 U5 ( .IN1(n3), .IN2(n2), .Q(n1) );
  AND2X1 U6 ( .IN1(n5), .IN2(n6), .Q(n2) );
  NAND2X1 U7 ( .IN1(n4), .IN2(n1), .QN(carry[8]) );
  INVX0 U8 ( .INP(A[7]), .ZN(n4) );
  INVX0 U9 ( .INP(B[1]), .ZN(n8) );
  INVX0 U10 ( .INP(B[2]), .ZN(n9) );
  INVX0 U11 ( .INP(B[3]), .ZN(n10) );
  INVX0 U12 ( .INP(B[4]), .ZN(n7) );
  XNOR2X1 U13 ( .IN1(carry[8]), .IN2(A[8]), .Q(DIFF[8]) );
  XOR2X1 U14 ( .IN1(n2), .IN2(A[6]), .Q(DIFF[6]) );
  XOR2X1 U15 ( .IN1(n1), .IN2(A[7]), .Q(DIFF[7]) );
  XOR2X1 U16 ( .IN1(n6), .IN2(A[5]), .Q(DIFF[5]) );
  NAND2X0 U17 ( .IN1(B[0]), .IN2(n11), .QN(carry[1]) );
endmodule


module pre_norm_sqrt_1 ( clk_i, opa_i, fracta_52_o, exp_o );
  input [31:0] opa_i;
  output [51:0] fracta_52_o;
  output [7:0] exp_o;
  input clk_i;
  wire   N759, N760, N761, N762, N763, N764, N765, N766, N767, N799, N800,
         N801, N802, N803, N804, N805, N806, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210;
  wire   [5:0] s_sqr_zeros_o;
  wire   [8:1] s_exp_tem;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign fracta_52_o[0] = 1'b0;
  assign fracta_52_o[1] = 1'b0;
  assign fracta_52_o[2] = 1'b0;
  assign fracta_52_o[3] = 1'b0;
  assign fracta_52_o[4] = 1'b0;
  assign fracta_52_o[5] = 1'b0;
  assign fracta_52_o[6] = 1'b0;
  assign fracta_52_o[7] = 1'b0;
  assign fracta_52_o[8] = 1'b0;
  assign fracta_52_o[9] = 1'b0;
  assign fracta_52_o[10] = 1'b0;
  assign fracta_52_o[11] = 1'b0;
  assign fracta_52_o[12] = 1'b0;
  assign fracta_52_o[13] = 1'b0;
  assign fracta_52_o[14] = 1'b0;
  assign fracta_52_o[15] = 1'b0;
  assign fracta_52_o[16] = 1'b0;
  assign fracta_52_o[17] = 1'b0;
  assign fracta_52_o[18] = 1'b0;
  assign fracta_52_o[19] = 1'b0;
  assign fracta_52_o[20] = 1'b0;
  assign fracta_52_o[21] = 1'b0;
  assign fracta_52_o[22] = 1'b0;
  assign fracta_52_o[23] = 1'b0;
  assign fracta_52_o[24] = 1'b0;
  assign fracta_52_o[25] = 1'b0;
  assign fracta_52_o[26] = 1'b0;

  DFFX1 \s_exp_o_reg[7]  ( .D(N806), .CLK(clk_i), .Q(exp_o[7]) );
  DFFX1 \s_exp_o_reg[6]  ( .D(N805), .CLK(clk_i), .Q(exp_o[6]) );
  DFFX1 \s_exp_o_reg[5]  ( .D(N804), .CLK(clk_i), .Q(exp_o[5]) );
  DFFX1 \s_exp_o_reg[4]  ( .D(N803), .CLK(clk_i), .Q(exp_o[4]) );
  DFFX1 \s_exp_o_reg[3]  ( .D(N802), .CLK(clk_i), .Q(exp_o[3]) );
  DFFX1 \s_exp_o_reg[2]  ( .D(N801), .CLK(clk_i), .Q(exp_o[2]) );
  DFFX1 \s_exp_o_reg[1]  ( .D(N800), .CLK(clk_i), .Q(exp_o[1]) );
  DFFX1 \s_exp_o_reg[0]  ( .D(N799), .CLK(clk_i), .Q(exp_o[0]) );
  pre_norm_sqrt_1_DW01_sub_0 sub_0_root_sub_92 ( .A({N767, N766, N765, N764, 
        N763, N762, N761, N760, N759}), .B({1'b0, 1'b0, 1'b0, 1'b0, 
        s_sqr_zeros_o[4:0]}), .CI(1'b0), .DIFF({s_exp_tem, 
        SYNOPSYS_UNCONNECTED__0}) );
  OA21X1 U4 ( .IN1(n3), .IN2(n4), .IN3(N759), .Q(fracta_52_o[51]) );
  NAND4X0 U5 ( .IN1(n5), .IN2(n6), .IN3(n7), .IN4(n8), .QN(n4) );
  INVX0 U6 ( .INP(n9), .ZN(n6) );
  NAND4X0 U7 ( .IN1(n10), .IN2(n11), .IN3(n12), .IN4(n13), .QN(n3) );
  OR2X1 U8 ( .IN1(n14), .IN2(opa_i[23]), .Q(fracta_52_o[50]) );
  AO22X1 U9 ( .IN1(n14), .IN2(opa_i[23]), .IN3(n15), .IN4(N759), .Q(
        fracta_52_o[49]) );
  OA21X1 U10 ( .IN1(n16), .IN2(n17), .IN3(n18), .Q(n14) );
  MUX21X1 U11 ( .IN1(n19), .IN2(n20), .S(s_sqr_zeros_o[4]), .Q(n18) );
  INVX0 U12 ( .INP(n21), .ZN(n20) );
  OA222X1 U13 ( .IN1(n22), .IN2(n23), .IN3(n24), .IN4(n25), .IN5(n26), .IN6(
        n27), .Q(n19) );
  OA221X1 U14 ( .IN1(opa_i[22]), .IN2(n28), .IN3(opa_i[19]), .IN4(n13), .IN5(
        n29), .Q(n16) );
  OA22X1 U15 ( .IN1(opa_i[21]), .IN2(n11), .IN3(opa_i[20]), .IN4(n12), .Q(n29)
         );
  AO22X1 U16 ( .IN1(n30), .IN2(N759), .IN3(n15), .IN4(opa_i[23]), .Q(
        fracta_52_o[48]) );
  AOI21X1 U17 ( .IN1(n31), .IN2(n32), .IN3(n33), .QN(n15) );
  MUX21X1 U18 ( .IN1(n34), .IN2(n35), .S(s_sqr_zeros_o[4]), .Q(n33) );
  OAI222X1 U19 ( .IN1(n36), .IN2(n27), .IN3(n25), .IN4(n37), .IN5(n38), .IN6(
        n22), .QN(n34) );
  NAND2X0 U20 ( .IN1(n39), .IN2(s_sqr_zeros_o[3]), .QN(n25) );
  NAND2X0 U21 ( .IN1(s_sqr_zeros_o[2]), .IN2(s_sqr_zeros_o[3]), .QN(n27) );
  AO221X1 U22 ( .IN1(n40), .IN2(n41), .IN3(n42), .IN4(n43), .IN5(n44), .Q(n32)
         );
  AO22X1 U23 ( .IN1(n45), .IN2(n46), .IN3(n47), .IN4(n48), .Q(n44) );
  INVX0 U24 ( .INP(n17), .ZN(n31) );
  NAND3X0 U25 ( .IN1(n49), .IN2(n50), .IN3(n39), .QN(n17) );
  MUX21X1 U26 ( .IN1(n51), .IN2(n30), .S(opa_i[23]), .Q(fracta_52_o[47]) );
  NAND4X0 U27 ( .IN1(n52), .IN2(n53), .IN3(n54), .IN4(n55), .QN(n30) );
  OA22X1 U28 ( .IN1(n11), .IN2(n46), .IN3(n12), .IN4(n41), .Q(n55) );
  INVX0 U30 ( .INP(opa_i[19]), .ZN(n46) );
  OA22X1 U31 ( .IN1(n56), .IN2(n13), .IN3(n28), .IN4(n48), .Q(n54) );
  INVX0 U32 ( .INP(opa_i[20]), .ZN(n48) );
  AOI22X1 U33 ( .IN1(s_sqr_zeros_o[4]), .IN2(n57), .IN3(n58), .IN4(n59), .QN(
        n53) );
  AOI22X1 U34 ( .IN1(n60), .IN2(n61), .IN3(n62), .IN4(n63), .QN(n52) );
  MUX21X1 U35 ( .IN1(n64), .IN2(n51), .S(opa_i[23]), .Q(fracta_52_o[46]) );
  AO221X1 U36 ( .IN1(n65), .IN2(n63), .IN3(n66), .IN4(n9), .IN5(n67), .Q(n51)
         );
  AO222X1 U37 ( .IN1(n59), .IN2(n68), .IN3(n69), .IN4(n70), .IN5(n71), .IN6(
        n61), .Q(n67) );
  AO221X1 U38 ( .IN1(opa_i[16]), .IN2(n40), .IN3(opa_i[19]), .IN4(n42), .IN5(
        n72), .Q(n9) );
  AO22X1 U39 ( .IN1(n45), .IN2(opa_i[17]), .IN3(opa_i[18]), .IN4(n47), .Q(n72)
         );
  MUX21X1 U40 ( .IN1(n73), .IN2(n64), .S(opa_i[23]), .Q(fracta_52_o[45]) );
  AO221X1 U41 ( .IN1(n24), .IN2(n63), .IN3(n66), .IN4(n23), .IN5(n74), .Q(n64)
         );
  AO222X1 U42 ( .IN1(n75), .IN2(n59), .IN3(n76), .IN4(n69), .IN5(n26), .IN6(
        n61), .Q(n74) );
  AO221X1 U43 ( .IN1(n40), .IN2(opa_i[15]), .IN3(opa_i[18]), .IN4(n42), .IN5(
        n77), .Q(n23) );
  AO22X1 U44 ( .IN1(opa_i[16]), .IN2(n45), .IN3(n47), .IN4(opa_i[17]), .Q(n77)
         );
  MUX21X1 U45 ( .IN1(n78), .IN2(n73), .S(opa_i[23]), .Q(fracta_52_o[44]) );
  AO221X1 U46 ( .IN1(n37), .IN2(n63), .IN3(n66), .IN4(n38), .IN5(n79), .Q(n73)
         );
  AO222X1 U47 ( .IN1(n59), .IN2(n80), .IN3(n81), .IN4(n69), .IN5(n61), .IN6(
        n36), .Q(n79) );
  NOR2X0 U48 ( .IN1(n49), .IN2(s_sqr_zeros_o[2]), .QN(n69) );
  AO221X1 U49 ( .IN1(opa_i[14]), .IN2(n40), .IN3(n42), .IN4(opa_i[17]), .IN5(
        n82), .Q(n38) );
  AO22X1 U50 ( .IN1(n45), .IN2(opa_i[15]), .IN3(opa_i[16]), .IN4(n47), .Q(n82)
         );
  MUX21X1 U51 ( .IN1(n83), .IN2(n78), .S(opa_i[23]), .Q(fracta_52_o[43]) );
  AO221X1 U52 ( .IN1(n63), .IN2(n60), .IN3(n66), .IN4(n62), .IN5(n84), .Q(n78)
         );
  AO222X1 U53 ( .IN1(n85), .IN2(n59), .IN3(n86), .IN4(s_sqr_zeros_o[4]), .IN5(
        n61), .IN6(n58), .Q(n84) );
  AO221X1 U54 ( .IN1(n40), .IN2(opa_i[13]), .IN3(opa_i[16]), .IN4(n42), .IN5(
        n87), .Q(n62) );
  AO22X1 U55 ( .IN1(opa_i[14]), .IN2(n45), .IN3(n47), .IN4(opa_i[15]), .Q(n87)
         );
  MUX21X1 U56 ( .IN1(n88), .IN2(n83), .S(opa_i[23]), .Q(fracta_52_o[42]) );
  AO221X1 U57 ( .IN1(n71), .IN2(n63), .IN3(n66), .IN4(n65), .IN5(n89), .Q(n83)
         );
  AO22X1 U58 ( .IN1(n61), .IN2(n68), .IN3(n59), .IN4(n70), .Q(n89) );
  INVX0 U59 ( .INP(n8), .ZN(n65) );
  AO221X1 U60 ( .IN1(n40), .IN2(n90), .IN3(n42), .IN4(n91), .IN5(n92), .Q(n8)
         );
  AO22X1 U61 ( .IN1(n45), .IN2(n93), .IN3(n47), .IN4(n94), .Q(n92) );
  MUX21X1 U62 ( .IN1(n95), .IN2(n88), .S(opa_i[23]), .Q(fracta_52_o[41]) );
  AO221X1 U63 ( .IN1(n76), .IN2(n59), .IN3(n75), .IN4(n61), .IN5(n96), .Q(n88)
         );
  AO22X1 U64 ( .IN1(n24), .IN2(n66), .IN3(n26), .IN4(n63), .Q(n96) );
  AOI221X1 U65 ( .IN1(n40), .IN2(n97), .IN3(n42), .IN4(n94), .IN5(n98), .QN(
        n24) );
  AO22X1 U66 ( .IN1(n45), .IN2(n90), .IN3(n47), .IN4(n93), .Q(n98) );
  MUX21X1 U67 ( .IN1(n99), .IN2(n95), .S(opa_i[23]), .Q(fracta_52_o[40]) );
  AO221X1 U68 ( .IN1(n63), .IN2(n36), .IN3(n37), .IN4(n66), .IN5(n100), .Q(n95) );
  AO22X1 U69 ( .IN1(n61), .IN2(n80), .IN3(n81), .IN4(n59), .Q(n100) );
  NOR2X0 U70 ( .IN1(n39), .IN2(n50), .QN(n59) );
  AOI221X1 U71 ( .IN1(n40), .IN2(n101), .IN3(n42), .IN4(n93), .IN5(n102), .QN(
        n37) );
  AO22X1 U72 ( .IN1(n45), .IN2(n97), .IN3(n47), .IN4(n90), .Q(n102) );
  MUX21X1 U73 ( .IN1(n103), .IN2(n99), .S(opa_i[23]), .Q(fracta_52_o[39]) );
  AO222X1 U74 ( .IN1(n66), .IN2(n60), .IN3(n63), .IN4(n58), .IN5(n57), .IN6(
        s_sqr_zeros_o[3]), .Q(n99) );
  AOI221X1 U75 ( .IN1(n40), .IN2(n104), .IN3(n42), .IN4(n90), .IN5(n105), .QN(
        n60) );
  AO22X1 U76 ( .IN1(n45), .IN2(n101), .IN3(n47), .IN4(n97), .Q(n105) );
  MUX21X1 U77 ( .IN1(n106), .IN2(n103), .S(opa_i[23]), .Q(fracta_52_o[38]) );
  AO222X1 U78 ( .IN1(n63), .IN2(n68), .IN3(n61), .IN4(n70), .IN5(n66), .IN6(
        n71), .Q(n103) );
  INVX0 U79 ( .INP(n10), .ZN(n71) );
  AO221X1 U80 ( .IN1(n40), .IN2(n107), .IN3(n42), .IN4(n97), .IN5(n108), .Q(
        n10) );
  AO22X1 U81 ( .IN1(n45), .IN2(n104), .IN3(n47), .IN4(n101), .Q(n108) );
  INVX0 U82 ( .INP(opa_i[11]), .ZN(n97) );
  MUX21X1 U83 ( .IN1(n109), .IN2(n106), .S(opa_i[23]), .Q(fracta_52_o[37]) );
  AO222X1 U84 ( .IN1(n75), .IN2(n63), .IN3(n76), .IN4(n61), .IN5(n26), .IN6(
        n66), .Q(n106) );
  AOI221X1 U85 ( .IN1(n40), .IN2(n110), .IN3(n42), .IN4(n101), .IN5(n111), 
        .QN(n26) );
  AO22X1 U86 ( .IN1(n45), .IN2(n107), .IN3(n47), .IN4(n104), .Q(n111) );
  INVX0 U87 ( .INP(opa_i[9]), .ZN(n104) );
  MUX21X1 U88 ( .IN1(n112), .IN2(n109), .S(opa_i[23]), .Q(fracta_52_o[36]) );
  AO222X1 U89 ( .IN1(n63), .IN2(n80), .IN3(n81), .IN4(n61), .IN5(n66), .IN6(
        n36), .Q(n109) );
  AO221X1 U90 ( .IN1(n40), .IN2(opa_i[6]), .IN3(n42), .IN4(opa_i[9]), .IN5(
        n113), .Q(n36) );
  AO22X1 U91 ( .IN1(opa_i[7]), .IN2(n45), .IN3(opa_i[8]), .IN4(n47), .Q(n113)
         );
  MUX21X1 U92 ( .IN1(n114), .IN2(n112), .S(opa_i[23]), .Q(fracta_52_o[35]) );
  AO222X1 U93 ( .IN1(n85), .IN2(n63), .IN3(n115), .IN4(n61), .IN5(n66), .IN6(
        n58), .Q(n112) );
  AOI221X1 U94 ( .IN1(n40), .IN2(n116), .IN3(n42), .IN4(n107), .IN5(n117), 
        .QN(n58) );
  AO22X1 U95 ( .IN1(n45), .IN2(n118), .IN3(n47), .IN4(n110), .Q(n117) );
  NOR2X0 U96 ( .IN1(s_sqr_zeros_o[2]), .IN2(n50), .QN(n61) );
  NOR2X0 U97 ( .IN1(n119), .IN2(n39), .QN(n63) );
  NOR2X0 U98 ( .IN1(s_sqr_zeros_o[4]), .IN2(n5), .QN(n114) );
  NOR2X0 U99 ( .IN1(s_sqr_zeros_o[4]), .IN2(n120), .QN(fracta_52_o[34]) );
  MUX21X1 U100 ( .IN1(n21), .IN2(n5), .S(opa_i[23]), .Q(n120) );
  AOI22X1 U101 ( .IN1(n121), .IN2(n70), .IN3(n122), .IN4(n39), .QN(n5) );
  AND2X1 U102 ( .IN1(n50), .IN2(n68), .Q(n122) );
  AO221X1 U103 ( .IN1(n40), .IN2(opa_i[4]), .IN3(opa_i[7]), .IN4(n42), .IN5(
        n123), .Q(n68) );
  AO22X1 U104 ( .IN1(opa_i[5]), .IN2(n45), .IN3(opa_i[6]), .IN4(n47), .Q(n123)
         );
  INVX0 U105 ( .INP(n22), .ZN(n121) );
  NAND2X0 U106 ( .IN1(s_sqr_zeros_o[2]), .IN2(n50), .QN(n22) );
  NOR2X0 U107 ( .IN1(s_sqr_zeros_o[4]), .IN2(n124), .QN(fracta_52_o[33]) );
  MUX21X1 U108 ( .IN1(n35), .IN2(n21), .S(opa_i[23]), .Q(n124) );
  NAND2X0 U109 ( .IN1(n125), .IN2(n50), .QN(n21) );
  MUX21X1 U110 ( .IN1(n75), .IN2(n76), .S(s_sqr_zeros_o[2]), .Q(n125) );
  AOI221X1 U111 ( .IN1(n40), .IN2(n126), .IN3(n42), .IN4(n118), .IN5(n127), 
        .QN(n75) );
  AO22X1 U112 ( .IN1(n45), .IN2(n128), .IN3(n47), .IN4(n116), .Q(n127) );
  INVX0 U113 ( .INP(opa_i[5]), .ZN(n116) );
  MUX21X1 U114 ( .IN1(n129), .IN2(n130), .S(opa_i[23]), .Q(fracta_52_o[32]) );
  INVX0 U115 ( .INP(n35), .ZN(n130) );
  NAND2X0 U116 ( .IN1(n131), .IN2(n50), .QN(n35) );
  MUX21X1 U117 ( .IN1(n80), .IN2(n81), .S(s_sqr_zeros_o[2]), .Q(n131) );
  AO221X1 U118 ( .IN1(n40), .IN2(opa_i[2]), .IN3(n42), .IN4(opa_i[5]), .IN5(
        n132), .Q(n80) );
  AO22X1 U119 ( .IN1(opa_i[3]), .IN2(n45), .IN3(n47), .IN4(opa_i[4]), .Q(n132)
         );
  NOR2X0 U120 ( .IN1(n133), .IN2(n119), .QN(n129) );
  INVX0 U121 ( .INP(n57), .ZN(n133) );
  AO22X1 U122 ( .IN1(n134), .IN2(n70), .IN3(n57), .IN4(opa_i[23]), .Q(
        fracta_52_o[31]) );
  MUX21X1 U123 ( .IN1(n85), .IN2(n115), .S(s_sqr_zeros_o[2]), .Q(n57) );
  AOI221X1 U124 ( .IN1(n40), .IN2(n135), .IN3(n42), .IN4(n128), .IN5(n136), 
        .QN(n85) );
  AO22X1 U125 ( .IN1(n45), .IN2(n137), .IN3(n47), .IN4(n126), .Q(n136) );
  AO22X1 U126 ( .IN1(n70), .IN2(opa_i[23]), .IN3(n134), .IN4(n76), .Q(
        fracta_52_o[30]) );
  AO221X1 U127 ( .IN1(opa_i[0]), .IN2(n40), .IN3(opa_i[3]), .IN4(n42), .IN5(
        n138), .Q(n70) );
  AO22X1 U128 ( .IN1(opa_i[1]), .IN2(n45), .IN3(n47), .IN4(opa_i[2]), .Q(n138)
         );
  INVX0 U129 ( .INP(n11), .ZN(n47) );
  NAND2X0 U130 ( .IN1(s_sqr_zeros_o[0]), .IN2(n139), .QN(n11) );
  INVX0 U131 ( .INP(n12), .ZN(n45) );
  NAND2X0 U132 ( .IN1(s_sqr_zeros_o[1]), .IN2(n140), .QN(n12) );
  AO22X1 U133 ( .IN1(n76), .IN2(opa_i[23]), .IN3(n134), .IN4(n81), .Q(
        fracta_52_o[29]) );
  AND2X1 U134 ( .IN1(n66), .IN2(N759), .Q(n134) );
  NOR2X0 U135 ( .IN1(n119), .IN2(s_sqr_zeros_o[2]), .QN(n66) );
  INVX0 U136 ( .INP(n39), .ZN(s_sqr_zeros_o[2]) );
  NAND2X0 U137 ( .IN1(n49), .IN2(n50), .QN(n119) );
  AOI221X1 U138 ( .IN1(s_sqr_zeros_o[0]), .IN2(n135), .IN3(s_sqr_zeros_o[1]), 
        .IN4(n141), .IN5(n142), .QN(n76) );
  AO21X1 U139 ( .IN1(n42), .IN2(n137), .IN3(n40), .Q(n142) );
  INVX0 U140 ( .INP(n13), .ZN(n40) );
  NAND2X0 U141 ( .IN1(s_sqr_zeros_o[0]), .IN2(s_sqr_zeros_o[1]), .QN(n13) );
  INVX0 U142 ( .INP(n28), .ZN(n42) );
  INVX0 U143 ( .INP(n140), .ZN(s_sqr_zeros_o[0]) );
  AO22X1 U144 ( .IN1(n81), .IN2(opa_i[23]), .IN3(n143), .IN4(n86), .Q(
        fracta_52_o[28]) );
  INVX0 U145 ( .INP(n144), .ZN(n86) );
  NOR2X0 U146 ( .IN1(opa_i[23]), .IN2(s_sqr_zeros_o[4]), .QN(n143) );
  AND2X1 U147 ( .IN1(n145), .IN2(n139), .Q(n81) );
  MUX21X1 U148 ( .IN1(opa_i[0]), .IN2(opa_i[1]), .S(n140), .Q(n145) );
  NOR2X0 U149 ( .IN1(N759), .IN2(n144), .QN(fracta_52_o[27]) );
  NAND3X0 U150 ( .IN1(n39), .IN2(n50), .IN3(n115), .QN(n144) );
  NOR2X0 U151 ( .IN1(n141), .IN2(n28), .QN(n115) );
  NAND2X0 U152 ( .IN1(n140), .IN2(n139), .QN(n28) );
  INVX0 U153 ( .INP(s_sqr_zeros_o[1]), .ZN(n139) );
  NAND4X0 U154 ( .IN1(n146), .IN2(n147), .IN3(n148), .IN4(n149), .QN(
        s_sqr_zeros_o[1]) );
  AND4X1 U155 ( .IN1(n150), .IN2(n151), .IN3(n152), .IN4(n153), .Q(n149) );
  INVX0 U156 ( .INP(n154), .ZN(n152) );
  OA22X1 U157 ( .IN1(n155), .IN2(n156), .IN3(n157), .IN4(n158), .Q(n148) );
  NOR2X0 U158 ( .IN1(opa_i[21]), .IN2(opa_i[20]), .QN(n157) );
  AND3X1 U159 ( .IN1(n159), .IN2(n128), .IN3(n160), .Q(n155) );
  OA222X1 U160 ( .IN1(n161), .IN2(n162), .IN3(n158), .IN4(n163), .IN5(n164), 
        .IN6(n165), .Q(n140) );
  INVX0 U161 ( .INP(n7), .ZN(n164) );
  NAND2X0 U162 ( .IN1(n166), .IN2(n43), .QN(n163) );
  INVX0 U163 ( .INP(opa_i[21]), .ZN(n43) );
  NOR4X0 U164 ( .IN1(n167), .IN2(n168), .IN3(n169), .IN4(n170), .QN(n161) );
  INVX0 U165 ( .INP(n171), .ZN(n170) );
  INVX0 U166 ( .INP(n150), .ZN(n169) );
  NAND3X0 U167 ( .IN1(n172), .IN2(n41), .IN3(n173), .QN(n168) );
  NAND2X0 U168 ( .IN1(opa_i[4]), .IN2(n160), .QN(n173) );
  INVX0 U169 ( .INP(opa_i[18]), .ZN(n41) );
  NAND4X0 U170 ( .IN1(n174), .IN2(n153), .IN3(n146), .IN4(n175), .QN(n167) );
  OA21X1 U171 ( .IN1(opa_i[1]), .IN2(n159), .IN3(n176), .Q(n175) );
  NAND2X0 U172 ( .IN1(n177), .IN2(n49), .QN(n146) );
  NAND3X0 U173 ( .IN1(n178), .IN2(n56), .IN3(n179), .QN(n153) );
  NAND3X0 U174 ( .IN1(n156), .IN2(n110), .IN3(s_sqr_zeros_o[4]), .QN(n174) );
  INVX0 U175 ( .INP(s_sqr_zeros_o[3]), .ZN(n50) );
  NAND4X0 U176 ( .IN1(n171), .IN2(n150), .IN3(n151), .IN4(n180), .QN(
        s_sqr_zeros_o[3]) );
  OA221X1 U177 ( .IN1(n181), .IN2(n182), .IN3(n178), .IN4(n91), .IN5(n183), 
        .Q(n180) );
  NAND2X0 U178 ( .IN1(opa_i[13]), .IN2(n184), .QN(n151) );
  NAND3X0 U179 ( .IN1(n182), .IN2(n93), .IN3(n184), .QN(n150) );
  NAND3X0 U180 ( .IN1(n185), .IN2(n91), .IN3(n186), .QN(n171) );
  MUX21X1 U181 ( .IN1(n187), .IN2(n166), .S(n162), .Q(n39) );
  NOR4X0 U182 ( .IN1(n188), .IN2(n189), .IN3(n154), .IN4(n190), .QN(n187) );
  NOR2X0 U183 ( .IN1(n181), .IN2(n182), .QN(n190) );
  NOR4X0 U184 ( .IN1(opa_i[8]), .IN2(n191), .IN3(n192), .IN4(n193), .QN(n181)
         );
  INVX0 U185 ( .INP(n176), .ZN(n192) );
  NAND2X0 U186 ( .IN1(opa_i[10]), .IN2(n194), .QN(n176) );
  INVX0 U187 ( .INP(n147), .ZN(n191) );
  NAND3X0 U188 ( .IN1(n194), .IN2(n101), .IN3(opa_i[9]), .QN(n147) );
  INVX0 U189 ( .INP(opa_i[10]), .ZN(n101) );
  NOR2X0 U190 ( .IN1(n56), .IN2(n189), .QN(n154) );
  INVX0 U191 ( .INP(n179), .ZN(n189) );
  NAND4X0 U192 ( .IN1(n195), .IN2(n159), .IN3(n172), .IN4(n196), .QN(n188) );
  NAND2X0 U193 ( .IN1(opa_i[2]), .IN2(n197), .QN(n172) );
  NAND3X0 U194 ( .IN1(n183), .IN2(n137), .IN3(n197), .QN(n159) );
  NAND3X0 U195 ( .IN1(n198), .IN2(n128), .IN3(n160), .QN(n195) );
  AND2X1 U196 ( .IN1(s_exp_tem[8]), .IN2(n183), .Q(N806) );
  AND2X1 U197 ( .IN1(s_exp_tem[7]), .IN2(n183), .Q(N805) );
  AND2X1 U198 ( .IN1(s_exp_tem[6]), .IN2(n183), .Q(N804) );
  AND2X1 U199 ( .IN1(s_exp_tem[5]), .IN2(n183), .Q(N803) );
  AND2X1 U200 ( .IN1(s_exp_tem[4]), .IN2(n183), .Q(N802) );
  AND2X1 U201 ( .IN1(s_exp_tem[3]), .IN2(n183), .Q(N801) );
  AND2X1 U202 ( .IN1(s_exp_tem[2]), .IN2(n183), .Q(N800) );
  AND2X1 U203 ( .IN1(s_exp_tem[1]), .IN2(n183), .Q(N799) );
  NAND4X0 U204 ( .IN1(n197), .IN2(n141), .IN3(n135), .IN4(n137), .QN(n183) );
  INVX0 U205 ( .INP(opa_i[2]), .ZN(n137) );
  INVX0 U206 ( .INP(opa_i[1]), .ZN(n135) );
  INVX0 U207 ( .INP(opa_i[0]), .ZN(n141) );
  INVX0 U208 ( .INP(n198), .ZN(n197) );
  NAND3X0 U209 ( .IN1(n126), .IN2(n128), .IN3(n160), .QN(n198) );
  NOR2X0 U210 ( .IN1(n156), .IN2(opa_i[5]), .QN(n160) );
  NAND3X0 U211 ( .IN1(n118), .IN2(n110), .IN3(s_sqr_zeros_o[4]), .QN(n156) );
  INVX0 U212 ( .INP(n49), .ZN(s_sqr_zeros_o[4]) );
  NAND2X0 U213 ( .IN1(n177), .IN2(n107), .QN(n49) );
  INVX0 U214 ( .INP(opa_i[8]), .ZN(n107) );
  NOR3X0 U215 ( .IN1(opa_i[10]), .IN2(opa_i[9]), .IN3(n193), .QN(n177) );
  INVX0 U216 ( .INP(n194), .ZN(n193) );
  NOR2X0 U217 ( .IN1(n182), .IN2(opa_i[11]), .QN(n194) );
  NAND3X0 U218 ( .IN1(n90), .IN2(n93), .IN3(n184), .QN(n182) );
  INVX0 U219 ( .INP(n185), .ZN(n184) );
  NAND3X0 U220 ( .IN1(n94), .IN2(n91), .IN3(n186), .QN(n185) );
  INVX0 U221 ( .INP(n178), .ZN(n186) );
  NAND3X0 U222 ( .IN1(n196), .IN2(n56), .IN3(n179), .QN(n178) );
  NOR2X0 U223 ( .IN1(n162), .IN2(opa_i[18]), .QN(n179) );
  OR2X1 U224 ( .IN1(n166), .IN2(opa_i[19]), .Q(n162) );
  OR3X1 U225 ( .IN1(opa_i[20]), .IN2(opa_i[21]), .IN3(n158), .Q(n166) );
  NAND2X0 U226 ( .IN1(n7), .IN2(n165), .QN(n158) );
  INVX0 U227 ( .INP(opa_i[22]), .ZN(n165) );
  NOR2X0 U228 ( .IN1(n199), .IN2(opa_i[30]), .QN(n7) );
  INVX0 U229 ( .INP(opa_i[17]), .ZN(n56) );
  INVX0 U230 ( .INP(opa_i[16]), .ZN(n196) );
  INVX0 U231 ( .INP(opa_i[15]), .ZN(n91) );
  INVX0 U232 ( .INP(opa_i[14]), .ZN(n94) );
  INVX0 U233 ( .INP(opa_i[13]), .ZN(n93) );
  INVX0 U234 ( .INP(opa_i[12]), .ZN(n90) );
  INVX0 U235 ( .INP(opa_i[7]), .ZN(n110) );
  INVX0 U236 ( .INP(opa_i[6]), .ZN(n118) );
  INVX0 U237 ( .INP(opa_i[4]), .ZN(n128) );
  INVX0 U238 ( .INP(opa_i[3]), .ZN(n126) );
  AND2X1 U239 ( .IN1(n199), .IN2(opa_i[30]), .Q(N767) );
  XOR2X1 U240 ( .IN1(n199), .IN2(opa_i[30]), .Q(N766) );
  INVX0 U241 ( .INP(n200), .ZN(n199) );
  AO21X1 U242 ( .IN1(opa_i[29]), .IN2(n201), .IN3(n200), .Q(N765) );
  NOR2X0 U243 ( .IN1(n201), .IN2(opa_i[29]), .QN(n200) );
  INVX0 U244 ( .INP(n202), .ZN(n201) );
  AO21X1 U245 ( .IN1(opa_i[28]), .IN2(n203), .IN3(n202), .Q(N764) );
  NOR2X0 U246 ( .IN1(n203), .IN2(opa_i[28]), .QN(n202) );
  INVX0 U247 ( .INP(n204), .ZN(n203) );
  AO21X1 U248 ( .IN1(opa_i[27]), .IN2(n205), .IN3(n204), .Q(N763) );
  NOR2X0 U249 ( .IN1(n205), .IN2(opa_i[27]), .QN(n204) );
  INVX0 U250 ( .INP(n206), .ZN(n205) );
  AO21X1 U251 ( .IN1(opa_i[26]), .IN2(n207), .IN3(n206), .Q(N762) );
  NOR2X0 U252 ( .IN1(n207), .IN2(opa_i[26]), .QN(n206) );
  INVX0 U253 ( .INP(n208), .ZN(n207) );
  AO21X1 U254 ( .IN1(opa_i[25]), .IN2(n209), .IN3(n208), .Q(N761) );
  NOR2X0 U255 ( .IN1(n209), .IN2(opa_i[25]), .QN(n208) );
  INVX0 U256 ( .INP(n210), .ZN(n209) );
  AO21X1 U257 ( .IN1(opa_i[24]), .IN2(opa_i[23]), .IN3(n210), .Q(N760) );
  NOR2X0 U258 ( .IN1(opa_i[24]), .IN2(opa_i[23]), .QN(n210) );
  INVX0 U259 ( .INP(opa_i[23]), .ZN(N759) );
endmodule


module sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   \carry[25] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49;

  INVX0 U1 ( .INP(A[0]), .ZN(n49) );
  INVX0 U2 ( .INP(A[1]), .ZN(n35) );
  INVX0 U3 ( .INP(A[2]), .ZN(n41) );
  INVX0 U4 ( .INP(A[3]), .ZN(n42) );
  INVX0 U5 ( .INP(A[4]), .ZN(n43) );
  INVX0 U6 ( .INP(A[5]), .ZN(n44) );
  INVX0 U7 ( .INP(A[6]), .ZN(n45) );
  INVX0 U8 ( .INP(A[7]), .ZN(n46) );
  INVX0 U9 ( .INP(A[8]), .ZN(n47) );
  INVX0 U10 ( .INP(A[9]), .ZN(n48) );
  INVX0 U11 ( .INP(A[10]), .ZN(n25) );
  INVX0 U12 ( .INP(A[11]), .ZN(n26) );
  INVX0 U13 ( .INP(A[12]), .ZN(n27) );
  INVX0 U14 ( .INP(A[13]), .ZN(n28) );
  INVX0 U15 ( .INP(A[14]), .ZN(n29) );
  INVX0 U16 ( .INP(A[15]), .ZN(n30) );
  INVX0 U17 ( .INP(A[16]), .ZN(n31) );
  INVX0 U18 ( .INP(A[17]), .ZN(n32) );
  INVX0 U19 ( .INP(A[18]), .ZN(n33) );
  INVX0 U20 ( .INP(A[19]), .ZN(n34) );
  INVX0 U21 ( .INP(A[20]), .ZN(n36) );
  INVX0 U22 ( .INP(A[21]), .ZN(n37) );
  INVX0 U23 ( .INP(A[22]), .ZN(n38) );
  INVX0 U24 ( .INP(A[23]), .ZN(n39) );
  XNOR2X1 U25 ( .IN1(\carry[25] ), .IN2(A[25]), .Q(DIFF[25]) );
  NAND2X1 U26 ( .IN1(n40), .IN2(n24), .QN(\carry[25] ) );
  AND2X1 U27 ( .IN1(n49), .IN2(B[0]), .Q(n1) );
  AND2X1 U28 ( .IN1(n35), .IN2(n1), .Q(n2) );
  AND2X1 U29 ( .IN1(n41), .IN2(n2), .Q(n3) );
  AND2X1 U30 ( .IN1(n42), .IN2(n3), .Q(n4) );
  AND2X1 U31 ( .IN1(n43), .IN2(n4), .Q(n5) );
  AND2X1 U32 ( .IN1(n44), .IN2(n5), .Q(n6) );
  AND2X1 U33 ( .IN1(n45), .IN2(n6), .Q(n7) );
  AND2X1 U34 ( .IN1(n46), .IN2(n7), .Q(n8) );
  AND2X1 U35 ( .IN1(n47), .IN2(n8), .Q(n9) );
  AND2X1 U36 ( .IN1(n48), .IN2(n9), .Q(n10) );
  AND2X1 U37 ( .IN1(n25), .IN2(n10), .Q(n11) );
  AND2X1 U38 ( .IN1(n26), .IN2(n11), .Q(n12) );
  AND2X1 U39 ( .IN1(n27), .IN2(n12), .Q(n13) );
  AND2X1 U40 ( .IN1(n28), .IN2(n13), .Q(n14) );
  AND2X1 U41 ( .IN1(n29), .IN2(n14), .Q(n15) );
  AND2X1 U42 ( .IN1(n30), .IN2(n15), .Q(n16) );
  AND2X1 U43 ( .IN1(n31), .IN2(n16), .Q(n17) );
  AND2X1 U44 ( .IN1(n32), .IN2(n17), .Q(n18) );
  AND2X1 U45 ( .IN1(n33), .IN2(n18), .Q(n19) );
  AND2X1 U46 ( .IN1(n34), .IN2(n19), .Q(n20) );
  AND2X1 U47 ( .IN1(n36), .IN2(n20), .Q(n21) );
  AND2X1 U48 ( .IN1(n37), .IN2(n21), .Q(n22) );
  AND2X1 U49 ( .IN1(n38), .IN2(n22), .Q(n23) );
  AND2X1 U50 ( .IN1(n39), .IN2(n23), .Q(n24) );
  INVX0 U51 ( .INP(A[24]), .ZN(n40) );
  XOR2X1 U52 ( .IN1(n10), .IN2(A[10]), .Q(DIFF[10]) );
  XOR2X1 U53 ( .IN1(n11), .IN2(A[11]), .Q(DIFF[11]) );
  XOR2X1 U54 ( .IN1(n12), .IN2(A[12]), .Q(DIFF[12]) );
  XOR2X1 U55 ( .IN1(n13), .IN2(A[13]), .Q(DIFF[13]) );
  XOR2X1 U56 ( .IN1(n14), .IN2(A[14]), .Q(DIFF[14]) );
  XOR2X1 U57 ( .IN1(n15), .IN2(A[15]), .Q(DIFF[15]) );
  XOR2X1 U58 ( .IN1(n16), .IN2(A[16]), .Q(DIFF[16]) );
  XOR2X1 U59 ( .IN1(n17), .IN2(A[17]), .Q(DIFF[17]) );
  XOR2X1 U60 ( .IN1(n18), .IN2(A[18]), .Q(DIFF[18]) );
  XOR2X1 U61 ( .IN1(n19), .IN2(A[19]), .Q(DIFF[19]) );
  XOR2X1 U62 ( .IN1(n1), .IN2(A[1]), .Q(DIFF[1]) );
  XOR2X1 U63 ( .IN1(n20), .IN2(A[20]), .Q(DIFF[20]) );
  XOR2X1 U64 ( .IN1(n21), .IN2(A[21]), .Q(DIFF[21]) );
  XOR2X1 U65 ( .IN1(n22), .IN2(A[22]), .Q(DIFF[22]) );
  XOR2X1 U66 ( .IN1(n23), .IN2(A[23]), .Q(DIFF[23]) );
  XOR2X1 U67 ( .IN1(n24), .IN2(A[24]), .Q(DIFF[24]) );
  XOR2X1 U68 ( .IN1(n2), .IN2(A[2]), .Q(DIFF[2]) );
  XOR2X1 U69 ( .IN1(n3), .IN2(A[3]), .Q(DIFF[3]) );
  XOR2X1 U70 ( .IN1(n4), .IN2(A[4]), .Q(DIFF[4]) );
  XOR2X1 U71 ( .IN1(n5), .IN2(A[5]), .Q(DIFF[5]) );
  XOR2X1 U72 ( .IN1(n6), .IN2(A[6]), .Q(DIFF[6]) );
  XOR2X1 U73 ( .IN1(n7), .IN2(A[7]), .Q(DIFF[7]) );
  XOR2X1 U74 ( .IN1(n8), .IN2(A[8]), .Q(DIFF[8]) );
  XOR2X1 U75 ( .IN1(n9), .IN2(A[9]), .Q(DIFF[9]) );
  XOR2X1 U76 ( .IN1(B[0]), .IN2(A[0]), .Q(DIFF[0]) );
endmodule


module sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_add_0 ( A, B, CI, SUM, CO );
  input [51:0] A;
  input [51:0] B;
  output [51:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [51:1] carry;

  FADDX1 U1_51 ( .A(A[51]), .B(B[51]), .CI(carry[51]), .S(SUM[51]) );
  FADDX1 U1_50 ( .A(A[50]), .B(B[50]), .CI(carry[50]), .CO(carry[51]), .S(
        SUM[50]) );
  FADDX1 U1_49 ( .A(A[49]), .B(B[49]), .CI(carry[49]), .CO(carry[50]), .S(
        SUM[49]) );
  FADDX1 U1_48 ( .A(A[48]), .B(B[48]), .CI(carry[48]), .CO(carry[49]), .S(
        SUM[48]) );
  FADDX1 U1_47 ( .A(A[47]), .B(B[47]), .CI(carry[47]), .CO(carry[48]), .S(
        SUM[47]) );
  FADDX1 U1_46 ( .A(A[46]), .B(B[46]), .CI(carry[46]), .CO(carry[47]), .S(
        SUM[46]) );
  FADDX1 U1_45 ( .A(A[45]), .B(B[45]), .CI(carry[45]), .CO(carry[46]), .S(
        SUM[45]) );
  FADDX1 U1_44 ( .A(A[44]), .B(B[44]), .CI(carry[44]), .CO(carry[45]), .S(
        SUM[44]) );
  FADDX1 U1_43 ( .A(A[43]), .B(B[43]), .CI(carry[43]), .CO(carry[44]), .S(
        SUM[43]) );
  FADDX1 U1_42 ( .A(A[42]), .B(B[42]), .CI(carry[42]), .CO(carry[43]), .S(
        SUM[42]) );
  FADDX1 U1_41 ( .A(A[41]), .B(B[41]), .CI(carry[41]), .CO(carry[42]), .S(
        SUM[41]) );
  FADDX1 U1_40 ( .A(A[40]), .B(B[40]), .CI(carry[40]), .CO(carry[41]), .S(
        SUM[40]) );
  FADDX1 U1_39 ( .A(A[39]), .B(B[39]), .CI(carry[39]), .CO(carry[40]), .S(
        SUM[39]) );
  FADDX1 U1_38 ( .A(A[38]), .B(B[38]), .CI(carry[38]), .CO(carry[39]), .S(
        SUM[38]) );
  FADDX1 U1_37 ( .A(A[37]), .B(B[37]), .CI(carry[37]), .CO(carry[38]), .S(
        SUM[37]) );
  FADDX1 U1_36 ( .A(A[36]), .B(B[36]), .CI(carry[36]), .CO(carry[37]), .S(
        SUM[36]) );
  FADDX1 U1_35 ( .A(A[35]), .B(B[35]), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  FADDX1 U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  FADDX1 U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  FADDX1 U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  FADDX1 U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  FADDX1 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  FADDX1 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  FADDX1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  FADDX1 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FADDX1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FADDX1 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FADDX1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FADDX1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FADDX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FADDX1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FADDX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FADDX1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FADDX1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FADDX1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X1 U1 ( .IN1(A[0]), .IN2(B[0]), .Q(n1) );
  XOR2X1 U2 ( .IN1(A[0]), .IN2(B[0]), .Q(SUM[0]) );
endmodule


module sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [51:0] A;
  input [51:0] B;
  output [51:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52;
  wire   [52:0] carry;

  FADDX1 U2_50 ( .A(A[50]), .B(n51), .CI(carry[50]), .CO(carry[51]), .S(
        DIFF[50]) );
  FADDX1 U2_49 ( .A(A[49]), .B(n50), .CI(carry[49]), .CO(carry[50]), .S(
        DIFF[49]) );
  FADDX1 U2_48 ( .A(A[48]), .B(n49), .CI(carry[48]), .CO(carry[49]), .S(
        DIFF[48]) );
  FADDX1 U2_47 ( .A(A[47]), .B(n48), .CI(carry[47]), .CO(carry[48]), .S(
        DIFF[47]) );
  FADDX1 U2_46 ( .A(A[46]), .B(n47), .CI(carry[46]), .CO(carry[47]), .S(
        DIFF[46]) );
  FADDX1 U2_45 ( .A(A[45]), .B(n46), .CI(carry[45]), .CO(carry[46]), .S(
        DIFF[45]) );
  FADDX1 U2_44 ( .A(A[44]), .B(n45), .CI(carry[44]), .CO(carry[45]), .S(
        DIFF[44]) );
  FADDX1 U2_43 ( .A(A[43]), .B(n44), .CI(carry[43]), .CO(carry[44]), .S(
        DIFF[43]) );
  FADDX1 U2_42 ( .A(A[42]), .B(n43), .CI(carry[42]), .CO(carry[43]), .S(
        DIFF[42]) );
  FADDX1 U2_41 ( .A(A[41]), .B(n42), .CI(carry[41]), .CO(carry[42]), .S(
        DIFF[41]) );
  FADDX1 U2_40 ( .A(A[40]), .B(n21), .CI(carry[40]), .CO(carry[41]), .S(
        DIFF[40]) );
  FADDX1 U2_39 ( .A(A[39]), .B(n41), .CI(carry[39]), .CO(carry[40]), .S(
        DIFF[39]) );
  FADDX1 U2_38 ( .A(A[38]), .B(n20), .CI(carry[38]), .CO(carry[39]), .S(
        DIFF[38]) );
  FADDX1 U2_37 ( .A(A[37]), .B(n40), .CI(carry[37]), .CO(carry[38]), .S(
        DIFF[37]) );
  FADDX1 U2_36 ( .A(A[36]), .B(n19), .CI(carry[36]), .CO(carry[37]), .S(
        DIFF[36]) );
  FADDX1 U2_35 ( .A(A[35]), .B(n39), .CI(carry[35]), .CO(carry[36]), .S(
        DIFF[35]) );
  FADDX1 U2_34 ( .A(A[34]), .B(n18), .CI(carry[34]), .CO(carry[35]), .S(
        DIFF[34]) );
  FADDX1 U2_33 ( .A(A[33]), .B(n38), .CI(carry[33]), .CO(carry[34]), .S(
        DIFF[33]) );
  FADDX1 U2_32 ( .A(A[32]), .B(n17), .CI(carry[32]), .CO(carry[33]), .S(
        DIFF[32]) );
  FADDX1 U2_31 ( .A(A[31]), .B(n27), .CI(carry[31]), .CO(carry[32]), .S(
        DIFF[31]) );
  FADDX1 U2_30 ( .A(A[30]), .B(n14), .CI(carry[30]), .CO(carry[31]), .S(
        DIFF[30]) );
  FADDX1 U2_29 ( .A(A[29]), .B(n31), .CI(carry[29]), .CO(carry[30]), .S(
        DIFF[29]) );
  FADDX1 U2_28 ( .A(A[28]), .B(n6), .CI(carry[28]), .CO(carry[29]), .S(
        DIFF[28]) );
  FADDX1 U2_27 ( .A(A[27]), .B(n23), .CI(carry[27]), .CO(carry[28]), .S(
        DIFF[27]) );
  FADDX1 U2_26 ( .A(A[26]), .B(n10), .CI(carry[26]), .CO(carry[27]), .S(
        DIFF[26]) );
  FADDX1 U2_25 ( .A(A[25]), .B(n36), .CI(carry[25]), .CO(carry[26]), .S(
        DIFF[25]) );
  FADDX1 U2_24 ( .A(A[24]), .B(n3), .CI(carry[24]), .CO(carry[25]), .S(
        DIFF[24]) );
  FADDX1 U2_23 ( .A(A[23]), .B(n28), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  FADDX1 U2_22 ( .A(A[22]), .B(n15), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FADDX1 U2_21 ( .A(A[21]), .B(n32), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  FADDX1 U2_20 ( .A(A[20]), .B(n7), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FADDX1 U2_19 ( .A(A[19]), .B(n24), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FADDX1 U2_18 ( .A(A[18]), .B(n11), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  FADDX1 U2_17 ( .A(A[17]), .B(n34), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FADDX1 U2_16 ( .A(A[16]), .B(n2), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FADDX1 U2_15 ( .A(A[15]), .B(n26), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FADDX1 U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FADDX1 U2_13 ( .A(A[13]), .B(n30), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FADDX1 U2_12 ( .A(A[12]), .B(n5), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FADDX1 U2_11 ( .A(A[11]), .B(n22), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FADDX1 U2_10 ( .A(A[10]), .B(n9), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FADDX1 U2_9 ( .A(A[9]), .B(n37), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FADDX1 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FADDX1 U2_7 ( .A(A[7]), .B(n29), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  FADDX1 U2_6 ( .A(A[6]), .B(n16), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  FADDX1 U2_5 ( .A(A[5]), .B(n33), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  FADDX1 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n25), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n12), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  FADDX1 U2_1 ( .A(A[1]), .B(n35), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_51 ( .IN1(A[51]), .IN2(n52), .IN3(carry[51]), .Q(DIFF[51]) );
  INVX0 U1 ( .INP(B[2]), .ZN(n12) );
  INVX0 U2 ( .INP(B[4]), .ZN(n8) );
  INVX0 U3 ( .INP(B[6]), .ZN(n16) );
  INVX0 U4 ( .INP(B[8]), .ZN(n4) );
  INVX0 U5 ( .INP(B[10]), .ZN(n9) );
  INVX0 U6 ( .INP(B[12]), .ZN(n5) );
  INVX0 U7 ( .INP(B[14]), .ZN(n13) );
  INVX0 U8 ( .INP(B[16]), .ZN(n2) );
  INVX0 U9 ( .INP(B[18]), .ZN(n11) );
  INVX0 U10 ( .INP(B[20]), .ZN(n7) );
  INVX0 U11 ( .INP(B[22]), .ZN(n15) );
  INVX0 U12 ( .INP(B[24]), .ZN(n3) );
  INVX0 U13 ( .INP(B[26]), .ZN(n10) );
  INVX0 U14 ( .INP(B[28]), .ZN(n6) );
  INVX0 U15 ( .INP(B[30]), .ZN(n14) );
  INVX0 U16 ( .INP(B[32]), .ZN(n17) );
  INVX0 U17 ( .INP(B[34]), .ZN(n18) );
  INVX0 U18 ( .INP(B[36]), .ZN(n19) );
  INVX0 U19 ( .INP(B[38]), .ZN(n20) );
  INVX0 U20 ( .INP(B[40]), .ZN(n21) );
  INVX0 U21 ( .INP(B[42]), .ZN(n43) );
  INVX0 U22 ( .INP(B[44]), .ZN(n45) );
  INVX0 U23 ( .INP(B[46]), .ZN(n47) );
  INVX0 U24 ( .INP(B[48]), .ZN(n49) );
  INVX0 U25 ( .INP(B[50]), .ZN(n51) );
  INVX0 U26 ( .INP(B[3]), .ZN(n25) );
  INVX0 U27 ( .INP(B[5]), .ZN(n33) );
  INVX0 U28 ( .INP(B[7]), .ZN(n29) );
  INVX0 U29 ( .INP(B[9]), .ZN(n37) );
  INVX0 U30 ( .INP(B[11]), .ZN(n22) );
  INVX0 U31 ( .INP(B[13]), .ZN(n30) );
  INVX0 U32 ( .INP(B[15]), .ZN(n26) );
  INVX0 U33 ( .INP(B[17]), .ZN(n34) );
  INVX0 U34 ( .INP(B[19]), .ZN(n24) );
  INVX0 U35 ( .INP(B[21]), .ZN(n32) );
  INVX0 U36 ( .INP(B[23]), .ZN(n28) );
  INVX0 U37 ( .INP(B[25]), .ZN(n36) );
  INVX0 U38 ( .INP(B[27]), .ZN(n23) );
  INVX0 U39 ( .INP(B[29]), .ZN(n31) );
  INVX0 U40 ( .INP(B[31]), .ZN(n27) );
  INVX0 U41 ( .INP(B[33]), .ZN(n38) );
  INVX0 U42 ( .INP(B[35]), .ZN(n39) );
  INVX0 U43 ( .INP(B[37]), .ZN(n40) );
  INVX0 U44 ( .INP(B[39]), .ZN(n41) );
  INVX0 U45 ( .INP(B[41]), .ZN(n42) );
  INVX0 U46 ( .INP(B[43]), .ZN(n44) );
  INVX0 U47 ( .INP(B[45]), .ZN(n46) );
  INVX0 U48 ( .INP(B[47]), .ZN(n48) );
  INVX0 U49 ( .INP(B[49]), .ZN(n50) );
  NAND2X1 U50 ( .IN1(n1), .IN2(B[0]), .QN(carry[1]) );
  INVX0 U51 ( .INP(B[1]), .ZN(n35) );
  INVX0 U52 ( .INP(A[0]), .ZN(n1) );
  INVX0 U53 ( .INP(B[51]), .ZN(n52) );
  XOR2X1 U54 ( .IN1(B[0]), .IN2(A[0]), .Q(DIFF[0]) );
endmodule


module sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_add_1 ( A, B, CI, SUM, CO );
  input [51:0] A;
  input [51:0] B;
  output [51:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [51:1] carry;

  FADDX1 U1_50 ( .A(A[50]), .B(B[50]), .CI(n25), .CO(carry[51]), .S(SUM[50])
         );
  FADDX1 U1_48 ( .A(A[48]), .B(B[48]), .CI(n22), .CO(carry[49]), .S(SUM[48])
         );
  FADDX1 U1_46 ( .A(A[46]), .B(B[46]), .CI(n21), .CO(carry[47]), .S(SUM[46])
         );
  FADDX1 U1_44 ( .A(A[44]), .B(B[44]), .CI(n20), .CO(carry[45]), .S(SUM[44])
         );
  FADDX1 U1_42 ( .A(A[42]), .B(B[42]), .CI(n19), .CO(carry[43]), .S(SUM[42])
         );
  FADDX1 U1_40 ( .A(A[40]), .B(B[40]), .CI(n18), .CO(carry[41]), .S(SUM[40])
         );
  FADDX1 U1_38 ( .A(A[38]), .B(B[38]), .CI(n17), .CO(carry[39]), .S(SUM[38])
         );
  FADDX1 U1_36 ( .A(A[36]), .B(B[36]), .CI(n16), .CO(carry[37]), .S(SUM[36])
         );
  FADDX1 U1_34 ( .A(A[34]), .B(B[34]), .CI(n15), .CO(carry[35]), .S(SUM[34])
         );
  FADDX1 U1_32 ( .A(A[32]), .B(B[32]), .CI(n14), .CO(carry[33]), .S(SUM[32])
         );
  FADDX1 U1_30 ( .A(A[30]), .B(B[30]), .CI(n13), .CO(carry[31]), .S(SUM[30])
         );
  FADDX1 U1_28 ( .A(A[28]), .B(B[28]), .CI(n12), .CO(carry[29]), .S(SUM[28])
         );
  FADDX1 U1_26 ( .A(A[26]), .B(B[26]), .CI(n11), .CO(carry[27]), .S(SUM[26])
         );
  FADDX1 U1_24 ( .A(A[24]), .B(B[24]), .CI(n10), .CO(carry[25]), .S(SUM[24])
         );
  FADDX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(n9), .CO(carry[23]), .S(SUM[22]) );
  FADDX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(n8), .CO(carry[21]), .S(SUM[20]) );
  FADDX1 U1_18 ( .A(A[18]), .B(B[18]), .CI(n7), .CO(carry[19]), .S(SUM[18]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B[16]), .CI(n6), .CO(carry[17]), .S(SUM[16]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(n5), .CO(carry[15]), .S(SUM[14]) );
  FADDX1 U1_12 ( .A(A[12]), .B(B[12]), .CI(n4), .CO(carry[13]), .S(SUM[12]) );
  FADDX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(n23), .CO(carry[11]), .S(SUM[10])
         );
  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(n3), .CO(carry[9]), .S(SUM[8]) );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(n2), .CO(carry[7]), .S(SUM[6]) );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(n24), .CO(carry[3]), .S(SUM[2]) );
  AND2X1 U1 ( .IN1(A[3]), .IN2(carry[3]), .Q(n1) );
  AND2X1 U2 ( .IN1(A[5]), .IN2(carry[5]), .Q(n2) );
  AND2X1 U3 ( .IN1(A[7]), .IN2(carry[7]), .Q(n3) );
  AND2X1 U4 ( .IN1(A[11]), .IN2(carry[11]), .Q(n4) );
  AND2X1 U5 ( .IN1(A[13]), .IN2(carry[13]), .Q(n5) );
  AND2X1 U6 ( .IN1(A[15]), .IN2(carry[15]), .Q(n6) );
  AND2X1 U7 ( .IN1(A[17]), .IN2(carry[17]), .Q(n7) );
  AND2X1 U8 ( .IN1(A[19]), .IN2(carry[19]), .Q(n8) );
  AND2X1 U9 ( .IN1(A[21]), .IN2(carry[21]), .Q(n9) );
  AND2X1 U10 ( .IN1(A[23]), .IN2(carry[23]), .Q(n10) );
  AND2X1 U11 ( .IN1(A[25]), .IN2(carry[25]), .Q(n11) );
  AND2X1 U12 ( .IN1(A[27]), .IN2(carry[27]), .Q(n12) );
  AND2X1 U13 ( .IN1(A[29]), .IN2(carry[29]), .Q(n13) );
  AND2X1 U14 ( .IN1(A[31]), .IN2(carry[31]), .Q(n14) );
  AND2X1 U15 ( .IN1(A[33]), .IN2(carry[33]), .Q(n15) );
  AND2X1 U16 ( .IN1(A[35]), .IN2(carry[35]), .Q(n16) );
  AND2X1 U17 ( .IN1(A[37]), .IN2(carry[37]), .Q(n17) );
  AND2X1 U18 ( .IN1(A[39]), .IN2(carry[39]), .Q(n18) );
  AND2X1 U19 ( .IN1(A[41]), .IN2(carry[41]), .Q(n19) );
  AND2X1 U20 ( .IN1(A[43]), .IN2(carry[43]), .Q(n20) );
  AND2X1 U21 ( .IN1(A[45]), .IN2(carry[45]), .Q(n21) );
  AND2X1 U22 ( .IN1(A[47]), .IN2(carry[47]), .Q(n22) );
  AND2X1 U23 ( .IN1(A[9]), .IN2(carry[9]), .Q(n23) );
  AND2X1 U24 ( .IN1(A[1]), .IN2(n26), .Q(n24) );
  AND2X1 U25 ( .IN1(A[49]), .IN2(carry[49]), .Q(n25) );
  AND2X1 U26 ( .IN1(A[0]), .IN2(B[0]), .Q(n26) );
  XOR2X1 U27 ( .IN1(A[51]), .IN2(carry[51]), .Q(SUM[51]) );
  XOR2X1 U28 ( .IN1(A[49]), .IN2(carry[49]), .Q(SUM[49]) );
  XOR2X1 U29 ( .IN1(A[47]), .IN2(carry[47]), .Q(SUM[47]) );
  XOR2X1 U30 ( .IN1(A[45]), .IN2(carry[45]), .Q(SUM[45]) );
  XOR2X1 U31 ( .IN1(A[43]), .IN2(carry[43]), .Q(SUM[43]) );
  XOR2X1 U32 ( .IN1(A[41]), .IN2(carry[41]), .Q(SUM[41]) );
  XOR2X1 U33 ( .IN1(A[39]), .IN2(carry[39]), .Q(SUM[39]) );
  XOR2X1 U34 ( .IN1(A[37]), .IN2(carry[37]), .Q(SUM[37]) );
  XOR2X1 U35 ( .IN1(A[35]), .IN2(carry[35]), .Q(SUM[35]) );
  XOR2X1 U36 ( .IN1(A[33]), .IN2(carry[33]), .Q(SUM[33]) );
  XOR2X1 U37 ( .IN1(A[31]), .IN2(carry[31]), .Q(SUM[31]) );
  XOR2X1 U38 ( .IN1(A[29]), .IN2(carry[29]), .Q(SUM[29]) );
  XOR2X1 U39 ( .IN1(A[27]), .IN2(carry[27]), .Q(SUM[27]) );
  XOR2X1 U40 ( .IN1(A[25]), .IN2(carry[25]), .Q(SUM[25]) );
  XOR2X1 U41 ( .IN1(A[23]), .IN2(carry[23]), .Q(SUM[23]) );
  XOR2X1 U42 ( .IN1(A[21]), .IN2(carry[21]), .Q(SUM[21]) );
  XOR2X1 U43 ( .IN1(A[19]), .IN2(carry[19]), .Q(SUM[19]) );
  XOR2X1 U44 ( .IN1(A[17]), .IN2(carry[17]), .Q(SUM[17]) );
  XOR2X1 U45 ( .IN1(A[15]), .IN2(carry[15]), .Q(SUM[15]) );
  XOR2X1 U46 ( .IN1(A[13]), .IN2(carry[13]), .Q(SUM[13]) );
  XOR2X1 U47 ( .IN1(A[11]), .IN2(carry[11]), .Q(SUM[11]) );
  XOR2X1 U48 ( .IN1(A[9]), .IN2(carry[9]), .Q(SUM[9]) );
  XOR2X1 U49 ( .IN1(A[7]), .IN2(carry[7]), .Q(SUM[7]) );
  XOR2X1 U50 ( .IN1(A[5]), .IN2(carry[5]), .Q(SUM[5]) );
  XOR2X1 U51 ( .IN1(A[3]), .IN2(carry[3]), .Q(SUM[3]) );
  XOR2X1 U52 ( .IN1(A[1]), .IN2(n26), .Q(SUM[1]) );
  XOR2X1 U53 ( .IN1(A[0]), .IN2(B[0]), .Q(SUM[0]) );
endmodule


module sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_cmp6_0 ( A, B, TC, LT, GT, EQ, LE, GE, 
        NE );
  input [51:0] A;
  input [51:0] B;
  input TC;
  output LT, GT, EQ, LE, GE, NE;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180;

  INVX0 U1 ( .INP(n58), .ZN(LT) );
  INVX0 U2 ( .INP(n90), .ZN(n4) );
  INVX0 U3 ( .INP(n91), .ZN(n3) );
  INVX0 U4 ( .INP(n106), .ZN(n2) );
  INVX0 U5 ( .INP(A[3]), .ZN(n5) );
  INVX0 U6 ( .INP(A[2]), .ZN(n6) );
  INVX0 U7 ( .INP(B[9]), .ZN(n50) );
  INVX0 U8 ( .INP(B[7]), .ZN(n52) );
  INVX0 U9 ( .INP(B[11]), .ZN(n48) );
  INVX0 U10 ( .INP(B[15]), .ZN(n44) );
  INVX0 U11 ( .INP(B[13]), .ZN(n46) );
  INVX0 U12 ( .INP(B[17]), .ZN(n42) );
  INVX0 U13 ( .INP(B[21]), .ZN(n38) );
  INVX0 U14 ( .INP(B[19]), .ZN(n40) );
  INVX0 U15 ( .INP(B[23]), .ZN(n36) );
  INVX0 U16 ( .INP(B[25]), .ZN(n34) );
  INVX0 U17 ( .INP(B[0]), .ZN(n57) );
  INVX0 U18 ( .INP(B[4]), .ZN(n55) );
  INVX0 U19 ( .INP(B[5]), .ZN(n54) );
  INVX0 U20 ( .INP(A[1]), .ZN(n7) );
  INVX0 U21 ( .INP(B[8]), .ZN(n51) );
  INVX0 U22 ( .INP(B[6]), .ZN(n53) );
  INVX0 U23 ( .INP(B[14]), .ZN(n45) );
  INVX0 U24 ( .INP(B[10]), .ZN(n49) );
  INVX0 U25 ( .INP(B[16]), .ZN(n43) );
  INVX0 U26 ( .INP(B[12]), .ZN(n47) );
  INVX0 U27 ( .INP(B[20]), .ZN(n39) );
  INVX0 U28 ( .INP(B[22]), .ZN(n37) );
  INVX0 U29 ( .INP(B[18]), .ZN(n41) );
  INVX0 U30 ( .INP(B[26]), .ZN(n33) );
  INVX0 U31 ( .INP(B[24]), .ZN(n35) );
  INVX0 U32 ( .INP(B[50]), .ZN(n9) );
  INVX0 U33 ( .INP(B[27]), .ZN(n32) );
  INVX0 U34 ( .INP(B[29]), .ZN(n30) );
  INVX0 U35 ( .INP(B[33]), .ZN(n26) );
  INVX0 U36 ( .INP(B[31]), .ZN(n28) );
  INVX0 U37 ( .INP(B[35]), .ZN(n24) );
  INVX0 U38 ( .INP(B[39]), .ZN(n20) );
  INVX0 U39 ( .INP(B[37]), .ZN(n22) );
  INVX0 U40 ( .INP(B[41]), .ZN(n18) );
  INVX0 U41 ( .INP(B[43]), .ZN(n16) );
  INVX0 U42 ( .INP(B[47]), .ZN(n12) );
  INVX0 U43 ( .INP(B[45]), .ZN(n14) );
  INVX0 U44 ( .INP(B[49]), .ZN(n10) );
  INVX0 U45 ( .INP(B[28]), .ZN(n31) );
  INVX0 U46 ( .INP(B[34]), .ZN(n25) );
  INVX0 U47 ( .INP(B[30]), .ZN(n29) );
  INVX0 U48 ( .INP(B[32]), .ZN(n27) );
  INVX0 U49 ( .INP(B[40]), .ZN(n19) );
  INVX0 U50 ( .INP(B[36]), .ZN(n23) );
  INVX0 U51 ( .INP(B[38]), .ZN(n21) );
  INVX0 U52 ( .INP(B[46]), .ZN(n13) );
  INVX0 U53 ( .INP(B[42]), .ZN(n17) );
  INVX0 U54 ( .INP(B[44]), .ZN(n15) );
  INVX0 U55 ( .INP(B[48]), .ZN(n11) );
  INVX0 U56 ( .INP(B[51]), .ZN(n8) );
  INVX0 U57 ( .INP(B[1]), .ZN(n56) );
  NOR2X0 U58 ( .IN1(n59), .IN2(n60), .QN(EQ) );
  NAND4X0 U59 ( .IN1(n61), .IN2(n62), .IN3(n63), .IN4(n64), .QN(n60) );
  AND4X1 U60 ( .IN1(n65), .IN2(n66), .IN3(n67), .IN4(n68), .Q(n64) );
  AND4X1 U61 ( .IN1(n69), .IN2(n70), .IN3(n71), .IN4(n72), .Q(n65) );
  AND4X1 U62 ( .IN1(n73), .IN2(n74), .IN3(n75), .IN4(n76), .Q(n63) );
  AND3X1 U63 ( .IN1(n77), .IN2(n78), .IN3(n79), .Q(n73) );
  AND4X1 U64 ( .IN1(n80), .IN2(n81), .IN3(n82), .IN4(n83), .Q(n62) );
  AND4X1 U65 ( .IN1(n84), .IN2(n85), .IN3(n86), .IN4(n87), .Q(n80) );
  NOR4X0 U66 ( .IN1(n88), .IN2(n89), .IN3(n3), .IN4(n4), .QN(n61) );
  OA22X1 U67 ( .IN1(n92), .IN2(n56), .IN3(A[1]), .IN4(n92), .Q(n89) );
  AND2X1 U68 ( .IN1(A[0]), .IN2(n57), .Q(n92) );
  NAND3X0 U69 ( .IN1(n93), .IN2(n94), .IN3(n95), .QN(n88) );
  NAND4X0 U70 ( .IN1(n96), .IN2(n97), .IN3(n98), .IN4(n99), .QN(n59) );
  AND4X1 U71 ( .IN1(n100), .IN2(n101), .IN3(n102), .IN4(n103), .Q(n99) );
  AND4X1 U72 ( .IN1(n104), .IN2(n105), .IN3(n106), .IN4(n58), .Q(n100) );
  OA22X1 U73 ( .IN1(A[51]), .IN2(n8), .IN3(n2), .IN4(n107), .Q(n58) );
  OA22X1 U74 ( .IN1(A[50]), .IN2(n9), .IN3(n108), .IN4(n109), .Q(n107) );
  NAND2X0 U75 ( .IN1(n90), .IN2(n91), .QN(n109) );
  NAND2X0 U76 ( .IN1(A[50]), .IN2(n9), .QN(n91) );
  NAND2X0 U77 ( .IN1(A[49]), .IN2(n10), .QN(n90) );
  OA222X1 U78 ( .IN1(A[49]), .IN2(n10), .IN3(A[48]), .IN4(n11), .IN5(n110), 
        .IN6(n111), .Q(n108) );
  NAND2X0 U79 ( .IN1(n95), .IN2(n93), .QN(n111) );
  NAND2X0 U80 ( .IN1(A[47]), .IN2(n12), .QN(n93) );
  NAND2X0 U81 ( .IN1(A[48]), .IN2(n11), .QN(n95) );
  OA222X1 U82 ( .IN1(A[47]), .IN2(n12), .IN3(A[46]), .IN4(n13), .IN5(n112), 
        .IN6(n113), .Q(n110) );
  NAND2X0 U83 ( .IN1(n94), .IN2(n81), .QN(n113) );
  NAND2X0 U84 ( .IN1(A[45]), .IN2(n14), .QN(n81) );
  NAND2X0 U85 ( .IN1(A[46]), .IN2(n13), .QN(n94) );
  OA222X1 U86 ( .IN1(A[45]), .IN2(n14), .IN3(A[44]), .IN4(n15), .IN5(n114), 
        .IN6(n115), .Q(n112) );
  NAND2X0 U87 ( .IN1(n83), .IN2(n82), .QN(n115) );
  NAND2X0 U88 ( .IN1(A[43]), .IN2(n16), .QN(n82) );
  NAND2X0 U89 ( .IN1(A[44]), .IN2(n15), .QN(n83) );
  OA222X1 U90 ( .IN1(A[43]), .IN2(n16), .IN3(A[42]), .IN4(n17), .IN5(n116), 
        .IN6(n117), .Q(n114) );
  NAND2X0 U91 ( .IN1(n84), .IN2(n85), .QN(n117) );
  NAND2X0 U92 ( .IN1(A[41]), .IN2(n18), .QN(n85) );
  NAND2X0 U93 ( .IN1(A[42]), .IN2(n17), .QN(n84) );
  OA222X1 U94 ( .IN1(A[41]), .IN2(n18), .IN3(A[40]), .IN4(n19), .IN5(n118), 
        .IN6(n119), .Q(n116) );
  NAND2X0 U95 ( .IN1(n86), .IN2(n87), .QN(n119) );
  NAND2X0 U96 ( .IN1(A[39]), .IN2(n20), .QN(n87) );
  NAND2X0 U97 ( .IN1(A[40]), .IN2(n19), .QN(n86) );
  OA222X1 U98 ( .IN1(A[39]), .IN2(n20), .IN3(A[38]), .IN4(n21), .IN5(n120), 
        .IN6(n121), .Q(n118) );
  NAND2X0 U99 ( .IN1(n74), .IN2(n76), .QN(n121) );
  NAND2X0 U100 ( .IN1(A[37]), .IN2(n22), .QN(n76) );
  NAND2X0 U101 ( .IN1(A[38]), .IN2(n21), .QN(n74) );
  OA222X1 U102 ( .IN1(A[37]), .IN2(n22), .IN3(A[36]), .IN4(n23), .IN5(n122), 
        .IN6(n123), .Q(n120) );
  NAND2X0 U103 ( .IN1(n75), .IN2(n79), .QN(n123) );
  NAND2X0 U104 ( .IN1(A[35]), .IN2(n24), .QN(n79) );
  NAND2X0 U105 ( .IN1(A[36]), .IN2(n23), .QN(n75) );
  OA222X1 U106 ( .IN1(A[35]), .IN2(n24), .IN3(A[34]), .IN4(n25), .IN5(n124), 
        .IN6(n125), .Q(n122) );
  NAND2X0 U107 ( .IN1(n77), .IN2(n78), .QN(n125) );
  NAND2X0 U108 ( .IN1(A[33]), .IN2(n26), .QN(n78) );
  NAND2X0 U109 ( .IN1(A[34]), .IN2(n25), .QN(n77) );
  OA222X1 U110 ( .IN1(A[33]), .IN2(n26), .IN3(A[32]), .IN4(n27), .IN5(n126), 
        .IN6(n127), .Q(n124) );
  NAND2X0 U111 ( .IN1(n66), .IN2(n68), .QN(n127) );
  NAND2X0 U112 ( .IN1(A[31]), .IN2(n28), .QN(n68) );
  NAND2X0 U113 ( .IN1(A[32]), .IN2(n27), .QN(n66) );
  OA222X1 U114 ( .IN1(A[31]), .IN2(n28), .IN3(A[30]), .IN4(n29), .IN5(n128), 
        .IN6(n129), .Q(n126) );
  NAND2X0 U115 ( .IN1(n67), .IN2(n69), .QN(n129) );
  NAND2X0 U116 ( .IN1(A[29]), .IN2(n30), .QN(n69) );
  NAND2X0 U117 ( .IN1(A[30]), .IN2(n29), .QN(n67) );
  OA222X1 U118 ( .IN1(A[29]), .IN2(n30), .IN3(A[28]), .IN4(n31), .IN5(n130), 
        .IN6(n131), .Q(n128) );
  NAND2X0 U119 ( .IN1(n70), .IN2(n71), .QN(n131) );
  NAND2X0 U120 ( .IN1(A[27]), .IN2(n32), .QN(n71) );
  NAND2X0 U121 ( .IN1(A[28]), .IN2(n31), .QN(n70) );
  OA222X1 U122 ( .IN1(A[27]), .IN2(n32), .IN3(A[26]), .IN4(n33), .IN5(n132), 
        .IN6(n133), .Q(n130) );
  NAND2X0 U123 ( .IN1(n72), .IN2(n134), .QN(n133) );
  NAND2X0 U124 ( .IN1(A[26]), .IN2(n33), .QN(n72) );
  OA222X1 U125 ( .IN1(A[25]), .IN2(n34), .IN3(A[24]), .IN4(n35), .IN5(n135), 
        .IN6(n136), .Q(n132) );
  NAND2X0 U126 ( .IN1(n137), .IN2(n138), .QN(n136) );
  OA222X1 U127 ( .IN1(A[23]), .IN2(n36), .IN3(A[22]), .IN4(n37), .IN5(n139), 
        .IN6(n140), .Q(n135) );
  NAND2X0 U128 ( .IN1(n141), .IN2(n142), .QN(n140) );
  OA222X1 U129 ( .IN1(A[21]), .IN2(n38), .IN3(A[20]), .IN4(n39), .IN5(n143), 
        .IN6(n144), .Q(n139) );
  NAND2X0 U130 ( .IN1(n145), .IN2(n146), .QN(n144) );
  OA222X1 U131 ( .IN1(A[19]), .IN2(n40), .IN3(A[18]), .IN4(n41), .IN5(n147), 
        .IN6(n148), .Q(n143) );
  NAND2X0 U132 ( .IN1(n149), .IN2(n150), .QN(n148) );
  OA222X1 U133 ( .IN1(A[17]), .IN2(n42), .IN3(A[16]), .IN4(n43), .IN5(n151), 
        .IN6(n152), .Q(n147) );
  NAND2X0 U134 ( .IN1(n153), .IN2(n154), .QN(n152) );
  OA222X1 U135 ( .IN1(A[15]), .IN2(n44), .IN3(A[14]), .IN4(n45), .IN5(n155), 
        .IN6(n156), .Q(n151) );
  NAND2X0 U136 ( .IN1(n157), .IN2(n158), .QN(n156) );
  OA222X1 U137 ( .IN1(A[13]), .IN2(n46), .IN3(A[12]), .IN4(n47), .IN5(n159), 
        .IN6(n160), .Q(n155) );
  NAND2X0 U138 ( .IN1(n161), .IN2(n162), .QN(n160) );
  OA222X1 U139 ( .IN1(A[11]), .IN2(n48), .IN3(A[10]), .IN4(n49), .IN5(n163), 
        .IN6(n164), .Q(n159) );
  NAND2X0 U140 ( .IN1(n165), .IN2(n166), .QN(n164) );
  OA222X1 U141 ( .IN1(A[9]), .IN2(n50), .IN3(A[8]), .IN4(n51), .IN5(n167), 
        .IN6(n168), .Q(n163) );
  NAND2X0 U142 ( .IN1(n169), .IN2(n170), .QN(n168) );
  OA222X1 U143 ( .IN1(A[7]), .IN2(n52), .IN3(A[6]), .IN4(n53), .IN5(n171), 
        .IN6(n172), .Q(n167) );
  NAND2X0 U144 ( .IN1(n101), .IN2(n103), .QN(n172) );
  NAND2X0 U145 ( .IN1(A[5]), .IN2(n54), .QN(n103) );
  NAND2X0 U146 ( .IN1(A[6]), .IN2(n53), .QN(n101) );
  OA221X1 U147 ( .IN1(A[5]), .IN2(n54), .IN3(A[4]), .IN4(n55), .IN5(n173), .Q(
        n171) );
  NAND3X0 U148 ( .IN1(n102), .IN2(n104), .IN3(n174), .QN(n173) );
  AO221X1 U149 ( .IN1(B[2]), .IN2(n6), .IN3(B[3]), .IN4(n5), .IN5(n175), .Q(
        n174) );
  OA221X1 U150 ( .IN1(n176), .IN2(n7), .IN3(B[1]), .IN4(n177), .IN5(n105), .Q(
        n175) );
  AND2X1 U151 ( .IN1(n7), .IN2(n176), .Q(n177) );
  NOR2X0 U152 ( .IN1(n57), .IN2(A[0]), .QN(n176) );
  NAND2X0 U153 ( .IN1(A[4]), .IN2(n55), .QN(n102) );
  NAND2X0 U154 ( .IN1(A[51]), .IN2(n8), .QN(n106) );
  OR2X1 U155 ( .IN1(n6), .IN2(B[2]), .Q(n105) );
  OR2X1 U156 ( .IN1(n5), .IN2(B[3]), .Q(n104) );
  AND4X1 U157 ( .IN1(n178), .IN2(n161), .IN3(n165), .IN4(n162), .Q(n98) );
  NAND2X0 U158 ( .IN1(A[11]), .IN2(n48), .QN(n162) );
  NAND2X0 U159 ( .IN1(A[10]), .IN2(n49), .QN(n165) );
  NAND2X0 U160 ( .IN1(A[12]), .IN2(n47), .QN(n161) );
  AND3X1 U161 ( .IN1(n169), .IN2(n170), .IN3(n166), .Q(n178) );
  NAND2X0 U162 ( .IN1(A[9]), .IN2(n50), .QN(n166) );
  NAND2X0 U163 ( .IN1(A[7]), .IN2(n52), .QN(n170) );
  NAND2X0 U164 ( .IN1(A[8]), .IN2(n51), .QN(n169) );
  AND4X1 U165 ( .IN1(n179), .IN2(n146), .IN3(n150), .IN4(n149), .Q(n97) );
  NAND2X0 U166 ( .IN1(A[18]), .IN2(n41), .QN(n149) );
  NAND2X0 U167 ( .IN1(A[17]), .IN2(n42), .QN(n150) );
  NAND2X0 U168 ( .IN1(A[19]), .IN2(n40), .QN(n146) );
  AND4X1 U169 ( .IN1(n153), .IN2(n154), .IN3(n157), .IN4(n158), .Q(n179) );
  NAND2X0 U170 ( .IN1(A[13]), .IN2(n46), .QN(n158) );
  NAND2X0 U171 ( .IN1(A[14]), .IN2(n45), .QN(n157) );
  NAND2X0 U172 ( .IN1(A[15]), .IN2(n44), .QN(n154) );
  NAND2X0 U173 ( .IN1(A[16]), .IN2(n43), .QN(n153) );
  AND4X1 U174 ( .IN1(n180), .IN2(n134), .IN3(n138), .IN4(n137), .Q(n96) );
  NAND2X0 U175 ( .IN1(A[24]), .IN2(n35), .QN(n137) );
  NAND2X0 U176 ( .IN1(A[23]), .IN2(n36), .QN(n138) );
  NAND2X0 U177 ( .IN1(A[25]), .IN2(n34), .QN(n134) );
  AND3X1 U178 ( .IN1(n142), .IN2(n145), .IN3(n141), .Q(n180) );
  NAND2X0 U179 ( .IN1(A[22]), .IN2(n37), .QN(n141) );
  NAND2X0 U180 ( .IN1(A[20]), .IN2(n39), .QN(n145) );
  NAND2X0 U181 ( .IN1(A[21]), .IN2(n38), .QN(n142) );
endmodule


module sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [26:0] carry;

  FADDX1 U2_24 ( .A(A[24]), .B(n3), .CI(carry[24]), .CO(carry[25]), .S(
        DIFF[24]) );
  FADDX1 U2_23 ( .A(A[23]), .B(n4), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  FADDX1 U2_22 ( .A(A[22]), .B(n5), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FADDX1 U2_21 ( .A(A[21]), .B(n6), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  FADDX1 U2_20 ( .A(A[20]), .B(n7), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FADDX1 U2_19 ( .A(A[19]), .B(n8), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FADDX1 U2_18 ( .A(A[18]), .B(n9), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  FADDX1 U2_17 ( .A(A[17]), .B(n10), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FADDX1 U2_16 ( .A(A[16]), .B(n11), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FADDX1 U2_15 ( .A(A[15]), .B(n12), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FADDX1 U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FADDX1 U2_13 ( .A(A[13]), .B(n14), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FADDX1 U2_12 ( .A(A[12]), .B(n15), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FADDX1 U2_11 ( .A(A[11]), .B(n16), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FADDX1 U2_10 ( .A(A[10]), .B(n17), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FADDX1 U2_9 ( .A(A[9]), .B(n18), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FADDX1 U2_8 ( .A(A[8]), .B(n19), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  FADDX1 U2_7 ( .A(A[7]), .B(n20), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  FADDX1 U2_6 ( .A(A[6]), .B(n21), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  FADDX1 U2_5 ( .A(A[5]), .B(n22), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  FADDX1 U2_4 ( .A(A[4]), .B(n23), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  FADDX1 U2_3 ( .A(A[3]), .B(n24), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n25), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  FADDX1 U2_1 ( .A(A[1]), .B(n26), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_25 ( .IN1(A[25]), .IN2(n2), .IN3(carry[25]), .Q(DIFF[25]) );
  NAND2X1 U1 ( .IN1(n1), .IN2(B[0]), .QN(carry[1]) );
  INVX0 U2 ( .INP(B[1]), .ZN(n26) );
  INVX0 U3 ( .INP(A[0]), .ZN(n1) );
  INVX0 U4 ( .INP(B[24]), .ZN(n3) );
  INVX0 U5 ( .INP(B[2]), .ZN(n25) );
  INVX0 U6 ( .INP(B[23]), .ZN(n4) );
  INVX0 U7 ( .INP(B[21]), .ZN(n6) );
  INVX0 U8 ( .INP(B[4]), .ZN(n23) );
  INVX0 U9 ( .INP(B[6]), .ZN(n21) );
  INVX0 U10 ( .INP(B[7]), .ZN(n20) );
  INVX0 U11 ( .INP(B[10]), .ZN(n17) );
  INVX0 U12 ( .INP(B[12]), .ZN(n15) );
  INVX0 U13 ( .INP(B[14]), .ZN(n13) );
  INVX0 U14 ( .INP(B[16]), .ZN(n11) );
  INVX0 U15 ( .INP(B[18]), .ZN(n9) );
  INVX0 U16 ( .INP(B[20]), .ZN(n7) );
  INVX0 U17 ( .INP(B[22]), .ZN(n5) );
  INVX0 U18 ( .INP(B[8]), .ZN(n19) );
  INVX0 U19 ( .INP(B[3]), .ZN(n24) );
  INVX0 U20 ( .INP(B[5]), .ZN(n22) );
  INVX0 U21 ( .INP(B[9]), .ZN(n18) );
  INVX0 U22 ( .INP(B[11]), .ZN(n16) );
  INVX0 U23 ( .INP(B[13]), .ZN(n14) );
  INVX0 U24 ( .INP(B[15]), .ZN(n12) );
  INVX0 U25 ( .INP(B[17]), .ZN(n10) );
  INVX0 U26 ( .INP(B[19]), .ZN(n8) );
  INVX0 U27 ( .INP(B[25]), .ZN(n2) );
  XOR2X1 U28 ( .IN1(B[0]), .IN2(A[0]), .Q(DIFF[0]) );
endmodule


module sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_add_2 ( A, B, CI, SUM, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [25:1] carry;

  FADDX1 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .S(SUM[25]) );
  FADDX1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FADDX1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FADDX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FADDX1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FADDX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FADDX1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FADDX1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FADDX1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X1 U1 ( .IN1(A[0]), .IN2(B[0]), .Q(n1) );
  XOR2X1 U2 ( .IN1(A[0]), .IN2(B[0]), .Q(SUM[0]) );
endmodule


module sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_cmp2_0 ( A, B, LEQ, TC, LT_LE, GE_GT );
  input [51:0] A;
  input [51:0] B;
  input LEQ, TC;
  output LT_LE, GE_GT;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105;

  INVX0 U1 ( .INP(A[51]), .ZN(n1) );
  INVX0 U2 ( .INP(A[1]), .ZN(n51) );
  INVX0 U3 ( .INP(A[16]), .ZN(n36) );
  INVX0 U4 ( .INP(A[22]), .ZN(n30) );
  INVX0 U5 ( .INP(A[28]), .ZN(n24) );
  INVX0 U6 ( .INP(A[34]), .ZN(n18) );
  INVX0 U7 ( .INP(A[40]), .ZN(n12) );
  INVX0 U8 ( .INP(A[46]), .ZN(n6) );
  INVX0 U9 ( .INP(A[4]), .ZN(n48) );
  INVX0 U10 ( .INP(A[10]), .ZN(n42) );
  INVX0 U11 ( .INP(A[7]), .ZN(n45) );
  INVX0 U12 ( .INP(A[13]), .ZN(n39) );
  INVX0 U13 ( .INP(A[19]), .ZN(n33) );
  INVX0 U14 ( .INP(A[25]), .ZN(n27) );
  INVX0 U15 ( .INP(A[31]), .ZN(n21) );
  INVX0 U16 ( .INP(A[37]), .ZN(n15) );
  INVX0 U17 ( .INP(A[43]), .ZN(n9) );
  INVX0 U18 ( .INP(A[49]), .ZN(n3) );
  INVX0 U19 ( .INP(A[3]), .ZN(n49) );
  INVX0 U20 ( .INP(A[11]), .ZN(n41) );
  INVX0 U21 ( .INP(A[15]), .ZN(n37) );
  INVX0 U22 ( .INP(A[21]), .ZN(n31) );
  INVX0 U23 ( .INP(A[29]), .ZN(n23) );
  INVX0 U24 ( .INP(A[35]), .ZN(n17) );
  INVX0 U25 ( .INP(A[9]), .ZN(n43) );
  INVX0 U26 ( .INP(A[2]), .ZN(n50) );
  INVX0 U27 ( .INP(A[5]), .ZN(n47) );
  INVX0 U28 ( .INP(A[17]), .ZN(n35) );
  INVX0 U29 ( .INP(A[23]), .ZN(n29) );
  INVX0 U30 ( .INP(A[27]), .ZN(n25) );
  INVX0 U31 ( .INP(A[33]), .ZN(n19) );
  INVX0 U32 ( .INP(A[39]), .ZN(n13) );
  INVX0 U33 ( .INP(A[41]), .ZN(n11) );
  INVX0 U34 ( .INP(A[45]), .ZN(n7) );
  INVX0 U35 ( .INP(A[47]), .ZN(n5) );
  INVX0 U36 ( .INP(A[50]), .ZN(n2) );
  INVX0 U37 ( .INP(A[12]), .ZN(n40) );
  INVX0 U38 ( .INP(A[14]), .ZN(n38) );
  INVX0 U39 ( .INP(A[20]), .ZN(n32) );
  INVX0 U40 ( .INP(A[30]), .ZN(n22) );
  INVX0 U41 ( .INP(A[36]), .ZN(n16) );
  INVX0 U42 ( .INP(A[42]), .ZN(n10) );
  INVX0 U43 ( .INP(A[44]), .ZN(n8) );
  INVX0 U44 ( .INP(A[48]), .ZN(n4) );
  INVX0 U45 ( .INP(A[6]), .ZN(n46) );
  INVX0 U46 ( .INP(A[8]), .ZN(n44) );
  INVX0 U47 ( .INP(A[18]), .ZN(n34) );
  INVX0 U48 ( .INP(A[24]), .ZN(n28) );
  INVX0 U49 ( .INP(A[26]), .ZN(n26) );
  INVX0 U50 ( .INP(A[32]), .ZN(n20) );
  INVX0 U51 ( .INP(A[38]), .ZN(n14) );
  INVX0 U52 ( .INP(B[0]), .ZN(n52) );
  AO21X1 U53 ( .IN1(B[51]), .IN2(n1), .IN3(n53), .Q(LT_LE) );
  OA22X1 U54 ( .IN1(B[51]), .IN2(n1), .IN3(n54), .IN4(n55), .Q(n53) );
  OA221X1 U55 ( .IN1(B[50]), .IN2(n2), .IN3(B[49]), .IN4(n3), .IN5(n56), .Q(
        n55) );
  AO221X1 U56 ( .IN1(B[48]), .IN2(n4), .IN3(B[49]), .IN4(n3), .IN5(n57), .Q(
        n56) );
  OA221X1 U57 ( .IN1(B[48]), .IN2(n4), .IN3(B[47]), .IN4(n5), .IN5(n58), .Q(
        n57) );
  AO221X1 U58 ( .IN1(B[46]), .IN2(n6), .IN3(B[47]), .IN4(n5), .IN5(n59), .Q(
        n58) );
  OA221X1 U59 ( .IN1(B[46]), .IN2(n6), .IN3(B[45]), .IN4(n7), .IN5(n60), .Q(
        n59) );
  AO221X1 U60 ( .IN1(B[44]), .IN2(n8), .IN3(B[45]), .IN4(n7), .IN5(n61), .Q(
        n60) );
  OA221X1 U61 ( .IN1(B[44]), .IN2(n8), .IN3(B[43]), .IN4(n9), .IN5(n62), .Q(
        n61) );
  AO221X1 U62 ( .IN1(B[42]), .IN2(n10), .IN3(B[43]), .IN4(n9), .IN5(n63), .Q(
        n62) );
  OA221X1 U63 ( .IN1(B[42]), .IN2(n10), .IN3(B[41]), .IN4(n11), .IN5(n64), .Q(
        n63) );
  AO221X1 U64 ( .IN1(B[40]), .IN2(n12), .IN3(B[41]), .IN4(n11), .IN5(n65), .Q(
        n64) );
  OA221X1 U65 ( .IN1(B[40]), .IN2(n12), .IN3(B[39]), .IN4(n13), .IN5(n66), .Q(
        n65) );
  AO221X1 U66 ( .IN1(B[38]), .IN2(n14), .IN3(B[39]), .IN4(n13), .IN5(n67), .Q(
        n66) );
  OA221X1 U67 ( .IN1(B[38]), .IN2(n14), .IN3(B[37]), .IN4(n15), .IN5(n68), .Q(
        n67) );
  AO221X1 U68 ( .IN1(B[36]), .IN2(n16), .IN3(B[37]), .IN4(n15), .IN5(n69), .Q(
        n68) );
  OA221X1 U69 ( .IN1(B[36]), .IN2(n16), .IN3(B[35]), .IN4(n17), .IN5(n70), .Q(
        n69) );
  AO221X1 U70 ( .IN1(B[34]), .IN2(n18), .IN3(B[35]), .IN4(n17), .IN5(n71), .Q(
        n70) );
  OA221X1 U71 ( .IN1(B[34]), .IN2(n18), .IN3(B[33]), .IN4(n19), .IN5(n72), .Q(
        n71) );
  AO221X1 U72 ( .IN1(B[32]), .IN2(n20), .IN3(B[33]), .IN4(n19), .IN5(n73), .Q(
        n72) );
  OA221X1 U73 ( .IN1(B[32]), .IN2(n20), .IN3(B[31]), .IN4(n21), .IN5(n74), .Q(
        n73) );
  AO221X1 U74 ( .IN1(B[30]), .IN2(n22), .IN3(B[31]), .IN4(n21), .IN5(n75), .Q(
        n74) );
  OA221X1 U75 ( .IN1(B[30]), .IN2(n22), .IN3(B[29]), .IN4(n23), .IN5(n76), .Q(
        n75) );
  AO221X1 U76 ( .IN1(B[28]), .IN2(n24), .IN3(B[29]), .IN4(n23), .IN5(n77), .Q(
        n76) );
  OA221X1 U77 ( .IN1(B[28]), .IN2(n24), .IN3(B[27]), .IN4(n25), .IN5(n78), .Q(
        n77) );
  AO221X1 U78 ( .IN1(B[26]), .IN2(n26), .IN3(B[27]), .IN4(n25), .IN5(n79), .Q(
        n78) );
  OA221X1 U79 ( .IN1(B[26]), .IN2(n26), .IN3(B[25]), .IN4(n27), .IN5(n80), .Q(
        n79) );
  AO221X1 U80 ( .IN1(B[24]), .IN2(n28), .IN3(B[25]), .IN4(n27), .IN5(n81), .Q(
        n80) );
  OA221X1 U81 ( .IN1(B[24]), .IN2(n28), .IN3(B[23]), .IN4(n29), .IN5(n82), .Q(
        n81) );
  AO221X1 U82 ( .IN1(B[22]), .IN2(n30), .IN3(B[23]), .IN4(n29), .IN5(n83), .Q(
        n82) );
  OA221X1 U83 ( .IN1(B[22]), .IN2(n30), .IN3(B[21]), .IN4(n31), .IN5(n84), .Q(
        n83) );
  AO221X1 U84 ( .IN1(B[20]), .IN2(n32), .IN3(B[21]), .IN4(n31), .IN5(n85), .Q(
        n84) );
  OA221X1 U85 ( .IN1(B[20]), .IN2(n32), .IN3(B[19]), .IN4(n33), .IN5(n86), .Q(
        n85) );
  AO221X1 U86 ( .IN1(B[18]), .IN2(n34), .IN3(B[19]), .IN4(n33), .IN5(n87), .Q(
        n86) );
  OA221X1 U87 ( .IN1(B[18]), .IN2(n34), .IN3(B[17]), .IN4(n35), .IN5(n88), .Q(
        n87) );
  AO221X1 U88 ( .IN1(B[16]), .IN2(n36), .IN3(B[17]), .IN4(n35), .IN5(n89), .Q(
        n88) );
  OA221X1 U89 ( .IN1(B[16]), .IN2(n36), .IN3(B[15]), .IN4(n37), .IN5(n90), .Q(
        n89) );
  AO221X1 U90 ( .IN1(B[14]), .IN2(n38), .IN3(B[15]), .IN4(n37), .IN5(n91), .Q(
        n90) );
  OA221X1 U91 ( .IN1(B[14]), .IN2(n38), .IN3(B[13]), .IN4(n39), .IN5(n92), .Q(
        n91) );
  AO221X1 U92 ( .IN1(B[12]), .IN2(n40), .IN3(B[13]), .IN4(n39), .IN5(n93), .Q(
        n92) );
  OA221X1 U93 ( .IN1(B[12]), .IN2(n40), .IN3(B[11]), .IN4(n41), .IN5(n94), .Q(
        n93) );
  AO221X1 U94 ( .IN1(B[10]), .IN2(n42), .IN3(B[11]), .IN4(n41), .IN5(n95), .Q(
        n94) );
  OA221X1 U95 ( .IN1(B[9]), .IN2(n43), .IN3(B[10]), .IN4(n42), .IN5(n96), .Q(
        n95) );
  AO221X1 U96 ( .IN1(B[8]), .IN2(n44), .IN3(B[9]), .IN4(n43), .IN5(n97), .Q(
        n96) );
  OA221X1 U97 ( .IN1(B[8]), .IN2(n44), .IN3(B[7]), .IN4(n45), .IN5(n98), .Q(
        n97) );
  AO221X1 U98 ( .IN1(B[6]), .IN2(n46), .IN3(B[7]), .IN4(n45), .IN5(n99), .Q(
        n98) );
  OA221X1 U99 ( .IN1(B[6]), .IN2(n46), .IN3(B[5]), .IN4(n47), .IN5(n100), .Q(
        n99) );
  AO221X1 U100 ( .IN1(B[4]), .IN2(n48), .IN3(B[5]), .IN4(n47), .IN5(n101), .Q(
        n100) );
  OA221X1 U101 ( .IN1(B[4]), .IN2(n48), .IN3(B[3]), .IN4(n49), .IN5(n102), .Q(
        n101) );
  AO221X1 U102 ( .IN1(B[2]), .IN2(n50), .IN3(B[3]), .IN4(n49), .IN5(n103), .Q(
        n102) );
  OA222X1 U103 ( .IN1(B[2]), .IN2(n50), .IN3(B[1]), .IN4(n104), .IN5(n105), 
        .IN6(n51), .Q(n103) );
  AND2X1 U104 ( .IN1(n51), .IN2(n105), .Q(n104) );
  NOR2X0 U105 ( .IN1(n52), .IN2(A[0]), .QN(n105) );
  AND2X1 U106 ( .IN1(n2), .IN2(B[50]), .Q(n54) );
endmodule


module sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_cmp6_1 ( A, B, TC, LT, GT, EQ, LE, GE, 
        NE );
  input [51:0] A;
  input [51:0] B;
  input TC;
  output LT, GT, EQ, LE, GE, NE;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75;

  INVX0 U1 ( .INP(A[1]), .ZN(n1) );
  INVX0 U2 ( .INP(B[1]), .ZN(n2) );
  INVX0 U3 ( .INP(B[0]), .ZN(n3) );
  NOR4X0 U4 ( .IN1(n4), .IN2(n5), .IN3(n6), .IN4(n7), .QN(EQ) );
  NAND4X0 U5 ( .IN1(n8), .IN2(n9), .IN3(n10), .IN4(n11), .QN(n7) );
  NOR3X0 U6 ( .IN1(n12), .IN2(n13), .IN3(n14), .QN(n11) );
  XOR2X1 U7 ( .IN1(B[20]), .IN2(A[20]), .Q(n14) );
  XOR2X1 U8 ( .IN1(B[19]), .IN2(A[19]), .Q(n13) );
  XOR2X1 U9 ( .IN1(B[21]), .IN2(A[21]), .Q(n12) );
  XNOR2X1 U10 ( .IN1(B[24]), .IN2(A[24]), .Q(n10) );
  XNOR2X1 U11 ( .IN1(B[22]), .IN2(A[22]), .Q(n9) );
  XNOR2X1 U12 ( .IN1(B[23]), .IN2(A[23]), .Q(n8) );
  NAND4X0 U13 ( .IN1(n15), .IN2(n16), .IN3(n17), .IN4(n18), .QN(n6) );
  NOR4X0 U14 ( .IN1(n19), .IN2(n20), .IN3(n21), .IN4(n22), .QN(n18) );
  XOR2X1 U15 ( .IN1(B[15]), .IN2(A[15]), .Q(n22) );
  XOR2X1 U16 ( .IN1(B[14]), .IN2(A[14]), .Q(n21) );
  XOR2X1 U17 ( .IN1(B[13]), .IN2(A[13]), .Q(n20) );
  XOR2X1 U18 ( .IN1(B[12]), .IN2(A[12]), .Q(n19) );
  XNOR2X1 U19 ( .IN1(B[18]), .IN2(A[18]), .Q(n17) );
  XNOR2X1 U20 ( .IN1(B[16]), .IN2(A[16]), .Q(n16) );
  XNOR2X1 U21 ( .IN1(B[17]), .IN2(A[17]), .Q(n15) );
  NAND4X0 U22 ( .IN1(n23), .IN2(n24), .IN3(n25), .IN4(n26), .QN(n5) );
  NOR4X0 U23 ( .IN1(n27), .IN2(n28), .IN3(n29), .IN4(n30), .QN(n26) );
  XOR2X1 U24 ( .IN1(B[10]), .IN2(A[10]), .Q(n30) );
  XOR2X1 U25 ( .IN1(B[9]), .IN2(A[9]), .Q(n29) );
  XOR2X1 U26 ( .IN1(B[11]), .IN2(A[11]), .Q(n28) );
  NAND3X0 U27 ( .IN1(n31), .IN2(n32), .IN3(n33), .QN(n27) );
  XNOR2X1 U28 ( .IN1(B[8]), .IN2(A[8]), .Q(n33) );
  XNOR2X1 U29 ( .IN1(B[6]), .IN2(A[6]), .Q(n32) );
  XNOR2X1 U30 ( .IN1(B[7]), .IN2(A[7]), .Q(n31) );
  NOR4X0 U31 ( .IN1(n34), .IN2(n35), .IN3(n36), .IN4(n37), .QN(n25) );
  XOR2X1 U32 ( .IN1(B[2]), .IN2(A[2]), .Q(n37) );
  XOR2X1 U33 ( .IN1(B[51]), .IN2(A[51]), .Q(n36) );
  OA22X1 U34 ( .IN1(n38), .IN2(n2), .IN3(A[1]), .IN4(n38), .Q(n35) );
  AND2X1 U35 ( .IN1(A[0]), .IN2(n3), .Q(n38) );
  OA22X1 U36 ( .IN1(B[1]), .IN2(n39), .IN3(n39), .IN4(n1), .Q(n34) );
  NOR2X0 U37 ( .IN1(n3), .IN2(A[0]), .QN(n39) );
  XNOR2X1 U38 ( .IN1(B[5]), .IN2(A[5]), .Q(n24) );
  NOR2X0 U39 ( .IN1(n40), .IN2(n41), .QN(n23) );
  XOR2X1 U40 ( .IN1(B[4]), .IN2(A[4]), .Q(n41) );
  XOR2X1 U41 ( .IN1(B[3]), .IN2(A[3]), .Q(n40) );
  NAND4X0 U42 ( .IN1(n42), .IN2(n43), .IN3(n44), .IN4(n45), .QN(n4) );
  NOR4X0 U43 ( .IN1(n46), .IN2(n47), .IN3(n48), .IN4(n49), .QN(n45) );
  XOR2X1 U44 ( .IN1(B[30]), .IN2(A[30]), .Q(n49) );
  XOR2X1 U45 ( .IN1(B[29]), .IN2(A[29]), .Q(n48) );
  XOR2X1 U46 ( .IN1(B[31]), .IN2(A[31]), .Q(n47) );
  NAND4X0 U47 ( .IN1(n50), .IN2(n51), .IN3(n52), .IN4(n53), .QN(n46) );
  XNOR2X1 U48 ( .IN1(B[25]), .IN2(A[25]), .Q(n53) );
  XNOR2X1 U49 ( .IN1(B[26]), .IN2(A[26]), .Q(n52) );
  XNOR2X1 U50 ( .IN1(B[27]), .IN2(A[27]), .Q(n51) );
  XNOR2X1 U51 ( .IN1(B[28]), .IN2(A[28]), .Q(n50) );
  NOR4X0 U52 ( .IN1(n54), .IN2(n55), .IN3(n56), .IN4(n57), .QN(n44) );
  XOR2X1 U53 ( .IN1(B[36]), .IN2(A[36]), .Q(n57) );
  XOR2X1 U54 ( .IN1(B[35]), .IN2(A[35]), .Q(n56) );
  XOR2X1 U55 ( .IN1(B[37]), .IN2(A[37]), .Q(n55) );
  NAND3X0 U56 ( .IN1(n58), .IN2(n59), .IN3(n60), .QN(n54) );
  XNOR2X1 U57 ( .IN1(B[34]), .IN2(A[34]), .Q(n60) );
  XNOR2X1 U58 ( .IN1(B[32]), .IN2(A[32]), .Q(n59) );
  XNOR2X1 U59 ( .IN1(B[33]), .IN2(A[33]), .Q(n58) );
  NOR4X0 U60 ( .IN1(n61), .IN2(n62), .IN3(n63), .IN4(n64), .QN(n43) );
  XOR2X1 U61 ( .IN1(B[43]), .IN2(A[43]), .Q(n64) );
  XOR2X1 U62 ( .IN1(B[42]), .IN2(A[42]), .Q(n63) );
  XOR2X1 U63 ( .IN1(B[44]), .IN2(A[44]), .Q(n62) );
  NAND4X0 U64 ( .IN1(n65), .IN2(n66), .IN3(n67), .IN4(n68), .QN(n61) );
  XNOR2X1 U65 ( .IN1(B[38]), .IN2(A[38]), .Q(n68) );
  XNOR2X1 U66 ( .IN1(B[39]), .IN2(A[39]), .Q(n67) );
  XNOR2X1 U67 ( .IN1(B[40]), .IN2(A[40]), .Q(n66) );
  XNOR2X1 U68 ( .IN1(B[41]), .IN2(A[41]), .Q(n65) );
  NOR4X0 U69 ( .IN1(n69), .IN2(n70), .IN3(n71), .IN4(n72), .QN(n42) );
  XOR2X1 U70 ( .IN1(B[49]), .IN2(A[49]), .Q(n72) );
  XOR2X1 U71 ( .IN1(B[48]), .IN2(A[48]), .Q(n71) );
  XOR2X1 U72 ( .IN1(B[50]), .IN2(A[50]), .Q(n70) );
  NAND3X0 U73 ( .IN1(n73), .IN2(n74), .IN3(n75), .QN(n69) );
  XNOR2X1 U74 ( .IN1(B[47]), .IN2(A[47]), .Q(n75) );
  XNOR2X1 U75 ( .IN1(B[45]), .IN2(A[45]), .Q(n74) );
  XNOR2X1 U76 ( .IN1(B[46]), .IN2(A[46]), .Q(n73) );
endmodule


module sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_inc_0 ( A, SUM );
  input [51:0] A;
  output [51:0] SUM;

  wire   [51:2] carry;

  HADDX1 U1_1_50 ( .A0(A[50]), .B0(carry[50]), .C1(carry[51]), .SO(SUM[50]) );
  HADDX1 U1_1_49 ( .A0(A[49]), .B0(carry[49]), .C1(carry[50]), .SO(SUM[49]) );
  HADDX1 U1_1_48 ( .A0(A[48]), .B0(carry[48]), .C1(carry[49]), .SO(SUM[48]) );
  HADDX1 U1_1_47 ( .A0(A[47]), .B0(carry[47]), .C1(carry[48]), .SO(SUM[47]) );
  HADDX1 U1_1_46 ( .A0(A[46]), .B0(carry[46]), .C1(carry[47]), .SO(SUM[46]) );
  HADDX1 U1_1_45 ( .A0(A[45]), .B0(carry[45]), .C1(carry[46]), .SO(SUM[45]) );
  HADDX1 U1_1_44 ( .A0(A[44]), .B0(carry[44]), .C1(carry[45]), .SO(SUM[44]) );
  HADDX1 U1_1_43 ( .A0(A[43]), .B0(carry[43]), .C1(carry[44]), .SO(SUM[43]) );
  HADDX1 U1_1_42 ( .A0(A[42]), .B0(carry[42]), .C1(carry[43]), .SO(SUM[42]) );
  HADDX1 U1_1_41 ( .A0(A[41]), .B0(carry[41]), .C1(carry[42]), .SO(SUM[41]) );
  HADDX1 U1_1_40 ( .A0(A[40]), .B0(carry[40]), .C1(carry[41]), .SO(SUM[40]) );
  HADDX1 U1_1_39 ( .A0(A[39]), .B0(carry[39]), .C1(carry[40]), .SO(SUM[39]) );
  HADDX1 U1_1_38 ( .A0(A[38]), .B0(carry[38]), .C1(carry[39]), .SO(SUM[38]) );
  HADDX1 U1_1_37 ( .A0(A[37]), .B0(carry[37]), .C1(carry[38]), .SO(SUM[37]) );
  HADDX1 U1_1_36 ( .A0(A[36]), .B0(carry[36]), .C1(carry[37]), .SO(SUM[36]) );
  HADDX1 U1_1_35 ( .A0(A[35]), .B0(carry[35]), .C1(carry[36]), .SO(SUM[35]) );
  HADDX1 U1_1_34 ( .A0(A[34]), .B0(carry[34]), .C1(carry[35]), .SO(SUM[34]) );
  HADDX1 U1_1_33 ( .A0(A[33]), .B0(carry[33]), .C1(carry[34]), .SO(SUM[33]) );
  HADDX1 U1_1_32 ( .A0(A[32]), .B0(carry[32]), .C1(carry[33]), .SO(SUM[32]) );
  HADDX1 U1_1_31 ( .A0(A[31]), .B0(carry[31]), .C1(carry[32]), .SO(SUM[31]) );
  HADDX1 U1_1_30 ( .A0(A[30]), .B0(carry[30]), .C1(carry[31]), .SO(SUM[30]) );
  HADDX1 U1_1_29 ( .A0(A[29]), .B0(carry[29]), .C1(carry[30]), .SO(SUM[29]) );
  HADDX1 U1_1_28 ( .A0(A[28]), .B0(carry[28]), .C1(carry[29]), .SO(SUM[28]) );
  HADDX1 U1_1_27 ( .A0(A[27]), .B0(carry[27]), .C1(carry[28]), .SO(SUM[27]) );
  HADDX1 U1_1_26 ( .A0(A[26]), .B0(carry[26]), .C1(carry[27]), .SO(SUM[26]) );
  HADDX1 U1_1_25 ( .A0(A[25]), .B0(carry[25]), .C1(carry[26]), .SO(SUM[25]) );
  HADDX1 U1_1_24 ( .A0(A[24]), .B0(carry[24]), .C1(carry[25]), .SO(SUM[24]) );
  HADDX1 U1_1_23 ( .A0(A[23]), .B0(carry[23]), .C1(carry[24]), .SO(SUM[23]) );
  HADDX1 U1_1_22 ( .A0(A[22]), .B0(carry[22]), .C1(carry[23]), .SO(SUM[22]) );
  HADDX1 U1_1_21 ( .A0(A[21]), .B0(carry[21]), .C1(carry[22]), .SO(SUM[21]) );
  HADDX1 U1_1_20 ( .A0(A[20]), .B0(carry[20]), .C1(carry[21]), .SO(SUM[20]) );
  HADDX1 U1_1_19 ( .A0(A[19]), .B0(carry[19]), .C1(carry[20]), .SO(SUM[19]) );
  HADDX1 U1_1_18 ( .A0(A[18]), .B0(carry[18]), .C1(carry[19]), .SO(SUM[18]) );
  HADDX1 U1_1_17 ( .A0(A[17]), .B0(carry[17]), .C1(carry[18]), .SO(SUM[17]) );
  HADDX1 U1_1_16 ( .A0(A[16]), .B0(carry[16]), .C1(carry[17]), .SO(SUM[16]) );
  HADDX1 U1_1_15 ( .A0(A[15]), .B0(carry[15]), .C1(carry[16]), .SO(SUM[15]) );
  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[51]), .IN2(A[51]), .Q(SUM[51]) );
endmodule


module sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [51:0] A;
  input [51:0] B;
  output [51:0] DIFF;
  input CI;
  output CO;
  wire   \A[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74;
  wire   [52:0] carry;
  assign DIFF[0] = \A[0] ;
  assign \A[0]  = A[0];

  FADDX1 U2_26 ( .A(A[26]), .B(n50), .CI(carry[26]), .CO(carry[27]), .S(
        DIFF[26]) );
  FADDX1 U2_25 ( .A(A[25]), .B(n51), .CI(carry[25]), .CO(carry[26]), .S(
        DIFF[25]) );
  FADDX1 U2_24 ( .A(A[24]), .B(n52), .CI(carry[24]), .CO(carry[25]), .S(
        DIFF[24]) );
  FADDX1 U2_23 ( .A(A[23]), .B(n53), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  FADDX1 U2_22 ( .A(A[22]), .B(n54), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FADDX1 U2_21 ( .A(A[21]), .B(n55), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  FADDX1 U2_20 ( .A(A[20]), .B(n56), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FADDX1 U2_19 ( .A(A[19]), .B(n57), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FADDX1 U2_18 ( .A(A[18]), .B(n58), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  FADDX1 U2_17 ( .A(A[17]), .B(n59), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FADDX1 U2_16 ( .A(A[16]), .B(n60), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FADDX1 U2_15 ( .A(A[15]), .B(n61), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FADDX1 U2_14 ( .A(A[14]), .B(n62), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FADDX1 U2_13 ( .A(A[13]), .B(n63), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FADDX1 U2_12 ( .A(A[12]), .B(n64), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FADDX1 U2_11 ( .A(A[11]), .B(n65), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FADDX1 U2_10 ( .A(A[10]), .B(n66), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FADDX1 U2_9 ( .A(A[9]), .B(n67), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FADDX1 U2_8 ( .A(A[8]), .B(n68), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  FADDX1 U2_7 ( .A(A[7]), .B(n69), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  FADDX1 U2_6 ( .A(A[6]), .B(n70), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  FADDX1 U2_5 ( .A(A[5]), .B(n71), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  FADDX1 U2_4 ( .A(A[4]), .B(n72), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  FADDX1 U2_3 ( .A(A[3]), .B(n73), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n74), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  INVX0 U1 ( .INP(A[37]), .ZN(n35) );
  INVX0 U2 ( .INP(A[27]), .ZN(n24) );
  INVX0 U3 ( .INP(A[38]), .ZN(n36) );
  INVX0 U4 ( .INP(A[39]), .ZN(n37) );
  INVX0 U5 ( .INP(A[40]), .ZN(n38) );
  INVX0 U6 ( .INP(A[43]), .ZN(n41) );
  INVX0 U7 ( .INP(A[41]), .ZN(n39) );
  INVX0 U8 ( .INP(A[42]), .ZN(n40) );
  INVX0 U9 ( .INP(A[33]), .ZN(n31) );
  INVX0 U10 ( .INP(A[31]), .ZN(n29) );
  INVX0 U11 ( .INP(A[32]), .ZN(n30) );
  INVX0 U12 ( .INP(A[36]), .ZN(n34) );
  INVX0 U13 ( .INP(A[34]), .ZN(n32) );
  INVX0 U14 ( .INP(A[35]), .ZN(n33) );
  INVX0 U15 ( .INP(A[46]), .ZN(n44) );
  INVX0 U16 ( .INP(A[44]), .ZN(n42) );
  INVX0 U17 ( .INP(A[45]), .ZN(n43) );
  INVX0 U18 ( .INP(A[47]), .ZN(n45) );
  INVX0 U19 ( .INP(A[30]), .ZN(n28) );
  INVX0 U20 ( .INP(A[28]), .ZN(n26) );
  INVX0 U21 ( .INP(A[29]), .ZN(n27) );
  INVX0 U22 ( .INP(A[48]), .ZN(n46) );
  INVX0 U23 ( .INP(A[49]), .ZN(n47) );
  INVX0 U24 ( .INP(carry[27]), .ZN(n25) );
  NAND2X1 U25 ( .IN1(n49), .IN2(B[1]), .QN(carry[2]) );
  INVX0 U26 ( .INP(B[2]), .ZN(n74) );
  INVX0 U27 ( .INP(A[1]), .ZN(n49) );
  INVX0 U28 ( .INP(B[3]), .ZN(n73) );
  INVX0 U29 ( .INP(B[4]), .ZN(n72) );
  INVX0 U30 ( .INP(B[5]), .ZN(n71) );
  INVX0 U31 ( .INP(B[6]), .ZN(n70) );
  INVX0 U32 ( .INP(B[7]), .ZN(n69) );
  INVX0 U33 ( .INP(B[8]), .ZN(n68) );
  INVX0 U34 ( .INP(B[9]), .ZN(n67) );
  INVX0 U35 ( .INP(B[10]), .ZN(n66) );
  INVX0 U36 ( .INP(B[11]), .ZN(n65) );
  INVX0 U37 ( .INP(B[12]), .ZN(n64) );
  INVX0 U38 ( .INP(B[13]), .ZN(n63) );
  INVX0 U39 ( .INP(B[14]), .ZN(n62) );
  INVX0 U40 ( .INP(B[15]), .ZN(n61) );
  INVX0 U41 ( .INP(B[16]), .ZN(n60) );
  INVX0 U42 ( .INP(B[17]), .ZN(n59) );
  INVX0 U43 ( .INP(B[18]), .ZN(n58) );
  INVX0 U44 ( .INP(B[19]), .ZN(n57) );
  INVX0 U45 ( .INP(B[20]), .ZN(n56) );
  INVX0 U46 ( .INP(B[21]), .ZN(n55) );
  INVX0 U47 ( .INP(B[22]), .ZN(n54) );
  INVX0 U48 ( .INP(B[23]), .ZN(n53) );
  INVX0 U49 ( .INP(B[24]), .ZN(n52) );
  INVX0 U50 ( .INP(B[25]), .ZN(n51) );
  INVX0 U51 ( .INP(B[26]), .ZN(n50) );
  AND2X1 U52 ( .IN1(n24), .IN2(n25), .Q(n1) );
  AND2X1 U53 ( .IN1(n26), .IN2(n1), .Q(n2) );
  AND2X1 U54 ( .IN1(n27), .IN2(n2), .Q(n3) );
  AND2X1 U55 ( .IN1(n28), .IN2(n3), .Q(n4) );
  AND2X1 U56 ( .IN1(n29), .IN2(n4), .Q(n5) );
  AND2X1 U57 ( .IN1(n30), .IN2(n5), .Q(n6) );
  AND2X1 U58 ( .IN1(n31), .IN2(n6), .Q(n7) );
  AND2X1 U59 ( .IN1(n32), .IN2(n7), .Q(n8) );
  AND2X1 U60 ( .IN1(n33), .IN2(n8), .Q(n9) );
  AND2X1 U61 ( .IN1(n34), .IN2(n9), .Q(n10) );
  AND2X1 U62 ( .IN1(n35), .IN2(n10), .Q(n11) );
  AND2X1 U63 ( .IN1(n36), .IN2(n11), .Q(n12) );
  AND2X1 U64 ( .IN1(n37), .IN2(n12), .Q(n13) );
  AND2X1 U65 ( .IN1(n38), .IN2(n13), .Q(n14) );
  AND2X1 U66 ( .IN1(n39), .IN2(n14), .Q(n15) );
  AND2X1 U67 ( .IN1(n40), .IN2(n15), .Q(n16) );
  AND2X1 U68 ( .IN1(n41), .IN2(n16), .Q(n17) );
  AND2X1 U69 ( .IN1(n42), .IN2(n17), .Q(n18) );
  AND2X1 U70 ( .IN1(n43), .IN2(n18), .Q(n19) );
  AND2X1 U71 ( .IN1(n44), .IN2(n19), .Q(n20) );
  AND2X1 U72 ( .IN1(n45), .IN2(n20), .Q(n21) );
  AND2X1 U73 ( .IN1(n46), .IN2(n21), .Q(n22) );
  AND2X1 U74 ( .IN1(n47), .IN2(n22), .Q(n23) );
  XNOR2X1 U75 ( .IN1(carry[51]), .IN2(A[51]), .Q(DIFF[51]) );
  NAND2X1 U76 ( .IN1(n48), .IN2(n23), .QN(carry[51]) );
  INVX0 U77 ( .INP(A[50]), .ZN(n48) );
  XOR2X1 U78 ( .IN1(n25), .IN2(A[27]), .Q(DIFF[27]) );
  XOR2X1 U79 ( .IN1(n1), .IN2(A[28]), .Q(DIFF[28]) );
  XOR2X1 U80 ( .IN1(n2), .IN2(A[29]), .Q(DIFF[29]) );
  XOR2X1 U81 ( .IN1(n3), .IN2(A[30]), .Q(DIFF[30]) );
  XOR2X1 U82 ( .IN1(n4), .IN2(A[31]), .Q(DIFF[31]) );
  XOR2X1 U83 ( .IN1(n5), .IN2(A[32]), .Q(DIFF[32]) );
  XOR2X1 U84 ( .IN1(n6), .IN2(A[33]), .Q(DIFF[33]) );
  XOR2X1 U85 ( .IN1(n7), .IN2(A[34]), .Q(DIFF[34]) );
  XOR2X1 U86 ( .IN1(n8), .IN2(A[35]), .Q(DIFF[35]) );
  XOR2X1 U87 ( .IN1(n9), .IN2(A[36]), .Q(DIFF[36]) );
  XOR2X1 U88 ( .IN1(n10), .IN2(A[37]), .Q(DIFF[37]) );
  XOR2X1 U89 ( .IN1(n11), .IN2(A[38]), .Q(DIFF[38]) );
  XOR2X1 U90 ( .IN1(n12), .IN2(A[39]), .Q(DIFF[39]) );
  XOR2X1 U91 ( .IN1(n13), .IN2(A[40]), .Q(DIFF[40]) );
  XOR2X1 U92 ( .IN1(n14), .IN2(A[41]), .Q(DIFF[41]) );
  XOR2X1 U93 ( .IN1(n15), .IN2(A[42]), .Q(DIFF[42]) );
  XOR2X1 U94 ( .IN1(n16), .IN2(A[43]), .Q(DIFF[43]) );
  XOR2X1 U95 ( .IN1(n17), .IN2(A[44]), .Q(DIFF[44]) );
  XOR2X1 U96 ( .IN1(n18), .IN2(A[45]), .Q(DIFF[45]) );
  XOR2X1 U97 ( .IN1(n19), .IN2(A[46]), .Q(DIFF[46]) );
  XOR2X1 U98 ( .IN1(n20), .IN2(A[47]), .Q(DIFF[47]) );
  XOR2X1 U99 ( .IN1(n21), .IN2(A[48]), .Q(DIFF[48]) );
  XOR2X1 U100 ( .IN1(n22), .IN2(A[49]), .Q(DIFF[49]) );
  XOR2X1 U101 ( .IN1(n23), .IN2(A[50]), .Q(DIFF[50]) );
  XOR2X1 U102 ( .IN1(B[1]), .IN2(A[1]), .Q(DIFF[1]) );
endmodule


module sqrt_RD_WIDTH52_SQ_WIDTH26 ( clk_i, rad_i, start_i, ready_o, sqr_o, 
        ine_o );
  input [51:0] rad_i;
  output [25:0] sqr_o;
  input clk_i, start_i;
  output ready_o, ine_o;
  wire   s_start_i, s_ine_o, s_ready_o, s_state, \s_count[3] , \s_count[2] ,
         \s_count[1] , \s_count[0] , N35, N36, N37, N38, N39, N40, N41, N42,
         N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56,
         N57, N58, N59, N86, N88, N90, N92, N94, N96, N98, N100, N102, N104,
         N106, N108, N110, N112, N114, N116, N118, N120, N122, N124, N126,
         N128, N130, N132, N134, N136, N137, N138, N139, N140, N142, N306,
         N309, N310, N311, N312, N313, N314, N315, N316, N317, N318, N319,
         N320, N321, N322, N323, N324, N325, N326, N327, N328, N329, N330,
         N331, N332, N333, N334, N362, N363, N364, N365, N366, N367, N368,
         N369, N370, N371, N372, N373, N374, N375, N376, N377, N378, N379,
         N380, N381, N382, N383, N384, N385, N386, N387, N388, N389, N390,
         N391, N392, N393, N394, N395, N396, N397, N398, N399, N400, N401,
         N402, N403, N404, N405, N406, N407, N408, N409, N410, N411, N412,
         N413, N414, N415, N416, N417, N418, N419, N420, N421, N422, N423,
         N424, N425, N426, N427, N428, N429, N430, N431, N432, N433, N434,
         N435, N436, N437, N438, N439, N440, N441, N442, N443, N444, N445,
         N446, N447, N448, N449, N450, N451, N452, N453, N454, N455, N456,
         N457, N458, N459, N460, N461, N462, N463, N464, N465, N466, N467, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494;
  wire   [51:0] s_rad_i;
  wire   [25:0] s_sqr_o;
  wire   [51:0] b;
  wire   [51:0] b_2;
  wire   [51:0] r0_2;
  wire   [51:0] s_op1;
  wire   [51:0] r0;
  wire   [51:0] s_op2;
  wire   [25:0] s_sum1a;
  wire   [25:0] s_sum2a;
  wire   [51:0] s_sum1b;
  wire   [51:0] s_sum2b;
  wire   [50:0] r1;
  wire   [51:0] r1_2;

  DFFX1 \s_rad_i_reg[51]  ( .D(rad_i[51]), .CLK(clk_i), .Q(s_rad_i[51]) );
  DFFX1 \s_rad_i_reg[50]  ( .D(rad_i[50]), .CLK(clk_i), .Q(s_rad_i[50]) );
  DFFX1 \s_rad_i_reg[49]  ( .D(rad_i[49]), .CLK(clk_i), .Q(s_rad_i[49]) );
  DFFX1 \s_rad_i_reg[48]  ( .D(rad_i[48]), .CLK(clk_i), .Q(s_rad_i[48]) );
  DFFX1 \s_rad_i_reg[47]  ( .D(rad_i[47]), .CLK(clk_i), .Q(s_rad_i[47]) );
  DFFX1 \s_rad_i_reg[46]  ( .D(rad_i[46]), .CLK(clk_i), .Q(s_rad_i[46]) );
  DFFX1 \s_rad_i_reg[45]  ( .D(rad_i[45]), .CLK(clk_i), .Q(s_rad_i[45]) );
  DFFX1 \s_rad_i_reg[44]  ( .D(rad_i[44]), .CLK(clk_i), .Q(s_rad_i[44]) );
  DFFX1 \s_rad_i_reg[43]  ( .D(rad_i[43]), .CLK(clk_i), .Q(s_rad_i[43]) );
  DFFX1 \s_rad_i_reg[42]  ( .D(rad_i[42]), .CLK(clk_i), .Q(s_rad_i[42]) );
  DFFX1 \s_rad_i_reg[41]  ( .D(rad_i[41]), .CLK(clk_i), .Q(s_rad_i[41]) );
  DFFX1 \s_rad_i_reg[40]  ( .D(rad_i[40]), .CLK(clk_i), .Q(s_rad_i[40]) );
  DFFX1 \s_rad_i_reg[39]  ( .D(rad_i[39]), .CLK(clk_i), .Q(s_rad_i[39]) );
  DFFX1 \s_rad_i_reg[38]  ( .D(rad_i[38]), .CLK(clk_i), .Q(s_rad_i[38]) );
  DFFX1 \s_rad_i_reg[37]  ( .D(rad_i[37]), .CLK(clk_i), .Q(s_rad_i[37]) );
  DFFX1 \s_rad_i_reg[36]  ( .D(rad_i[36]), .CLK(clk_i), .Q(s_rad_i[36]) );
  DFFX1 \s_rad_i_reg[35]  ( .D(rad_i[35]), .CLK(clk_i), .Q(s_rad_i[35]) );
  DFFX1 \s_rad_i_reg[34]  ( .D(rad_i[34]), .CLK(clk_i), .Q(s_rad_i[34]) );
  DFFX1 \s_rad_i_reg[33]  ( .D(rad_i[33]), .CLK(clk_i), .Q(s_rad_i[33]) );
  DFFX1 \s_rad_i_reg[32]  ( .D(rad_i[32]), .CLK(clk_i), .Q(s_rad_i[32]) );
  DFFX1 \s_rad_i_reg[31]  ( .D(rad_i[31]), .CLK(clk_i), .Q(s_rad_i[31]) );
  DFFX1 \s_rad_i_reg[30]  ( .D(rad_i[30]), .CLK(clk_i), .Q(s_rad_i[30]) );
  DFFX1 \s_rad_i_reg[29]  ( .D(rad_i[29]), .CLK(clk_i), .Q(s_rad_i[29]) );
  DFFX1 \s_rad_i_reg[28]  ( .D(rad_i[28]), .CLK(clk_i), .Q(s_rad_i[28]) );
  DFFX1 \s_rad_i_reg[27]  ( .D(rad_i[27]), .CLK(clk_i), .Q(s_rad_i[27]) );
  DFFX1 \s_rad_i_reg[26]  ( .D(rad_i[26]), .CLK(clk_i), .Q(s_rad_i[26]) );
  DFFX1 \s_rad_i_reg[25]  ( .D(rad_i[25]), .CLK(clk_i), .Q(s_rad_i[25]) );
  DFFX1 \s_rad_i_reg[24]  ( .D(rad_i[24]), .CLK(clk_i), .Q(s_rad_i[24]) );
  DFFX1 \s_rad_i_reg[23]  ( .D(rad_i[23]), .CLK(clk_i), .Q(s_rad_i[23]) );
  DFFX1 \s_rad_i_reg[22]  ( .D(rad_i[22]), .CLK(clk_i), .Q(s_rad_i[22]) );
  DFFX1 \s_rad_i_reg[21]  ( .D(rad_i[21]), .CLK(clk_i), .Q(s_rad_i[21]) );
  DFFX1 \s_rad_i_reg[20]  ( .D(rad_i[20]), .CLK(clk_i), .Q(s_rad_i[20]) );
  DFFX1 \s_rad_i_reg[19]  ( .D(rad_i[19]), .CLK(clk_i), .Q(s_rad_i[19]) );
  DFFX1 \s_rad_i_reg[18]  ( .D(rad_i[18]), .CLK(clk_i), .Q(s_rad_i[18]) );
  DFFX1 \s_rad_i_reg[17]  ( .D(rad_i[17]), .CLK(clk_i), .Q(s_rad_i[17]) );
  DFFX1 \s_rad_i_reg[16]  ( .D(rad_i[16]), .CLK(clk_i), .Q(s_rad_i[16]) );
  DFFX1 \s_rad_i_reg[15]  ( .D(rad_i[15]), .CLK(clk_i), .Q(s_rad_i[15]) );
  DFFX1 \s_rad_i_reg[14]  ( .D(rad_i[14]), .CLK(clk_i), .Q(s_rad_i[14]) );
  DFFX1 \s_rad_i_reg[13]  ( .D(rad_i[13]), .CLK(clk_i), .Q(s_rad_i[13]) );
  DFFX1 \s_rad_i_reg[12]  ( .D(rad_i[12]), .CLK(clk_i), .Q(s_rad_i[12]) );
  DFFX1 \s_rad_i_reg[11]  ( .D(rad_i[11]), .CLK(clk_i), .Q(s_rad_i[11]) );
  DFFX1 \s_rad_i_reg[10]  ( .D(rad_i[10]), .CLK(clk_i), .Q(s_rad_i[10]) );
  DFFX1 \s_rad_i_reg[9]  ( .D(rad_i[9]), .CLK(clk_i), .Q(s_rad_i[9]) );
  DFFX1 \s_rad_i_reg[8]  ( .D(rad_i[8]), .CLK(clk_i), .Q(s_rad_i[8]) );
  DFFX1 \s_rad_i_reg[7]  ( .D(rad_i[7]), .CLK(clk_i), .Q(s_rad_i[7]) );
  DFFX1 \s_rad_i_reg[6]  ( .D(rad_i[6]), .CLK(clk_i), .Q(s_rad_i[6]) );
  DFFX1 \s_rad_i_reg[5]  ( .D(rad_i[5]), .CLK(clk_i), .Q(s_rad_i[5]) );
  DFFX1 \s_rad_i_reg[4]  ( .D(rad_i[4]), .CLK(clk_i), .Q(s_rad_i[4]) );
  DFFX1 \s_rad_i_reg[3]  ( .D(rad_i[3]), .CLK(clk_i), .Q(s_rad_i[3]) );
  DFFX1 \s_rad_i_reg[2]  ( .D(rad_i[2]), .CLK(clk_i), .Q(s_rad_i[2]) );
  DFFX1 \s_rad_i_reg[1]  ( .D(rad_i[1]), .CLK(clk_i), .Q(s_rad_i[1]) );
  DFFX1 \s_rad_i_reg[0]  ( .D(rad_i[0]), .CLK(clk_i), .Q(s_rad_i[0]) );
  DFFX1 s_start_i_reg ( .D(start_i), .CLK(clk_i), .Q(s_start_i), .QN(n26) );
  DFFX1 \s_count_reg[0]  ( .D(n300), .CLK(clk_i), .Q(\s_count[0] ) );
  DFFX1 s_state_reg ( .D(n298), .CLK(clk_i), .Q(s_state) );
  DFFX1 s_ready_o_reg ( .D(n297), .CLK(clk_i), .Q(s_ready_o) );
  DFFX1 ready_o_reg ( .D(s_ready_o), .CLK(clk_i), .Q(ready_o) );
  DFFX1 \s_count_reg[4]  ( .D(n299), .CLK(clk_i), .QN(n24) );
  DFFX1 \s_count_reg[1]  ( .D(n296), .CLK(clk_i), .Q(\s_count[1] ) );
  DFFX1 \s_count_reg[2]  ( .D(n295), .CLK(clk_i), .Q(\s_count[2] ) );
  DFFX1 \s_count_reg[3]  ( .D(n294), .CLK(clk_i), .Q(\s_count[3] ), .QN(n43)
         );
  DFFX1 \c_reg[0]  ( .D(N136), .CLK(clk_i), .Q(n13), .QN(n483) );
  DFFX1 \c_reg[1]  ( .D(N137), .CLK(clk_i), .Q(n31), .QN(n484) );
  DFFX1 \c_reg[2]  ( .D(N138), .CLK(clk_i), .Q(n27), .QN(n482) );
  DFFX1 \c_reg[3]  ( .D(N139), .CLK(clk_i), .Q(n12), .QN(n481) );
  DFFX1 \c_reg[4]  ( .D(N140), .CLK(clk_i), .Q(n25), .QN(n480) );
  DFFX1 \b_reg[25]  ( .D(s_start_i), .CLK(clk_i), .Q(b[25]), .QN(n103) );
  DFFX1 \b_reg[24]  ( .D(N59), .CLK(clk_i), .Q(b[24]), .QN(n102) );
  DFFX1 \b_reg[23]  ( .D(N58), .CLK(clk_i), .Q(b[23]), .QN(n101) );
  DFFX1 \b_reg[22]  ( .D(N57), .CLK(clk_i), .Q(b[22]), .QN(n100) );
  DFFX1 \b_reg[21]  ( .D(N56), .CLK(clk_i), .Q(b[21]), .QN(n99) );
  DFFX1 \b_reg[20]  ( .D(N55), .CLK(clk_i), .Q(b[20]), .QN(n98) );
  DFFX1 \b_reg[19]  ( .D(N54), .CLK(clk_i), .Q(b[19]), .QN(n97) );
  DFFX1 \b_reg[18]  ( .D(N53), .CLK(clk_i), .Q(b[18]), .QN(n96) );
  DFFX1 \b_reg[17]  ( .D(N52), .CLK(clk_i), .Q(b[17]), .QN(n95) );
  DFFX1 \b_reg[16]  ( .D(N51), .CLK(clk_i), .Q(b[16]), .QN(n94) );
  DFFX1 \b_reg[15]  ( .D(N50), .CLK(clk_i), .Q(b[15]), .QN(n93) );
  DFFX1 \b_reg[14]  ( .D(N49), .CLK(clk_i), .Q(b[14]), .QN(n92) );
  DFFX1 \b_reg[13]  ( .D(N48), .CLK(clk_i), .Q(b[13]), .QN(n91) );
  DFFX1 \b_reg[12]  ( .D(N47), .CLK(clk_i), .Q(b[12]), .QN(n90) );
  DFFX1 \b_reg[11]  ( .D(N46), .CLK(clk_i), .Q(b[11]), .QN(n89) );
  DFFX1 \b_reg[10]  ( .D(N45), .CLK(clk_i), .Q(b[10]), .QN(n88) );
  DFFX1 \b_reg[9]  ( .D(N44), .CLK(clk_i), .Q(b[9]), .QN(n87) );
  DFFX1 \b_reg[8]  ( .D(N43), .CLK(clk_i), .Q(b[8]), .QN(n86) );
  DFFX1 \b_reg[7]  ( .D(N42), .CLK(clk_i), .Q(b[7]), .QN(n85) );
  DFFX1 \b_reg[6]  ( .D(N41), .CLK(clk_i), .Q(b[6]), .QN(n84) );
  DFFX1 \b_reg[5]  ( .D(N40), .CLK(clk_i), .Q(b[5]), .QN(n83) );
  DFFX1 \b_reg[4]  ( .D(N39), .CLK(clk_i), .Q(b[4]), .QN(n82) );
  DFFX1 \b_reg[3]  ( .D(N38), .CLK(clk_i), .Q(b[3]), .QN(n81) );
  DFFX1 \b_reg[2]  ( .D(N37), .CLK(clk_i), .Q(b[2]), .QN(n80) );
  DFFX1 \b_reg[1]  ( .D(N36), .CLK(clk_i), .Q(b[1]), .QN(n79) );
  DFFX1 \b_reg[0]  ( .D(N35), .CLK(clk_i), .Q(b[0]) );
  DFFX1 \b_2_reg[50]  ( .D(s_start_i), .CLK(clk_i), .Q(b_2[50]), .QN(n78) );
  DFFX1 \b_2_reg[48]  ( .D(N134), .CLK(clk_i), .Q(b_2[48]), .QN(n77) );
  DFFX1 \b_2_reg[46]  ( .D(N132), .CLK(clk_i), .Q(b_2[46]), .QN(n76) );
  DFFX1 \b_2_reg[44]  ( .D(N130), .CLK(clk_i), .Q(b_2[44]), .QN(n75) );
  DFFX1 \b_2_reg[42]  ( .D(N128), .CLK(clk_i), .Q(b_2[42]), .QN(n74) );
  DFFX1 \b_2_reg[40]  ( .D(N126), .CLK(clk_i), .Q(b_2[40]), .QN(n73) );
  DFFX1 \b_2_reg[38]  ( .D(N124), .CLK(clk_i), .Q(b_2[38]), .QN(n72) );
  DFFX1 \b_2_reg[36]  ( .D(N122), .CLK(clk_i), .Q(b_2[36]), .QN(n71) );
  DFFX1 \b_2_reg[34]  ( .D(N120), .CLK(clk_i), .Q(b_2[34]), .QN(n70) );
  DFFX1 \b_2_reg[32]  ( .D(N118), .CLK(clk_i), .Q(b_2[32]), .QN(n69) );
  DFFX1 \b_2_reg[30]  ( .D(N116), .CLK(clk_i), .Q(b_2[30]), .QN(n68) );
  DFFX1 \b_2_reg[28]  ( .D(N114), .CLK(clk_i), .Q(b_2[28]), .QN(n67) );
  DFFX1 \b_2_reg[26]  ( .D(N112), .CLK(clk_i), .Q(b_2[26]), .QN(n66) );
  DFFX1 \b_2_reg[24]  ( .D(N110), .CLK(clk_i), .Q(b_2[24]), .QN(n65) );
  DFFX1 \b_2_reg[22]  ( .D(N108), .CLK(clk_i), .Q(b_2[22]), .QN(n64) );
  DFFX1 \b_2_reg[20]  ( .D(N106), .CLK(clk_i), .Q(b_2[20]), .QN(n63) );
  DFFX1 \b_2_reg[18]  ( .D(N104), .CLK(clk_i), .Q(b_2[18]), .QN(n62) );
  DFFX1 \b_2_reg[16]  ( .D(N102), .CLK(clk_i), .Q(b_2[16]), .QN(n61) );
  DFFX1 \b_2_reg[14]  ( .D(N100), .CLK(clk_i), .Q(b_2[14]), .QN(n110) );
  DFFX1 \b_2_reg[12]  ( .D(N98), .CLK(clk_i), .Q(b_2[12]), .QN(n109) );
  DFFX1 \b_2_reg[10]  ( .D(N96), .CLK(clk_i), .Q(b_2[10]), .QN(n108) );
  DFFX1 \b_2_reg[8]  ( .D(N94), .CLK(clk_i), .Q(b_2[8]), .QN(n107) );
  DFFX1 \b_2_reg[6]  ( .D(N92), .CLK(clk_i), .Q(b_2[6]), .QN(n106) );
  DFFX1 \b_2_reg[4]  ( .D(N90), .CLK(clk_i), .Q(b_2[4]), .QN(n105) );
  DFFX1 \b_2_reg[2]  ( .D(N88), .CLK(clk_i), .Q(b_2[2]), .QN(n104) );
  DFFX1 \b_2_reg[0]  ( .D(N86), .CLK(clk_i), .Q(b_2[0]) );
  DFFX1 \r0_2_reg[0]  ( .D(n293), .CLK(clk_i), .Q(r0_2[0]) );
  DFFX1 \r0_2_reg[51]  ( .D(n242), .CLK(clk_i), .Q(r0_2[51]) );
  DFFX1 \r0_reg[0]  ( .D(n215), .CLK(clk_i), .Q(r0[0]) );
  DFFX1 \r0_reg[25]  ( .D(n190), .CLK(clk_i), .Q(r0[25]) );
  DFFX1 \r0_reg[1]  ( .D(n214), .CLK(clk_i), .Q(r0[1]), .QN(n42) );
  DFFX1 \r0_reg[2]  ( .D(n213), .CLK(clk_i), .Q(r0[2]), .QN(n44) );
  DFFX1 \r0_reg[3]  ( .D(n212), .CLK(clk_i), .Q(r0[3]), .QN(n22) );
  DFFX1 \r0_reg[4]  ( .D(n211), .CLK(clk_i), .Q(r0[4]), .QN(n18) );
  DFFX1 \r0_reg[5]  ( .D(n210), .CLK(clk_i), .Q(r0[5]), .QN(n34) );
  DFFX1 \r0_reg[6]  ( .D(n209), .CLK(clk_i), .Q(r0[6]), .QN(n11) );
  DFFX1 \r0_reg[7]  ( .D(n208), .CLK(clk_i), .Q(r0[7]), .QN(n33) );
  DFFX1 \r0_reg[8]  ( .D(n207), .CLK(clk_i), .Q(r0[8]), .QN(n21) );
  DFFX1 \r0_reg[9]  ( .D(n206), .CLK(clk_i), .Q(r0[9]), .QN(n35) );
  DFFX1 \r0_reg[10]  ( .D(n205), .CLK(clk_i), .Q(r0[10]), .QN(n15) );
  DFFX1 \r0_reg[11]  ( .D(n204), .CLK(clk_i), .Q(r0[11]), .QN(n36) );
  DFFX1 \r0_reg[12]  ( .D(n203), .CLK(clk_i), .Q(r0[12]), .QN(n14) );
  DFFX1 \r0_reg[13]  ( .D(n202), .CLK(clk_i), .Q(r0[13]), .QN(n37) );
  DFFX1 \r0_reg[14]  ( .D(n201), .CLK(clk_i), .Q(r0[14]), .QN(n17) );
  DFFX1 \r0_reg[15]  ( .D(n200), .CLK(clk_i), .Q(r0[15]), .QN(n38) );
  DFFX1 \r0_reg[16]  ( .D(n199), .CLK(clk_i), .Q(r0[16]), .QN(n16) );
  DFFX1 \r0_reg[17]  ( .D(n198), .CLK(clk_i), .Q(r0[17]), .QN(n39) );
  DFFX1 \r0_reg[18]  ( .D(n197), .CLK(clk_i), .Q(r0[18]), .QN(n20) );
  DFFX1 \r0_reg[19]  ( .D(n196), .CLK(clk_i), .Q(r0[19]), .QN(n40) );
  DFFX1 \r0_reg[20]  ( .D(n195), .CLK(clk_i), .Q(r0[20]), .QN(n19) );
  DFFX1 \r0_reg[21]  ( .D(n194), .CLK(clk_i), .Q(r0[21]), .QN(n41) );
  DFFX1 \r0_reg[22]  ( .D(n193), .CLK(clk_i), .Q(r0[22]), .QN(n23) );
  DFFX1 \r0_reg[23]  ( .D(n192), .CLK(clk_i), .Q(r0[23]), .QN(n45) );
  DFFX1 \r0_reg[24]  ( .D(n191), .CLK(clk_i), .Q(r0[24]) );
  DFFX1 \r0_2_reg[50]  ( .D(n243), .CLK(clk_i), .Q(r0_2[50]) );
  DFFX1 \r0_2_reg[49]  ( .D(n244), .CLK(clk_i), .Q(r0_2[49]) );
  DFFX1 \r0_2_reg[48]  ( .D(n245), .CLK(clk_i), .Q(r0_2[48]) );
  DFFX1 \r0_2_reg[47]  ( .D(n246), .CLK(clk_i), .Q(r0_2[47]) );
  DFFX1 \r0_2_reg[46]  ( .D(n247), .CLK(clk_i), .Q(r0_2[46]) );
  DFFX1 \r0_2_reg[45]  ( .D(n248), .CLK(clk_i), .Q(r0_2[45]) );
  DFFX1 \r0_2_reg[44]  ( .D(n249), .CLK(clk_i), .Q(r0_2[44]) );
  DFFX1 \r0_2_reg[43]  ( .D(n250), .CLK(clk_i), .Q(r0_2[43]) );
  DFFX1 \r0_2_reg[42]  ( .D(n251), .CLK(clk_i), .Q(r0_2[42]) );
  DFFX1 \r0_2_reg[41]  ( .D(n252), .CLK(clk_i), .Q(r0_2[41]) );
  DFFX1 \r0_2_reg[40]  ( .D(n253), .CLK(clk_i), .Q(r0_2[40]) );
  DFFX1 \r0_2_reg[39]  ( .D(n254), .CLK(clk_i), .Q(r0_2[39]) );
  DFFX1 \r0_2_reg[38]  ( .D(n255), .CLK(clk_i), .Q(r0_2[38]) );
  DFFX1 \r0_2_reg[37]  ( .D(n256), .CLK(clk_i), .Q(r0_2[37]) );
  DFFX1 \r0_2_reg[36]  ( .D(n257), .CLK(clk_i), .Q(r0_2[36]) );
  DFFX1 \r0_2_reg[35]  ( .D(n258), .CLK(clk_i), .Q(r0_2[35]) );
  DFFX1 \r0_2_reg[34]  ( .D(n259), .CLK(clk_i), .Q(r0_2[34]) );
  DFFX1 \r0_2_reg[33]  ( .D(n260), .CLK(clk_i), .Q(r0_2[33]) );
  DFFX1 \r0_2_reg[32]  ( .D(n261), .CLK(clk_i), .Q(r0_2[32]) );
  DFFX1 \r0_2_reg[31]  ( .D(n262), .CLK(clk_i), .Q(r0_2[31]) );
  DFFX1 \r0_2_reg[30]  ( .D(n263), .CLK(clk_i), .Q(r0_2[30]) );
  DFFX1 \r0_2_reg[29]  ( .D(n264), .CLK(clk_i), .Q(r0_2[29]) );
  DFFX1 \r0_2_reg[28]  ( .D(n265), .CLK(clk_i), .Q(r0_2[28]) );
  DFFX1 \r0_2_reg[27]  ( .D(n266), .CLK(clk_i), .Q(r0_2[27]) );
  DFFX1 \r0_2_reg[26]  ( .D(n267), .CLK(clk_i), .Q(r0_2[26]) );
  DFFX1 \r0_2_reg[25]  ( .D(n268), .CLK(clk_i), .Q(r0_2[25]) );
  DFFX1 \r0_2_reg[24]  ( .D(n269), .CLK(clk_i), .Q(r0_2[24]) );
  DFFX1 \r0_2_reg[23]  ( .D(n270), .CLK(clk_i), .Q(r0_2[23]) );
  DFFX1 \r0_2_reg[22]  ( .D(n271), .CLK(clk_i), .Q(r0_2[22]) );
  DFFX1 \r0_2_reg[21]  ( .D(n272), .CLK(clk_i), .Q(r0_2[21]) );
  DFFX1 \r0_2_reg[20]  ( .D(n273), .CLK(clk_i), .Q(r0_2[20]) );
  DFFX1 \r0_2_reg[19]  ( .D(n274), .CLK(clk_i), .Q(r0_2[19]) );
  DFFX1 \r0_2_reg[18]  ( .D(n275), .CLK(clk_i), .Q(r0_2[18]) );
  DFFX1 \r0_2_reg[17]  ( .D(n276), .CLK(clk_i), .Q(r0_2[17]) );
  DFFX1 \r0_2_reg[16]  ( .D(n277), .CLK(clk_i), .Q(r0_2[16]) );
  DFFX1 \r0_2_reg[15]  ( .D(n278), .CLK(clk_i), .Q(r0_2[15]) );
  DFFX1 \r0_2_reg[14]  ( .D(n279), .CLK(clk_i), .Q(r0_2[14]) );
  DFFX1 \r0_2_reg[13]  ( .D(n280), .CLK(clk_i), .Q(r0_2[13]) );
  DFFX1 \r0_2_reg[12]  ( .D(n281), .CLK(clk_i), .Q(r0_2[12]) );
  DFFX1 \r0_2_reg[11]  ( .D(n282), .CLK(clk_i), .Q(r0_2[11]) );
  DFFX1 \r0_2_reg[10]  ( .D(n283), .CLK(clk_i), .Q(r0_2[10]) );
  DFFX1 \r0_2_reg[9]  ( .D(n284), .CLK(clk_i), .Q(r0_2[9]) );
  DFFX1 \r0_2_reg[8]  ( .D(n285), .CLK(clk_i), .Q(r0_2[8]) );
  DFFX1 \r0_2_reg[7]  ( .D(n286), .CLK(clk_i), .Q(r0_2[7]) );
  DFFX1 \r0_2_reg[6]  ( .D(n287), .CLK(clk_i), .Q(r0_2[6]) );
  DFFX1 \r0_2_reg[5]  ( .D(n288), .CLK(clk_i), .Q(r0_2[5]) );
  DFFX1 \r0_2_reg[4]  ( .D(n289), .CLK(clk_i), .Q(r0_2[4]) );
  DFFX1 \r0_2_reg[3]  ( .D(n290), .CLK(clk_i), .Q(r0_2[3]) );
  DFFX1 \r0_2_reg[2]  ( .D(n291), .CLK(clk_i), .Q(r0_2[2]) );
  DFFX1 \r0_2_reg[1]  ( .D(n292), .CLK(clk_i), .Q(r0_2[1]) );
  DFFX1 \r1_reg[25]  ( .D(n216), .CLK(clk_i), .Q(r1[25]) );
  DFFX1 \r1_reg[24]  ( .D(n217), .CLK(clk_i), .Q(r1[24]) );
  DFFX1 \r1_reg[23]  ( .D(n218), .CLK(clk_i), .Q(r1[23]) );
  DFFX1 \r1_reg[22]  ( .D(n219), .CLK(clk_i), .Q(r1[22]) );
  DFFX1 \r1_reg[21]  ( .D(n220), .CLK(clk_i), .Q(r1[21]) );
  DFFX1 \r1_reg[20]  ( .D(n221), .CLK(clk_i), .Q(r1[20]) );
  DFFX1 \r1_reg[19]  ( .D(n222), .CLK(clk_i), .Q(r1[19]) );
  DFFX1 \r1_reg[18]  ( .D(n223), .CLK(clk_i), .Q(r1[18]) );
  DFFX1 \r1_reg[17]  ( .D(n224), .CLK(clk_i), .Q(r1[17]) );
  DFFX1 \r1_reg[16]  ( .D(n225), .CLK(clk_i), .Q(r1[16]) );
  DFFX1 \r1_reg[15]  ( .D(n226), .CLK(clk_i), .Q(r1[15]) );
  DFFX1 \r1_reg[14]  ( .D(n227), .CLK(clk_i), .Q(r1[14]) );
  DFFX1 \r1_reg[13]  ( .D(n228), .CLK(clk_i), .Q(r1[13]) );
  DFFX1 \r1_reg[12]  ( .D(n229), .CLK(clk_i), .Q(r1[12]) );
  DFFX1 \r1_reg[11]  ( .D(n230), .CLK(clk_i), .Q(r1[11]) );
  DFFX1 \r1_reg[10]  ( .D(n231), .CLK(clk_i), .Q(r1[10]) );
  DFFX1 \r1_reg[9]  ( .D(n232), .CLK(clk_i), .Q(r1[9]) );
  DFFX1 \r1_reg[8]  ( .D(n233), .CLK(clk_i), .Q(r1[8]) );
  DFFX1 \r1_reg[7]  ( .D(n234), .CLK(clk_i), .Q(r1[7]) );
  DFFX1 \r1_reg[6]  ( .D(n235), .CLK(clk_i), .Q(r1[6]) );
  DFFX1 \r1_reg[5]  ( .D(n236), .CLK(clk_i), .Q(r1[5]) );
  DFFX1 \r1_reg[4]  ( .D(n237), .CLK(clk_i), .Q(r1[4]) );
  DFFX1 \r1_reg[3]  ( .D(n238), .CLK(clk_i), .Q(r1[3]) );
  DFFX1 \r1_reg[2]  ( .D(n239), .CLK(clk_i), .Q(r1[2]) );
  DFFX1 \r1_reg[1]  ( .D(n240), .CLK(clk_i), .Q(r1[1]) );
  DFFX1 \r1_reg[0]  ( .D(n241), .CLK(clk_i), .Q(r1[0]) );
  DFFX1 \r1_2_reg[51]  ( .D(n189), .CLK(clk_i), .Q(r1_2[51]) );
  DFFX1 \r1_2_reg[50]  ( .D(n188), .CLK(clk_i), .Q(r1_2[50]) );
  DFFX1 \r1_2_reg[49]  ( .D(n187), .CLK(clk_i), .Q(r1_2[49]) );
  DFFX1 \r1_2_reg[48]  ( .D(n186), .CLK(clk_i), .Q(r1_2[48]) );
  DFFX1 \r1_2_reg[47]  ( .D(n185), .CLK(clk_i), .Q(r1_2[47]) );
  DFFX1 \r1_2_reg[46]  ( .D(n184), .CLK(clk_i), .Q(r1_2[46]) );
  DFFX1 \r1_2_reg[45]  ( .D(n183), .CLK(clk_i), .Q(r1_2[45]) );
  DFFX1 \r1_2_reg[44]  ( .D(n182), .CLK(clk_i), .Q(r1_2[44]) );
  DFFX1 \r1_2_reg[43]  ( .D(n181), .CLK(clk_i), .Q(r1_2[43]) );
  DFFX1 \r1_2_reg[42]  ( .D(n180), .CLK(clk_i), .Q(r1_2[42]) );
  DFFX1 \r1_2_reg[41]  ( .D(n179), .CLK(clk_i), .Q(r1_2[41]) );
  DFFX1 \r1_2_reg[40]  ( .D(n178), .CLK(clk_i), .Q(r1_2[40]) );
  DFFX1 \r1_2_reg[39]  ( .D(n177), .CLK(clk_i), .Q(r1_2[39]) );
  DFFX1 \r1_2_reg[38]  ( .D(n176), .CLK(clk_i), .Q(r1_2[38]) );
  DFFX1 \r1_2_reg[37]  ( .D(n175), .CLK(clk_i), .Q(r1_2[37]) );
  DFFX1 \r1_2_reg[36]  ( .D(n174), .CLK(clk_i), .Q(r1_2[36]) );
  DFFX1 \r1_2_reg[35]  ( .D(n173), .CLK(clk_i), .Q(r1_2[35]) );
  DFFX1 \r1_2_reg[34]  ( .D(n172), .CLK(clk_i), .Q(r1_2[34]) );
  DFFX1 \r1_2_reg[33]  ( .D(n171), .CLK(clk_i), .Q(r1_2[33]) );
  DFFX1 \r1_2_reg[32]  ( .D(n170), .CLK(clk_i), .Q(r1_2[32]) );
  DFFX1 \r1_2_reg[31]  ( .D(n169), .CLK(clk_i), .Q(r1_2[31]) );
  DFFX1 \r1_2_reg[30]  ( .D(n168), .CLK(clk_i), .Q(r1_2[30]) );
  DFFX1 \r1_2_reg[29]  ( .D(n167), .CLK(clk_i), .Q(r1_2[29]) );
  DFFX1 \r1_2_reg[28]  ( .D(n166), .CLK(clk_i), .Q(r1_2[28]) );
  DFFX1 \r1_2_reg[27]  ( .D(n165), .CLK(clk_i), .Q(r1_2[27]) );
  DFFX1 \r1_2_reg[26]  ( .D(n164), .CLK(clk_i), .Q(r1_2[26]) );
  DFFX1 \r1_2_reg[25]  ( .D(n163), .CLK(clk_i), .Q(r1_2[25]) );
  DFFX1 \r1_2_reg[24]  ( .D(n162), .CLK(clk_i), .Q(r1_2[24]) );
  DFFX1 \r1_2_reg[23]  ( .D(n161), .CLK(clk_i), .Q(r1_2[23]) );
  DFFX1 \r1_2_reg[22]  ( .D(n160), .CLK(clk_i), .Q(r1_2[22]) );
  DFFX1 \r1_2_reg[21]  ( .D(n159), .CLK(clk_i), .Q(r1_2[21]) );
  DFFX1 \r1_2_reg[20]  ( .D(n158), .CLK(clk_i), .Q(r1_2[20]) );
  DFFX1 \r1_2_reg[19]  ( .D(n157), .CLK(clk_i), .Q(r1_2[19]) );
  DFFX1 \r1_2_reg[18]  ( .D(n156), .CLK(clk_i), .Q(r1_2[18]) );
  DFFX1 \r1_2_reg[17]  ( .D(n155), .CLK(clk_i), .Q(r1_2[17]) );
  DFFX1 \r1_2_reg[16]  ( .D(n154), .CLK(clk_i), .Q(r1_2[16]) );
  DFFX1 \r1_2_reg[15]  ( .D(n153), .CLK(clk_i), .Q(r1_2[15]) );
  DFFX1 \r1_2_reg[14]  ( .D(n152), .CLK(clk_i), .Q(r1_2[14]) );
  DFFX1 \r1_2_reg[13]  ( .D(n151), .CLK(clk_i), .Q(r1_2[13]) );
  DFFX1 \r1_2_reg[12]  ( .D(n150), .CLK(clk_i), .Q(r1_2[12]) );
  DFFX1 \r1_2_reg[11]  ( .D(n149), .CLK(clk_i), .Q(r1_2[11]) );
  DFFX1 \r1_2_reg[10]  ( .D(n148), .CLK(clk_i), .Q(r1_2[10]) );
  DFFX1 \r1_2_reg[9]  ( .D(n147), .CLK(clk_i), .Q(r1_2[9]) );
  DFFX1 \r1_2_reg[8]  ( .D(n146), .CLK(clk_i), .Q(r1_2[8]) );
  DFFX1 \r1_2_reg[7]  ( .D(n145), .CLK(clk_i), .Q(r1_2[7]) );
  DFFX1 \r1_2_reg[6]  ( .D(n144), .CLK(clk_i), .Q(r1_2[6]) );
  DFFX1 \r1_2_reg[5]  ( .D(n143), .CLK(clk_i), .Q(r1_2[5]) );
  DFFX1 \r1_2_reg[4]  ( .D(n142), .CLK(clk_i), .Q(r1_2[4]) );
  DFFX1 \r1_2_reg[3]  ( .D(n141), .CLK(clk_i), .Q(r1_2[3]) );
  DFFX1 \r1_2_reg[2]  ( .D(n140), .CLK(clk_i), .Q(r1_2[2]) );
  DFFX1 \r1_2_reg[1]  ( .D(n139), .CLK(clk_i), .Q(r1_2[1]) );
  DFFX1 \r1_2_reg[0]  ( .D(n138), .CLK(clk_i), .Q(r1_2[0]) );
  DFFX1 \s_sqr_o_reg[25]  ( .D(n137), .CLK(clk_i), .Q(s_sqr_o[25]) );
  DFFX1 \sqr_o_reg[25]  ( .D(s_sqr_o[25]), .CLK(clk_i), .Q(sqr_o[25]) );
  DFFX1 \s_sqr_o_reg[24]  ( .D(n136), .CLK(clk_i), .Q(s_sqr_o[24]) );
  DFFX1 \sqr_o_reg[24]  ( .D(s_sqr_o[24]), .CLK(clk_i), .Q(sqr_o[24]) );
  DFFX1 \s_sqr_o_reg[23]  ( .D(n135), .CLK(clk_i), .Q(s_sqr_o[23]) );
  DFFX1 \sqr_o_reg[23]  ( .D(s_sqr_o[23]), .CLK(clk_i), .Q(sqr_o[23]) );
  DFFX1 \s_sqr_o_reg[22]  ( .D(n134), .CLK(clk_i), .Q(s_sqr_o[22]) );
  DFFX1 \sqr_o_reg[22]  ( .D(s_sqr_o[22]), .CLK(clk_i), .Q(sqr_o[22]) );
  DFFX1 \s_sqr_o_reg[21]  ( .D(n133), .CLK(clk_i), .Q(s_sqr_o[21]) );
  DFFX1 \sqr_o_reg[21]  ( .D(s_sqr_o[21]), .CLK(clk_i), .Q(sqr_o[21]) );
  DFFX1 \s_sqr_o_reg[20]  ( .D(n132), .CLK(clk_i), .Q(s_sqr_o[20]) );
  DFFX1 \sqr_o_reg[20]  ( .D(s_sqr_o[20]), .CLK(clk_i), .Q(sqr_o[20]) );
  DFFX1 \s_sqr_o_reg[19]  ( .D(n131), .CLK(clk_i), .Q(s_sqr_o[19]) );
  DFFX1 \sqr_o_reg[19]  ( .D(s_sqr_o[19]), .CLK(clk_i), .Q(sqr_o[19]) );
  DFFX1 \s_sqr_o_reg[18]  ( .D(n130), .CLK(clk_i), .Q(s_sqr_o[18]) );
  DFFX1 \sqr_o_reg[18]  ( .D(s_sqr_o[18]), .CLK(clk_i), .Q(sqr_o[18]) );
  DFFX1 \s_sqr_o_reg[17]  ( .D(n129), .CLK(clk_i), .Q(s_sqr_o[17]) );
  DFFX1 \sqr_o_reg[17]  ( .D(s_sqr_o[17]), .CLK(clk_i), .Q(sqr_o[17]) );
  DFFX1 \s_sqr_o_reg[16]  ( .D(n128), .CLK(clk_i), .Q(s_sqr_o[16]) );
  DFFX1 \sqr_o_reg[16]  ( .D(s_sqr_o[16]), .CLK(clk_i), .Q(sqr_o[16]) );
  DFFX1 \s_sqr_o_reg[15]  ( .D(n127), .CLK(clk_i), .Q(s_sqr_o[15]) );
  DFFX1 \sqr_o_reg[15]  ( .D(s_sqr_o[15]), .CLK(clk_i), .Q(sqr_o[15]) );
  DFFX1 \s_sqr_o_reg[14]  ( .D(n126), .CLK(clk_i), .Q(s_sqr_o[14]) );
  DFFX1 \sqr_o_reg[14]  ( .D(s_sqr_o[14]), .CLK(clk_i), .Q(sqr_o[14]) );
  DFFX1 \s_sqr_o_reg[13]  ( .D(n125), .CLK(clk_i), .Q(s_sqr_o[13]) );
  DFFX1 \sqr_o_reg[13]  ( .D(s_sqr_o[13]), .CLK(clk_i), .Q(sqr_o[13]) );
  DFFX1 \s_sqr_o_reg[12]  ( .D(n124), .CLK(clk_i), .Q(s_sqr_o[12]) );
  DFFX1 \sqr_o_reg[12]  ( .D(s_sqr_o[12]), .CLK(clk_i), .Q(sqr_o[12]) );
  DFFX1 \s_sqr_o_reg[11]  ( .D(n123), .CLK(clk_i), .Q(s_sqr_o[11]) );
  DFFX1 \sqr_o_reg[11]  ( .D(s_sqr_o[11]), .CLK(clk_i), .Q(sqr_o[11]) );
  DFFX1 \s_sqr_o_reg[10]  ( .D(n122), .CLK(clk_i), .Q(s_sqr_o[10]) );
  DFFX1 \sqr_o_reg[10]  ( .D(s_sqr_o[10]), .CLK(clk_i), .Q(sqr_o[10]) );
  DFFX1 \s_sqr_o_reg[9]  ( .D(n121), .CLK(clk_i), .Q(s_sqr_o[9]) );
  DFFX1 \sqr_o_reg[9]  ( .D(s_sqr_o[9]), .CLK(clk_i), .Q(sqr_o[9]) );
  DFFX1 \s_sqr_o_reg[8]  ( .D(n120), .CLK(clk_i), .Q(s_sqr_o[8]) );
  DFFX1 \sqr_o_reg[8]  ( .D(s_sqr_o[8]), .CLK(clk_i), .Q(sqr_o[8]) );
  DFFX1 \s_sqr_o_reg[7]  ( .D(n119), .CLK(clk_i), .Q(s_sqr_o[7]) );
  DFFX1 \sqr_o_reg[7]  ( .D(s_sqr_o[7]), .CLK(clk_i), .Q(sqr_o[7]) );
  DFFX1 \s_sqr_o_reg[6]  ( .D(n118), .CLK(clk_i), .Q(s_sqr_o[6]) );
  DFFX1 \sqr_o_reg[6]  ( .D(s_sqr_o[6]), .CLK(clk_i), .Q(sqr_o[6]) );
  DFFX1 \s_sqr_o_reg[5]  ( .D(n117), .CLK(clk_i), .Q(s_sqr_o[5]) );
  DFFX1 \sqr_o_reg[5]  ( .D(s_sqr_o[5]), .CLK(clk_i), .Q(sqr_o[5]) );
  DFFX1 \s_sqr_o_reg[4]  ( .D(n116), .CLK(clk_i), .Q(s_sqr_o[4]) );
  DFFX1 \sqr_o_reg[4]  ( .D(s_sqr_o[4]), .CLK(clk_i), .Q(sqr_o[4]) );
  DFFX1 \s_sqr_o_reg[3]  ( .D(n115), .CLK(clk_i), .Q(s_sqr_o[3]) );
  DFFX1 \sqr_o_reg[3]  ( .D(s_sqr_o[3]), .CLK(clk_i), .Q(sqr_o[3]) );
  DFFX1 \s_sqr_o_reg[2]  ( .D(n114), .CLK(clk_i), .Q(s_sqr_o[2]) );
  DFFX1 \sqr_o_reg[2]  ( .D(s_sqr_o[2]), .CLK(clk_i), .Q(sqr_o[2]) );
  DFFX1 \s_sqr_o_reg[1]  ( .D(n113), .CLK(clk_i), .Q(s_sqr_o[1]) );
  DFFX1 \sqr_o_reg[1]  ( .D(s_sqr_o[1]), .CLK(clk_i), .Q(sqr_o[1]) );
  DFFX1 \s_sqr_o_reg[0]  ( .D(n112), .CLK(clk_i), .Q(s_sqr_o[0]) );
  DFFX1 \sqr_o_reg[0]  ( .D(s_sqr_o[0]), .CLK(clk_i), .Q(sqr_o[0]) );
  DFFX1 s_ine_o_reg ( .D(n111), .CLK(clk_i), .Q(s_ine_o) );
  DFFX1 ine_o_reg ( .D(s_ine_o), .CLK(clk_i), .Q(ine_o) );
  sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_sub_0 sub_185_aco ( .A(r1[25:0]), .B({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        N306}), .CI(1'b0), .DIFF({N334, N333, N332, N331, N330, N329, N328, 
        N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, 
        N315, N314, N313, N312, N311, N310, N309}) );
  sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_add_0 add_151 ( .A(s_op1), .B({s_op2[51:33], 
        n490, n492, n489, n493, n487, n491, n488, n494, n486, s_op2[23:17], 
        n485, s_op2[15:0]}), .CI(1'b0), .SUM(s_sum2b) );
  sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_sub_1 sub_150 ( .A(s_op1), .B({s_op2[51:33], 
        n490, n492, n489, n493, n487, n491, n488, n494, n486, s_op2[23:17], 
        n485, s_op2[15:0]}), .CI(1'b0), .DIFF(s_sum1b) );
  sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_add_1 add_146 ( .A(r0_2), .B({1'b0, b_2[50], 
        1'b0, b_2[48], 1'b0, b_2[46], 1'b0, b_2[44], 1'b0, b_2[42], 1'b0, 
        b_2[40], 1'b0, b_2[38], 1'b0, b_2[36], 1'b0, b_2[34], 1'b0, b_2[32], 
        1'b0, b_2[30], 1'b0, b_2[28], 1'b0, b_2[26], 1'b0, b_2[24], 1'b0, 
        b_2[22], 1'b0, b_2[20], 1'b0, b_2[18], 1'b0, b_2[16], 1'b0, b_2[14], 
        1'b0, b_2[12], 1'b0, b_2[10], 1'b0, b_2[8], 1'b0, b_2[6], 1'b0, b_2[4], 
        1'b0, b_2[2], 1'b0, b_2[0]}), .CI(1'b0), .SUM(s_op1) );
  sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_cmp6_0 r405 ( .A(s_rad_i), .B(r1_2), .TC(
        1'b0), .LT(N306), .EQ(N466) );
  sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_sub_2 sub_148 ( .A(r0[25:0]), .B(b[25:0]), 
        .CI(1'b0), .DIFF(s_sum1a) );
  sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_add_2 add_149 ( .A(r0[25:0]), .B(b[25:0]), 
        .CI(1'b0), .SUM(s_sum2a) );
  sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_cmp2_0 lt_gt_163 ( .A(s_rad_i), .B(r0_2), 
        .LEQ(1'b0), .TC(1'b0), .LT_LE(N142) );
  sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_cmp6_1 eq_201_2 ( .A({N465, N464, N463, N462, 
        N461, N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, 
        N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439, N438, 
        N437, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, 
        N425, N424, N423, N422, N421, N420, N419, N418, N417, N416, N415, N414}), .B(s_rad_i), .TC(1'b0), .EQ(N467) );
  sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_inc_0 add_0_root_add_199 ( .A({N413, N412, 
        N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, 
        N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, 
        N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, 
        N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, 
        N363, N362}), .SUM({N465, N464, N463, N462, N461, N460, N459, N458, 
        N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, 
        N445, N444, N443, N442, N441, N440, N439, N438, N437, N436, N435, N434, 
        N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, 
        N421, N420, N419, N418, N417, N416, N415, N414}) );
  sqrt_RD_WIDTH52_SQ_WIDTH26_DW01_sub_3 sub_1_root_add_199 ( .A(r1_2), .B({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r1[25:0], 1'b0}), .CI(1'b0), .DIFF({N413, N412, N411, N410, N409, 
        N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, 
        N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, 
        N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, 
        N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362}) );
  OR2X1 U3 ( .IN1(s_start_i), .IN2(s_state), .Q(n28) );
  OR2X1 U4 ( .IN1(n473), .IN2(n55), .Q(n29) );
  OR2X1 U5 ( .IN1(n56), .IN2(N142), .Q(n30) );
  AND2X1 U6 ( .IN1(s_state), .IN2(n26), .Q(n32) );
  INVX0 U7 ( .INP(n29), .ZN(n46) );
  INVX0 U8 ( .INP(n29), .ZN(n47) );
  INVX0 U19 ( .INP(n29), .ZN(n48) );
  INVX0 U20 ( .INP(n29), .ZN(n49) );
  INVX0 U21 ( .INP(n30), .ZN(n50) );
  INVX0 U22 ( .INP(n30), .ZN(n51) );
  INVX0 U23 ( .INP(n30), .ZN(n52) );
  INVX0 U24 ( .INP(n30), .ZN(n53) );
  INVX0 U25 ( .INP(n32), .ZN(n54) );
  INVX0 U26 ( .INP(n32), .ZN(n55) );
  INVX0 U27 ( .INP(n32), .ZN(n56) );
  INVX0 U28 ( .INP(n32), .ZN(n57) );
  INVX0 U29 ( .INP(n28), .ZN(n58) );
  INVX0 U30 ( .INP(n28), .ZN(n59) );
  INVX0 U31 ( .INP(n28), .ZN(n60) );
  INVX0 U32 ( .INP(n28), .ZN(n301) );
  NOR2X0 U33 ( .IN1(n302), .IN2(n25), .QN(s_op2[9]) );
  NOR2X0 U34 ( .IN1(n25), .IN2(n303), .QN(s_op2[8]) );
  AND2X1 U35 ( .IN1(n304), .IN2(n480), .Q(s_op2[7]) );
  AND2X1 U36 ( .IN1(n305), .IN2(n480), .Q(s_op2[6]) );
  AND2X1 U37 ( .IN1(n306), .IN2(n480), .Q(s_op2[5]) );
  AND2X1 U38 ( .IN1(n25), .IN2(n307), .Q(s_op2[51]) );
  AND2X1 U39 ( .IN1(n25), .IN2(n308), .Q(s_op2[50]) );
  NOR2X0 U40 ( .IN1(n309), .IN2(n310), .QN(s_op2[4]) );
  AND2X1 U41 ( .IN1(n25), .IN2(n311), .Q(s_op2[49]) );
  NOR2X0 U42 ( .IN1(n480), .IN2(n312), .QN(s_op2[48]) );
  NOR2X0 U43 ( .IN1(n480), .IN2(n313), .QN(s_op2[47]) );
  NOR2X0 U44 ( .IN1(n480), .IN2(n314), .QN(s_op2[46]) );
  AND2X1 U45 ( .IN1(n25), .IN2(n315), .Q(s_op2[45]) );
  NOR2X0 U46 ( .IN1(n480), .IN2(n316), .QN(s_op2[44]) );
  NOR2X0 U47 ( .IN1(n480), .IN2(n317), .QN(s_op2[43]) );
  NOR2X0 U48 ( .IN1(n480), .IN2(n318), .QN(s_op2[42]) );
  AND2X1 U49 ( .IN1(n25), .IN2(n319), .Q(s_op2[41]) );
  AO22X1 U50 ( .IN1(n320), .IN2(n25), .IN3(n321), .IN4(n322), .Q(s_op2[40]) );
  INVX0 U51 ( .INP(n323), .ZN(n322) );
  NOR2X0 U52 ( .IN1(n324), .IN2(n325), .QN(s_op2[3]) );
  INVX0 U53 ( .INP(n326), .ZN(n324) );
  AO22X1 U54 ( .IN1(n327), .IN2(n25), .IN3(n321), .IN4(n328), .Q(s_op2[39]) );
  AO22X1 U55 ( .IN1(n329), .IN2(n25), .IN3(n321), .IN4(n330), .Q(s_op2[38]) );
  AO22X1 U56 ( .IN1(n331), .IN2(n25), .IN3(n321), .IN4(n332), .Q(s_op2[37]) );
  AND2X1 U57 ( .IN1(n333), .IN2(n480), .Q(n321) );
  MUX21X1 U58 ( .IN1(n334), .IN2(n335), .S(n25), .Q(s_op2[36]) );
  NOR2X0 U59 ( .IN1(n481), .IN2(n336), .QN(n334) );
  MUX21X1 U60 ( .IN1(n307), .IN2(n337), .S(n25), .Q(s_op2[35]) );
  AO22X1 U61 ( .IN1(n333), .IN2(n338), .IN3(n339), .IN4(n328), .Q(n307) );
  INVX0 U62 ( .INP(n340), .ZN(n328) );
  MUX21X1 U63 ( .IN1(n308), .IN2(n341), .S(n25), .Q(s_op2[34]) );
  AO22X1 U64 ( .IN1(n342), .IN2(n333), .IN3(n330), .IN4(n339), .Q(n308) );
  INVX0 U65 ( .INP(n343), .ZN(n342) );
  MUX21X1 U66 ( .IN1(n311), .IN2(n344), .S(n25), .Q(s_op2[33]) );
  AO22X1 U67 ( .IN1(n333), .IN2(n345), .IN3(n339), .IN4(n332), .Q(n311) );
  NOR2X0 U68 ( .IN1(n346), .IN2(n325), .QN(s_op2[2]) );
  MUX21X1 U69 ( .IN1(n327), .IN2(n304), .S(n25), .Q(s_op2[23]) );
  AO22X1 U70 ( .IN1(n347), .IN2(n348), .IN3(n349), .IN4(n326), .Q(n304) );
  AO221X1 U71 ( .IN1(n333), .IN2(n350), .IN3(n347), .IN4(n338), .IN5(n351), 
        .Q(n327) );
  AO22X1 U72 ( .IN1(n349), .IN2(n352), .IN3(n339), .IN4(n353), .Q(n351) );
  MUX21X1 U73 ( .IN1(n329), .IN2(n305), .S(n25), .Q(s_op2[22]) );
  AO22X1 U74 ( .IN1(n354), .IN2(n347), .IN3(n355), .IN4(n349), .Q(n305) );
  INVX0 U75 ( .INP(n356), .ZN(n354) );
  AOI221X1 U76 ( .IN1(n333), .IN2(n357), .IN3(n347), .IN4(n343), .IN5(n358), 
        .QN(n329) );
  AO22X1 U77 ( .IN1(n349), .IN2(n359), .IN3(n339), .IN4(n360), .Q(n358) );
  MUX21X1 U78 ( .IN1(n331), .IN2(n306), .S(n25), .Q(s_op2[21]) );
  AO22X1 U79 ( .IN1(n347), .IN2(n361), .IN3(n362), .IN4(n349), .Q(n306) );
  AO221X1 U80 ( .IN1(n333), .IN2(n363), .IN3(n347), .IN4(n345), .IN5(n364), 
        .Q(n331) );
  AO22X1 U81 ( .IN1(n349), .IN2(n365), .IN3(n339), .IN4(n366), .Q(n364) );
  MUX21X1 U82 ( .IN1(n335), .IN2(n367), .S(n25), .Q(s_op2[20]) );
  NOR2X0 U83 ( .IN1(n309), .IN2(n12), .QN(n367) );
  AOI221X1 U84 ( .IN1(n333), .IN2(n368), .IN3(n347), .IN4(n369), .IN5(n370), 
        .QN(n335) );
  AO22X1 U85 ( .IN1(n349), .IN2(n371), .IN3(n339), .IN4(n372), .Q(n370) );
  NOR2X0 U86 ( .IN1(n373), .IN2(n325), .QN(s_op2[1]) );
  NAND2X0 U87 ( .IN1(n480), .IN2(n347), .QN(n325) );
  AO22X1 U88 ( .IN1(n480), .IN2(n337), .IN3(n374), .IN4(n326), .Q(s_op2[19])
         );
  AO221X1 U89 ( .IN1(n333), .IN2(n348), .IN3(n347), .IN4(n352), .IN5(n375), 
        .Q(n337) );
  AO22X1 U90 ( .IN1(n349), .IN2(n353), .IN3(n339), .IN4(n350), .Q(n375) );
  AO22X1 U91 ( .IN1(n341), .IN2(n480), .IN3(n374), .IN4(n355), .Q(s_op2[18])
         );
  AOI221X1 U92 ( .IN1(n333), .IN2(n356), .IN3(n347), .IN4(n359), .IN5(n376), 
        .QN(n341) );
  AO22X1 U93 ( .IN1(n349), .IN2(n360), .IN3(n339), .IN4(n357), .Q(n376) );
  AO22X1 U94 ( .IN1(n480), .IN2(n344), .IN3(n374), .IN4(n362), .Q(s_op2[17])
         );
  INVX0 U95 ( .INP(n373), .ZN(n362) );
  AND2X1 U96 ( .IN1(n347), .IN2(n25), .Q(n374) );
  AO221X1 U97 ( .IN1(n333), .IN2(n361), .IN3(n347), .IN4(n365), .IN5(n377), 
        .Q(n344) );
  AO22X1 U98 ( .IN1(n349), .IN2(n366), .IN3(n339), .IN4(n363), .Q(n377) );
  AND2X1 U99 ( .IN1(n378), .IN2(n480), .Q(s_op2[15]) );
  NOR2X0 U100 ( .IN1(n25), .IN2(n379), .QN(s_op2[14]) );
  NOR2X0 U101 ( .IN1(n25), .IN2(n380), .QN(s_op2[13]) );
  NOR2X0 U102 ( .IN1(n25), .IN2(n381), .QN(s_op2[12]) );
  AND2X1 U103 ( .IN1(n480), .IN2(n382), .Q(s_op2[11]) );
  NOR2X0 U104 ( .IN1(n25), .IN2(n383), .QN(s_op2[10]) );
  NOR2X0 U105 ( .IN1(n310), .IN2(n384), .QN(s_op2[0]) );
  INVX0 U106 ( .INP(n385), .ZN(n310) );
  MUX21X1 U107 ( .IN1(n386), .IN2(n387), .S(n25), .Q(n485) );
  NOR2X0 U108 ( .IN1(n12), .IN2(n384), .QN(n387) );
  MUX21X1 U109 ( .IN1(n320), .IN2(n388), .S(n25), .Q(n486) );
  INVX0 U110 ( .INP(n303), .ZN(n388) );
  AO222X1 U111 ( .IN1(n347), .IN2(n368), .IN3(n349), .IN4(n389), .IN5(n384), 
        .IN6(n12), .Q(n303) );
  NAND2X0 U112 ( .IN1(r0[0]), .IN2(n390), .QN(n384) );
  AOI221X1 U113 ( .IN1(n339), .IN2(n371), .IN3(n349), .IN4(n369), .IN5(n391), 
        .QN(n320) );
  AO22X1 U114 ( .IN1(n347), .IN2(n392), .IN3(n333), .IN4(n372), .Q(n391) );
  INVX0 U115 ( .INP(n393), .ZN(n487) );
  MUX21X1 U116 ( .IN1(n316), .IN2(n381), .S(n25), .Q(n393) );
  AO222X1 U117 ( .IN1(n347), .IN2(n372), .IN3(n349), .IN4(n368), .IN5(n309), 
        .IN6(n12), .Q(n381) );
  MUX21X1 U118 ( .IN1(n394), .IN2(n389), .S(n482), .Q(n309) );
  NAND2X0 U119 ( .IN1(n395), .IN2(r0[0]), .QN(n394) );
  AO222X1 U120 ( .IN1(n333), .IN2(n371), .IN3(n339), .IN4(n369), .IN5(n481), 
        .IN6(n336), .Q(n316) );
  MUX21X1 U121 ( .IN1(n392), .IN2(n323), .S(n482), .Q(n336) );
  INVX0 U122 ( .INP(n396), .ZN(n488) );
  MUX21X1 U123 ( .IN1(n318), .IN2(n383), .S(n25), .Q(n396) );
  AO221X1 U124 ( .IN1(n356), .IN2(n27), .IN3(n346), .IN4(n12), .IN5(n397), .Q(
        n383) );
  AO21X1 U125 ( .IN1(n347), .IN2(n357), .IN3(n333), .Q(n397) );
  AO221X1 U126 ( .IN1(n333), .IN2(n360), .IN3(n347), .IN4(n398), .IN5(n399), 
        .Q(n318) );
  AO22X1 U127 ( .IN1(n349), .IN2(n343), .IN3(n339), .IN4(n359), .Q(n399) );
  INVX0 U128 ( .INP(n400), .ZN(n489) );
  MUX21X1 U129 ( .IN1(n314), .IN2(n379), .S(n25), .Q(n400) );
  AO221X1 U130 ( .IN1(n333), .IN2(n346), .IN3(n347), .IN4(n360), .IN5(n401), 
        .Q(n379) );
  AO22X1 U131 ( .IN1(n349), .IN2(n357), .IN3(n339), .IN4(n356), .Q(n401) );
  AO221X1 U132 ( .IN1(n402), .IN2(n22), .IN3(n395), .IN4(n11), .IN5(n403), .Q(
        n356) );
  AO22X1 U133 ( .IN1(n404), .IN2(n18), .IN3(n405), .IN4(n34), .Q(n403) );
  AO221X1 U134 ( .IN1(n402), .IN2(n33), .IN3(n395), .IN4(n15), .IN5(n406), .Q(
        n357) );
  AO22X1 U135 ( .IN1(n404), .IN2(n21), .IN3(n405), .IN4(n35), .Q(n406) );
  AO221X1 U136 ( .IN1(n402), .IN2(n36), .IN3(n395), .IN4(n17), .IN5(n407), .Q(
        n360) );
  AO22X1 U137 ( .IN1(n404), .IN2(n14), .IN3(n405), .IN4(n37), .Q(n407) );
  INVX0 U138 ( .INP(n355), .ZN(n346) );
  OA221X1 U139 ( .IN1(n484), .IN2(r0[0]), .IN3(n483), .IN4(r0[1]), .IN5(n408), 
        .Q(n355) );
  OA21X1 U140 ( .IN1(n409), .IN2(r0[2]), .IN3(n410), .Q(n408) );
  AO221X1 U141 ( .IN1(n481), .IN2(n398), .IN3(n482), .IN4(n343), .IN5(n411), 
        .Q(n314) );
  AO21X1 U142 ( .IN1(n333), .IN2(n359), .IN3(n347), .Q(n411) );
  AO221X1 U143 ( .IN1(n402), .IN2(n38), .IN3(n395), .IN4(n20), .IN5(n412), .Q(
        n359) );
  AO22X1 U144 ( .IN1(n404), .IN2(n16), .IN3(n405), .IN4(n39), .Q(n412) );
  AO221X1 U145 ( .IN1(n402), .IN2(n40), .IN3(n395), .IN4(n23), .IN5(n413), .Q(
        n343) );
  AO22X1 U146 ( .IN1(n404), .IN2(n19), .IN3(n405), .IN4(n41), .Q(n413) );
  INVX0 U147 ( .INP(n330), .ZN(n398) );
  OA221X1 U148 ( .IN1(n31), .IN2(r0[25]), .IN3(n13), .IN4(r0[24]), .IN5(n414), 
        .Q(n330) );
  OA21X1 U149 ( .IN1(n410), .IN2(r0[23]), .IN3(n409), .Q(n414) );
  MUX21X1 U150 ( .IN1(n415), .IN2(n386), .S(n25), .Q(n490) );
  AOI221X1 U151 ( .IN1(n333), .IN2(n389), .IN3(n347), .IN4(n371), .IN5(n416), 
        .QN(n386) );
  AO22X1 U152 ( .IN1(n349), .IN2(n372), .IN3(n339), .IN4(n368), .Q(n416) );
  AO221X1 U153 ( .IN1(n402), .IN2(n34), .IN3(n395), .IN4(n21), .IN5(n417), .Q(
        n368) );
  AO22X1 U154 ( .IN1(n404), .IN2(n11), .IN3(n405), .IN4(n33), .Q(n417) );
  AO221X1 U155 ( .IN1(n402), .IN2(n35), .IN3(n395), .IN4(n14), .IN5(n418), .Q(
        n372) );
  AO22X1 U156 ( .IN1(n404), .IN2(n15), .IN3(n405), .IN4(n36), .Q(n418) );
  AO221X1 U157 ( .IN1(n402), .IN2(n37), .IN3(n395), .IN4(n16), .IN5(n419), .Q(
        n371) );
  AO22X1 U158 ( .IN1(n404), .IN2(n17), .IN3(n405), .IN4(n38), .Q(n419) );
  AO221X1 U159 ( .IN1(n402), .IN2(n42), .IN3(n395), .IN4(n18), .IN5(n420), .Q(
        n389) );
  AO22X1 U160 ( .IN1(n404), .IN2(n44), .IN3(n405), .IN4(n22), .Q(n420) );
  INVX0 U161 ( .INP(n312), .ZN(n415) );
  AO221X1 U162 ( .IN1(n333), .IN2(n369), .IN3(n482), .IN4(n392), .IN5(n421), 
        .Q(n312) );
  AO21X1 U163 ( .IN1(n481), .IN2(n323), .IN3(n347), .Q(n421) );
  NAND2X0 U164 ( .IN1(r0[25]), .IN2(n402), .QN(n323) );
  OAI221X1 U165 ( .IN1(n410), .IN2(r0[21]), .IN3(n409), .IN4(r0[24]), .IN5(
        n422), .QN(n392) );
  AOI22X1 U166 ( .IN1(n404), .IN2(n23), .IN3(n405), .IN4(n45), .QN(n422) );
  AO221X1 U167 ( .IN1(n402), .IN2(n39), .IN3(n395), .IN4(n19), .IN5(n423), .Q(
        n369) );
  AO22X1 U168 ( .IN1(n404), .IN2(n20), .IN3(n405), .IN4(n40), .Q(n423) );
  MUX21X1 U169 ( .IN1(n424), .IN2(n382), .S(n25), .Q(n491) );
  OA221X1 U170 ( .IN1(n348), .IN2(n482), .IN3(n326), .IN4(n481), .IN5(n425), 
        .Q(n382) );
  AOI21X1 U171 ( .IN1(n426), .IN2(n347), .IN3(n333), .QN(n425) );
  INVX0 U172 ( .INP(n350), .ZN(n426) );
  INVX0 U173 ( .INP(n317), .ZN(n424) );
  AO221X1 U174 ( .IN1(n427), .IN2(n339), .IN3(n428), .IN4(n349), .IN5(n429), 
        .Q(n317) );
  AO22X1 U175 ( .IN1(n347), .IN2(n340), .IN3(n430), .IN4(n333), .Q(n429) );
  INVX0 U176 ( .INP(n353), .ZN(n430) );
  MUX21X1 U177 ( .IN1(n431), .IN2(n378), .S(n25), .Q(n492) );
  AO221X1 U178 ( .IN1(n333), .IN2(n326), .IN3(n347), .IN4(n353), .IN5(n432), 
        .Q(n378) );
  AO22X1 U179 ( .IN1(n349), .IN2(n350), .IN3(n339), .IN4(n348), .Q(n432) );
  AO221X1 U180 ( .IN1(r0[4]), .IN2(n402), .IN3(n395), .IN4(r0[7]), .IN5(n433), 
        .Q(n348) );
  AO22X1 U181 ( .IN1(r0[5]), .IN2(n404), .IN3(r0[6]), .IN4(n405), .Q(n433) );
  AO221X1 U182 ( .IN1(n402), .IN2(r0[8]), .IN3(r0[11]), .IN4(n395), .IN5(n434), 
        .Q(n350) );
  AO22X1 U183 ( .IN1(r0[9]), .IN2(n404), .IN3(r0[10]), .IN4(n405), .Q(n434) );
  AO221X1 U184 ( .IN1(r0[12]), .IN2(n402), .IN3(r0[15]), .IN4(n395), .IN5(n435), .Q(n353) );
  AO22X1 U185 ( .IN1(r0[13]), .IN2(n404), .IN3(r0[14]), .IN4(n405), .Q(n435)
         );
  AO221X1 U186 ( .IN1(r0[0]), .IN2(n402), .IN3(r0[3]), .IN4(n395), .IN5(n436), 
        .Q(n326) );
  AO22X1 U187 ( .IN1(r0[1]), .IN2(n404), .IN3(r0[2]), .IN4(n405), .Q(n436) );
  INVX0 U188 ( .INP(n313), .ZN(n431) );
  AO221X1 U189 ( .IN1(n481), .IN2(n340), .IN3(n428), .IN4(n482), .IN5(n437), 
        .Q(n313) );
  AO21X1 U190 ( .IN1(n427), .IN2(n333), .IN3(n347), .Q(n437) );
  INVX0 U191 ( .INP(n352), .ZN(n427) );
  AO221X1 U192 ( .IN1(r0[16]), .IN2(n402), .IN3(r0[19]), .IN4(n395), .IN5(n438), .Q(n352) );
  AO22X1 U193 ( .IN1(r0[17]), .IN2(n404), .IN3(r0[18]), .IN4(n405), .Q(n438)
         );
  INVX0 U194 ( .INP(n338), .ZN(n428) );
  AO221X1 U195 ( .IN1(r0[20]), .IN2(n402), .IN3(r0[23]), .IN4(n395), .IN5(n439), .Q(n338) );
  AO22X1 U196 ( .IN1(r0[21]), .IN2(n404), .IN3(r0[22]), .IN4(n405), .Q(n439)
         );
  NAND2X0 U197 ( .IN1(n440), .IN2(n31), .QN(n340) );
  MUX21X1 U198 ( .IN1(r0[25]), .IN2(r0[24]), .S(n13), .Q(n440) );
  MUX21X1 U199 ( .IN1(n315), .IN2(n441), .S(n25), .Q(n493) );
  INVX0 U200 ( .INP(n380), .ZN(n441) );
  AO221X1 U201 ( .IN1(n333), .IN2(n373), .IN3(n442), .IN4(n347), .IN5(n443), 
        .Q(n380) );
  AO22X1 U202 ( .IN1(n349), .IN2(n444), .IN3(n339), .IN4(n445), .Q(n443) );
  INVX0 U203 ( .INP(n366), .ZN(n442) );
  OA221X1 U204 ( .IN1(n332), .IN2(n12), .IN3(n345), .IN4(n27), .IN5(n446), .Q(
        n315) );
  AOI21X1 U205 ( .IN1(n447), .IN2(n333), .IN3(n347), .QN(n446) );
  INVX0 U206 ( .INP(n365), .ZN(n447) );
  MUX21X1 U207 ( .IN1(n319), .IN2(n448), .S(n25), .Q(n494) );
  INVX0 U208 ( .INP(n302), .ZN(n448) );
  AO221X1 U209 ( .IN1(n445), .IN2(n27), .IN3(n373), .IN4(n12), .IN5(n449), .Q(
        n302) );
  AO21X1 U210 ( .IN1(n347), .IN2(n444), .IN3(n333), .Q(n449) );
  INVX0 U211 ( .INP(n363), .ZN(n444) );
  AO221X1 U212 ( .IN1(r0[6]), .IN2(n402), .IN3(r0[9]), .IN4(n395), .IN5(n450), 
        .Q(n363) );
  AO22X1 U213 ( .IN1(r0[7]), .IN2(n404), .IN3(r0[8]), .IN4(n405), .Q(n450) );
  NAND2X0 U214 ( .IN1(n451), .IN2(n484), .QN(n373) );
  MUX21X1 U215 ( .IN1(r0[1]), .IN2(r0[0]), .S(n13), .Q(n451) );
  INVX0 U216 ( .INP(n361), .ZN(n445) );
  AO221X1 U217 ( .IN1(r0[2]), .IN2(n402), .IN3(r0[5]), .IN4(n395), .IN5(n452), 
        .Q(n361) );
  AO22X1 U218 ( .IN1(r0[3]), .IN2(n404), .IN3(r0[4]), .IN4(n405), .Q(n452) );
  AO221X1 U219 ( .IN1(n333), .IN2(n366), .IN3(n347), .IN4(n332), .IN5(n453), 
        .Q(n319) );
  AO22X1 U220 ( .IN1(n349), .IN2(n345), .IN3(n339), .IN4(n365), .Q(n453) );
  AO221X1 U221 ( .IN1(r0[14]), .IN2(n402), .IN3(r0[17]), .IN4(n395), .IN5(n454), .Q(n365) );
  AO22X1 U222 ( .IN1(r0[15]), .IN2(n404), .IN3(r0[16]), .IN4(n405), .Q(n454)
         );
  NOR2X0 U223 ( .IN1(n27), .IN2(n481), .QN(n339) );
  AO221X1 U224 ( .IN1(r0[18]), .IN2(n402), .IN3(r0[21]), .IN4(n395), .IN5(n455), .Q(n345) );
  AO22X1 U225 ( .IN1(r0[19]), .IN2(n404), .IN3(r0[20]), .IN4(n405), .Q(n455)
         );
  NOR2X0 U226 ( .IN1(n12), .IN2(n482), .QN(n349) );
  AO221X1 U227 ( .IN1(r0[22]), .IN2(n402), .IN3(r0[25]), .IN4(n395), .IN5(n456), .Q(n332) );
  AO22X1 U228 ( .IN1(r0[23]), .IN2(n404), .IN3(r0[24]), .IN4(n405), .Q(n456)
         );
  NOR2X0 U229 ( .IN1(n12), .IN2(n27), .QN(n347) );
  AO221X1 U230 ( .IN1(r0[10]), .IN2(n402), .IN3(r0[13]), .IN4(n395), .IN5(n457), .Q(n366) );
  AO22X1 U231 ( .IN1(r0[11]), .IN2(n404), .IN3(r0[12]), .IN4(n405), .Q(n457)
         );
  NOR2X0 U232 ( .IN1(n31), .IN2(n483), .QN(n405) );
  NOR2X0 U233 ( .IN1(n13), .IN2(n484), .QN(n404) );
  NOR2X0 U234 ( .IN1(n482), .IN2(n481), .QN(n333) );
  MUX21X1 U235 ( .IN1(n458), .IN2(n58), .S(\s_count[0] ), .Q(n300) );
  NOR2X0 U236 ( .IN1(n60), .IN2(n459), .QN(n458) );
  NAND2X0 U237 ( .IN1(n460), .IN2(n461), .QN(n299) );
  AO21X1 U238 ( .IN1(n462), .IN2(n43), .IN3(n24), .Q(n461) );
  AO21X1 U239 ( .IN1(s_state), .IN2(n463), .IN3(s_start_i), .Q(n298) );
  AO22X1 U240 ( .IN1(n32), .IN2(n464), .IN3(s_ready_o), .IN4(n28), .Q(n297) );
  NAND2X0 U241 ( .IN1(n465), .IN2(n460), .QN(n296) );
  XNOR2X1 U242 ( .IN1(\s_count[1] ), .IN2(n466), .Q(n465) );
  NOR2X0 U243 ( .IN1(n59), .IN2(\s_count[0] ), .QN(n466) );
  AO22X1 U244 ( .IN1(n462), .IN2(n460), .IN3(\s_count[2] ), .IN4(n467), .Q(
        n295) );
  AO21X1 U245 ( .IN1(n460), .IN2(n468), .IN3(n59), .Q(n467) );
  OR2X1 U246 ( .IN1(\s_count[1] ), .IN2(\s_count[0] ), .Q(n468) );
  NAND2X0 U247 ( .IN1(n469), .IN2(n460), .QN(n294) );
  INVX0 U248 ( .INP(n459), .ZN(n460) );
  AO21X1 U249 ( .IN1(s_state), .IN2(n464), .IN3(s_start_i), .Q(n459) );
  XNOR2X1 U250 ( .IN1(\s_count[3] ), .IN2(n462), .Q(n469) );
  AND2X1 U251 ( .IN1(n470), .IN2(n28), .Q(n462) );
  AO222X1 U252 ( .IN1(s_sum1b[0]), .IN2(n471), .IN3(s_sum2b[0]), .IN4(n472), 
        .IN5(r0_2[0]), .IN6(n60), .Q(n293) );
  AO222X1 U253 ( .IN1(s_sum1b[1]), .IN2(n471), .IN3(s_sum2b[1]), .IN4(n472), 
        .IN5(r0_2[1]), .IN6(n301), .Q(n292) );
  AO222X1 U254 ( .IN1(s_sum1b[2]), .IN2(n471), .IN3(s_sum2b[2]), .IN4(n472), 
        .IN5(r0_2[2]), .IN6(n58), .Q(n291) );
  AO222X1 U255 ( .IN1(s_sum1b[3]), .IN2(n471), .IN3(s_sum2b[3]), .IN4(n472), 
        .IN5(r0_2[3]), .IN6(n59), .Q(n290) );
  AO222X1 U256 ( .IN1(s_sum1b[4]), .IN2(n471), .IN3(s_sum2b[4]), .IN4(n472), 
        .IN5(r0_2[4]), .IN6(n60), .Q(n289) );
  AO222X1 U257 ( .IN1(s_sum1b[5]), .IN2(n471), .IN3(s_sum2b[5]), .IN4(n472), 
        .IN5(r0_2[5]), .IN6(n301), .Q(n288) );
  AO222X1 U258 ( .IN1(s_sum1b[6]), .IN2(n471), .IN3(s_sum2b[6]), .IN4(n472), 
        .IN5(r0_2[6]), .IN6(n58), .Q(n287) );
  AO222X1 U259 ( .IN1(s_sum1b[7]), .IN2(n471), .IN3(s_sum2b[7]), .IN4(n472), 
        .IN5(r0_2[7]), .IN6(n59), .Q(n286) );
  AO222X1 U260 ( .IN1(s_sum1b[8]), .IN2(n471), .IN3(s_sum2b[8]), .IN4(n472), 
        .IN5(r0_2[8]), .IN6(n60), .Q(n285) );
  AO222X1 U261 ( .IN1(s_sum1b[9]), .IN2(n471), .IN3(s_sum2b[9]), .IN4(n472), 
        .IN5(r0_2[9]), .IN6(n301), .Q(n284) );
  AO222X1 U262 ( .IN1(s_sum1b[10]), .IN2(n471), .IN3(s_sum2b[10]), .IN4(n472), 
        .IN5(r0_2[10]), .IN6(n58), .Q(n283) );
  AO222X1 U263 ( .IN1(s_sum1b[11]), .IN2(n471), .IN3(s_sum2b[11]), .IN4(n472), 
        .IN5(r0_2[11]), .IN6(n59), .Q(n282) );
  AO222X1 U264 ( .IN1(s_sum1b[12]), .IN2(n471), .IN3(s_sum2b[12]), .IN4(n472), 
        .IN5(r0_2[12]), .IN6(n60), .Q(n281) );
  AO222X1 U265 ( .IN1(s_sum1b[13]), .IN2(n471), .IN3(s_sum2b[13]), .IN4(n472), 
        .IN5(r0_2[13]), .IN6(n301), .Q(n280) );
  AO222X1 U266 ( .IN1(s_sum1b[14]), .IN2(n471), .IN3(s_sum2b[14]), .IN4(n472), 
        .IN5(r0_2[14]), .IN6(n58), .Q(n279) );
  AO222X1 U267 ( .IN1(s_sum1b[15]), .IN2(n471), .IN3(s_sum2b[15]), .IN4(n472), 
        .IN5(r0_2[15]), .IN6(n59), .Q(n278) );
  AO222X1 U268 ( .IN1(s_sum1b[16]), .IN2(n471), .IN3(s_sum2b[16]), .IN4(n472), 
        .IN5(r0_2[16]), .IN6(n60), .Q(n277) );
  AO222X1 U269 ( .IN1(s_sum1b[17]), .IN2(n471), .IN3(s_sum2b[17]), .IN4(n472), 
        .IN5(r0_2[17]), .IN6(n301), .Q(n276) );
  AO222X1 U270 ( .IN1(s_sum1b[18]), .IN2(n471), .IN3(s_sum2b[18]), .IN4(n472), 
        .IN5(r0_2[18]), .IN6(n58), .Q(n275) );
  AO222X1 U271 ( .IN1(s_sum1b[19]), .IN2(n471), .IN3(s_sum2b[19]), .IN4(n472), 
        .IN5(r0_2[19]), .IN6(n59), .Q(n274) );
  AO222X1 U272 ( .IN1(s_sum1b[20]), .IN2(n471), .IN3(s_sum2b[20]), .IN4(n472), 
        .IN5(r0_2[20]), .IN6(n60), .Q(n273) );
  AO222X1 U273 ( .IN1(s_sum1b[21]), .IN2(n471), .IN3(s_sum2b[21]), .IN4(n472), 
        .IN5(r0_2[21]), .IN6(n301), .Q(n272) );
  AO222X1 U274 ( .IN1(s_sum1b[22]), .IN2(n471), .IN3(s_sum2b[22]), .IN4(n472), 
        .IN5(r0_2[22]), .IN6(n58), .Q(n271) );
  AO222X1 U275 ( .IN1(s_sum1b[23]), .IN2(n471), .IN3(s_sum2b[23]), .IN4(n472), 
        .IN5(r0_2[23]), .IN6(n59), .Q(n270) );
  AO222X1 U276 ( .IN1(s_sum1b[24]), .IN2(n471), .IN3(s_sum2b[24]), .IN4(n472), 
        .IN5(r0_2[24]), .IN6(n60), .Q(n269) );
  AO222X1 U277 ( .IN1(s_sum1b[25]), .IN2(n471), .IN3(s_sum2b[25]), .IN4(n472), 
        .IN5(r0_2[25]), .IN6(n301), .Q(n268) );
  AO222X1 U278 ( .IN1(s_sum1b[26]), .IN2(n471), .IN3(s_sum2b[26]), .IN4(n472), 
        .IN5(r0_2[26]), .IN6(n58), .Q(n267) );
  AO222X1 U279 ( .IN1(s_sum1b[27]), .IN2(n471), .IN3(s_sum2b[27]), .IN4(n472), 
        .IN5(r0_2[27]), .IN6(n59), .Q(n266) );
  AO222X1 U280 ( .IN1(s_sum1b[28]), .IN2(n471), .IN3(s_sum2b[28]), .IN4(n472), 
        .IN5(r0_2[28]), .IN6(n60), .Q(n265) );
  AO222X1 U281 ( .IN1(s_sum1b[29]), .IN2(n471), .IN3(s_sum2b[29]), .IN4(n472), 
        .IN5(r0_2[29]), .IN6(n301), .Q(n264) );
  AO222X1 U282 ( .IN1(s_sum1b[30]), .IN2(n471), .IN3(s_sum2b[30]), .IN4(n472), 
        .IN5(r0_2[30]), .IN6(n58), .Q(n263) );
  AO222X1 U283 ( .IN1(s_sum1b[31]), .IN2(n471), .IN3(s_sum2b[31]), .IN4(n472), 
        .IN5(r0_2[31]), .IN6(n59), .Q(n262) );
  AO222X1 U284 ( .IN1(s_sum1b[32]), .IN2(n471), .IN3(s_sum2b[32]), .IN4(n472), 
        .IN5(r0_2[32]), .IN6(n60), .Q(n261) );
  AO222X1 U285 ( .IN1(s_sum1b[33]), .IN2(n471), .IN3(s_sum2b[33]), .IN4(n472), 
        .IN5(r0_2[33]), .IN6(n301), .Q(n260) );
  AO222X1 U286 ( .IN1(s_sum1b[34]), .IN2(n471), .IN3(s_sum2b[34]), .IN4(n472), 
        .IN5(r0_2[34]), .IN6(n58), .Q(n259) );
  AO222X1 U287 ( .IN1(s_sum1b[35]), .IN2(n471), .IN3(s_sum2b[35]), .IN4(n472), 
        .IN5(r0_2[35]), .IN6(n59), .Q(n258) );
  AO222X1 U288 ( .IN1(s_sum1b[36]), .IN2(n471), .IN3(s_sum2b[36]), .IN4(n472), 
        .IN5(r0_2[36]), .IN6(n60), .Q(n257) );
  AO222X1 U289 ( .IN1(s_sum1b[37]), .IN2(n471), .IN3(s_sum2b[37]), .IN4(n472), 
        .IN5(r0_2[37]), .IN6(n301), .Q(n256) );
  AO222X1 U290 ( .IN1(s_sum1b[38]), .IN2(n471), .IN3(s_sum2b[38]), .IN4(n472), 
        .IN5(r0_2[38]), .IN6(n58), .Q(n255) );
  AO222X1 U291 ( .IN1(s_sum1b[39]), .IN2(n471), .IN3(s_sum2b[39]), .IN4(n472), 
        .IN5(r0_2[39]), .IN6(n59), .Q(n254) );
  AO222X1 U292 ( .IN1(s_sum1b[40]), .IN2(n471), .IN3(s_sum2b[40]), .IN4(n472), 
        .IN5(r0_2[40]), .IN6(n60), .Q(n253) );
  AO222X1 U293 ( .IN1(s_sum1b[41]), .IN2(n471), .IN3(s_sum2b[41]), .IN4(n472), 
        .IN5(r0_2[41]), .IN6(n301), .Q(n252) );
  AO222X1 U294 ( .IN1(s_sum1b[42]), .IN2(n471), .IN3(s_sum2b[42]), .IN4(n472), 
        .IN5(r0_2[42]), .IN6(n58), .Q(n251) );
  AO222X1 U295 ( .IN1(s_sum1b[43]), .IN2(n471), .IN3(s_sum2b[43]), .IN4(n472), 
        .IN5(r0_2[43]), .IN6(n59), .Q(n250) );
  AO222X1 U296 ( .IN1(s_sum1b[44]), .IN2(n471), .IN3(s_sum2b[44]), .IN4(n472), 
        .IN5(r0_2[44]), .IN6(n60), .Q(n249) );
  AO222X1 U297 ( .IN1(s_sum1b[45]), .IN2(n471), .IN3(s_sum2b[45]), .IN4(n472), 
        .IN5(r0_2[45]), .IN6(n301), .Q(n248) );
  AO222X1 U298 ( .IN1(s_sum1b[46]), .IN2(n471), .IN3(s_sum2b[46]), .IN4(n472), 
        .IN5(r0_2[46]), .IN6(n58), .Q(n247) );
  AO222X1 U299 ( .IN1(s_sum1b[47]), .IN2(n471), .IN3(s_sum2b[47]), .IN4(n472), 
        .IN5(r0_2[47]), .IN6(n59), .Q(n246) );
  AO222X1 U300 ( .IN1(s_sum1b[48]), .IN2(n471), .IN3(s_sum2b[48]), .IN4(n472), 
        .IN5(r0_2[48]), .IN6(n60), .Q(n245) );
  AO222X1 U301 ( .IN1(s_sum1b[49]), .IN2(n471), .IN3(s_sum2b[49]), .IN4(n472), 
        .IN5(r0_2[49]), .IN6(n301), .Q(n244) );
  AO222X1 U302 ( .IN1(s_sum1b[50]), .IN2(n471), .IN3(s_sum2b[50]), .IN4(n472), 
        .IN5(r0_2[50]), .IN6(n58), .Q(n243) );
  AO222X1 U354 ( .IN1(s_sum1b[51]), .IN2(n471), .IN3(s_sum2b[51]), .IN4(n472), 
        .IN5(r0_2[51]), .IN6(n60), .Q(n242) );
  AO222X1 U355 ( .IN1(s_sum1a[0]), .IN2(n47), .IN3(s_sum2a[0]), .IN4(n52), 
        .IN5(r1[0]), .IN6(n55), .Q(n241) );
  AO222X1 U356 ( .IN1(s_sum1a[1]), .IN2(n46), .IN3(s_sum2a[1]), .IN4(n51), 
        .IN5(r1[1]), .IN6(n56), .Q(n240) );
  AO222X1 U357 ( .IN1(s_sum1a[2]), .IN2(n49), .IN3(s_sum2a[2]), .IN4(n50), 
        .IN5(r1[2]), .IN6(n54), .Q(n239) );
  AO222X1 U358 ( .IN1(s_sum1a[3]), .IN2(n48), .IN3(s_sum2a[3]), .IN4(n53), 
        .IN5(r1[3]), .IN6(n57), .Q(n238) );
  AO222X1 U359 ( .IN1(s_sum1a[4]), .IN2(n47), .IN3(s_sum2a[4]), .IN4(n52), 
        .IN5(r1[4]), .IN6(n55), .Q(n237) );
  AO222X1 U360 ( .IN1(s_sum1a[5]), .IN2(n46), .IN3(s_sum2a[5]), .IN4(n51), 
        .IN5(r1[5]), .IN6(n56), .Q(n236) );
  AO222X1 U361 ( .IN1(s_sum1a[6]), .IN2(n49), .IN3(s_sum2a[6]), .IN4(n50), 
        .IN5(r1[6]), .IN6(n54), .Q(n235) );
  AO222X1 U362 ( .IN1(s_sum1a[7]), .IN2(n48), .IN3(s_sum2a[7]), .IN4(n53), 
        .IN5(r1[7]), .IN6(n57), .Q(n234) );
  AO222X1 U363 ( .IN1(s_sum1a[8]), .IN2(n47), .IN3(s_sum2a[8]), .IN4(n52), 
        .IN5(r1[8]), .IN6(n55), .Q(n233) );
  AO222X1 U364 ( .IN1(s_sum1a[9]), .IN2(n46), .IN3(s_sum2a[9]), .IN4(n51), 
        .IN5(r1[9]), .IN6(n56), .Q(n232) );
  AO222X1 U365 ( .IN1(s_sum1a[10]), .IN2(n49), .IN3(s_sum2a[10]), .IN4(n50), 
        .IN5(r1[10]), .IN6(n54), .Q(n231) );
  AO222X1 U366 ( .IN1(s_sum1a[11]), .IN2(n48), .IN3(s_sum2a[11]), .IN4(n53), 
        .IN5(r1[11]), .IN6(n57), .Q(n230) );
  AO222X1 U367 ( .IN1(s_sum1a[12]), .IN2(n47), .IN3(s_sum2a[12]), .IN4(n52), 
        .IN5(r1[12]), .IN6(n55), .Q(n229) );
  AO222X1 U368 ( .IN1(s_sum1a[13]), .IN2(n46), .IN3(s_sum2a[13]), .IN4(n51), 
        .IN5(r1[13]), .IN6(n56), .Q(n228) );
  AO222X1 U369 ( .IN1(s_sum1a[14]), .IN2(n49), .IN3(s_sum2a[14]), .IN4(n50), 
        .IN5(r1[14]), .IN6(n54), .Q(n227) );
  AO222X1 U370 ( .IN1(s_sum1a[15]), .IN2(n48), .IN3(s_sum2a[15]), .IN4(n53), 
        .IN5(r1[15]), .IN6(n57), .Q(n226) );
  AO222X1 U371 ( .IN1(s_sum1a[16]), .IN2(n47), .IN3(s_sum2a[16]), .IN4(n52), 
        .IN5(r1[16]), .IN6(n55), .Q(n225) );
  AO222X1 U372 ( .IN1(s_sum1a[17]), .IN2(n46), .IN3(s_sum2a[17]), .IN4(n51), 
        .IN5(r1[17]), .IN6(n56), .Q(n224) );
  AO222X1 U373 ( .IN1(s_sum1a[18]), .IN2(n49), .IN3(s_sum2a[18]), .IN4(n50), 
        .IN5(r1[18]), .IN6(n54), .Q(n223) );
  AO222X1 U374 ( .IN1(s_sum1a[19]), .IN2(n48), .IN3(s_sum2a[19]), .IN4(n53), 
        .IN5(r1[19]), .IN6(n57), .Q(n222) );
  AO222X1 U375 ( .IN1(s_sum1a[20]), .IN2(n47), .IN3(s_sum2a[20]), .IN4(n52), 
        .IN5(r1[20]), .IN6(n55), .Q(n221) );
  AO222X1 U376 ( .IN1(s_sum1a[21]), .IN2(n46), .IN3(s_sum2a[21]), .IN4(n51), 
        .IN5(r1[21]), .IN6(n56), .Q(n220) );
  AO222X1 U377 ( .IN1(s_sum1a[22]), .IN2(n49), .IN3(s_sum2a[22]), .IN4(n50), 
        .IN5(r1[22]), .IN6(n54), .Q(n219) );
  AO222X1 U378 ( .IN1(s_sum1a[23]), .IN2(n48), .IN3(s_sum2a[23]), .IN4(n53), 
        .IN5(r1[23]), .IN6(n57), .Q(n218) );
  AO222X1 U379 ( .IN1(s_sum1a[24]), .IN2(n47), .IN3(s_sum2a[24]), .IN4(n52), 
        .IN5(r1[24]), .IN6(n55), .Q(n217) );
  AO222X1 U380 ( .IN1(s_sum1a[25]), .IN2(n46), .IN3(s_sum2a[25]), .IN4(n51), 
        .IN5(r1[25]), .IN6(n56), .Q(n216) );
  AO222X1 U381 ( .IN1(s_sum1a[0]), .IN2(n471), .IN3(s_sum2a[0]), .IN4(n472), 
        .IN5(n301), .IN6(r0[0]), .Q(n215) );
  AO222X1 U382 ( .IN1(s_sum1a[1]), .IN2(n471), .IN3(s_sum2a[1]), .IN4(n472), 
        .IN5(n58), .IN6(r0[1]), .Q(n214) );
  AO222X1 U383 ( .IN1(s_sum1a[2]), .IN2(n471), .IN3(s_sum2a[2]), .IN4(n472), 
        .IN5(n60), .IN6(r0[2]), .Q(n213) );
  AO222X1 U384 ( .IN1(s_sum1a[3]), .IN2(n471), .IN3(s_sum2a[3]), .IN4(n472), 
        .IN5(n59), .IN6(r0[3]), .Q(n212) );
  AO222X1 U385 ( .IN1(s_sum1a[4]), .IN2(n471), .IN3(s_sum2a[4]), .IN4(n472), 
        .IN5(n301), .IN6(r0[4]), .Q(n211) );
  AO222X1 U386 ( .IN1(s_sum1a[5]), .IN2(n471), .IN3(s_sum2a[5]), .IN4(n472), 
        .IN5(n58), .IN6(r0[5]), .Q(n210) );
  AO222X1 U387 ( .IN1(s_sum1a[6]), .IN2(n471), .IN3(s_sum2a[6]), .IN4(n472), 
        .IN5(n60), .IN6(r0[6]), .Q(n209) );
  AO222X1 U388 ( .IN1(s_sum1a[7]), .IN2(n471), .IN3(s_sum2a[7]), .IN4(n472), 
        .IN5(n59), .IN6(r0[7]), .Q(n208) );
  AO222X1 U389 ( .IN1(s_sum1a[8]), .IN2(n471), .IN3(s_sum2a[8]), .IN4(n472), 
        .IN5(n301), .IN6(r0[8]), .Q(n207) );
  AO222X1 U390 ( .IN1(s_sum1a[9]), .IN2(n471), .IN3(s_sum2a[9]), .IN4(n472), 
        .IN5(n58), .IN6(r0[9]), .Q(n206) );
  AO222X1 U391 ( .IN1(s_sum1a[10]), .IN2(n471), .IN3(s_sum2a[10]), .IN4(n472), 
        .IN5(n60), .IN6(r0[10]), .Q(n205) );
  AO222X1 U392 ( .IN1(s_sum1a[11]), .IN2(n471), .IN3(s_sum2a[11]), .IN4(n472), 
        .IN5(n59), .IN6(r0[11]), .Q(n204) );
  AO222X1 U393 ( .IN1(s_sum1a[12]), .IN2(n471), .IN3(s_sum2a[12]), .IN4(n472), 
        .IN5(n301), .IN6(r0[12]), .Q(n203) );
  AO222X1 U394 ( .IN1(s_sum1a[13]), .IN2(n471), .IN3(s_sum2a[13]), .IN4(n472), 
        .IN5(n58), .IN6(r0[13]), .Q(n202) );
  AO222X1 U395 ( .IN1(s_sum1a[14]), .IN2(n471), .IN3(s_sum2a[14]), .IN4(n472), 
        .IN5(n60), .IN6(r0[14]), .Q(n201) );
  AO222X1 U396 ( .IN1(s_sum1a[15]), .IN2(n471), .IN3(s_sum2a[15]), .IN4(n472), 
        .IN5(n59), .IN6(r0[15]), .Q(n200) );
  AO222X1 U397 ( .IN1(s_sum1a[16]), .IN2(n471), .IN3(s_sum2a[16]), .IN4(n472), 
        .IN5(n301), .IN6(r0[16]), .Q(n199) );
  AO222X1 U398 ( .IN1(s_sum1a[17]), .IN2(n471), .IN3(s_sum2a[17]), .IN4(n472), 
        .IN5(n58), .IN6(r0[17]), .Q(n198) );
  AO222X1 U399 ( .IN1(s_sum1a[18]), .IN2(n471), .IN3(s_sum2a[18]), .IN4(n472), 
        .IN5(n60), .IN6(r0[18]), .Q(n197) );
  AO222X1 U400 ( .IN1(s_sum1a[19]), .IN2(n471), .IN3(s_sum2a[19]), .IN4(n472), 
        .IN5(n59), .IN6(r0[19]), .Q(n196) );
  AO222X1 U401 ( .IN1(s_sum1a[20]), .IN2(n471), .IN3(s_sum2a[20]), .IN4(n472), 
        .IN5(n301), .IN6(r0[20]), .Q(n195) );
  AO222X1 U402 ( .IN1(s_sum1a[21]), .IN2(n471), .IN3(s_sum2a[21]), .IN4(n472), 
        .IN5(n58), .IN6(r0[21]), .Q(n194) );
  AO222X1 U403 ( .IN1(s_sum1a[22]), .IN2(n471), .IN3(s_sum2a[22]), .IN4(n472), 
        .IN5(n60), .IN6(r0[22]), .Q(n193) );
  AO222X1 U404 ( .IN1(s_sum1a[23]), .IN2(n471), .IN3(s_sum2a[23]), .IN4(n472), 
        .IN5(n59), .IN6(r0[23]), .Q(n192) );
  AO222X1 U405 ( .IN1(s_sum1a[24]), .IN2(n471), .IN3(s_sum2a[24]), .IN4(n472), 
        .IN5(n301), .IN6(r0[24]), .Q(n191) );
  AO222X1 U406 ( .IN1(s_sum1a[25]), .IN2(n471), .IN3(s_sum2a[25]), .IN4(n472), 
        .IN5(n301), .IN6(r0[25]), .Q(n190) );
  AND3X1 U407 ( .IN1(n473), .IN2(n26), .IN3(n28), .Q(n472) );
  AND3X1 U408 ( .IN1(n28), .IN2(n26), .IN3(N142), .Q(n471) );
  AO222X1 U409 ( .IN1(n49), .IN2(s_sum1b[51]), .IN3(n50), .IN4(s_sum2b[51]), 
        .IN5(r1_2[51]), .IN6(n54), .Q(n189) );
  AO222X1 U410 ( .IN1(n48), .IN2(s_sum1b[50]), .IN3(n53), .IN4(s_sum2b[50]), 
        .IN5(r1_2[50]), .IN6(n57), .Q(n188) );
  AO222X1 U411 ( .IN1(n47), .IN2(s_sum1b[49]), .IN3(n52), .IN4(s_sum2b[49]), 
        .IN5(r1_2[49]), .IN6(n55), .Q(n187) );
  AO222X1 U412 ( .IN1(n46), .IN2(s_sum1b[48]), .IN3(n51), .IN4(s_sum2b[48]), 
        .IN5(r1_2[48]), .IN6(n56), .Q(n186) );
  AO222X1 U413 ( .IN1(n49), .IN2(s_sum1b[47]), .IN3(n50), .IN4(s_sum2b[47]), 
        .IN5(r1_2[47]), .IN6(n54), .Q(n185) );
  AO222X1 U414 ( .IN1(n48), .IN2(s_sum1b[46]), .IN3(n53), .IN4(s_sum2b[46]), 
        .IN5(r1_2[46]), .IN6(n57), .Q(n184) );
  AO222X1 U415 ( .IN1(n47), .IN2(s_sum1b[45]), .IN3(n52), .IN4(s_sum2b[45]), 
        .IN5(r1_2[45]), .IN6(n55), .Q(n183) );
  AO222X1 U416 ( .IN1(n46), .IN2(s_sum1b[44]), .IN3(n51), .IN4(s_sum2b[44]), 
        .IN5(r1_2[44]), .IN6(n56), .Q(n182) );
  AO222X1 U417 ( .IN1(n49), .IN2(s_sum1b[43]), .IN3(n50), .IN4(s_sum2b[43]), 
        .IN5(r1_2[43]), .IN6(n54), .Q(n181) );
  AO222X1 U418 ( .IN1(n48), .IN2(s_sum1b[42]), .IN3(n53), .IN4(s_sum2b[42]), 
        .IN5(r1_2[42]), .IN6(n57), .Q(n180) );
  AO222X1 U419 ( .IN1(n47), .IN2(s_sum1b[41]), .IN3(n52), .IN4(s_sum2b[41]), 
        .IN5(r1_2[41]), .IN6(n55), .Q(n179) );
  AO222X1 U420 ( .IN1(n46), .IN2(s_sum1b[40]), .IN3(n51), .IN4(s_sum2b[40]), 
        .IN5(r1_2[40]), .IN6(n56), .Q(n178) );
  AO222X1 U421 ( .IN1(n49), .IN2(s_sum1b[39]), .IN3(n50), .IN4(s_sum2b[39]), 
        .IN5(r1_2[39]), .IN6(n54), .Q(n177) );
  AO222X1 U422 ( .IN1(n48), .IN2(s_sum1b[38]), .IN3(n53), .IN4(s_sum2b[38]), 
        .IN5(r1_2[38]), .IN6(n57), .Q(n176) );
  AO222X1 U423 ( .IN1(n47), .IN2(s_sum1b[37]), .IN3(n52), .IN4(s_sum2b[37]), 
        .IN5(r1_2[37]), .IN6(n55), .Q(n175) );
  AO222X1 U424 ( .IN1(n46), .IN2(s_sum1b[36]), .IN3(n51), .IN4(s_sum2b[36]), 
        .IN5(r1_2[36]), .IN6(n56), .Q(n174) );
  AO222X1 U425 ( .IN1(n49), .IN2(s_sum1b[35]), .IN3(n50), .IN4(s_sum2b[35]), 
        .IN5(r1_2[35]), .IN6(n54), .Q(n173) );
  AO222X1 U426 ( .IN1(n48), .IN2(s_sum1b[34]), .IN3(n53), .IN4(s_sum2b[34]), 
        .IN5(r1_2[34]), .IN6(n57), .Q(n172) );
  AO222X1 U427 ( .IN1(n47), .IN2(s_sum1b[33]), .IN3(n52), .IN4(s_sum2b[33]), 
        .IN5(r1_2[33]), .IN6(n55), .Q(n171) );
  AO222X1 U428 ( .IN1(n46), .IN2(s_sum1b[32]), .IN3(n51), .IN4(s_sum2b[32]), 
        .IN5(r1_2[32]), .IN6(n56), .Q(n170) );
  AO222X1 U429 ( .IN1(n49), .IN2(s_sum1b[31]), .IN3(n50), .IN4(s_sum2b[31]), 
        .IN5(r1_2[31]), .IN6(n54), .Q(n169) );
  AO222X1 U430 ( .IN1(n48), .IN2(s_sum1b[30]), .IN3(n53), .IN4(s_sum2b[30]), 
        .IN5(r1_2[30]), .IN6(n57), .Q(n168) );
  AO222X1 U431 ( .IN1(n47), .IN2(s_sum1b[29]), .IN3(n52), .IN4(s_sum2b[29]), 
        .IN5(r1_2[29]), .IN6(n55), .Q(n167) );
  AO222X1 U432 ( .IN1(n46), .IN2(s_sum1b[28]), .IN3(n51), .IN4(s_sum2b[28]), 
        .IN5(r1_2[28]), .IN6(n56), .Q(n166) );
  AO222X1 U433 ( .IN1(n49), .IN2(s_sum1b[27]), .IN3(n50), .IN4(s_sum2b[27]), 
        .IN5(r1_2[27]), .IN6(n54), .Q(n165) );
  AO222X1 U434 ( .IN1(n48), .IN2(s_sum1b[26]), .IN3(n53), .IN4(s_sum2b[26]), 
        .IN5(r1_2[26]), .IN6(n57), .Q(n164) );
  AO222X1 U435 ( .IN1(n47), .IN2(s_sum1b[25]), .IN3(n52), .IN4(s_sum2b[25]), 
        .IN5(r1_2[25]), .IN6(n55), .Q(n163) );
  AO222X1 U436 ( .IN1(n46), .IN2(s_sum1b[24]), .IN3(n51), .IN4(s_sum2b[24]), 
        .IN5(r1_2[24]), .IN6(n56), .Q(n162) );
  AO222X1 U437 ( .IN1(n49), .IN2(s_sum1b[23]), .IN3(n50), .IN4(s_sum2b[23]), 
        .IN5(r1_2[23]), .IN6(n54), .Q(n161) );
  AO222X1 U438 ( .IN1(n48), .IN2(s_sum1b[22]), .IN3(n53), .IN4(s_sum2b[22]), 
        .IN5(r1_2[22]), .IN6(n57), .Q(n160) );
  AO222X1 U439 ( .IN1(n47), .IN2(s_sum1b[21]), .IN3(n52), .IN4(s_sum2b[21]), 
        .IN5(r1_2[21]), .IN6(n55), .Q(n159) );
  AO222X1 U440 ( .IN1(n46), .IN2(s_sum1b[20]), .IN3(n51), .IN4(s_sum2b[20]), 
        .IN5(r1_2[20]), .IN6(n56), .Q(n158) );
  AO222X1 U441 ( .IN1(n49), .IN2(s_sum1b[19]), .IN3(n50), .IN4(s_sum2b[19]), 
        .IN5(r1_2[19]), .IN6(n54), .Q(n157) );
  AO222X1 U442 ( .IN1(n48), .IN2(s_sum1b[18]), .IN3(n53), .IN4(s_sum2b[18]), 
        .IN5(r1_2[18]), .IN6(n57), .Q(n156) );
  AO222X1 U443 ( .IN1(n47), .IN2(s_sum1b[17]), .IN3(n52), .IN4(s_sum2b[17]), 
        .IN5(r1_2[17]), .IN6(n55), .Q(n155) );
  AO222X1 U444 ( .IN1(n46), .IN2(s_sum1b[16]), .IN3(n51), .IN4(s_sum2b[16]), 
        .IN5(r1_2[16]), .IN6(n56), .Q(n154) );
  AO222X1 U445 ( .IN1(n49), .IN2(s_sum1b[15]), .IN3(n50), .IN4(s_sum2b[15]), 
        .IN5(r1_2[15]), .IN6(n54), .Q(n153) );
  AO222X1 U446 ( .IN1(n48), .IN2(s_sum1b[14]), .IN3(n53), .IN4(s_sum2b[14]), 
        .IN5(r1_2[14]), .IN6(n57), .Q(n152) );
  AO222X1 U447 ( .IN1(n47), .IN2(s_sum1b[13]), .IN3(n52), .IN4(s_sum2b[13]), 
        .IN5(r1_2[13]), .IN6(n55), .Q(n151) );
  AO222X1 U448 ( .IN1(n46), .IN2(s_sum1b[12]), .IN3(n51), .IN4(s_sum2b[12]), 
        .IN5(r1_2[12]), .IN6(n56), .Q(n150) );
  AO222X1 U449 ( .IN1(n49), .IN2(s_sum1b[11]), .IN3(n50), .IN4(s_sum2b[11]), 
        .IN5(r1_2[11]), .IN6(n54), .Q(n149) );
  AO222X1 U450 ( .IN1(n48), .IN2(s_sum1b[10]), .IN3(n53), .IN4(s_sum2b[10]), 
        .IN5(r1_2[10]), .IN6(n57), .Q(n148) );
  AO222X1 U451 ( .IN1(n47), .IN2(s_sum1b[9]), .IN3(n52), .IN4(s_sum2b[9]), 
        .IN5(r1_2[9]), .IN6(n55), .Q(n147) );
  AO222X1 U452 ( .IN1(n46), .IN2(s_sum1b[8]), .IN3(n51), .IN4(s_sum2b[8]), 
        .IN5(r1_2[8]), .IN6(n56), .Q(n146) );
  AO222X1 U453 ( .IN1(n49), .IN2(s_sum1b[7]), .IN3(n50), .IN4(s_sum2b[7]), 
        .IN5(r1_2[7]), .IN6(n54), .Q(n145) );
  AO222X1 U454 ( .IN1(n48), .IN2(s_sum1b[6]), .IN3(n53), .IN4(s_sum2b[6]), 
        .IN5(r1_2[6]), .IN6(n57), .Q(n144) );
  AO222X1 U455 ( .IN1(n47), .IN2(s_sum1b[5]), .IN3(n52), .IN4(s_sum2b[5]), 
        .IN5(r1_2[5]), .IN6(n55), .Q(n143) );
  AO222X1 U456 ( .IN1(n46), .IN2(s_sum1b[4]), .IN3(n51), .IN4(s_sum2b[4]), 
        .IN5(r1_2[4]), .IN6(n56), .Q(n142) );
  AO222X1 U457 ( .IN1(n49), .IN2(s_sum1b[3]), .IN3(n50), .IN4(s_sum2b[3]), 
        .IN5(r1_2[3]), .IN6(n54), .Q(n141) );
  AO222X1 U458 ( .IN1(n48), .IN2(s_sum1b[2]), .IN3(n53), .IN4(s_sum2b[2]), 
        .IN5(r1_2[2]), .IN6(n57), .Q(n140) );
  AO222X1 U459 ( .IN1(n47), .IN2(s_sum1b[1]), .IN3(n52), .IN4(s_sum2b[1]), 
        .IN5(r1_2[1]), .IN6(n54), .Q(n139) );
  AO222X1 U460 ( .IN1(n46), .IN2(s_sum1b[0]), .IN3(n51), .IN4(s_sum2b[0]), 
        .IN5(r1_2[0]), .IN6(n57), .Q(n138) );
  INVX0 U461 ( .INP(N142), .ZN(n473) );
  AO22X1 U462 ( .IN1(s_sqr_o[25]), .IN2(n474), .IN3(N334), .IN4(n475), .Q(n137) );
  AO22X1 U463 ( .IN1(s_sqr_o[24]), .IN2(n474), .IN3(N333), .IN4(n475), .Q(n136) );
  AO22X1 U464 ( .IN1(s_sqr_o[23]), .IN2(n474), .IN3(N332), .IN4(n475), .Q(n135) );
  AO22X1 U465 ( .IN1(s_sqr_o[22]), .IN2(n474), .IN3(N331), .IN4(n475), .Q(n134) );
  AO22X1 U466 ( .IN1(s_sqr_o[21]), .IN2(n474), .IN3(N330), .IN4(n475), .Q(n133) );
  AO22X1 U467 ( .IN1(s_sqr_o[20]), .IN2(n474), .IN3(N329), .IN4(n475), .Q(n132) );
  AO22X1 U468 ( .IN1(s_sqr_o[19]), .IN2(n474), .IN3(N328), .IN4(n475), .Q(n131) );
  AO22X1 U469 ( .IN1(s_sqr_o[18]), .IN2(n474), .IN3(N327), .IN4(n475), .Q(n130) );
  AO22X1 U470 ( .IN1(s_sqr_o[17]), .IN2(n474), .IN3(N326), .IN4(n475), .Q(n129) );
  AO22X1 U471 ( .IN1(s_sqr_o[16]), .IN2(n474), .IN3(N325), .IN4(n475), .Q(n128) );
  AO22X1 U472 ( .IN1(s_sqr_o[15]), .IN2(n474), .IN3(N324), .IN4(n475), .Q(n127) );
  AO22X1 U473 ( .IN1(s_sqr_o[14]), .IN2(n474), .IN3(N323), .IN4(n475), .Q(n126) );
  AO22X1 U474 ( .IN1(s_sqr_o[13]), .IN2(n474), .IN3(N322), .IN4(n475), .Q(n125) );
  AO22X1 U475 ( .IN1(s_sqr_o[12]), .IN2(n474), .IN3(N321), .IN4(n475), .Q(n124) );
  AO22X1 U476 ( .IN1(s_sqr_o[11]), .IN2(n474), .IN3(N320), .IN4(n475), .Q(n123) );
  AO22X1 U477 ( .IN1(s_sqr_o[10]), .IN2(n474), .IN3(N319), .IN4(n475), .Q(n122) );
  AO22X1 U478 ( .IN1(s_sqr_o[9]), .IN2(n474), .IN3(N318), .IN4(n475), .Q(n121)
         );
  AO22X1 U479 ( .IN1(s_sqr_o[8]), .IN2(n474), .IN3(N317), .IN4(n475), .Q(n120)
         );
  AO22X1 U480 ( .IN1(s_sqr_o[7]), .IN2(n474), .IN3(N316), .IN4(n475), .Q(n119)
         );
  AO22X1 U481 ( .IN1(s_sqr_o[6]), .IN2(n474), .IN3(N315), .IN4(n475), .Q(n118)
         );
  AO22X1 U482 ( .IN1(s_sqr_o[5]), .IN2(n474), .IN3(N314), .IN4(n475), .Q(n117)
         );
  AO22X1 U483 ( .IN1(s_sqr_o[4]), .IN2(n474), .IN3(N313), .IN4(n475), .Q(n116)
         );
  AO22X1 U484 ( .IN1(s_sqr_o[3]), .IN2(n474), .IN3(N312), .IN4(n475), .Q(n115)
         );
  AO22X1 U485 ( .IN1(s_sqr_o[2]), .IN2(n474), .IN3(N311), .IN4(n475), .Q(n114)
         );
  AO22X1 U486 ( .IN1(s_sqr_o[1]), .IN2(n474), .IN3(N310), .IN4(n475), .Q(n113)
         );
  AO22X1 U487 ( .IN1(s_sqr_o[0]), .IN2(n474), .IN3(N309), .IN4(n475), .Q(n112)
         );
  NOR2X0 U488 ( .IN1(n474), .IN2(s_start_i), .QN(n475) );
  NOR2X0 U489 ( .IN1(n464), .IN2(s_start_i), .QN(n474) );
  INVX0 U490 ( .INP(n463), .ZN(n464) );
  MUX21X1 U491 ( .IN1(n476), .IN2(s_ine_o), .S(n463), .Q(n111) );
  NAND3X0 U492 ( .IN1(n43), .IN2(n24), .IN3(n470), .QN(n463) );
  NOR3X0 U493 ( .IN1(\s_count[1] ), .IN2(\s_count[2] ), .IN3(\s_count[0] ), 
        .QN(n470) );
  NOR2X0 U494 ( .IN1(N467), .IN2(N466), .QN(n476) );
  NOR2X0 U495 ( .IN1(s_start_i), .IN2(n110), .QN(N98) );
  NOR2X0 U496 ( .IN1(s_start_i), .IN2(n109), .QN(N96) );
  NOR2X0 U497 ( .IN1(s_start_i), .IN2(n108), .QN(N94) );
  NOR2X0 U498 ( .IN1(s_start_i), .IN2(n107), .QN(N92) );
  NOR2X0 U499 ( .IN1(s_start_i), .IN2(n106), .QN(N90) );
  NOR2X0 U500 ( .IN1(s_start_i), .IN2(n105), .QN(N88) );
  NOR2X0 U501 ( .IN1(s_start_i), .IN2(n104), .QN(N86) );
  NOR2X0 U502 ( .IN1(s_start_i), .IN2(n103), .QN(N59) );
  NOR2X0 U503 ( .IN1(s_start_i), .IN2(n102), .QN(N58) );
  NOR2X0 U504 ( .IN1(s_start_i), .IN2(n101), .QN(N57) );
  NOR2X0 U505 ( .IN1(s_start_i), .IN2(n100), .QN(N56) );
  NOR2X0 U506 ( .IN1(s_start_i), .IN2(n99), .QN(N55) );
  NOR2X0 U507 ( .IN1(s_start_i), .IN2(n98), .QN(N54) );
  NOR2X0 U508 ( .IN1(s_start_i), .IN2(n97), .QN(N53) );
  NOR2X0 U509 ( .IN1(s_start_i), .IN2(n96), .QN(N52) );
  NOR2X0 U510 ( .IN1(s_start_i), .IN2(n95), .QN(N51) );
  NOR2X0 U511 ( .IN1(s_start_i), .IN2(n94), .QN(N50) );
  NOR2X0 U512 ( .IN1(s_start_i), .IN2(n93), .QN(N49) );
  NOR2X0 U513 ( .IN1(s_start_i), .IN2(n92), .QN(N48) );
  NOR2X0 U514 ( .IN1(s_start_i), .IN2(n91), .QN(N47) );
  NOR2X0 U515 ( .IN1(s_start_i), .IN2(n90), .QN(N46) );
  NOR2X0 U516 ( .IN1(s_start_i), .IN2(n89), .QN(N45) );
  NOR2X0 U517 ( .IN1(s_start_i), .IN2(n88), .QN(N44) );
  NOR2X0 U518 ( .IN1(s_start_i), .IN2(n87), .QN(N43) );
  NOR2X0 U519 ( .IN1(s_start_i), .IN2(n86), .QN(N42) );
  NOR2X0 U520 ( .IN1(s_start_i), .IN2(n85), .QN(N41) );
  NOR2X0 U521 ( .IN1(s_start_i), .IN2(n84), .QN(N40) );
  NOR2X0 U522 ( .IN1(s_start_i), .IN2(n83), .QN(N39) );
  NOR2X0 U523 ( .IN1(s_start_i), .IN2(n82), .QN(N38) );
  NOR2X0 U524 ( .IN1(s_start_i), .IN2(n81), .QN(N37) );
  NOR2X0 U525 ( .IN1(s_start_i), .IN2(n80), .QN(N36) );
  NOR2X0 U526 ( .IN1(s_start_i), .IN2(n79), .QN(N35) );
  AO221X1 U527 ( .IN1(n477), .IN2(n25), .IN3(n385), .IN4(n390), .IN5(s_start_i), .Q(N140) );
  NOR2X0 U528 ( .IN1(n25), .IN2(n12), .QN(n385) );
  NAND2X0 U529 ( .IN1(n390), .IN2(n481), .QN(n477) );
  NAND2X0 U530 ( .IN1(n478), .IN2(n26), .QN(N139) );
  XNOR2X1 U531 ( .IN1(n12), .IN2(n390), .Q(n478) );
  OA21X1 U532 ( .IN1(n479), .IN2(n390), .IN3(n26), .Q(N138) );
  NOR2X0 U533 ( .IN1(n409), .IN2(n27), .QN(n390) );
  NOR2X0 U534 ( .IN1(n482), .IN2(n395), .QN(n479) );
  NAND3X0 U535 ( .IN1(n409), .IN2(n26), .IN3(n410), .QN(N137) );
  INVX0 U536 ( .INP(n402), .ZN(n410) );
  NOR2X0 U537 ( .IN1(n484), .IN2(n483), .QN(n402) );
  INVX0 U538 ( .INP(n395), .ZN(n409) );
  NOR2X0 U539 ( .IN1(n13), .IN2(n31), .QN(n395) );
  NOR2X0 U540 ( .IN1(s_start_i), .IN2(n13), .QN(N136) );
  NOR2X0 U541 ( .IN1(s_start_i), .IN2(n78), .QN(N134) );
  NOR2X0 U542 ( .IN1(s_start_i), .IN2(n77), .QN(N132) );
  NOR2X0 U543 ( .IN1(s_start_i), .IN2(n76), .QN(N130) );
  NOR2X0 U544 ( .IN1(s_start_i), .IN2(n75), .QN(N128) );
  NOR2X0 U545 ( .IN1(s_start_i), .IN2(n74), .QN(N126) );
  NOR2X0 U546 ( .IN1(s_start_i), .IN2(n73), .QN(N124) );
  NOR2X0 U547 ( .IN1(s_start_i), .IN2(n72), .QN(N122) );
  NOR2X0 U548 ( .IN1(s_start_i), .IN2(n71), .QN(N120) );
  NOR2X0 U549 ( .IN1(s_start_i), .IN2(n70), .QN(N118) );
  NOR2X0 U550 ( .IN1(s_start_i), .IN2(n69), .QN(N116) );
  NOR2X0 U551 ( .IN1(s_start_i), .IN2(n68), .QN(N114) );
  NOR2X0 U552 ( .IN1(s_start_i), .IN2(n67), .QN(N112) );
  NOR2X0 U553 ( .IN1(s_start_i), .IN2(n66), .QN(N110) );
  NOR2X0 U554 ( .IN1(s_start_i), .IN2(n65), .QN(N108) );
  NOR2X0 U555 ( .IN1(s_start_i), .IN2(n64), .QN(N106) );
  NOR2X0 U556 ( .IN1(s_start_i), .IN2(n63), .QN(N104) );
  NOR2X0 U557 ( .IN1(s_start_i), .IN2(n62), .QN(N102) );
  NOR2X0 U558 ( .IN1(s_start_i), .IN2(n61), .QN(N100) );
endmodule


module post_norm_sqrt_1_DW01_inc_0 ( A, SUM );
  input [22:0] A;
  output [22:0] SUM;

  wire   [22:2] carry;

  HADDX1 U1_1_21 ( .A0(A[21]), .B0(carry[21]), .C1(carry[22]), .SO(SUM[21]) );
  HADDX1 U1_1_20 ( .A0(A[20]), .B0(carry[20]), .C1(carry[21]), .SO(SUM[20]) );
  HADDX1 U1_1_19 ( .A0(A[19]), .B0(carry[19]), .C1(carry[20]), .SO(SUM[19]) );
  HADDX1 U1_1_18 ( .A0(A[18]), .B0(carry[18]), .C1(carry[19]), .SO(SUM[18]) );
  HADDX1 U1_1_17 ( .A0(A[17]), .B0(carry[17]), .C1(carry[18]), .SO(SUM[17]) );
  HADDX1 U1_1_16 ( .A0(A[16]), .B0(carry[16]), .C1(carry[17]), .SO(SUM[16]) );
  HADDX1 U1_1_15 ( .A0(A[15]), .B0(carry[15]), .C1(carry[16]), .SO(SUM[15]) );
  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[22]), .IN2(A[22]), .Q(SUM[22]) );
endmodule


module post_norm_sqrt_1 ( clk_i, opa_i, fract_26_i, exp_i, ine_i, rmode_i, 
        output_o, ine_o );
  input [31:0] opa_i;
  input [25:0] fract_26_i;
  input [7:0] exp_i;
  input [1:0] rmode_i;
  output [31:0] output_o;
  input clk_i, ine_i;
  output ine_o;
  wire   s_ine_i, \s_rmode_i[1] , N25, N26, N27, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
         \s_frac_rnd[22] , N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N134,
         n10, n11, n12, n13, n14, n15, n16, n17, n1, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87;
  wire   [30:0] s_opa_i;
  wire   [7:0] s_expa;
  wire   [24:0] s_fract_26_i;
  wire   [31:0] s_output_o;

  DFFX1 \s_opa_i_reg[30]  ( .D(opa_i[30]), .CLK(clk_i), .Q(s_opa_i[30]) );
  DFFX1 \s_opa_i_reg[29]  ( .D(opa_i[29]), .CLK(clk_i), .Q(s_opa_i[29]) );
  DFFX1 \s_opa_i_reg[28]  ( .D(opa_i[28]), .CLK(clk_i), .Q(s_opa_i[28]) );
  DFFX1 \s_opa_i_reg[27]  ( .D(opa_i[27]), .CLK(clk_i), .QN(n67) );
  DFFX1 \s_opa_i_reg[26]  ( .D(opa_i[26]), .CLK(clk_i), .QN(n66) );
  DFFX1 \s_opa_i_reg[25]  ( .D(opa_i[25]), .CLK(clk_i), .Q(s_opa_i[25]) );
  DFFX1 \s_opa_i_reg[24]  ( .D(opa_i[24]), .CLK(clk_i), .Q(s_opa_i[24]) );
  DFFX1 \s_opa_i_reg[23]  ( .D(opa_i[23]), .CLK(clk_i), .Q(s_opa_i[23]) );
  DFFX1 \s_opa_i_reg[22]  ( .D(opa_i[22]), .CLK(clk_i), .QN(n71) );
  DFFX1 \s_opa_i_reg[21]  ( .D(opa_i[21]), .CLK(clk_i), .Q(s_opa_i[21]) );
  DFFX1 \s_opa_i_reg[20]  ( .D(opa_i[20]), .CLK(clk_i), .Q(s_opa_i[20]) );
  DFFX1 \s_opa_i_reg[19]  ( .D(opa_i[19]), .CLK(clk_i), .QN(n76) );
  DFFX1 \s_opa_i_reg[18]  ( .D(opa_i[18]), .CLK(clk_i), .QN(n75) );
  DFFX1 \s_opa_i_reg[17]  ( .D(opa_i[17]), .CLK(clk_i), .QN(n74) );
  DFFX1 \s_opa_i_reg[16]  ( .D(opa_i[16]), .CLK(clk_i), .Q(s_opa_i[16]) );
  DFFX1 \s_opa_i_reg[15]  ( .D(opa_i[15]), .CLK(clk_i), .Q(s_opa_i[15]) );
  DFFX1 \s_opa_i_reg[14]  ( .D(opa_i[14]), .CLK(clk_i), .Q(s_opa_i[14]) );
  DFFX1 \s_opa_i_reg[13]  ( .D(opa_i[13]), .CLK(clk_i), .Q(s_opa_i[13]) );
  DFFX1 \s_opa_i_reg[12]  ( .D(opa_i[12]), .CLK(clk_i), .Q(s_opa_i[12]) );
  DFFX1 \s_opa_i_reg[11]  ( .D(opa_i[11]), .CLK(clk_i), .Q(s_opa_i[11]) );
  DFFX1 \s_opa_i_reg[10]  ( .D(opa_i[10]), .CLK(clk_i), .QN(n78) );
  DFFX1 \s_opa_i_reg[9]  ( .D(opa_i[9]), .CLK(clk_i), .QN(n70) );
  DFFX1 \s_opa_i_reg[8]  ( .D(opa_i[8]), .CLK(clk_i), .QN(n69) );
  DFFX1 \s_opa_i_reg[7]  ( .D(opa_i[7]), .CLK(clk_i), .QN(n68) );
  DFFX1 \s_opa_i_reg[6]  ( .D(opa_i[6]), .CLK(clk_i), .Q(s_opa_i[6]) );
  DFFX1 \s_opa_i_reg[5]  ( .D(opa_i[5]), .CLK(clk_i), .Q(s_opa_i[5]) );
  DFFX1 \s_opa_i_reg[4]  ( .D(opa_i[4]), .CLK(clk_i), .Q(s_opa_i[4]) );
  DFFX1 \s_opa_i_reg[3]  ( .D(opa_i[3]), .CLK(clk_i), .QN(n73) );
  DFFX1 \s_opa_i_reg[2]  ( .D(opa_i[2]), .CLK(clk_i), .QN(n72) );
  DFFX1 \s_opa_i_reg[1]  ( .D(opa_i[1]), .CLK(clk_i), .Q(s_opa_i[1]) );
  DFFX1 \s_opa_i_reg[0]  ( .D(opa_i[0]), .CLK(clk_i), .QN(n77) );
  DFFX1 \s_expa_reg[7]  ( .D(opa_i[30]), .CLK(clk_i), .Q(s_expa[7]) );
  DFFX1 \s_expa_reg[6]  ( .D(opa_i[29]), .CLK(clk_i), .Q(s_expa[6]) );
  DFFX1 \s_expa_reg[5]  ( .D(opa_i[28]), .CLK(clk_i), .QN(n80) );
  DFFX1 \s_expa_reg[4]  ( .D(opa_i[27]), .CLK(clk_i), .QN(n79) );
  DFFX1 \s_expa_reg[3]  ( .D(opa_i[26]), .CLK(clk_i), .QN(n84) );
  DFFX1 \s_expa_reg[2]  ( .D(opa_i[25]), .CLK(clk_i), .QN(n83) );
  DFFX1 \s_expa_reg[1]  ( .D(opa_i[24]), .CLK(clk_i), .QN(n82) );
  DFFX1 \s_expa_reg[0]  ( .D(opa_i[23]), .CLK(clk_i), .QN(n81) );
  DFFX1 s_sign_i_reg ( .D(opa_i[31]), .CLK(clk_i), .Q(s_output_o[31]) );
  DFFX1 \s_fract_26_i_reg[24]  ( .D(fract_26_i[24]), .CLK(clk_i), .Q(
        s_fract_26_i[24]) );
  DFFX1 \s_fract_26_i_reg[23]  ( .D(fract_26_i[23]), .CLK(clk_i), .Q(
        s_fract_26_i[23]) );
  DFFX1 \s_fract_26_i_reg[22]  ( .D(fract_26_i[22]), .CLK(clk_i), .Q(
        s_fract_26_i[22]) );
  DFFX1 \s_fract_26_i_reg[21]  ( .D(fract_26_i[21]), .CLK(clk_i), .Q(
        s_fract_26_i[21]) );
  DFFX1 \s_fract_26_i_reg[20]  ( .D(fract_26_i[20]), .CLK(clk_i), .Q(
        s_fract_26_i[20]) );
  DFFX1 \s_fract_26_i_reg[19]  ( .D(fract_26_i[19]), .CLK(clk_i), .Q(
        s_fract_26_i[19]) );
  DFFX1 \s_fract_26_i_reg[18]  ( .D(fract_26_i[18]), .CLK(clk_i), .Q(
        s_fract_26_i[18]) );
  DFFX1 \s_fract_26_i_reg[17]  ( .D(fract_26_i[17]), .CLK(clk_i), .Q(
        s_fract_26_i[17]) );
  DFFX1 \s_fract_26_i_reg[16]  ( .D(fract_26_i[16]), .CLK(clk_i), .Q(
        s_fract_26_i[16]) );
  DFFX1 \s_fract_26_i_reg[15]  ( .D(fract_26_i[15]), .CLK(clk_i), .Q(
        s_fract_26_i[15]) );
  DFFX1 \s_fract_26_i_reg[14]  ( .D(fract_26_i[14]), .CLK(clk_i), .Q(
        s_fract_26_i[14]) );
  DFFX1 \s_fract_26_i_reg[13]  ( .D(fract_26_i[13]), .CLK(clk_i), .Q(
        s_fract_26_i[13]) );
  DFFX1 \s_fract_26_i_reg[12]  ( .D(fract_26_i[12]), .CLK(clk_i), .Q(
        s_fract_26_i[12]) );
  DFFX1 \s_fract_26_i_reg[11]  ( .D(fract_26_i[11]), .CLK(clk_i), .Q(
        s_fract_26_i[11]) );
  DFFX1 \s_fract_26_i_reg[10]  ( .D(fract_26_i[10]), .CLK(clk_i), .Q(
        s_fract_26_i[10]) );
  DFFX1 \s_fract_26_i_reg[9]  ( .D(fract_26_i[9]), .CLK(clk_i), .Q(
        s_fract_26_i[9]) );
  DFFX1 \s_fract_26_i_reg[8]  ( .D(fract_26_i[8]), .CLK(clk_i), .Q(
        s_fract_26_i[8]) );
  DFFX1 \s_fract_26_i_reg[7]  ( .D(fract_26_i[7]), .CLK(clk_i), .Q(
        s_fract_26_i[7]) );
  DFFX1 \s_fract_26_i_reg[6]  ( .D(fract_26_i[6]), .CLK(clk_i), .Q(
        s_fract_26_i[6]) );
  DFFX1 \s_fract_26_i_reg[5]  ( .D(fract_26_i[5]), .CLK(clk_i), .Q(
        s_fract_26_i[5]) );
  DFFX1 \s_fract_26_i_reg[4]  ( .D(fract_26_i[4]), .CLK(clk_i), .Q(
        s_fract_26_i[4]) );
  DFFX1 \s_fract_26_i_reg[3]  ( .D(fract_26_i[3]), .CLK(clk_i), .Q(
        s_fract_26_i[3]) );
  DFFX1 \s_fract_26_i_reg[2]  ( .D(fract_26_i[2]), .CLK(clk_i), .Q(
        s_fract_26_i[2]) );
  DFFX1 \s_fract_26_i_reg[1]  ( .D(fract_26_i[1]), .CLK(clk_i), .Q(
        s_fract_26_i[1]) );
  DFFX1 \s_fract_26_i_reg[0]  ( .D(fract_26_i[0]), .CLK(clk_i), .Q(
        s_fract_26_i[0]) );
  DFFX1 s_ine_i_reg ( .D(ine_i), .CLK(clk_i), .Q(s_ine_i), .QN(n19) );
  DFFX1 \s_exp_i_reg[7]  ( .D(exp_i[7]), .CLK(clk_i), .QN(n17) );
  DFFX1 \s_exp_i_reg[6]  ( .D(exp_i[6]), .CLK(clk_i), .QN(n16) );
  DFFX1 \s_exp_i_reg[5]  ( .D(exp_i[5]), .CLK(clk_i), .QN(n15) );
  DFFX1 \s_exp_i_reg[4]  ( .D(exp_i[4]), .CLK(clk_i), .QN(n14) );
  DFFX1 \s_exp_i_reg[3]  ( .D(exp_i[3]), .CLK(clk_i), .QN(n13) );
  DFFX1 \s_exp_i_reg[2]  ( .D(exp_i[2]), .CLK(clk_i), .QN(n12) );
  DFFX1 \s_exp_i_reg[1]  ( .D(exp_i[1]), .CLK(clk_i), .QN(n11) );
  DFFX1 \s_exp_i_reg[0]  ( .D(exp_i[0]), .CLK(clk_i), .QN(n10) );
  DFFX1 \s_rmode_i_reg[1]  ( .D(rmode_i[1]), .CLK(clk_i), .Q(\s_rmode_i[1] ), 
        .QN(n18) );
  DFFX1 \s_rmode_i_reg[0]  ( .D(rmode_i[0]), .CLK(clk_i), .QN(n1) );
  DFFX1 \output_o_reg[31]  ( .D(s_output_o[31]), .CLK(clk_i), .Q(output_o[31])
         );
  DFFSSRX1 \output_o_reg[30]  ( .D(n86), .RSTB(1'b1), .SETB(n17), .CLK(clk_i), 
        .Q(output_o[30]) );
  DFFSSRX1 \output_o_reg[29]  ( .D(n86), .RSTB(1'b1), .SETB(n16), .CLK(clk_i), 
        .Q(output_o[29]) );
  DFFSSRX1 \output_o_reg[28]  ( .D(n86), .RSTB(1'b1), .SETB(n15), .CLK(clk_i), 
        .Q(output_o[28]) );
  DFFSSRX1 \output_o_reg[27]  ( .D(n86), .RSTB(1'b1), .SETB(n14), .CLK(clk_i), 
        .Q(output_o[27]) );
  DFFSSRX1 \output_o_reg[26]  ( .D(n86), .RSTB(1'b1), .SETB(n13), .CLK(clk_i), 
        .Q(output_o[26]) );
  DFFSSRX1 \output_o_reg[25]  ( .D(n86), .RSTB(1'b1), .SETB(n12), .CLK(clk_i), 
        .Q(output_o[25]) );
  DFFSSRX1 \output_o_reg[24]  ( .D(n86), .RSTB(1'b1), .SETB(n11), .CLK(clk_i), 
        .Q(output_o[24]) );
  DFFSSRX1 \output_o_reg[23]  ( .D(n86), .RSTB(1'b1), .SETB(n10), .CLK(clk_i), 
        .Q(output_o[23]) );
  DFFX1 ine_o_reg ( .D(N134), .CLK(clk_i), .Q(ine_o) );
  DFFX1 \s_frac_rnd_reg[22]  ( .D(N70), .CLK(clk_i), .Q(\s_frac_rnd[22] ) );
  DFFSSRX1 \output_o_reg[22]  ( .D(\s_frac_rnd[22] ), .RSTB(n87), .SETB(n85), 
        .CLK(clk_i), .Q(output_o[22]) );
  DFFX1 \s_frac_rnd_reg[21]  ( .D(N69), .CLK(clk_i), .QN(n52) );
  DFFX1 \output_o_reg[21]  ( .D(s_output_o[21]), .CLK(clk_i), .Q(output_o[21])
         );
  DFFX1 \s_frac_rnd_reg[20]  ( .D(N68), .CLK(clk_i), .QN(n53) );
  DFFX1 \output_o_reg[20]  ( .D(s_output_o[20]), .CLK(clk_i), .Q(output_o[20])
         );
  DFFX1 \s_frac_rnd_reg[19]  ( .D(N67), .CLK(clk_i), .QN(n55) );
  DFFX1 \output_o_reg[19]  ( .D(s_output_o[19]), .CLK(clk_i), .Q(output_o[19])
         );
  DFFX1 \s_frac_rnd_reg[18]  ( .D(N66), .CLK(clk_i), .QN(n56) );
  DFFX1 \output_o_reg[18]  ( .D(s_output_o[18]), .CLK(clk_i), .Q(output_o[18])
         );
  DFFX1 \s_frac_rnd_reg[17]  ( .D(N65), .CLK(clk_i), .QN(n57) );
  DFFX1 \output_o_reg[17]  ( .D(s_output_o[17]), .CLK(clk_i), .Q(output_o[17])
         );
  DFFX1 \s_frac_rnd_reg[16]  ( .D(N64), .CLK(clk_i), .QN(n58) );
  DFFX1 \output_o_reg[16]  ( .D(s_output_o[16]), .CLK(clk_i), .Q(output_o[16])
         );
  DFFX1 \s_frac_rnd_reg[15]  ( .D(N63), .CLK(clk_i), .QN(n59) );
  DFFX1 \output_o_reg[15]  ( .D(s_output_o[15]), .CLK(clk_i), .Q(output_o[15])
         );
  DFFX1 \s_frac_rnd_reg[14]  ( .D(N62), .CLK(clk_i), .QN(n60) );
  DFFX1 \output_o_reg[14]  ( .D(s_output_o[14]), .CLK(clk_i), .Q(output_o[14])
         );
  DFFX1 \s_frac_rnd_reg[13]  ( .D(N61), .CLK(clk_i), .QN(n61) );
  DFFX1 \output_o_reg[13]  ( .D(s_output_o[13]), .CLK(clk_i), .Q(output_o[13])
         );
  DFFX1 \s_frac_rnd_reg[12]  ( .D(N60), .CLK(clk_i), .QN(n62) );
  DFFX1 \output_o_reg[12]  ( .D(s_output_o[12]), .CLK(clk_i), .Q(output_o[12])
         );
  DFFX1 \s_frac_rnd_reg[11]  ( .D(N59), .CLK(clk_i), .QN(n63) );
  DFFX1 \output_o_reg[11]  ( .D(s_output_o[11]), .CLK(clk_i), .Q(output_o[11])
         );
  DFFX1 \s_frac_rnd_reg[10]  ( .D(N58), .CLK(clk_i), .QN(n64) );
  DFFX1 \output_o_reg[10]  ( .D(s_output_o[10]), .CLK(clk_i), .Q(output_o[10])
         );
  DFFX1 \s_frac_rnd_reg[9]  ( .D(N57), .CLK(clk_i), .QN(n44) );
  DFFX1 \output_o_reg[9]  ( .D(s_output_o[9]), .CLK(clk_i), .Q(output_o[9]) );
  DFFX1 \s_frac_rnd_reg[8]  ( .D(N56), .CLK(clk_i), .QN(n45) );
  DFFX1 \output_o_reg[8]  ( .D(s_output_o[8]), .CLK(clk_i), .Q(output_o[8]) );
  DFFX1 \s_frac_rnd_reg[7]  ( .D(N55), .CLK(clk_i), .QN(n46) );
  DFFX1 \output_o_reg[7]  ( .D(s_output_o[7]), .CLK(clk_i), .Q(output_o[7]) );
  DFFX1 \s_frac_rnd_reg[6]  ( .D(N54), .CLK(clk_i), .QN(n47) );
  DFFX1 \output_o_reg[6]  ( .D(s_output_o[6]), .CLK(clk_i), .Q(output_o[6]) );
  DFFX1 \s_frac_rnd_reg[5]  ( .D(N53), .CLK(clk_i), .QN(n48) );
  DFFX1 \output_o_reg[5]  ( .D(s_output_o[5]), .CLK(clk_i), .Q(output_o[5]) );
  DFFX1 \s_frac_rnd_reg[4]  ( .D(N52), .CLK(clk_i), .QN(n49) );
  DFFX1 \output_o_reg[4]  ( .D(s_output_o[4]), .CLK(clk_i), .Q(output_o[4]) );
  DFFX1 \s_frac_rnd_reg[3]  ( .D(N51), .CLK(clk_i), .QN(n50) );
  DFFX1 \output_o_reg[3]  ( .D(s_output_o[3]), .CLK(clk_i), .Q(output_o[3]) );
  DFFX1 \s_frac_rnd_reg[2]  ( .D(N50), .CLK(clk_i), .QN(n51) );
  DFFX1 \output_o_reg[2]  ( .D(s_output_o[2]), .CLK(clk_i), .Q(output_o[2]) );
  DFFX1 \s_frac_rnd_reg[1]  ( .D(N49), .CLK(clk_i), .QN(n54) );
  DFFX1 \output_o_reg[1]  ( .D(s_output_o[1]), .CLK(clk_i), .Q(output_o[1]) );
  DFFX1 \s_frac_rnd_reg[0]  ( .D(N48), .CLK(clk_i), .QN(n65) );
  DFFX1 \output_o_reg[0]  ( .D(s_output_o[0]), .CLK(clk_i), .Q(output_o[0]) );
  post_norm_sqrt_1_DW01_inc_0 add_136 ( .A(s_fract_26_i[24:2]), .SUM({N47, N46, 
        N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, 
        N31, N30, N29, N28, N27, N26, N25}) );
  NOR2X0 U3 ( .IN1(n86), .IN2(n44), .QN(s_output_o[9]) );
  NOR2X0 U12 ( .IN1(n86), .IN2(n45), .QN(s_output_o[8]) );
  NOR2X0 U13 ( .IN1(n86), .IN2(n46), .QN(s_output_o[7]) );
  NOR2X0 U14 ( .IN1(n86), .IN2(n47), .QN(s_output_o[6]) );
  NOR2X0 U15 ( .IN1(n86), .IN2(n48), .QN(s_output_o[5]) );
  NOR2X0 U16 ( .IN1(n86), .IN2(n49), .QN(s_output_o[4]) );
  NOR2X0 U17 ( .IN1(n86), .IN2(n50), .QN(s_output_o[3]) );
  NOR2X0 U18 ( .IN1(n86), .IN2(n51), .QN(s_output_o[2]) );
  NOR2X0 U19 ( .IN1(n86), .IN2(n52), .QN(s_output_o[21]) );
  NOR2X0 U20 ( .IN1(n86), .IN2(n53), .QN(s_output_o[20]) );
  NOR2X0 U21 ( .IN1(n86), .IN2(n54), .QN(s_output_o[1]) );
  NOR2X0 U22 ( .IN1(n86), .IN2(n55), .QN(s_output_o[19]) );
  NOR2X0 U23 ( .IN1(n86), .IN2(n56), .QN(s_output_o[18]) );
  NOR2X0 U24 ( .IN1(n86), .IN2(n57), .QN(s_output_o[17]) );
  NOR2X0 U25 ( .IN1(n86), .IN2(n58), .QN(s_output_o[16]) );
  NOR2X0 U26 ( .IN1(n86), .IN2(n59), .QN(s_output_o[15]) );
  NOR2X0 U27 ( .IN1(n86), .IN2(n60), .QN(s_output_o[14]) );
  NOR2X0 U28 ( .IN1(n86), .IN2(n61), .QN(s_output_o[13]) );
  NOR2X0 U29 ( .IN1(n86), .IN2(n62), .QN(s_output_o[12]) );
  NOR2X0 U30 ( .IN1(n86), .IN2(n63), .QN(s_output_o[11]) );
  NOR2X0 U31 ( .IN1(n86), .IN2(n64), .QN(s_output_o[10]) );
  NOR2X0 U32 ( .IN1(n86), .IN2(n65), .QN(s_output_o[0]) );
  OAI21X1 U33 ( .IN1(n20), .IN2(n21), .IN3(n86), .QN(n85) );
  INVX0 U34 ( .INP(n22), .ZN(n21) );
  MUX21X1 U35 ( .IN1(N47), .IN2(s_fract_26_i[24]), .S(n23), .Q(N70) );
  MUX21X1 U36 ( .IN1(N46), .IN2(s_fract_26_i[23]), .S(n23), .Q(N69) );
  MUX21X1 U37 ( .IN1(N45), .IN2(s_fract_26_i[22]), .S(n23), .Q(N68) );
  MUX21X1 U38 ( .IN1(N44), .IN2(s_fract_26_i[21]), .S(n23), .Q(N67) );
  MUX21X1 U39 ( .IN1(N43), .IN2(s_fract_26_i[20]), .S(n23), .Q(N66) );
  MUX21X1 U40 ( .IN1(N42), .IN2(s_fract_26_i[19]), .S(n23), .Q(N65) );
  MUX21X1 U41 ( .IN1(N41), .IN2(s_fract_26_i[18]), .S(n23), .Q(N64) );
  MUX21X1 U42 ( .IN1(N40), .IN2(s_fract_26_i[17]), .S(n23), .Q(N63) );
  MUX21X1 U43 ( .IN1(N39), .IN2(s_fract_26_i[16]), .S(n23), .Q(N62) );
  MUX21X1 U44 ( .IN1(N38), .IN2(s_fract_26_i[15]), .S(n23), .Q(N61) );
  MUX21X1 U45 ( .IN1(N37), .IN2(s_fract_26_i[14]), .S(n23), .Q(N60) );
  MUX21X1 U46 ( .IN1(N36), .IN2(s_fract_26_i[13]), .S(n23), .Q(N59) );
  MUX21X1 U47 ( .IN1(N35), .IN2(s_fract_26_i[12]), .S(n23), .Q(N58) );
  MUX21X1 U48 ( .IN1(N34), .IN2(s_fract_26_i[11]), .S(n23), .Q(N57) );
  MUX21X1 U49 ( .IN1(N33), .IN2(s_fract_26_i[10]), .S(n23), .Q(N56) );
  MUX21X1 U50 ( .IN1(N32), .IN2(s_fract_26_i[9]), .S(n23), .Q(N55) );
  MUX21X1 U51 ( .IN1(N31), .IN2(s_fract_26_i[8]), .S(n23), .Q(N54) );
  MUX21X1 U52 ( .IN1(N30), .IN2(s_fract_26_i[7]), .S(n23), .Q(N53) );
  MUX21X1 U53 ( .IN1(N29), .IN2(s_fract_26_i[6]), .S(n23), .Q(N52) );
  MUX21X1 U54 ( .IN1(N28), .IN2(s_fract_26_i[5]), .S(n23), .Q(N51) );
  MUX21X1 U55 ( .IN1(N27), .IN2(s_fract_26_i[4]), .S(n23), .Q(N50) );
  MUX21X1 U56 ( .IN1(N26), .IN2(s_fract_26_i[3]), .S(n23), .Q(N49) );
  MUX21X1 U57 ( .IN1(N25), .IN2(s_fract_26_i[2]), .S(n23), .Q(N48) );
  AND2X1 U58 ( .IN1(n24), .IN2(n25), .Q(n23) );
  NAND4X0 U59 ( .IN1(s_fract_26_i[1]), .IN2(n26), .IN3(n1), .IN4(n18), .QN(n25) );
  OR3X1 U60 ( .IN1(s_fract_26_i[3]), .IN2(s_ine_i), .IN3(s_fract_26_i[0]), .Q(
        n26) );
  NAND2X0 U61 ( .IN1(n27), .IN2(n28), .QN(n24) );
  OR3X1 U62 ( .IN1(s_fract_26_i[1]), .IN2(s_ine_i), .IN3(s_fract_26_i[0]), .Q(
        n28) );
  MUX21X1 U63 ( .IN1(n29), .IN2(n30), .S(n1), .Q(n27) );
  NOR2X0 U64 ( .IN1(s_output_o[31]), .IN2(n18), .QN(n30) );
  AND2X1 U65 ( .IN1(s_output_o[31]), .IN2(\s_rmode_i[1] ), .Q(n29) );
  NOR2X0 U66 ( .IN1(n86), .IN2(n19), .QN(N134) );
  NAND2X0 U67 ( .IN1(n22), .IN2(n87), .QN(n86) );
  NAND4X0 U68 ( .IN1(s_expa[7]), .IN2(s_expa[6]), .IN3(n31), .IN4(n32), .QN(
        n87) );
  NOR4X0 U69 ( .IN1(n81), .IN2(n82), .IN3(n83), .IN4(n84), .QN(n32) );
  NOR2X0 U70 ( .IN1(n79), .IN2(n80), .QN(n31) );
  NAND2X0 U71 ( .IN1(s_output_o[31]), .IN2(n33), .QN(n22) );
  NAND4X0 U72 ( .IN1(n66), .IN2(n67), .IN3(n34), .IN4(n35), .QN(n33) );
  NOR4X0 U73 ( .IN1(s_opa_i[25]), .IN2(s_opa_i[24]), .IN3(s_opa_i[23]), .IN4(
        n20), .QN(n35) );
  NAND4X0 U74 ( .IN1(n36), .IN2(n37), .IN3(n38), .IN4(n39), .QN(n20) );
  NOR4X0 U75 ( .IN1(n40), .IN2(s_opa_i[4]), .IN3(s_opa_i[6]), .IN4(s_opa_i[5]), 
        .QN(n39) );
  NAND3X0 U76 ( .IN1(n69), .IN2(n70), .IN3(n68), .QN(n40) );
  NOR4X0 U77 ( .IN1(n41), .IN2(s_opa_i[1]), .IN3(s_opa_i[21]), .IN4(
        s_opa_i[20]), .QN(n38) );
  NAND3X0 U78 ( .IN1(n72), .IN2(n73), .IN3(n71), .QN(n41) );
  NOR4X0 U79 ( .IN1(n42), .IN2(s_opa_i[14]), .IN3(s_opa_i[16]), .IN4(
        s_opa_i[15]), .QN(n37) );
  NAND3X0 U80 ( .IN1(n75), .IN2(n76), .IN3(n74), .QN(n42) );
  NOR4X0 U81 ( .IN1(n43), .IN2(s_opa_i[11]), .IN3(s_opa_i[13]), .IN4(
        s_opa_i[12]), .QN(n36) );
  NAND2X0 U82 ( .IN1(n77), .IN2(n78), .QN(n43) );
  NOR3X0 U83 ( .IN1(s_opa_i[28]), .IN2(s_opa_i[30]), .IN3(s_opa_i[29]), .QN(
        n34) );
endmodule


module fpu_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  HADDX1 U1_1_30 ( .A0(A[30]), .B0(carry[30]), .C1(carry[31]), .SO(SUM[30]) );
  HADDX1 U1_1_29 ( .A0(A[29]), .B0(carry[29]), .C1(carry[30]), .SO(SUM[29]) );
  HADDX1 U1_1_28 ( .A0(A[28]), .B0(carry[28]), .C1(carry[29]), .SO(SUM[28]) );
  HADDX1 U1_1_27 ( .A0(A[27]), .B0(carry[27]), .C1(carry[28]), .SO(SUM[27]) );
  HADDX1 U1_1_26 ( .A0(A[26]), .B0(carry[26]), .C1(carry[27]), .SO(SUM[26]) );
  HADDX1 U1_1_25 ( .A0(A[25]), .B0(carry[25]), .C1(carry[26]), .SO(SUM[25]) );
  HADDX1 U1_1_24 ( .A0(A[24]), .B0(carry[24]), .C1(carry[25]), .SO(SUM[24]) );
  HADDX1 U1_1_23 ( .A0(A[23]), .B0(carry[23]), .C1(carry[24]), .SO(SUM[23]) );
  HADDX1 U1_1_22 ( .A0(A[22]), .B0(carry[22]), .C1(carry[23]), .SO(SUM[22]) );
  HADDX1 U1_1_21 ( .A0(A[21]), .B0(carry[21]), .C1(carry[22]), .SO(SUM[21]) );
  HADDX1 U1_1_20 ( .A0(A[20]), .B0(carry[20]), .C1(carry[21]), .SO(SUM[20]) );
  HADDX1 U1_1_19 ( .A0(A[19]), .B0(carry[19]), .C1(carry[20]), .SO(SUM[19]) );
  HADDX1 U1_1_18 ( .A0(A[18]), .B0(carry[18]), .C1(carry[19]), .SO(SUM[18]) );
  HADDX1 U1_1_17 ( .A0(A[17]), .B0(carry[17]), .C1(carry[18]), .SO(SUM[17]) );
  HADDX1 U1_1_16 ( .A0(A[16]), .B0(carry[16]), .C1(carry[17]), .SO(SUM[16]) );
  HADDX1 U1_1_15 ( .A0(A[15]), .B0(carry[15]), .C1(carry[16]), .SO(SUM[15]) );
  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[31]), .IN2(A[31]), .Q(SUM[31]) );
endmodule


module fpu ( CLK0I, OPA0I, OPB0I, FPU0OP0I, RMODE0I, OUTPUT0O, START0I, 
        READY0O, INE0O, OVERFLOW0O, UNDERFLOW0O, DIV0ZERO0O, INF0O, ZERO0O, 
        QNAN0O, SNAN0O );
  input [31:0] OPA0I;
  input [31:0] OPB0I;
  input [2:0] FPU0OP0I;
  input [1:0] RMODE0I;
  output [31:0] OUTPUT0O;
  input CLK0I, START0I;
  output READY0O, INE0O, OVERFLOW0O, UNDERFLOW0O, DIV0ZERO0O, INF0O, ZERO0O,
         QNAN0O, SNAN0O;
  wire   ADDSUB0SIGN0O, POSTNORM0ADDSUB0INE0O, MUL0240SIGN, S0START0I,
         POST0NORM0MUL0INE, SERIAL0DIV0SIGN, SERIAL0DIV0DIV0ZERO,
         POST0NORM0DIV0INE, SQRT0INE0O, POST0NORM0SQRT0INE0O, S0INE0O, S0STATE,
         N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48,
         N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62,
         N63, N64, N65, N66, N342, N343, N344, N345, N346, N347, N348, N349,
         N350, N351, N352, N353, N354, N355, N356, N357, N358, N359, N360,
         N361, N362, N363, N364, N365, N366, N367, N368, N369, N370, N371,
         N372, N373, N374, N546, N547, N549, N581, N131, N132, N133, N134,
         N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, N145,
         N146, N147, N148, N149, N150, N151, N152, N153, N154, N155, N156,
         N157, N158, N159, N160, N161, N162, N163, N164, N165, N166, N167,
         N168, N169, N170, N171, N172, N173, N174, N175, N176, N177, N178,
         N179, N180, N181, N182, N183, N184, N185, N186, N187, N188, N189,
         N190, N191, N192, N193, N194, N195, N196, N197, N198, N199, N200,
         N201, N202, N203, N204, N205, N206, N207, N208, N209, N210, N211,
         N212, N213, N214, N215, N216, N217, N218, N219, N220, N221, N222,
         N223, N224, N225, N226, N227, N228, N229, N230, N231, N232, N233,
         N234, N235, N236, N237, N238, N239, N240, N241, N242, N243, N244,
         N245, N246, N247, N248, N249, N250, N251, N252, N253, N254, N255,
         N256, N257, N258, N259, N260, N261, N262, N263, N264, N265, N266,
         N267, N268, N269, N270, N271, N272, N273, N274, N275, N276, N277,
         N278, N279, N280, N281, N282, N283, N284, N285, N286, N287, N288,
         N289, N290, N291, N292, N293, N294, N295, N296, N297, N298, N299,
         N300, N301, N302, N303, N304, N305, N306, N307, N308, N309, N310,
         N311, N312, N313, N314, N315, N316, N317, N318, N319, N320, N321,
         N322, N323, N324, N325, N326, N327, N328, N329;
  wire   [31:0] S0OPA0I;
  wire   [31:0] S0OPB0I;
  wire   [27:0] PRENORM0ADDSUB0FRACTA0280O;
  wire   [27:0] PRENORM0ADDSUB0FRACTB0280O;
  wire   [7:0] PRENORM0ADDSUB0EXP0O;
  wire   [2:0] S0FPU0OP0I;
  wire   [27:0] ADDSUB0FRACT0O;
  wire   [1:0] S0RMODE0I;
  wire   [31:0] POSTNORM0ADDSUB0OUTPUT0O;
  wire   [9:0] PRE0NORM0MUL0EXP010;
  wire   [23:0] PRE0NORM0MUL0FRACTA024;
  wire   [23:0] PRE0NORM0MUL0FRACTB024;
  wire   [47:0] MUL0240FRACT048;
  wire   [31:0] POST0NORM0MUL0OUTPUT;
  wire   [9:0] PRE0NORM0DIV0EXP;
  wire   [49:0] PRE0NORM0DIV0DVDND;
  wire   [26:0] PRE0NORM0DIV0DVSOR;
  wire   [26:0] SERIAL0DIV0QUTNT;
  wire   [26:0] SERIAL0DIV0RMNDR;
  wire   [31:0] POST0NORM0DIV0OUTPUT;
  wire   [51:0] PRE0NORM0SQRT0FRACTA0O;
  wire   [7:0] PRE0NORM0SQRT0EXP0O;
  wire   [25:0] SQRT0SQR0O;
  wire   [31:0] POST0NORM0SQRT0OUTPUT;
  wire   [31:0] S0OUTPUT0O;
  wire   [31:0] S0COUNT;
  wire   [31:2] S0OUTPUT1;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57;

  DFFX1 S0OPA0I0REG0310 ( .D(OPA0I[31]), .CLK(CLK0I), .Q(S0OPA0I[31]) );
  DFFX1 S0OPA0I0REG0300 ( .D(OPA0I[30]), .CLK(CLK0I), .Q(S0OPA0I[30]) );
  DFFX1 S0OPA0I0REG0290 ( .D(OPA0I[29]), .CLK(CLK0I), .Q(S0OPA0I[29]) );
  DFFX1 S0OPA0I0REG0280 ( .D(OPA0I[28]), .CLK(CLK0I), .Q(S0OPA0I[28]), .QN(
        N154) );
  DFFX1 S0OPA0I0REG0270 ( .D(OPA0I[27]), .CLK(CLK0I), .Q(S0OPA0I[27]), .QN(
        N153) );
  DFFX1 S0OPA0I0REG0260 ( .D(OPA0I[26]), .CLK(CLK0I), .Q(S0OPA0I[26]), .QN(
        N152) );
  DFFX1 S0OPA0I0REG0250 ( .D(OPA0I[25]), .CLK(CLK0I), .Q(S0OPA0I[25]), .QN(
        N151) );
  DFFX1 S0OPA0I0REG0240 ( .D(OPA0I[24]), .CLK(CLK0I), .Q(S0OPA0I[24]), .QN(
        N162) );
  DFFX1 S0OPA0I0REG0230 ( .D(OPA0I[23]), .CLK(CLK0I), .Q(S0OPA0I[23]), .QN(
        N161) );
  DFFX1 S0OPA0I0REG0220 ( .D(OPA0I[22]), .CLK(CLK0I), .Q(S0OPA0I[22]), .QN(
        N144) );
  DFFX1 S0OPA0I0REG0210 ( .D(OPA0I[21]), .CLK(CLK0I), .Q(S0OPA0I[21]) );
  DFFX1 S0OPA0I0REG0200 ( .D(OPA0I[20]), .CLK(CLK0I), .Q(S0OPA0I[20]) );
  DFFX1 S0OPA0I0REG0190 ( .D(OPA0I[19]), .CLK(CLK0I), .Q(S0OPA0I[19]), .QN(
        N143) );
  DFFX1 S0OPA0I0REG0180 ( .D(OPA0I[18]), .CLK(CLK0I), .Q(S0OPA0I[18]), .QN(
        N142) );
  DFFX1 S0OPA0I0REG0170 ( .D(OPA0I[17]), .CLK(CLK0I), .Q(S0OPA0I[17]), .QN(
        N141) );
  DFFX1 S0OPA0I0REG0160 ( .D(OPA0I[16]), .CLK(CLK0I), .Q(S0OPA0I[16]) );
  DFFX1 S0OPA0I0REG0150 ( .D(OPA0I[15]), .CLK(CLK0I), .Q(S0OPA0I[15]) );
  DFFX1 S0OPA0I0REG0140 ( .D(OPA0I[14]), .CLK(CLK0I), .Q(S0OPA0I[14]) );
  DFFX1 S0OPA0I0REG0130 ( .D(OPA0I[13]), .CLK(CLK0I), .Q(S0OPA0I[13]) );
  DFFX1 S0OPA0I0REG0120 ( .D(OPA0I[12]), .CLK(CLK0I), .Q(S0OPA0I[12]) );
  DFFX1 S0OPA0I0REG0110 ( .D(OPA0I[11]), .CLK(CLK0I), .Q(S0OPA0I[11]) );
  DFFX1 S0OPA0I0REG0100 ( .D(OPA0I[10]), .CLK(CLK0I), .Q(S0OPA0I[10]), .QN(
        N150) );
  DFFX1 S0OPA0I0REG090 ( .D(OPA0I[9]), .CLK(CLK0I), .Q(S0OPA0I[9]), .QN(N149)
         );
  DFFX1 S0OPA0I0REG080 ( .D(OPA0I[8]), .CLK(CLK0I), .Q(S0OPA0I[8]), .QN(N148)
         );
  DFFX1 S0OPA0I0REG070 ( .D(OPA0I[7]), .CLK(CLK0I), .Q(S0OPA0I[7]), .QN(N147)
         );
  DFFX1 S0OPA0I0REG060 ( .D(OPA0I[6]), .CLK(CLK0I), .Q(S0OPA0I[6]) );
  DFFX1 S0OPA0I0REG050 ( .D(OPA0I[5]), .CLK(CLK0I), .Q(S0OPA0I[5]) );
  DFFX1 S0OPA0I0REG040 ( .D(OPA0I[4]), .CLK(CLK0I), .Q(S0OPA0I[4]) );
  DFFX1 S0OPA0I0REG030 ( .D(OPA0I[3]), .CLK(CLK0I), .Q(S0OPA0I[3]), .QN(N146)
         );
  DFFX1 S0OPA0I0REG020 ( .D(OPA0I[2]), .CLK(CLK0I), .Q(S0OPA0I[2]), .QN(N145)
         );
  DFFX1 S0OPA0I0REG010 ( .D(OPA0I[1]), .CLK(CLK0I), .Q(S0OPA0I[1]) );
  DFFX1 S0OPA0I0REG000 ( .D(OPA0I[0]), .CLK(CLK0I), .Q(S0OPA0I[0]) );
  DFFX1 S0OPB0I0REG0310 ( .D(OPB0I[31]), .CLK(CLK0I), .Q(S0OPB0I[31]) );
  DFFX1 S0OPB0I0REG0300 ( .D(OPB0I[30]), .CLK(CLK0I), .Q(S0OPB0I[30]) );
  DFFX1 S0OPB0I0REG0290 ( .D(OPB0I[29]), .CLK(CLK0I), .Q(S0OPB0I[29]) );
  DFFX1 S0OPB0I0REG0280 ( .D(OPB0I[28]), .CLK(CLK0I), .Q(S0OPB0I[28]), .QN(
        N158) );
  DFFX1 S0OPB0I0REG0270 ( .D(OPB0I[27]), .CLK(CLK0I), .Q(S0OPB0I[27]), .QN(
        N157) );
  DFFX1 S0OPB0I0REG0260 ( .D(OPB0I[26]), .CLK(CLK0I), .Q(S0OPB0I[26]), .QN(
        N156) );
  DFFX1 S0OPB0I0REG0250 ( .D(OPB0I[25]), .CLK(CLK0I), .Q(S0OPB0I[25]), .QN(
        N155) );
  DFFX1 S0OPB0I0REG0240 ( .D(OPB0I[24]), .CLK(CLK0I), .Q(S0OPB0I[24]), .QN(
        N160) );
  DFFX1 S0OPB0I0REG0230 ( .D(OPB0I[23]), .CLK(CLK0I), .Q(S0OPB0I[23]), .QN(
        N159) );
  DFFX1 S0OPB0I0REG0220 ( .D(OPB0I[22]), .CLK(CLK0I), .Q(S0OPB0I[22]), .QN(
        N134) );
  DFFX1 S0OPB0I0REG0210 ( .D(OPB0I[21]), .CLK(CLK0I), .Q(S0OPB0I[21]) );
  DFFX1 S0OPB0I0REG0200 ( .D(OPB0I[20]), .CLK(CLK0I), .Q(S0OPB0I[20]) );
  DFFX1 S0OPB0I0REG0190 ( .D(OPB0I[19]), .CLK(CLK0I), .Q(S0OPB0I[19]), .QN(
        N133) );
  DFFX1 S0OPB0I0REG0180 ( .D(OPB0I[18]), .CLK(CLK0I), .Q(S0OPB0I[18]), .QN(
        N132) );
  DFFX1 S0OPB0I0REG0170 ( .D(OPB0I[17]), .CLK(CLK0I), .Q(S0OPB0I[17]), .QN(
        N131) );
  DFFX1 S0OPB0I0REG0160 ( .D(OPB0I[16]), .CLK(CLK0I), .Q(S0OPB0I[16]) );
  DFFX1 S0OPB0I0REG0150 ( .D(OPB0I[15]), .CLK(CLK0I), .Q(S0OPB0I[15]) );
  DFFX1 S0OPB0I0REG0140 ( .D(OPB0I[14]), .CLK(CLK0I), .Q(S0OPB0I[14]) );
  DFFX1 S0OPB0I0REG0130 ( .D(OPB0I[13]), .CLK(CLK0I), .Q(S0OPB0I[13]) );
  DFFX1 S0OPB0I0REG0120 ( .D(OPB0I[12]), .CLK(CLK0I), .Q(S0OPB0I[12]) );
  DFFX1 S0OPB0I0REG0110 ( .D(OPB0I[11]), .CLK(CLK0I), .Q(S0OPB0I[11]) );
  DFFX1 S0OPB0I0REG0100 ( .D(OPB0I[10]), .CLK(CLK0I), .Q(S0OPB0I[10]), .QN(
        N140) );
  DFFX1 S0OPB0I0REG090 ( .D(OPB0I[9]), .CLK(CLK0I), .Q(S0OPB0I[9]), .QN(N139)
         );
  DFFX1 S0OPB0I0REG080 ( .D(OPB0I[8]), .CLK(CLK0I), .Q(S0OPB0I[8]), .QN(N138)
         );
  DFFX1 S0OPB0I0REG070 ( .D(OPB0I[7]), .CLK(CLK0I), .Q(S0OPB0I[7]), .QN(N137)
         );
  DFFX1 S0OPB0I0REG060 ( .D(OPB0I[6]), .CLK(CLK0I), .Q(S0OPB0I[6]) );
  DFFX1 S0OPB0I0REG050 ( .D(OPB0I[5]), .CLK(CLK0I), .Q(S0OPB0I[5]) );
  DFFX1 S0OPB0I0REG040 ( .D(OPB0I[4]), .CLK(CLK0I), .Q(S0OPB0I[4]) );
  DFFX1 S0OPB0I0REG030 ( .D(OPB0I[3]), .CLK(CLK0I), .Q(S0OPB0I[3]), .QN(N136)
         );
  DFFX1 S0OPB0I0REG020 ( .D(OPB0I[2]), .CLK(CLK0I), .Q(S0OPB0I[2]), .QN(N135)
         );
  DFFX1 S0OPB0I0REG010 ( .D(OPB0I[1]), .CLK(CLK0I), .Q(S0OPB0I[1]) );
  DFFX1 S0OPB0I0REG000 ( .D(OPB0I[0]), .CLK(CLK0I), .Q(S0OPB0I[0]) );
  DFFX1 S0FPU0OP0I0REG020 ( .D(FPU0OP0I[2]), .CLK(CLK0I), .Q(S0FPU0OP0I[2]) );
  DFFX1 S0FPU0OP0I0REG010 ( .D(FPU0OP0I[1]), .CLK(CLK0I), .Q(S0FPU0OP0I[1]) );
  DFFX1 S0FPU0OP0I0REG000 ( .D(FPU0OP0I[0]), .CLK(CLK0I), .Q(S0FPU0OP0I[0]) );
  DFFX1 S0RMODE0I0REG010 ( .D(RMODE0I[1]), .CLK(CLK0I), .Q(S0RMODE0I[1]), .QN(
        N211) );
  DFFX1 S0RMODE0I0REG000 ( .D(RMODE0I[0]), .CLK(CLK0I), .Q(S0RMODE0I[0]) );
  DFFX1 S0START0I0REG ( .D(START0I), .CLK(CLK0I), .Q(S0START0I), .QN(N214) );
  DFFX1 DIV0ZERO0O0REG ( .D(N197), .CLK(CLK0I), .Q(DIV0ZERO0O) );
  DFFX1 SNAN0O0REG ( .D(N581), .CLK(CLK0I), .Q(SNAN0O) );
  DFFX1 S0INE0O0REG ( .D(N374), .CLK(CLK0I), .Q(S0INE0O), .QN(N208) );
  DFFX1 INE0O0REG ( .D(S0INE0O), .CLK(CLK0I), .Q(INE0O) );
  DFFX1 S0OUTPUT10REG0310 ( .D(N373), .CLK(CLK0I), .Q(S0OUTPUT1[31]), .QN(N219) );
  DFFX1 S0OUTPUT10REG0300 ( .D(N372), .CLK(CLK0I), .Q(S0OUTPUT0O[30]) );
  DFFX1 OUTPUT0O0REG0300 ( .D(S0OUTPUT0O[30]), .CLK(CLK0I), .Q(OUTPUT0O[30])
         );
  DFFX1 S0OUTPUT10REG0290 ( .D(N371), .CLK(CLK0I), .Q(S0OUTPUT0O[29]) );
  DFFX1 OUTPUT0O0REG0290 ( .D(S0OUTPUT0O[29]), .CLK(CLK0I), .Q(OUTPUT0O[29])
         );
  DFFX1 S0OUTPUT10REG0280 ( .D(N370), .CLK(CLK0I), .Q(S0OUTPUT0O[28]) );
  DFFX1 OUTPUT0O0REG0280 ( .D(S0OUTPUT0O[28]), .CLK(CLK0I), .Q(OUTPUT0O[28])
         );
  DFFX1 S0OUTPUT10REG0270 ( .D(N369), .CLK(CLK0I), .Q(S0OUTPUT0O[27]) );
  DFFX1 OUTPUT0O0REG0270 ( .D(S0OUTPUT0O[27]), .CLK(CLK0I), .Q(OUTPUT0O[27])
         );
  DFFX1 S0OUTPUT10REG0260 ( .D(N368), .CLK(CLK0I), .Q(S0OUTPUT0O[26]) );
  DFFX1 OUTPUT0O0REG0260 ( .D(S0OUTPUT0O[26]), .CLK(CLK0I), .Q(OUTPUT0O[26])
         );
  DFFX1 S0OUTPUT10REG0250 ( .D(N367), .CLK(CLK0I), .Q(S0OUTPUT0O[25]) );
  DFFX1 OUTPUT0O0REG0250 ( .D(S0OUTPUT0O[25]), .CLK(CLK0I), .Q(OUTPUT0O[25])
         );
  DFFX1 S0OUTPUT10REG0240 ( .D(N366), .CLK(CLK0I), .Q(S0OUTPUT0O[24]), .QN(
        N218) );
  DFFX1 OUTPUT0O0REG0240 ( .D(S0OUTPUT0O[24]), .CLK(CLK0I), .Q(OUTPUT0O[24])
         );
  DFFX1 S0OUTPUT10REG0230 ( .D(N365), .CLK(CLK0I), .Q(S0OUTPUT1[23]), .QN(N202) );
  DFFX1 UNDERFLOW0O0REG ( .D(N546), .CLK(CLK0I), .Q(UNDERFLOW0O) );
  DFFX1 OVERFLOW0O0REG ( .D(N547), .CLK(CLK0I), .Q(OVERFLOW0O) );
  DFFX1 S0OUTPUT10REG0220 ( .D(N364), .CLK(CLK0I), .Q(S0OUTPUT1[22]), .QN(N207) );
  DFFX1 S0OUTPUT10REG0210 ( .D(N363), .CLK(CLK0I), .Q(S0OUTPUT1[21]) );
  DFFX1 S0OUTPUT10REG0200 ( .D(N362), .CLK(CLK0I), .QN(N216) );
  DFFX1 S0OUTPUT10REG0190 ( .D(N361), .CLK(CLK0I), .QN(N204) );
  DFFX1 S0OUTPUT10REG0180 ( .D(N360), .CLK(CLK0I), .QN(N210) );
  DFFX1 S0OUTPUT10REG0170 ( .D(N359), .CLK(CLK0I), .QN(N201) );
  DFFX1 S0OUTPUT10REG0160 ( .D(N358), .CLK(CLK0I), .Q(S0OUTPUT1[16]) );
  DFFX1 S0OUTPUT10REG0150 ( .D(N357), .CLK(CLK0I), .Q(S0OUTPUT1[15]) );
  DFFX1 S0OUTPUT10REG0140 ( .D(N356), .CLK(CLK0I), .Q(S0OUTPUT1[14]) );
  DFFX1 S0OUTPUT10REG0130 ( .D(N355), .CLK(CLK0I), .Q(S0OUTPUT1[13]) );
  DFFX1 S0OUTPUT10REG0120 ( .D(N354), .CLK(CLK0I), .Q(S0OUTPUT1[12]) );
  DFFX1 S0OUTPUT10REG0110 ( .D(N353), .CLK(CLK0I), .Q(S0OUTPUT1[11]) );
  DFFX1 S0OUTPUT10REG0100 ( .D(N352), .CLK(CLK0I), .QN(N217) );
  DFFX1 S0OUTPUT10REG090 ( .D(N351), .CLK(CLK0I), .QN(N203) );
  DFFX1 S0OUTPUT10REG080 ( .D(N350), .CLK(CLK0I), .QN(N209) );
  DFFX1 S0OUTPUT10REG070 ( .D(N349), .CLK(CLK0I), .QN(N200) );
  DFFX1 S0OUTPUT10REG060 ( .D(N348), .CLK(CLK0I), .Q(S0OUTPUT1[6]) );
  DFFX1 S0OUTPUT10REG050 ( .D(N347), .CLK(CLK0I), .Q(S0OUTPUT1[5]) );
  DFFX1 S0OUTPUT10REG040 ( .D(N346), .CLK(CLK0I), .Q(S0OUTPUT1[4]) );
  DFFX1 S0OUTPUT10REG030 ( .D(N345), .CLK(CLK0I), .Q(S0OUTPUT1[3]) );
  DFFX1 S0OUTPUT10REG020 ( .D(N344), .CLK(CLK0I), .Q(S0OUTPUT1[2]) );
  DFFX1 S0OUTPUT10REG010 ( .D(N343), .CLK(CLK0I), .QN(N205) );
  DFFX1 S0OUTPUT10REG000 ( .D(N342), .CLK(CLK0I), .QN(N206) );
  DFFX1 ZERO0O0REG ( .D(N199), .CLK(CLK0I), .Q(ZERO0O) );
  DFFX1 OUTPUT0O0REG0310 ( .D(S0OUTPUT0O[31]), .CLK(CLK0I), .Q(OUTPUT0O[31])
         );
  DFFX1 OUTPUT0O0REG0230 ( .D(S0OUTPUT0O[23]), .CLK(CLK0I), .Q(OUTPUT0O[23])
         );
  DFFX1 OUTPUT0O0REG0110 ( .D(S0OUTPUT0O[11]), .CLK(CLK0I), .Q(OUTPUT0O[11])
         );
  DFFX1 OUTPUT0O0REG0120 ( .D(S0OUTPUT0O[12]), .CLK(CLK0I), .Q(OUTPUT0O[12])
         );
  DFFX1 OUTPUT0O0REG0130 ( .D(S0OUTPUT0O[13]), .CLK(CLK0I), .Q(OUTPUT0O[13])
         );
  DFFX1 OUTPUT0O0REG0140 ( .D(S0OUTPUT0O[14]), .CLK(CLK0I), .Q(OUTPUT0O[14])
         );
  DFFX1 OUTPUT0O0REG0150 ( .D(S0OUTPUT0O[15]), .CLK(CLK0I), .Q(OUTPUT0O[15])
         );
  DFFX1 OUTPUT0O0REG0160 ( .D(S0OUTPUT0O[16]), .CLK(CLK0I), .Q(OUTPUT0O[16])
         );
  DFFX1 OUTPUT0O0REG0210 ( .D(S0OUTPUT0O[21]), .CLK(CLK0I), .Q(OUTPUT0O[21])
         );
  DFFX1 OUTPUT0O0REG020 ( .D(S0OUTPUT0O[2]), .CLK(CLK0I), .Q(OUTPUT0O[2]) );
  DFFX1 OUTPUT0O0REG030 ( .D(S0OUTPUT0O[3]), .CLK(CLK0I), .Q(OUTPUT0O[3]) );
  DFFX1 OUTPUT0O0REG040 ( .D(S0OUTPUT0O[4]), .CLK(CLK0I), .Q(OUTPUT0O[4]) );
  DFFX1 OUTPUT0O0REG050 ( .D(S0OUTPUT0O[5]), .CLK(CLK0I), .Q(OUTPUT0O[5]) );
  DFFX1 OUTPUT0O0REG060 ( .D(S0OUTPUT0O[6]), .CLK(CLK0I), .Q(OUTPUT0O[6]) );
  DFFX1 OUTPUT0O0REG090 ( .D(S0OUTPUT0O[9]), .CLK(CLK0I), .Q(OUTPUT0O[9]) );
  DFFX1 OUTPUT0O0REG080 ( .D(S0OUTPUT0O[8]), .CLK(CLK0I), .Q(OUTPUT0O[8]) );
  DFFX1 OUTPUT0O0REG070 ( .D(S0OUTPUT0O[7]), .CLK(CLK0I), .Q(OUTPUT0O[7]) );
  DFFX1 OUTPUT0O0REG0220 ( .D(S0OUTPUT0O[22]), .CLK(CLK0I), .Q(OUTPUT0O[22])
         );
  DFFX1 OUTPUT0O0REG0200 ( .D(S0OUTPUT0O[20]), .CLK(CLK0I), .Q(OUTPUT0O[20])
         );
  DFFX1 OUTPUT0O0REG010 ( .D(S0OUTPUT0O[1]), .CLK(CLK0I), .Q(OUTPUT0O[1]) );
  DFFX1 OUTPUT0O0REG0190 ( .D(S0OUTPUT0O[19]), .CLK(CLK0I), .Q(OUTPUT0O[19])
         );
  DFFX1 OUTPUT0O0REG0180 ( .D(S0OUTPUT0O[18]), .CLK(CLK0I), .Q(OUTPUT0O[18])
         );
  DFFX1 OUTPUT0O0REG0170 ( .D(S0OUTPUT0O[17]), .CLK(CLK0I), .Q(OUTPUT0O[17])
         );
  DFFX1 OUTPUT0O0REG0100 ( .D(S0OUTPUT0O[10]), .CLK(CLK0I), .Q(OUTPUT0O[10])
         );
  DFFX1 OUTPUT0O0REG000 ( .D(S0OUTPUT0O[0]), .CLK(CLK0I), .Q(OUTPUT0O[0]) );
  DFFX1 INF0O0REG ( .D(N549), .CLK(CLK0I), .Q(INF0O) );
  DFFX1 QNAN0O0REG ( .D(N198), .CLK(CLK0I), .Q(QNAN0O) );
  DFFX1 S0COUNT0REG000 ( .D(N196), .CLK(CLK0I), .Q(S0COUNT[0]), .QN(N213) );
  DFFX1 READY0O0REG ( .D(N195), .CLK(CLK0I), .Q(READY0O) );
  DFFX1 S0STATE0REG ( .D(N194), .CLK(CLK0I), .Q(S0STATE) );
  DFFX1 S0COUNT0REG0310 ( .D(N193), .CLK(CLK0I), .Q(S0COUNT[31]) );
  DFFX1 S0COUNT0REG010 ( .D(N192), .CLK(CLK0I), .Q(S0COUNT[1]), .QN(N215) );
  DFFX1 S0COUNT0REG020 ( .D(N191), .CLK(CLK0I), .Q(S0COUNT[2]), .QN(N212) );
  DFFX1 S0COUNT0REG030 ( .D(N190), .CLK(CLK0I), .Q(S0COUNT[3]) );
  DFFX1 S0COUNT0REG040 ( .D(N189), .CLK(CLK0I), .Q(S0COUNT[4]) );
  DFFX1 S0COUNT0REG050 ( .D(N188), .CLK(CLK0I), .Q(S0COUNT[5]) );
  DFFX1 S0COUNT0REG060 ( .D(N187), .CLK(CLK0I), .Q(S0COUNT[6]) );
  DFFX1 S0COUNT0REG070 ( .D(N186), .CLK(CLK0I), .Q(S0COUNT[7]) );
  DFFX1 S0COUNT0REG080 ( .D(N185), .CLK(CLK0I), .Q(S0COUNT[8]) );
  DFFX1 S0COUNT0REG090 ( .D(N184), .CLK(CLK0I), .Q(S0COUNT[9]) );
  DFFX1 S0COUNT0REG0100 ( .D(N183), .CLK(CLK0I), .Q(S0COUNT[10]) );
  DFFX1 S0COUNT0REG0110 ( .D(N182), .CLK(CLK0I), .Q(S0COUNT[11]) );
  DFFX1 S0COUNT0REG0120 ( .D(N181), .CLK(CLK0I), .Q(S0COUNT[12]) );
  DFFX1 S0COUNT0REG0130 ( .D(N180), .CLK(CLK0I), .Q(S0COUNT[13]) );
  DFFX1 S0COUNT0REG0140 ( .D(N179), .CLK(CLK0I), .Q(S0COUNT[14]) );
  DFFX1 S0COUNT0REG0150 ( .D(N178), .CLK(CLK0I), .Q(S0COUNT[15]) );
  DFFX1 S0COUNT0REG0160 ( .D(N177), .CLK(CLK0I), .Q(S0COUNT[16]) );
  DFFX1 S0COUNT0REG0170 ( .D(N176), .CLK(CLK0I), .Q(S0COUNT[17]) );
  DFFX1 S0COUNT0REG0180 ( .D(N175), .CLK(CLK0I), .Q(S0COUNT[18]) );
  DFFX1 S0COUNT0REG0190 ( .D(N174), .CLK(CLK0I), .Q(S0COUNT[19]) );
  DFFX1 S0COUNT0REG0200 ( .D(N173), .CLK(CLK0I), .Q(S0COUNT[20]) );
  DFFX1 S0COUNT0REG0210 ( .D(N172), .CLK(CLK0I), .Q(S0COUNT[21]) );
  DFFX1 S0COUNT0REG0220 ( .D(N171), .CLK(CLK0I), .Q(S0COUNT[22]) );
  DFFX1 S0COUNT0REG0230 ( .D(N170), .CLK(CLK0I), .Q(S0COUNT[23]) );
  DFFX1 S0COUNT0REG0240 ( .D(N169), .CLK(CLK0I), .Q(S0COUNT[24]) );
  DFFX1 S0COUNT0REG0250 ( .D(N168), .CLK(CLK0I), .Q(S0COUNT[25]) );
  DFFX1 S0COUNT0REG0260 ( .D(N167), .CLK(CLK0I), .Q(S0COUNT[26]) );
  DFFX1 S0COUNT0REG0270 ( .D(N166), .CLK(CLK0I), .Q(S0COUNT[27]) );
  DFFX1 S0COUNT0REG0280 ( .D(N165), .CLK(CLK0I), .Q(S0COUNT[28]) );
  DFFX1 S0COUNT0REG0290 ( .D(N164), .CLK(CLK0I), .Q(S0COUNT[29]) );
  DFFX1 S0COUNT0REG0300 ( .D(N163), .CLK(CLK0I), .Q(S0COUNT[30]) );
  pre_norm_addsub_1 I0PRENORM0ADDSUB ( .clk_i(CLK0I), .opa_i(S0OPA0I), .opb_i(
        S0OPB0I), .fracta_28_o({SYNOPSYS_UNCONNECTED__0, 
        PRENORM0ADDSUB0FRACTA0280O[26:0]}), .fractb_28_o({
        SYNOPSYS_UNCONNECTED__1, PRENORM0ADDSUB0FRACTB0280O[26:0]}), .exp_o(
        PRENORM0ADDSUB0EXP0O) );
  addsub_28_1 I0ADDSUB ( .clk_i(CLK0I), .fpu_op_i(S0FPU0OP0I[0]), .fracta_i({
        1'b0, PRENORM0ADDSUB0FRACTA0280O[26:0]}), .fractb_i({1'b0, 
        PRENORM0ADDSUB0FRACTB0280O[26:0]}), .signa_i(S0OPA0I[31]), .signb_i(
        S0OPB0I[31]), .fract_o(ADDSUB0FRACT0O), .sign_o(ADDSUB0SIGN0O) );
  post_norm_addsub_1 I0POSTNORM0ADDSUB ( .clk_i(CLK0I), .opa_i(S0OPA0I), 
        .opb_i(S0OPB0I), .fract_28_i(ADDSUB0FRACT0O), .exp_i(
        PRENORM0ADDSUB0EXP0O), .sign_i(ADDSUB0SIGN0O), .fpu_op_i(S0FPU0OP0I[0]), .rmode_i(S0RMODE0I), .output_o(POSTNORM0ADDSUB0OUTPUT0O), .ine_o(
        POSTNORM0ADDSUB0INE0O) );
  pre_norm_mul_1 I0PRE0NORM0MUL ( .clk_i(CLK0I), .opa_i(S0OPA0I), .opb_i(
        S0OPB0I), .exp_10_o(PRE0NORM0MUL0EXP010), .fracta_24_o(
        PRE0NORM0MUL0FRACTA024), .fractb_24_o(PRE0NORM0MUL0FRACTB024) );
  mul_24_1 I0MUL024 ( .clk_i(CLK0I), .fracta_i(PRE0NORM0MUL0FRACTA024), 
        .fractb_i(PRE0NORM0MUL0FRACTB024), .signa_i(S0OPA0I[31]), .signb_i(
        S0OPB0I[31]), .start_i(START0I), .fract_o(MUL0240FRACT048), .sign_o(
        MUL0240SIGN) );
  serial_mul_1 I0SERIAL0MUL ( .clk_i(CLK0I), .fracta_i(PRE0NORM0MUL0FRACTA024), 
        .fractb_i(PRE0NORM0MUL0FRACTB024), .signa_i(S0OPA0I[31]), .signb_i(
        S0OPB0I[31]), .start_i(S0START0I) );
  post_norm_mul_1 I0POST0NORM0MUL ( .clk_i(CLK0I), .opa_i(S0OPA0I), .opb_i(
        S0OPB0I), .exp_10_i(PRE0NORM0MUL0EXP010), .fract_48_i(MUL0240FRACT048), 
        .sign_i(MUL0240SIGN), .rmode_i(S0RMODE0I), .output_o(
        POST0NORM0MUL0OUTPUT), .ine_o(POST0NORM0MUL0INE) );
  pre_norm_div_1 I0PRE0NORM0DIV ( .clk_i(CLK0I), .opa_i(S0OPA0I), .opb_i(
        S0OPB0I), .exp_10_o(PRE0NORM0DIV0EXP), .dvdnd_50_o({
        PRE0NORM0DIV0DVDND[49:26], SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27}), .dvsor_27_o({SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        PRE0NORM0DIV0DVSOR[23:0]}) );
  serial_div_1 I0SERIAL0DIV ( .clk_i(CLK0I), .dvdnd_i({
        PRE0NORM0DIV0DVDND[49:26], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dvsor_i({1'b0, 1'b0, 1'b0, 
        PRE0NORM0DIV0DVSOR[23:0]}), .sign_dvd_i(S0OPA0I[31]), .sign_div_i(
        S0OPB0I[31]), .start_i(S0START0I), .qutnt_o(SERIAL0DIV0QUTNT), 
        .rmndr_o(SERIAL0DIV0RMNDR), .sign_o(SERIAL0DIV0SIGN), .div_zero_o(
        SERIAL0DIV0DIV0ZERO) );
  post_norm_div_1 I0POST0NORM0DIV ( .clk_i(CLK0I), .opa_i(S0OPA0I), .opb_i(
        S0OPB0I), .qutnt_i(SERIAL0DIV0QUTNT), .rmndr_i(SERIAL0DIV0RMNDR), 
        .exp_10_i(PRE0NORM0DIV0EXP), .sign_i(SERIAL0DIV0SIGN), .rmode_i(
        S0RMODE0I), .output_o(POST0NORM0DIV0OUTPUT), .ine_o(POST0NORM0DIV0INE)
         );
  pre_norm_sqrt_1 I0PRE0NORM0SQRT ( .clk_i(CLK0I), .opa_i(S0OPA0I), 
        .fracta_52_o({PRE0NORM0SQRT0FRACTA0O[51:27], SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57}), .exp_o(
        PRE0NORM0SQRT0EXP0O) );
  sqrt_RD_WIDTH52_SQ_WIDTH26 I0SQRT ( .clk_i(CLK0I), .rad_i({
        PRE0NORM0SQRT0FRACTA0O[51:27], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .start_i(
        S0START0I), .sqr_o(SQRT0SQR0O), .ine_o(SQRT0INE0O) );
  post_norm_sqrt_1 I0POST0NORM0SQRT ( .clk_i(CLK0I), .opa_i(S0OPA0I), 
        .fract_26_i(SQRT0SQR0O), .exp_i(PRE0NORM0SQRT0EXP0O), .ine_i(
        SQRT0INE0O), .rmode_i(S0RMODE0I), .output_o(POST0NORM0SQRT0OUTPUT), 
        .ine_o(POST0NORM0SQRT0INE0O) );
  fpu_DW01_inc_0 ADD0392 ( .A(S0COUNT), .SUM({N66, N65, N64, N63, N62, N61, 
        N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, 
        N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35}) );
  NAND2X0 U232 ( .IN1(N203), .IN2(N220), .QN(S0OUTPUT0O[9]) );
  NAND2X0 U233 ( .IN1(N209), .IN2(N220), .QN(S0OUTPUT0O[8]) );
  NAND2X0 U234 ( .IN1(N200), .IN2(N220), .QN(S0OUTPUT0O[7]) );
  OR2X1 U235 ( .IN1(S0OUTPUT1[6]), .IN2(N221), .Q(S0OUTPUT0O[6]) );
  OR2X1 U236 ( .IN1(S0OUTPUT1[5]), .IN2(N221), .Q(S0OUTPUT0O[5]) );
  OR2X1 U237 ( .IN1(S0OUTPUT1[4]), .IN2(N221), .Q(S0OUTPUT0O[4]) );
  OR2X1 U238 ( .IN1(S0OUTPUT1[3]), .IN2(N221), .Q(S0OUTPUT0O[3]) );
  NAND2X0 U239 ( .IN1(N219), .IN2(N222), .QN(S0OUTPUT0O[31]) );
  NAND4X0 U240 ( .IN1(N223), .IN2(S0RMODE0I[0]), .IN3(N199), .IN4(N224), .QN(
        N222) );
  NOR4X0 U241 ( .IN1(S0FPU0OP0I[2]), .IN2(S0FPU0OP0I[1]), .IN3(N225), .IN4(
        N211), .QN(N224) );
  NOR2X0 U242 ( .IN1(S0OPA0I[31]), .IN2(N226), .QN(N225) );
  XOR2X1 U243 ( .IN1(S0OPB0I[31]), .IN2(S0FPU0OP0I[0]), .Q(N226) );
  OR2X1 U244 ( .IN1(S0OUTPUT1[2]), .IN2(N221), .Q(S0OUTPUT0O[2]) );
  NOR2X0 U245 ( .IN1(N221), .IN2(N202), .QN(S0OUTPUT0O[23]) );
  NAND2X0 U246 ( .IN1(N207), .IN2(N220), .QN(S0OUTPUT0O[22]) );
  OR2X1 U247 ( .IN1(S0OUTPUT1[21]), .IN2(N221), .Q(S0OUTPUT0O[21]) );
  NAND2X0 U248 ( .IN1(N216), .IN2(N220), .QN(S0OUTPUT0O[20]) );
  NAND2X0 U249 ( .IN1(N205), .IN2(N220), .QN(S0OUTPUT0O[1]) );
  NAND2X0 U250 ( .IN1(N204), .IN2(N220), .QN(S0OUTPUT0O[19]) );
  NAND2X0 U251 ( .IN1(N210), .IN2(N220), .QN(S0OUTPUT0O[18]) );
  NAND2X0 U252 ( .IN1(N201), .IN2(N220), .QN(S0OUTPUT0O[17]) );
  OR2X1 U253 ( .IN1(S0OUTPUT1[16]), .IN2(N221), .Q(S0OUTPUT0O[16]) );
  OR2X1 U254 ( .IN1(S0OUTPUT1[15]), .IN2(N221), .Q(S0OUTPUT0O[15]) );
  OR2X1 U255 ( .IN1(S0OUTPUT1[14]), .IN2(N221), .Q(S0OUTPUT0O[14]) );
  OR2X1 U256 ( .IN1(S0OUTPUT1[13]), .IN2(N221), .Q(S0OUTPUT0O[13]) );
  OR2X1 U257 ( .IN1(S0OUTPUT1[12]), .IN2(N221), .Q(S0OUTPUT0O[12]) );
  OR2X1 U258 ( .IN1(S0OUTPUT1[11]), .IN2(N221), .Q(S0OUTPUT0O[11]) );
  INVX0 U259 ( .INP(N220), .ZN(N221) );
  NAND2X0 U260 ( .IN1(N217), .IN2(N220), .QN(S0OUTPUT0O[10]) );
  NAND2X0 U261 ( .IN1(N206), .IN2(N220), .QN(S0OUTPUT0O[0]) );
  NAND3X0 U262 ( .IN1(N227), .IN2(N228), .IN3(N223), .QN(N220) );
  NOR4X0 U263 ( .IN1(N229), .IN2(N230), .IN3(N197), .IN4(N198), .QN(N223) );
  XNOR2X1 U264 ( .IN1(S0RMODE0I[0]), .IN2(N231), .Q(N228) );
  NAND2X0 U265 ( .IN1(S0RMODE0I[1]), .IN2(S0OUTPUT1[31]), .QN(N231) );
  INVX0 U266 ( .INP(N232), .ZN(N227) );
  NOR3X0 U267 ( .IN1(N233), .IN2(S0OUTPUT1[22]), .IN3(N234), .QN(N199) );
  AND2X1 U268 ( .IN1(SERIAL0DIV0DIV0ZERO), .IN2(N235), .Q(N197) );
  AO22X1 U269 ( .IN1(N236), .IN2(S0COUNT[0]), .IN3(N35), .IN4(N237), .Q(N196)
         );
  AO22X1 U270 ( .IN1(N238), .IN2(N214), .IN3(READY0O), .IN4(N239), .Q(N195) );
  OR2X1 U271 ( .IN1(S0STATE), .IN2(S0START0I), .Q(N239) );
  AO21X1 U272 ( .IN1(S0STATE), .IN2(N240), .IN3(S0START0I), .Q(N194) );
  INVX0 U273 ( .INP(N238), .ZN(N240) );
  AO22X1 U274 ( .IN1(S0COUNT[31]), .IN2(N236), .IN3(N66), .IN4(N237), .Q(N193)
         );
  AO22X1 U275 ( .IN1(N236), .IN2(S0COUNT[1]), .IN3(N36), .IN4(N237), .Q(N192)
         );
  AO22X1 U276 ( .IN1(N236), .IN2(S0COUNT[2]), .IN3(N37), .IN4(N237), .Q(N191)
         );
  AO22X1 U277 ( .IN1(N236), .IN2(S0COUNT[3]), .IN3(N38), .IN4(N237), .Q(N190)
         );
  AO22X1 U278 ( .IN1(S0COUNT[4]), .IN2(N236), .IN3(N39), .IN4(N237), .Q(N189)
         );
  AO22X1 U279 ( .IN1(N236), .IN2(S0COUNT[5]), .IN3(N40), .IN4(N237), .Q(N188)
         );
  AO22X1 U280 ( .IN1(S0COUNT[6]), .IN2(N236), .IN3(N41), .IN4(N237), .Q(N187)
         );
  AO22X1 U281 ( .IN1(S0COUNT[7]), .IN2(N236), .IN3(N42), .IN4(N237), .Q(N186)
         );
  AO22X1 U282 ( .IN1(S0COUNT[8]), .IN2(N236), .IN3(N43), .IN4(N237), .Q(N185)
         );
  AO22X1 U283 ( .IN1(S0COUNT[9]), .IN2(N236), .IN3(N44), .IN4(N237), .Q(N184)
         );
  AO22X1 U284 ( .IN1(S0COUNT[10]), .IN2(N236), .IN3(N45), .IN4(N237), .Q(N183)
         );
  AO22X1 U285 ( .IN1(S0COUNT[11]), .IN2(N236), .IN3(N46), .IN4(N237), .Q(N182)
         );
  AO22X1 U286 ( .IN1(S0COUNT[12]), .IN2(N236), .IN3(N47), .IN4(N237), .Q(N181)
         );
  AO22X1 U287 ( .IN1(S0COUNT[13]), .IN2(N236), .IN3(N48), .IN4(N237), .Q(N180)
         );
  AO22X1 U288 ( .IN1(S0COUNT[14]), .IN2(N236), .IN3(N49), .IN4(N237), .Q(N179)
         );
  AO22X1 U289 ( .IN1(S0COUNT[15]), .IN2(N236), .IN3(N50), .IN4(N237), .Q(N178)
         );
  AO22X1 U290 ( .IN1(S0COUNT[16]), .IN2(N236), .IN3(N51), .IN4(N237), .Q(N177)
         );
  AO22X1 U291 ( .IN1(S0COUNT[17]), .IN2(N236), .IN3(N52), .IN4(N237), .Q(N176)
         );
  AO22X1 U292 ( .IN1(S0COUNT[18]), .IN2(N236), .IN3(N53), .IN4(N237), .Q(N175)
         );
  AO22X1 U293 ( .IN1(S0COUNT[19]), .IN2(N236), .IN3(N54), .IN4(N237), .Q(N174)
         );
  AO22X1 U294 ( .IN1(S0COUNT[20]), .IN2(N236), .IN3(N55), .IN4(N237), .Q(N173)
         );
  AO22X1 U295 ( .IN1(S0COUNT[21]), .IN2(N236), .IN3(N56), .IN4(N237), .Q(N172)
         );
  AO22X1 U296 ( .IN1(S0COUNT[22]), .IN2(N236), .IN3(N57), .IN4(N237), .Q(N171)
         );
  AO22X1 U297 ( .IN1(S0COUNT[23]), .IN2(N236), .IN3(N58), .IN4(N237), .Q(N170)
         );
  AO22X1 U298 ( .IN1(S0COUNT[24]), .IN2(N236), .IN3(N59), .IN4(N237), .Q(N169)
         );
  AO22X1 U299 ( .IN1(S0COUNT[25]), .IN2(N236), .IN3(N60), .IN4(N237), .Q(N168)
         );
  AO22X1 U300 ( .IN1(S0COUNT[26]), .IN2(N236), .IN3(N61), .IN4(N237), .Q(N167)
         );
  AO22X1 U301 ( .IN1(S0COUNT[27]), .IN2(N236), .IN3(N62), .IN4(N237), .Q(N166)
         );
  AO22X1 U302 ( .IN1(S0COUNT[28]), .IN2(N236), .IN3(N63), .IN4(N237), .Q(N165)
         );
  AO22X1 U303 ( .IN1(S0COUNT[29]), .IN2(N236), .IN3(N64), .IN4(N237), .Q(N164)
         );
  AO22X1 U304 ( .IN1(S0COUNT[30]), .IN2(N236), .IN3(N65), .IN4(N237), .Q(N163)
         );
  NOR3X0 U305 ( .IN1(N236), .IN2(S0START0I), .IN3(N238), .QN(N237) );
  NOR3X0 U306 ( .IN1(S0START0I), .IN2(S0STATE), .IN3(N238), .QN(N236) );
  MUX21X1 U307 ( .IN1(N241), .IN2(N242), .S(S0COUNT[5]), .Q(N238) );
  NOR4X0 U308 ( .IN1(S0COUNT[3]), .IN2(S0COUNT[1]), .IN3(N243), .IN4(N244), 
        .QN(N242) );
  NOR2X0 U309 ( .IN1(N245), .IN2(N235), .QN(N243) );
  NOR2X0 U310 ( .IN1(N215), .IN2(N246), .QN(N241) );
  MUX21X1 U311 ( .IN1(N247), .IN2(N248), .S(S0COUNT[3]), .Q(N246) );
  NAND2X0 U312 ( .IN1(N249), .IN2(N250), .QN(N248) );
  INVX0 U313 ( .INP(N244), .ZN(N250) );
  NAND3X0 U314 ( .IN1(N251), .IN2(N212), .IN3(S0COUNT[0]), .QN(N244) );
  NAND4X0 U315 ( .IN1(S0COUNT[2]), .IN2(N252), .IN3(N251), .IN4(N213), .QN(
        N247) );
  AND4X1 U316 ( .IN1(N253), .IN2(N254), .IN3(N255), .IN4(N256), .Q(N251) );
  NOR4X0 U317 ( .IN1(N257), .IN2(S0COUNT[30]), .IN3(S0COUNT[4]), .IN4(
        S0COUNT[31]), .QN(N256) );
  OR4X1 U318 ( .IN1(S0COUNT[6]), .IN2(S0COUNT[7]), .IN3(S0COUNT[8]), .IN4(
        S0COUNT[9]), .Q(N257) );
  NOR4X0 U319 ( .IN1(N258), .IN2(S0COUNT[23]), .IN3(S0COUNT[25]), .IN4(
        S0COUNT[24]), .QN(N255) );
  OR4X1 U320 ( .IN1(S0COUNT[26]), .IN2(S0COUNT[27]), .IN3(S0COUNT[28]), .IN4(
        S0COUNT[29]), .Q(N258) );
  NOR4X0 U321 ( .IN1(N259), .IN2(S0COUNT[16]), .IN3(S0COUNT[18]), .IN4(
        S0COUNT[17]), .QN(N254) );
  OR4X1 U322 ( .IN1(S0COUNT[19]), .IN2(S0COUNT[20]), .IN3(S0COUNT[21]), .IN4(
        S0COUNT[22]), .Q(N259) );
  NOR4X0 U323 ( .IN1(N260), .IN2(S0COUNT[10]), .IN3(S0COUNT[12]), .IN4(
        S0COUNT[11]), .QN(N253) );
  OR3X1 U324 ( .IN1(S0COUNT[14]), .IN2(S0COUNT[15]), .IN3(S0COUNT[13]), .Q(
        N260) );
  NOR3X0 U325 ( .IN1(N581), .IN2(N198), .IN3(N232), .QN(N549) );
  NOR3X0 U326 ( .IN1(N232), .IN2(N233), .IN3(N207), .QN(N198) );
  NAND4X0 U327 ( .IN1(N261), .IN2(N262), .IN3(N263), .IN4(N264), .QN(N233) );
  NOR4X0 U328 ( .IN1(N265), .IN2(S0OUTPUT1[4]), .IN3(S0OUTPUT1[6]), .IN4(
        S0OUTPUT1[5]), .QN(N264) );
  NAND3X0 U329 ( .IN1(N209), .IN2(N203), .IN3(N200), .QN(N265) );
  NOR4X0 U330 ( .IN1(N266), .IN2(S0OUTPUT1[21]), .IN3(S0OUTPUT1[3]), .IN4(
        S0OUTPUT1[2]), .QN(N263) );
  NAND2X0 U331 ( .IN1(N205), .IN2(N216), .QN(N266) );
  NOR4X0 U332 ( .IN1(N267), .IN2(S0OUTPUT1[14]), .IN3(S0OUTPUT1[16]), .IN4(
        S0OUTPUT1[15]), .QN(N262) );
  NAND3X0 U333 ( .IN1(N210), .IN2(N204), .IN3(N201), .QN(N267) );
  NOR4X0 U334 ( .IN1(N268), .IN2(S0OUTPUT1[11]), .IN3(S0OUTPUT1[13]), .IN4(
        S0OUTPUT1[12]), .QN(N261) );
  NAND2X0 U335 ( .IN1(N206), .IN2(N217), .QN(N268) );
  NAND2X0 U336 ( .IN1(N269), .IN2(N270), .QN(N581) );
  NAND4X0 U337 ( .IN1(N271), .IN2(N272), .IN3(N273), .IN4(N274), .QN(N270) );
  NOR4X0 U338 ( .IN1(N275), .IN2(S0OPA0I[4]), .IN3(S0OPA0I[6]), .IN4(
        S0OPA0I[5]), .QN(N274) );
  NAND3X0 U339 ( .IN1(N148), .IN2(N149), .IN3(N147), .QN(N275) );
  NOR4X0 U340 ( .IN1(N276), .IN2(S0OPA0I[1]), .IN3(S0OPA0I[21]), .IN4(
        S0OPA0I[20]), .QN(N273) );
  NAND3X0 U341 ( .IN1(N145), .IN2(N146), .IN3(N144), .QN(N276) );
  NOR4X0 U342 ( .IN1(N277), .IN2(S0OPA0I[14]), .IN3(S0OPA0I[16]), .IN4(
        S0OPA0I[15]), .QN(N272) );
  NAND3X0 U343 ( .IN1(N142), .IN2(N143), .IN3(N141), .QN(N277) );
  NOR4X0 U344 ( .IN1(N278), .IN2(S0OPA0I[11]), .IN3(S0OPA0I[13]), .IN4(
        S0OPA0I[12]), .QN(N271) );
  NAND3X0 U345 ( .IN1(N229), .IN2(N150), .IN3(S0OPA0I[0]), .QN(N278) );
  AND4X1 U346 ( .IN1(S0OPA0I[30]), .IN2(S0OPA0I[29]), .IN3(N279), .IN4(N280), 
        .Q(N229) );
  NOR4X0 U347 ( .IN1(N161), .IN2(N162), .IN3(N151), .IN4(N152), .QN(N280) );
  NOR2X0 U348 ( .IN1(N153), .IN2(N154), .QN(N279) );
  NAND4X0 U349 ( .IN1(N281), .IN2(N282), .IN3(N283), .IN4(N284), .QN(N269) );
  NOR4X0 U350 ( .IN1(N285), .IN2(S0OPB0I[4]), .IN3(S0OPB0I[6]), .IN4(
        S0OPB0I[5]), .QN(N284) );
  NAND3X0 U351 ( .IN1(N138), .IN2(N139), .IN3(N137), .QN(N285) );
  NOR4X0 U352 ( .IN1(N286), .IN2(S0OPB0I[1]), .IN3(S0OPB0I[21]), .IN4(
        S0OPB0I[20]), .QN(N283) );
  NAND3X0 U353 ( .IN1(N135), .IN2(N136), .IN3(N134), .QN(N286) );
  NOR4X0 U354 ( .IN1(N287), .IN2(S0OPB0I[14]), .IN3(S0OPB0I[16]), .IN4(
        S0OPB0I[15]), .QN(N282) );
  NAND3X0 U355 ( .IN1(N132), .IN2(N133), .IN3(N131), .QN(N287) );
  NOR4X0 U356 ( .IN1(N288), .IN2(S0OPB0I[11]), .IN3(S0OPB0I[13]), .IN4(
        S0OPB0I[12]), .QN(N281) );
  NAND3X0 U357 ( .IN1(N230), .IN2(N140), .IN3(S0OPB0I[0]), .QN(N288) );
  AND4X1 U358 ( .IN1(S0OPB0I[30]), .IN2(S0OPB0I[29]), .IN3(N289), .IN4(N290), 
        .Q(N230) );
  NOR4X0 U359 ( .IN1(N159), .IN2(N160), .IN3(N155), .IN4(N156), .QN(N290) );
  NOR2X0 U360 ( .IN1(N157), .IN2(N158), .QN(N289) );
  NOR2X0 U361 ( .IN1(N232), .IN2(N208), .QN(N547) );
  NAND4X0 U362 ( .IN1(S0OUTPUT0O[30]), .IN2(S0OUTPUT0O[29]), .IN3(N291), .IN4(
        N292), .QN(N232) );
  AND4X1 U363 ( .IN1(S0OUTPUT1[23]), .IN2(S0OUTPUT0O[24]), .IN3(S0OUTPUT0O[25]), .IN4(S0OUTPUT0O[26]), .Q(N292) );
  AND2X1 U364 ( .IN1(S0OUTPUT0O[27]), .IN2(S0OUTPUT0O[28]), .Q(N291) );
  NOR2X0 U365 ( .IN1(N234), .IN2(N208), .QN(N546) );
  NAND4X0 U366 ( .IN1(N202), .IN2(N218), .IN3(N293), .IN4(N294), .QN(N234) );
  NOR4X0 U367 ( .IN1(S0OUTPUT0O[30]), .IN2(S0OUTPUT0O[29]), .IN3(
        S0OUTPUT0O[28]), .IN4(S0OUTPUT0O[27]), .QN(N294) );
  NOR2X0 U368 ( .IN1(S0OUTPUT0O[26]), .IN2(S0OUTPUT0O[25]), .QN(N293) );
  AO221X1 U369 ( .IN1(POST0NORM0SQRT0INE0O), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0INE0O), .IN4(N252), .IN5(N295), .Q(N374) );
  AO22X1 U370 ( .IN1(POST0NORM0DIV0INE), .IN2(N235), .IN3(POST0NORM0MUL0INE), 
        .IN4(N249), .Q(N295) );
  AO221X1 U371 ( .IN1(POST0NORM0SQRT0OUTPUT[31]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[31]), .IN4(N252), .IN5(N296), .Q(N373) );
  AO22X1 U372 ( .IN1(POST0NORM0DIV0OUTPUT[31]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[31]), .IN4(N249), .Q(N296) );
  AO221X1 U373 ( .IN1(POST0NORM0SQRT0OUTPUT[30]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[30]), .IN4(N252), .IN5(N297), .Q(N372) );
  AO22X1 U374 ( .IN1(POST0NORM0DIV0OUTPUT[30]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[30]), .IN4(N249), .Q(N297) );
  AO221X1 U375 ( .IN1(POST0NORM0SQRT0OUTPUT[29]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[29]), .IN4(N252), .IN5(N298), .Q(N371) );
  AO22X1 U376 ( .IN1(POST0NORM0DIV0OUTPUT[29]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[29]), .IN4(N249), .Q(N298) );
  AO221X1 U377 ( .IN1(POST0NORM0SQRT0OUTPUT[28]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[28]), .IN4(N252), .IN5(N299), .Q(N370) );
  AO22X1 U378 ( .IN1(POST0NORM0DIV0OUTPUT[28]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[28]), .IN4(N249), .Q(N299) );
  AO221X1 U379 ( .IN1(POST0NORM0SQRT0OUTPUT[27]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[27]), .IN4(N252), .IN5(N300), .Q(N369) );
  AO22X1 U380 ( .IN1(POST0NORM0DIV0OUTPUT[27]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[27]), .IN4(N249), .Q(N300) );
  AO221X1 U381 ( .IN1(POST0NORM0SQRT0OUTPUT[26]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[26]), .IN4(N252), .IN5(N301), .Q(N368) );
  AO22X1 U382 ( .IN1(POST0NORM0DIV0OUTPUT[26]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[26]), .IN4(N249), .Q(N301) );
  AO221X1 U383 ( .IN1(POST0NORM0SQRT0OUTPUT[25]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[25]), .IN4(N252), .IN5(N302), .Q(N367) );
  AO22X1 U384 ( .IN1(POST0NORM0DIV0OUTPUT[25]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[25]), .IN4(N249), .Q(N302) );
  AO221X1 U385 ( .IN1(POST0NORM0SQRT0OUTPUT[24]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[24]), .IN4(N252), .IN5(N303), .Q(N366) );
  AO22X1 U386 ( .IN1(POST0NORM0DIV0OUTPUT[24]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[24]), .IN4(N249), .Q(N303) );
  AO221X1 U387 ( .IN1(POST0NORM0SQRT0OUTPUT[23]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[23]), .IN4(N252), .IN5(N304), .Q(N365) );
  AO22X1 U388 ( .IN1(POST0NORM0DIV0OUTPUT[23]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[23]), .IN4(N249), .Q(N304) );
  AO221X1 U389 ( .IN1(POST0NORM0SQRT0OUTPUT[22]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[22]), .IN4(N252), .IN5(N305), .Q(N364) );
  AO22X1 U390 ( .IN1(POST0NORM0DIV0OUTPUT[22]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[22]), .IN4(N249), .Q(N305) );
  AO221X1 U391 ( .IN1(POST0NORM0SQRT0OUTPUT[21]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[21]), .IN4(N252), .IN5(N306), .Q(N363) );
  AO22X1 U392 ( .IN1(POST0NORM0DIV0OUTPUT[21]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[21]), .IN4(N249), .Q(N306) );
  AO221X1 U393 ( .IN1(POST0NORM0SQRT0OUTPUT[20]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[20]), .IN4(N252), .IN5(N307), .Q(N362) );
  AO22X1 U394 ( .IN1(POST0NORM0DIV0OUTPUT[20]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[20]), .IN4(N249), .Q(N307) );
  AO221X1 U395 ( .IN1(POST0NORM0SQRT0OUTPUT[19]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[19]), .IN4(N252), .IN5(N308), .Q(N361) );
  AO22X1 U396 ( .IN1(POST0NORM0DIV0OUTPUT[19]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[19]), .IN4(N249), .Q(N308) );
  AO221X1 U397 ( .IN1(POST0NORM0SQRT0OUTPUT[18]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[18]), .IN4(N252), .IN5(N309), .Q(N360) );
  AO22X1 U398 ( .IN1(POST0NORM0DIV0OUTPUT[18]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[18]), .IN4(N249), .Q(N309) );
  AO221X1 U399 ( .IN1(POST0NORM0SQRT0OUTPUT[17]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[17]), .IN4(N252), .IN5(N310), .Q(N359) );
  AO22X1 U400 ( .IN1(POST0NORM0DIV0OUTPUT[17]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[17]), .IN4(N249), .Q(N310) );
  AO221X1 U401 ( .IN1(POST0NORM0SQRT0OUTPUT[16]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[16]), .IN4(N252), .IN5(N311), .Q(N358) );
  AO22X1 U402 ( .IN1(POST0NORM0DIV0OUTPUT[16]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[16]), .IN4(N249), .Q(N311) );
  AO221X1 U403 ( .IN1(POST0NORM0SQRT0OUTPUT[15]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[15]), .IN4(N252), .IN5(N312), .Q(N357) );
  AO22X1 U404 ( .IN1(POST0NORM0DIV0OUTPUT[15]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[15]), .IN4(N249), .Q(N312) );
  AO221X1 U405 ( .IN1(POST0NORM0SQRT0OUTPUT[14]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[14]), .IN4(N252), .IN5(N313), .Q(N356) );
  AO22X1 U406 ( .IN1(POST0NORM0DIV0OUTPUT[14]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[14]), .IN4(N249), .Q(N313) );
  AO221X1 U407 ( .IN1(POST0NORM0SQRT0OUTPUT[13]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[13]), .IN4(N252), .IN5(N314), .Q(N355) );
  AO22X1 U408 ( .IN1(POST0NORM0DIV0OUTPUT[13]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[13]), .IN4(N249), .Q(N314) );
  AO221X1 U409 ( .IN1(POST0NORM0SQRT0OUTPUT[12]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[12]), .IN4(N252), .IN5(N315), .Q(N354) );
  AO22X1 U410 ( .IN1(POST0NORM0DIV0OUTPUT[12]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[12]), .IN4(N249), .Q(N315) );
  AO221X1 U411 ( .IN1(POST0NORM0SQRT0OUTPUT[11]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[11]), .IN4(N252), .IN5(N316), .Q(N353) );
  AO22X1 U412 ( .IN1(POST0NORM0DIV0OUTPUT[11]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[11]), .IN4(N249), .Q(N316) );
  AO221X1 U413 ( .IN1(POST0NORM0SQRT0OUTPUT[10]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[10]), .IN4(N252), .IN5(N317), .Q(N352) );
  AO22X1 U414 ( .IN1(POST0NORM0DIV0OUTPUT[10]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[10]), .IN4(N249), .Q(N317) );
  AO221X1 U415 ( .IN1(POST0NORM0SQRT0OUTPUT[9]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[9]), .IN4(N252), .IN5(N318), .Q(N351) );
  AO22X1 U416 ( .IN1(POST0NORM0DIV0OUTPUT[9]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[9]), .IN4(N249), .Q(N318) );
  AO221X1 U417 ( .IN1(POST0NORM0SQRT0OUTPUT[8]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[8]), .IN4(N252), .IN5(N319), .Q(N350) );
  AO22X1 U418 ( .IN1(POST0NORM0DIV0OUTPUT[8]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[8]), .IN4(N249), .Q(N319) );
  AO221X1 U419 ( .IN1(POST0NORM0SQRT0OUTPUT[7]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[7]), .IN4(N252), .IN5(N320), .Q(N349) );
  AO22X1 U420 ( .IN1(POST0NORM0DIV0OUTPUT[7]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[7]), .IN4(N249), .Q(N320) );
  AO221X1 U421 ( .IN1(POST0NORM0SQRT0OUTPUT[6]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[6]), .IN4(N252), .IN5(N321), .Q(N348) );
  AO22X1 U422 ( .IN1(POST0NORM0DIV0OUTPUT[6]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[6]), .IN4(N249), .Q(N321) );
  AO221X1 U423 ( .IN1(POST0NORM0SQRT0OUTPUT[5]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[5]), .IN4(N252), .IN5(N322), .Q(N347) );
  AO22X1 U424 ( .IN1(POST0NORM0DIV0OUTPUT[5]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[5]), .IN4(N249), .Q(N322) );
  AO221X1 U425 ( .IN1(POST0NORM0SQRT0OUTPUT[4]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[4]), .IN4(N252), .IN5(N323), .Q(N346) );
  AO22X1 U426 ( .IN1(POST0NORM0DIV0OUTPUT[4]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[4]), .IN4(N249), .Q(N323) );
  AO221X1 U427 ( .IN1(POST0NORM0SQRT0OUTPUT[3]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[3]), .IN4(N252), .IN5(N324), .Q(N345) );
  AO22X1 U428 ( .IN1(POST0NORM0DIV0OUTPUT[3]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[3]), .IN4(N249), .Q(N324) );
  AO221X1 U429 ( .IN1(POST0NORM0SQRT0OUTPUT[2]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[2]), .IN4(N252), .IN5(N325), .Q(N344) );
  AO22X1 U430 ( .IN1(POST0NORM0DIV0OUTPUT[2]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[2]), .IN4(N249), .Q(N325) );
  AO221X1 U431 ( .IN1(POST0NORM0SQRT0OUTPUT[1]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[1]), .IN4(N252), .IN5(N326), .Q(N343) );
  AO22X1 U432 ( .IN1(POST0NORM0DIV0OUTPUT[1]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[1]), .IN4(N249), .Q(N326) );
  AO221X1 U433 ( .IN1(POST0NORM0SQRT0OUTPUT[0]), .IN2(N245), .IN3(
        POSTNORM0ADDSUB0OUTPUT0O[0]), .IN4(N252), .IN5(N327), .Q(N342) );
  AO22X1 U434 ( .IN1(POST0NORM0DIV0OUTPUT[0]), .IN2(N235), .IN3(
        POST0NORM0MUL0OUTPUT[0]), .IN4(N249), .Q(N327) );
  NOR3X0 U435 ( .IN1(FPU0OP0I[0]), .IN2(FPU0OP0I[2]), .IN3(N328), .QN(N249) );
  INVX0 U436 ( .INP(FPU0OP0I[1]), .ZN(N328) );
  AND3X1 U437 ( .IN1(FPU0OP0I[0]), .IN2(N329), .IN3(FPU0OP0I[1]), .Q(N235) );
  NOR2X0 U438 ( .IN1(FPU0OP0I[1]), .IN2(FPU0OP0I[2]), .QN(N252) );
  NOR3X0 U439 ( .IN1(FPU0OP0I[0]), .IN2(FPU0OP0I[1]), .IN3(N329), .QN(N245) );
  INVX0 U440 ( .INP(FPU0OP0I[2]), .ZN(N329) );
endmodule

