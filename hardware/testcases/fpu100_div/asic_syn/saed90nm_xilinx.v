/*--------------------
 AND 
----------------------*/
module AND2X1 (IN1,IN2,Q);

 input IN1;
 input IN2;
 output Q;

 AND2 XIL_AND2 (.I0(IN1),.I1(IN2),.O(Q));

endmodule

module AND2X2 (IN1,IN2,Q);

 input IN1;
 input IN2;
 output Q;

 AND2 XIL_AND2 (.I0(IN1),.I1(IN2),.O(Q));

endmodule

module AND2X4 (IN1,IN2,Q);

 input IN1;
 input IN2;
 output Q;

 AND2 XIL_AND2 (.I0(IN1),.I1(IN2),.O(Q));

endmodule

module AND3X1 (IN1,IN2,IN3,Q);

 input IN1;
 input IN2,IN3;
 output Q;

 AND3 XIL_AND3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(Q));

endmodule

module AND3X2 (IN1,IN2,IN3,Q);

 input IN1;
 input IN2,IN3;
 output Q;

 AND3 XIL_AND3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(Q));

endmodule

module AND3X4 (IN1,IN2,IN3,Q);

 input IN1;
 input IN2,IN3;
 output Q;

 AND3 XIL_AND3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(Q));

endmodule

module AND4X1 (IN1,IN2,IN3,IN4,Q);

 input IN1;
 input IN2,IN3,IN4;
 output Q;

 AND4 XIL_AND4 (.I0(IN1),.I1(IN2),.I2(IN3),.I3(IN4),.O(Q));

endmodule

module AND4X2 (IN1,IN2,IN3,IN4,Q);

 input IN1;
 input IN2,IN3,IN4;
 output Q;

 AND4 XIL_AND4 (.I0(IN1),.I1(IN2),.I2(IN3),.I3(IN4),.O(Q));

endmodule

module AND4X4 (IN1,IN2,IN3,IN4,Q);

 input IN1;
 input IN2,IN3,IN4;
 output Q;

 AND4 XIL_AND4 (.I0(IN1),.I1(IN2),.I2(IN3),.I3(IN4),.O(Q));

endmodule
/* ------------------------
	AO
--------------------------*/
module AO21X1 (IN1,IN2,IN3,Q);

 input IN1,IN2,IN3;
 output Q;

 wire Otemp;

 AND2 XIL_AND2 (.I0(IN1),.I1(IN2),.O(Otemp));
 OR2  XIL_OR2  (.I0(Otemp),.I1(IN3),.O(Q));

endmodule
module AO21X2 (IN1,IN2,IN3,Q);

 input IN1,IN2,IN3;
 output Q;

 wire Otemp;

 AND2 XIL_AND2 (.I0(IN1),.I1(IN2),.O(Otemp));
 OR2  XIL_OR2  (.I0(Otemp),.I1(IN3),.O(Q));

endmodule

module AO221X1 (IN1,IN2,IN3,IN4,IN5,Q);

 input IN1,IN2,IN3,IN4,IN5;
 output Q;

 wire Otemp0,Otemp1;

 AND2 XIL_AND2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 AND2 XIL_AND2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 OR3  XIL_OR3  (.I0(Otemp0),.I1(Otemp1),.I2(IN5),.O(Q));

endmodule
module AO221X2 (IN1,IN2,IN3,IN4,IN5,Q);

 input IN1,IN2,IN3,IN4,IN5;
 output Q;

 wire Otemp0,Otemp1;

 AND2 XIL_AND2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 AND2 XIL_AND2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 OR3  XIL_OR3  (.I0(Otemp0),.I1(Otemp1),.I2(IN5),.O(Q));

endmodule
module AO22X1 (IN1,IN2,IN3,IN4,Q);

 input IN1,IN2,IN3,IN4;
 output Q;

 wire Otemp0,Otemp1;

 AND2 XIL_AND2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 AND2 XIL_AND2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 OR2  XIL_OR2  (.I0(Otemp0),.I1(Otemp1),.O(Q));

