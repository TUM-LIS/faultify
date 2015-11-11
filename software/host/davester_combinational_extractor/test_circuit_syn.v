// my test circuit


module test_circuit (clk,A,B,C,G);
   input clk;
   input A,B,C;
   output G;
   

   wire  a_reg,b_reg,c_reg;
   wire  d,e,f,g;


   DFFX1 A_Reg (.CLK(clk),.D(A),.Q(a_reg));
   DFFX1 B_Reg (.CLK(clk),.D(B),.Q(b_reg));
   DFFX1 C_Reg (.CLK(clk),.D(C),.Q(c_reg));
      
   AND2X1 U1 ( .IN1(b_reg), .IN2(c_reg), .Q(d) );
   OR2X1  U2 ( .IN1(b_reg), .IN2(c_reg), .Q(e) );
   
   AND2X1 U3 ( .IN1(e),     .IN2(a_reg), .Q(f) );
   OR2X1  U4 ( .IN1(d),     .IN2(f),     .Q(g) );

   DFFX1 G_Reg (.CLK(clk),.D(g),.Q(G));

   /*
   reg 	 t=0;
   assign G = t;
   
   always @(posedge clk) begin
      #0.06125 t = g;
   end
   */
   
endmodule




