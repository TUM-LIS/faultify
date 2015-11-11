// Verilog
// c17
// Ninputs 5
// Noutputs 2
// NtotalGates 6
// NAND2 6

module nandx (Q,IN1,IN2);
   input IN1,IN2;
   output Q;
   
   NAND2X1 nand_inst (IN1,IN2,Q);
   
endmodule

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

   
   nandx NAND2_1 (N10, N1_reg, N3_reg);
   nandx NAND2_2 (N11, N3_reg, N6_reg);
   nandx NAND2_3 (N16, N2_reg, N11);
   nandx NAND2_4 (N19, N11, N7_reg);
   nandx NAND2_5 (N22, N10, N16);
   nandx NAND2_6 (N23, N16, N19);

   DFFX1 F_Reg (.CLK(CLK),.D(N22),.Q(N22_reg));
   DFFX1 G_Reg (.CLK(CLK),.D(N23),.Q(N23_reg));



   
endmodule