endmodule
module AO22X2 (IN1,IN2,IN3,IN4,Q);

 input IN1,IN2,IN3,IN4;
 output Q;

 wire Otemp0,Otemp1;

 AND2 XIL_AND2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 AND2 XIL_AND2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 OR2  XIL_OR2  (.I0(Otemp0),.I1(Otemp1),.O(Q));

endmodule

module AO222X1 (IN1,IN2,IN3,IN4,IN5,IN6,Q);

 input IN1,IN2,IN3,IN4,IN5,IN6;
 output Q;

 wire Otemp0,Otemp1,Otemp2;

 AND2 XIL_AND2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 AND2 XIL_AND2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 AND2 XIL_AND2_2 (.I0(IN5),.I1(IN6),.O(Otemp2));
 OR3  XIL_OR3  (.I0(Otemp0),.I1(Otemp1),.I2(Otemp2),.O(Q));

endmodule
module AO222X2 (IN1,IN2,IN3,IN4,IN5,IN6,Q);

 input IN1,IN2,IN3,IN4,IN5,IN6;
 output Q;

 wire Otemp0,Otemp1,Otemp2;

 AND2 XIL_AND2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 AND2 XIL_AND2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 AND2 XIL_AND2_2 (.I0(IN5),.I1(IN6),.O(Otemp2));
 OR3  XIL_OR3  (.I0(Otemp0),.I1(Otemp1),.I2(Otemp2),.O(Q));

endmodule

module AOI22X1 (IN1,IN2,IN3,IN4,QN);
 
 input IN1,IN2,IN3,IN4;
 output QN;

 wire Otemp0,Otemp1;

 AND2 XIL_AND2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 AND2 XIL_AND2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 NOR2  XIL_NOR2  (.I0(Otemp0),.I1(Otemp1),.O(QN));

endmodule
module AOI22X2 (IN1,IN2,IN3,IN4,QN);
 
 input IN1,IN2,IN3,IN4;
 output QN;

 wire Otemp0,Otemp1;

 AND2 XIL_AND2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 AND2 XIL_AND2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 NOR2  XIL_NOR2  (.I0(Otemp0),.I1(Otemp1),.O(QN));

endmodule
module AOI222X1 (IN1,IN2,IN3,IN4,IN5,IN6,QN);
 
   input IN1,IN2,IN3,IN4,IN5,IN6;
   output QN;
   
   wire   Otemp0,Otemp1,Otemp2;

   AND2 XIL_AND2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
   AND2 XIL_AND2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
   AND2 XIL_AND2_2 (.I0(IN5),.I1(IN6),.O(Otemp2));
   
   NOR3  XIL_NOR3  (.I0(Otemp0),.I1(Otemp1),.I2(Otemp2),.O(QN));
   
endmodule
module AOI21X1 (IN1,IN2,IN3,QN);
 
 input IN1,IN2,IN3;
 output QN;

 wire Otemp;

 AND2 XIL_AND2 (.I0(IN1),.I1(IN2),.O(Otemp));
 NOR2  XIL_NOR2  (.I0(Otemp),.I1(IN3),.O(QN));

endmodule

module AOI21X2 (IN1,IN2,IN3,QN);
 
 input IN1,IN2,IN3;
 output QN;

 wire Otemp;

 AND2 XIL_AND2 (.I0(IN1),.I1(IN2),.O(Otemp));
 NOR2  XIL_NOR2  (.I0(Otemp),.I1(IN3),.O(QN));

endmodule

module AOI221X1 (IN1,IN2,IN3,IN4,IN5,QN);

 input IN1,IN2,IN3,IN4,IN5;
 output QN;

 wire Otemp0,Otemp1;

 AND2 XIL_AND2_1 (.I0(IN1),.I1(IN2),.O(Otemp0));
 AND2 XIL_AND2_2 (.I0(IN3),.I1(IN4),.O(Otemp1));
 NOR3  XIL_NOR3  (.I0(Otemp0),.I1(IN5),.I2(Otemp1),.O(QN));

endmodule

/* ------------------------
	AOBUF
--------------------------*/

/* ------------------------
	AOI
--------------------------*/

/* ------------------------
	AOINV
--------------------------*/

