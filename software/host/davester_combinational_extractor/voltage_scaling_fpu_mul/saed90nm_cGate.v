module p_O_DFFX1 (D,CLK,Q,QN,E);
   
   output  Q,QN;
   input   D,CLK,E;
   wire    CLKtemp;
   wire    enable;
   
   assign enable = E;
   
   
   DFFX1 SAED_DFFX1 (.D(D),.CLK(CLKtemp),.Q(Q),.QN(QN)); 
   AND2X1 SAED_AND (.IN1(enable),.IN2(CLK),.Q(CLKtemp));
   
   
   
   
endmodule // p_O_DFFX1
