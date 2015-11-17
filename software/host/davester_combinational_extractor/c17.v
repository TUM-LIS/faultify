// Verilog
// c17
// Ninputs 5
// Noutputs 2
// NtotalGates 6
// NAND2 6



module c17 (CLK,N1,N2,N3,N6,N7,N22_reg,N23_reg);
   
   input CLK,N1,N2,N3,N6,N7;
   
   output N22_reg,N23_reg;
   wire   N22,N23;
   wire   N10,N11,N16,N19;

   
   DFFX1 A_Reg (.CLK(CLK),.D(N1),.Q(N1_reg));
   DFFX1 B_Reg (.CLK(CLK),.D(N2),.Q(N2_reg));
   DFFX1 C_Reg (.CLK(CLK),.D(N3),.Q(N3_reg));
   DFFX1 D_Reg (.CLK(CLK),.D(N6),.Q(N6_reg));
   DFFX1 E_Reg (.CLK(CLK),.D(N7),.Q(N7_reg));

   
   NAND2X1 NAND2_1 ( N1_reg, N3_reg,N10);
   NAND2X1 NAND2_2 ( N3_reg, N6_reg,N11);
   NAND2X1 NAND2_3 ( N2_reg, N11,N16);
   NAND2X1 NAND2_4 ( N11, N7_reg,N19);
   NAND2X1 NAND2_5 ( N10, N16,N22);
   NAND2X1 NAND2_6 ( N16, N19,N23);

   DFFX1 F_Reg (.CLK(CLK),.D(N22),.Q(N22_reg));
   DFFX1 G_Reg (.CLK(CLK),.D(N23),.Q(N23_reg));



   
endmodule