/* ------------------------
	CGLNP
--------------------------*/

/* ------------------------
	DEC
--------------------------*/

/* ------------------------
	DELL
--------------------------*/
module DELLN1X2 (INP,Z);
	input INP;
	output Z;
	assign Z  = INP;
endmodule
module DELLN2X2 (INP,Z);
	input INP;
	output Z;
	assign Z  = INP;
endmodule
module DELLN3X2 (INP,Z);
	input INP;
	output Z;
	assign Z  = INP;
endmodule
/* ------------------------
	DFF
--------------------------*/
module DFFSSRX1 (D,CLK,SETB,RSTB,Q,QN);

 input D;
 input CLK;
 input RSTB;
 input SETB;
   
 output Q;
 output QN;


   wire Qtemp;
   wire Dtemp;
   
   assign QN = ~Qtemp;
   assign Q = Qtemp;

   assign Dtemp = D || !SETB;
   
 FDR XIL_FDR (.D(Dtemp),.C(CLK),.R(~(RSTB)),.Q(Qtemp));

endmodule


module DFFASX1 (D,CLK,SETB,Q,QN);

output  Q,QN;
input   D,CLK,SETB;

 assign QN = ~Qtemp;
 assign Q = Qtemp;
FDSE XIL_FD (.D(D),.C(CLK),.Q(Qtemp),.S(~SETB),.CE(1));

endmodule

module DFFX1 (D,CLK,Q,QN);

output  Q,QN;
input   D,CLK;
wire Qtemp;

 assign QN = ~Qtemp;
 assign Q = Qtemp;

 FD XIL_FD (.D(D),.C(CLK),.Q(Qtemp));

endmodule // DFFX1

module p_O_DFFX1 (D,CLK,Q,QN,E);
   
   output  Q,QN;
   input   D,CLK,E;
   wire    Qtemp,Qtempt;
   
   assign QN = ~Qtempt;
   assign Q = Qtempt;
   
   FD XIL_FD (.D(D),.C(CLK),.Q(Qtemp));
   
   xor(Qtempt,Qtemp,E);
   
   
endmodule // p_O_DFFX1

module DFFX2 (D,CLK,Q,QN);

output  Q,QN;
input   D,CLK;
wire Qtemp;

 assign QN = ~Qtemp;
 assign Q = Qtemp;

 FD XIL_FD (.D(D),.C(CLK),.Q(Qtemp));

endmodule
module DFFARX1 (D,CLK,RSTB,Q,QN);

 input D;
 input CLK;
 input RSTB;
 output Q;
 output QN;


 wire Qtemp;

 assign QN = ~Qtemp;
 assign Q = Qtemp;

 FDC XIL_FDC (.D(D),.C(CLK),.CLR(~(RSTB)),.Q(Qtemp));

endmodule

module p_I_DFFARX1 (D,CLK,RSTB,Q,QN,E);

 input D;
 input CLK;
 input RSTB;
 input  E;
 output Q;
 output QN;
 wire Dtemp;

 wire Qtemp;

 assign Dtemp = D ^ E;	

 assign QN = ~Qtemp;
 assign Q = Qtemp;

 FDC XIL_FDC (.D(Dtemp),.C(CLK),.CLR(~(RSTB)),.Q(Qtemp));

endmodule
/* ------------------------
	FADD
--------------------------*/
module FADDX1 (A,B,CI,CO,S);
 input A;
 input B;
 input CI;
 output CO;
 output S;

 reg CO,S;

 always @ (A or B or CI)
 begin
 {CO,S} <= A + B + CI;
 end

endmodule


module FADDX2 (A,B,CI,S,CO);

output  S,CO;
input   A,B,CI;

wire nCI, nA, nB, aq1, aq2, aq3, aq4, aq5, aq6, aq7;

not (nCI, CI);
not (nA, A);
not (nB, B);

and (aq1, nCI, nB, A);
and (aq2, nCI, B, nA);
and (aq3, CI, nA, nB);
and (aq4, CI, B, A);
and (aq5, nCI, B, A);
and (aq6, CI, nB, A);
and (aq7, CI, B, nA);

or (S, aq1, aq2, aq3, aq4);

