module simple (clk,IN1,IN2,IN3,Q,N2);
   
   
   input clk,IN1,IN2,IN3;
   output Q,N2;

   wire   IN1_reg,IN2_reg,IN3_reg;
   
   

   DFFX1 A_Reg (.CLK(clk),.D(IN1),.Q(IN1_reg));
   DFFX1 B_Reg (.CLK(clk),.D(IN2),.Q(IN2_reg));
   DFFX1 C_Reg (.CLK(clk),.D(IN3),.Q(IN3_reg));

   wire   N1;
   
   
   NAND2X1 nand1 (IN1_reg,IN2_reg,N1);
   AND2X1 and1 (N1,IN3_reg,N2);

   DFFX1 D_Reg (.CLK(clk),.D(N2),.Q(Q));

   
endmodule