or (CO, aq4, aq5, aq6, aq7);
endmodule



module HADDX1 (A0,B0,SO,C1);

output  SO,C1;
input   A0,B0;

xor  #1  (SO,B0,A0);
and  #1  (C1,B0,A0);

endmodule

module HADDX2 (A0,B0,SO,C1);

output  SO,C1;
input   A0,B0;

xor  #1  (SO,B0,A0);
and  #1  (C1,B0,A0);

endmodule

/* ------------------------
	IBUFF
--------------------------*/
module IBUFFX2 (INP,ZN);
	input INP;
	output ZN;
	wire ot;
assign ZN = ~ot;
assign ot = INP;
endmodule
module IBUFFX4 (INP,ZN);
	input INP;
	output ZN;
	wire ot;
assign ZN = ~ot;
assign ot = INP;
endmodule
module IBUFFX8 (INP,ZN);
	input INP;
	output ZN;
	wire ot;
assign ZN = ~ot;
assign ot = INP;
endmodule
module IBUFFX16 (INP,ZN);
	input INP;
	output ZN;
	wire ot;
assign ZN = ~ot;
assign ot = INP;
endmodule
module IBUFFX32 (INP,ZN);
	input INP;
	output ZN;
	wire ot;
assign ZN = ~ot;
assign ot = INP;
endmodule
/* ------------------------
	INV
--------------------------*/
module INVX0 (INP,ZN);
 input INP;
 output ZN;
 INV XIL_INV (.I(INP),.O(ZN));
endmodule

module INVX1 (INP,ZN);
 input INP;
 output ZN;
 INV XIL_INV (.I(INP),.O(ZN));
endmodule

module INVX2 (INP,ZN);
 input INP;
 output ZN;
 INV XIL_INV (.I(INP),.O(ZN));
endmodule
module INVX32 (INP,ZN);
 input INP;
 output ZN;
 INV XIL_INV (.I(INP),.O(ZN));
endmodule

/* ------------------------
	ISOLAND
--------------------------*/
/* ------------------------
	ISOLOR
--------------------------*/

/* ------------------------
	LAR
--------------------------*/

/* ------------------------
	LASR
--------------------------*/
/* ------------------------
	LAS
--------------------------*/

/* ------------------------
	LATCH
--------------------------*/

/* ------------------------
	LNAND
--------------------------*/
/* ------------------------
	LS
--------------------------*/

/* ------------------------
	MUX
--------------------------*/
module MUX41X1 (IN1,IN2,IN3,IN4,S0,S1,Q);

 input IN1,IN2,IN3,IN4,S0,S1;
 output Q;

 wire t1,t2;

 MUXF7 XIL_MUXF7_0 (.I0(IN1),.I1(IN2),.S(S0),.O(t1));
 MUXF7 XIL_MUXF7_1 (.I0(IN3),.I1(IN4),.S(S0),.O(t2));
 MUXF7 XIL_MUXF7_2 (.I0(t1),.I1(t2),.S(S1),.O(Q));

endmodule
module MUX41X2 (IN1,IN2,IN3,IN4,S0,S1,Q);

 input IN1,IN2,IN3,IN4,S0,S1;
 output Q;

 wire t1,t2;

 MUXF7 XIL_MUXF7_0 (.I0(IN1),.I1(IN2),.S(S0),.O(t1));
 MUXF7 XIL_MUXF7_1 (.I0(IN3),.I1(IN4),.S(S0),.O(t2));
 MUXF7 XIL_MUXF7_2 (.I0(t1),.I1(t2),.S(S1),.O(Q));

endmodule

module MUX21X1 (IN1,IN2,S,Q);

input IN1,IN2,S;
output Q;

MUXF7 XIL_MUXF7 (.I0(IN1),.I1(IN2),.S(S),.O(Q));

endmodule
module MUX21X2 (IN1,IN2,S,Q);

input IN1,IN2,S;
output Q;

MUXF7 XIL_MUXF7 (.I0(IN1),.I1(IN2),.S(S),.O(Q));

endmodule

/* ------------------------
	NAND
--------------------------*/
module NAND3X0 (IN1,IN2,IN3,QN);
 input IN1;
 input IN2,IN3;
 output QN;

 NAND3 XIL_NAND3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(QN));
endmodule

module NAND3X1 (IN1,IN2,IN3,QN);
 input IN1;
 input IN2,IN3;
 output QN;
 NAND3 XIL_NAND3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(QN));
endmodule

module NAND3X2 (IN1,IN2,IN3,QN);
 input IN1;
 input IN2,IN3;
 output QN;
 NAND3 XIL_NAND3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(QN));
endmodule

module NAND3X4 (IN1,IN2,IN3,QN);
 input IN1;
 input IN2,IN3;
 output QN;
 NAND3 XIL_NAND3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(QN));
endmodule

module NAND4X0 (IN1,IN2,IN3,IN4,QN);
 input IN1;
 input IN2,IN3,IN4;
 output QN;
 NAND4 XIL_NAND4 (.I0(IN1),.I1(IN2),.I2(IN3),.I3(IN4),.O(QN));
endmodule

module NAND2X0 (IN1,IN2,QN);
 input IN1;
 input IN2;
 output QN;
 NAND2 XIL_NAND2 (.I0(IN1),.I1(IN2),.O(QN));
endmodule

module NAND2X1 (IN1,IN2,QN);
 input IN1;
 input IN2;
 output QN;
 NAND2 XIL_NAND2 (.I0(IN1),.I1(IN2),.O(QN));
endmodule
module NAND2X2 (IN1,IN2,QN);
 input IN1;
 input IN2;
 output QN;
 NAND2 XIL_NAND2 (.I0(IN1),.I1(IN2),.O(QN));
endmodule

/* ------------------------
	NBUFF
--------------------------*/
module NBUFFX2 (INP,Z);
	input INP;
	output Z;

assign Z = INP;
endmodule
module NBUFFX4 (INP,Z);
	input INP;
	output Z;

assign Z = INP;
endmodule
module NBUFFX8 (INP,Z);
	input INP;
	output Z;

assign Z = INP;
endmodule
module NBUFFX16 (INP,Z);
	input INP;
	output Z;

assign Z = INP;
endmodule
module NBUFFX32 (INP,Z);
	input INP;
	output Z;

assign Z = INP;
endmodule
/* ------------------------
	NOR
--------------------------*/
module NOR2X0 (IN1,IN2,QN);

 input IN1;
 input IN2;
 output QN;

 NOR2 XIL_NOR2 (.I0(IN1),.I1(IN2),.O(QN));

endmodule
module NOR2X1 (IN1,IN2,QN);

 input IN1;
 input IN2;
 output QN;

 NOR2 XIL_NOR2 (.I0(IN1),.I1(IN2),.O(QN));

endmodule
module NOR3X0 (IN1,IN2,IN3,QN);

 input IN1;
 input IN2,IN3;
 output QN;

 NOR3 XIL_NOR3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(QN));

endmodule

module NOR4X0 (IN1,IN2,IN3,IN4,QN);

 input IN1;
 input IN2,IN3,IN4;
 output QN;

 NOR4 XIL_NOR4 (.I0(IN1),.I1(IN2),.I2(IN3),.I3(IN4),.O(QN));

endmodule
module NOR4X1 (IN1,IN2,IN3,IN4,QN);

 input IN1;
 input IN2,IN3,IN4;
 output QN;

 NOR4 XIL_NOR4 (.I0(IN1),.I1(IN2),.I2(IN3),.I3(IN4),.O(QN));

endmodule

/* ------------------------
	OA
--------------------------*/
module OAI21X1 (IN1,IN2,IN3,QN);
 
 input IN1,IN2,IN3;
 output QN;

 wire Otemp;

 OR2 XIL_OR2 (.I0(IN1),.I1(IN2),.O(Otemp));
 NAND2  XIL_NAND2  (.I0(Otemp),.I1(IN3),.O(QN));

endmodule
module OAI21X2 (IN1,IN2,IN3,QN);
 
 input IN1,IN2,IN3;
 output QN;

 wire Otemp;

 OR2 XIL_OR2 (.I0(IN1),.I1(IN2),.O(Otemp));
 NAND2  XIL_NAND2  (.I0(Otemp),.I1(IN3),.O(QN));

endmodule
module OAI22X1 (IN1,IN2,IN3,IN4,QN);
 
 input IN1,IN2,IN3,IN4;
 output QN;

 wire Otemp0,Otemp1;

 OR2 XIL_OR2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 OR2 XIL_OR2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 NAND2  XIL_NAND2  (.I0(Otemp0),.I1(Otemp1),.O(QN));

endmodule
module OAI22X2 (IN1,IN2,IN3,IN4,QN);
 
 input IN1,IN2,IN3,IN4;
 output QN;

 wire Otemp0,Otemp1;

 OR2 XIL_OR2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 OR2 XIL_OR2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 NAND2  XIL_NAND2  (.I0(Otemp0),.I1(Otemp1),.O(QN));

endmodule

module OA21X1 (IN1,IN2,IN3,Q);

 input IN1,IN2,IN3;
 output Q;

 wire Otemp;

 OR2 XIL_OR2 (.I0(IN1),.I1(IN2),.O(Otemp));
 AND2  XIL_AND2  (.I0(Otemp),.I1(IN3),.O(Q));

endmodule

module OA22X1 (IN1,IN2,IN3,IN4,Q);

 input IN1,IN2,IN3,IN4;
 output Q;

 wire Otemp0,Otemp1;

 OR2 XIL_OR2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 OR2 XIL_OR2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 AND2  XIL_AND2  (.I0(Otemp0),.I1(Otemp1),.O(Q));

endmodule

module OA221X1 (IN1,IN2,IN3,IN4,IN5,Q);

 input IN1,IN2,IN3,IN4,IN5;
 output Q;

 wire Otemp0,Otemp1;

 OR2 XIL_OR2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 OR2 XIL_OR2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 AND3  XIL_AND3  (.I0(Otemp0),.I1(Otemp1),.I2(IN5),.O(Q));

endmodule

module OAI221X1 (IN1,IN2,IN3,IN4,IN5,QN);

 input IN1,IN2,IN3,IN4,IN5;
 output QN;

 wire Otemp0,Otemp1;

 OR2 XIL_OR2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 OR2 XIL_OR2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 NAND3  XIL_NAND3  (.I0(Otemp0),.I1(Otemp1),.I2(IN5),.O(QN));

endmodule

module OAI221X2 (IN1,IN2,IN3,IN4,IN5,QN);

 input IN1,IN2,IN3,IN4,IN5;
 output QN;

 wire Otemp0,Otemp1;

 OR2 XIL_OR2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
 OR2 XIL_OR2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
 NAND3  XIL_NAND3  (.I0(Otemp0),.I1(Otemp1),.I2(IN5),.O(QN));

endmodule

module OAI222X1 (IN1,IN2,IN3,IN4,IN5,IN6,QN);
   
   input IN1,IN2,IN3,IN4,IN5,IN6;
   output QN;

   wire   Otemp0,Otemp1,Otemp2;
   
   OR2 XIL_OR2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
   OR2 XIL_OR2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
   OR2 XIL_OR2_2 (.I0(IN5),.I1(IN6),.O(Otemp2));
   
   NAND3  XIL_NAND3  (.I0(Otemp0),.I1(Otemp1),.I2(Otemp2),.O(QN));
   
endmodule
module OA222X1 (IN1,IN2,IN3,IN4,IN5,IN6,Q);
   
   input IN1,IN2,IN3,IN4,IN5,IN6;
   output Q;

   wire   Otemp0,Otemp1,Otemp2;
   
   OR2 XIL_OR2_0 (.I0(IN1),.I1(IN2),.O(Otemp0));
   OR2 XIL_OR2_1 (.I0(IN3),.I1(IN4),.O(Otemp1));
   OR2 XIL_OR2_2 (.I0(IN5),.I1(IN6),.O(Otemp2));
   
   AND3  XIL_AND3  (.I0(Otemp0),.I1(Otemp1),.I2(Otemp2),.O(Q));
   
endmodule
/*------------------------
    OR
------------------------- */
module OR2X1 (IN1,IN2,Q);

 input IN1;
 input IN2;
 output Q;

 OR2 XIL_OR2 (.I0(IN1),.I1(IN2),.O(Q));

endmodule
module OR2X2 (IN1,IN2,Q);

 input IN1;
 input IN2;
 output Q;

 OR2 XIL_OR2 (.I0(IN1),.I1(IN2),.O(Q));

endmodule
module OR2X4 (IN1,IN2,Q);

 input IN1;
 input IN2;
 output Q;

 OR2 XIL_OR2 (.I0(IN1),.I1(IN2),.O(Q));

endmodule
module OR3X1 (IN1,IN2,IN3,Q);

 input IN1;
 input IN2,IN3;
 output Q;

 OR3 XIL_OR3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(Q));

endmodule
module OR3X2 (IN1,IN2,IN3,Q);

 input IN1;
 input IN2,IN3;
 output Q;

 OR3 XIL_OR3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(Q));

endmodule
module OR4X1 (IN1,IN2,IN3,IN4,Q);

 input IN1;
 input IN2,IN3,IN4;
 output Q;

 OR4 XIL_OR4 (.I0(IN1),.I1(IN2),.I2(IN3),.I3(IN4),.O(Q));

endmodule

/* ------------------------
	RDFF
--------------------------*/

/* ------------------------
	RSDFF
--------------------------*/

/* ------------------------
	SDFF
--------------------------*/

/* ------------------------
	TNBUF
-------------------------*/

/* ------------------------
	XNOR
--------------------------*/
module XNOR2X1 (IN1,IN2,Q);

 input IN1;
 input IN2;
 output Q;

 XNOR2 XIL_XNOR2 (.I0(IN1),.I1(IN2),.O(Q));

endmodule
module XNOR2X2 (IN1,IN2,Q);

 input IN1;
 input IN2;
 output Q;

 XNOR2 XIL_XNOR2 (.I0(IN1),.I1(IN2),.O(Q));

endmodule
module XNOR3X1 (IN1,IN2,IN3,Q);

 input IN1;
 input IN2,IN3;
 output Q;

 XNOR3 XIL_XNOR3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(Q));

endmodule
module XNOR3X2 (IN1,IN2,IN3,Q);

 input IN1;
 input IN2,IN3;
 output Q;

 XNOR3 XIL_XNOR3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(Q));

endmodule
/* ------------------------
	XOR
--------------------------*/

module XOR2X1 (IN1,IN2,Q);

 input IN1;
 input IN2;
 output Q;

 XOR2 XIL_XOR2 (.I0(IN1),.I1(IN2),.O(Q));

endmodule
module XOR2X2 (IN1,IN2,Q);

 input IN1;
 input IN2;
 output Q;

 XOR2 XIL_XOR2 (.I0(IN1),.I1(IN2),.O(Q));

endmodule

module XOR3X1 (IN1,IN2,IN3,Q);

 input IN1;
 input IN2,IN3;
 output Q;

 XOR3 XIL_XOR3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(Q));

endmodule
module XOR3X2 (IN1,IN2,IN3,Q);

 input IN1;
 input IN2,IN3;
 output Q;

 XOR3 XIL_XOR3 (.I0(IN1),.I1(IN2),.I2(IN3),.O(Q));

endmodule

 
 /*

ANTENNA
CLOAD1
DCAP
DHFILLHLH2
DHFILLHLHLS11
DHFILLLHL2
SHFILL1
SHFILL2
SHFILL3
SHFILL128
SHFILL64
TIEH
TIEL
BUSKP
PGX1
PGX2
PGX4
NMT1
NMT2
NMT3
PMT1
PMT2
PMT3
BSLEX1
BSLEX2
BSLEX4
HEADX16
HEADX2
HEADX32
HEADX4
HEADX8
HEAD2X16
HEAD2X2
HEAD2X32
HEAD2X4
HEAD2X8
RDFFARX1
RDFFARX2
RDFFNARX1
RDFFNARX2
RSDFFARX1
RSDFFARX2
RSDFFNARX1
RSDFFNARX2

*/
