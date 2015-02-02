/////////////////////////////////////////////////////////////////////////
//
// pLIB
// D-FLIP-FLOPS
/////////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////////
// p_I_FD	 FD error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FD (Q,D,C,E);
parameter INIT=1'b0;

output Q;
input  D;
input  C;
input  E;
wire   Dtemp;

// Xilinx FD instance
defparam FD_z.INIT=INIT;
FD FD_z (.Q(Q),.D(Dtemp),.C(C));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FD	 FD error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FD (Q,D,C,E);

parameter INIT = 1'b0; 
output Q;
input  D;
input  C;
input  E;
wire   Qtemp;

// Xilinx FD instance
FD #(.INIT(INIT)) FD_z (.Q(Qtemp),.D(D),.C(C));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FD_1	 FD_1 error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FD_1 (Q,D,C,E);

output Q;
input  D;
input  C;
input  E;
wire   Dtemp;

// Xilinx FD instance
FD_1 FD_z (.Q(Q),.D(Dtemp),.C(C));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FD_1	 FD_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FD_1 (Q,D,C,E);

output Q;
input  D;
input  C;
input  E;
wire   Qtemp;

// Xilinx FD instance
FD_1 FD_z (.Q(Qtemp),.D(D),.C(C));

// Error injection
and (Q,Qtemp,E);

endmodule

/////////////////////////////////////////////////////////////////////////
// p_I_FDC	 FDC error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDC (Q,D,C,CLR,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
wire   Dtemp;

// Xilinx FD instance
FDC FD_z (.Q(Q),.D(Dtemp),.C(C),.CLR(CLR));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDC	 FDC error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDC (Q,D,C,CLR,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
wire   Qtemp;

// Xilinx FD instance
FDC FD_z (.Q(Qtemp),.D(D),.C(C),.CLR(CLR));

// Error injection
and (Q,Qtemp,E);

endmodule

/////////////////////////////////////////////////////////////////////////
// p_I_FDC_1	 FDC_1 error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDC_1 (Q,D,C,CLR,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
wire   Dtemp;

// Xilinx FD instance
FDC_1 FD_z (.Q(Q),.D(Dtemp),.C(C),.CLR(CLR));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDC_1	 FDC_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDC_1 (Q,D,C,CLR,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
wire   Qtemp;

// Xilinx FD instance
FDC_1 FD_z (.Q(Qtemp),.D(D),.C(C),.CLR(CLR));

// Error injection
and (Q,Qtemp,E);

endmodule

/////////////////////////////////////////////////////////////////////////
// p_I_FDCE	 FDCE error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDCE (Q,D,C,CLR,CE,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDCE FD_z (.Q(Q),.D(Dtemp),.C(C),.CLR(CLR),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDCE	 FDCE error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDCE (Q,D,C,CLR,CE,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDCE FD_z (.Q(Qtemp),.D(D),.C(C),.CLR(CLR),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule

/////////////////////////////////////////////////////////////////////////
// p_I_FDCE_1	 FDCE error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDCE_1 (Q,D,C,CLR,CE,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDCE_1 FD_z (.Q(Q),.D(Dtemp),.C(C),.CLR(CLR),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDCE_1	 FDCE_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDCE_1 (Q,D,C,CLR,CE,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDCE_1 FD_z (.Q(Qtemp),.D(D),.C(C),.CLR(CLR),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDCP	 FDCP error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDCP (Q,D,C,CLR,PRE,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
input PRE;
wire   Dtemp;

// Xilinx FD instance
FDCP FD_z (.Q(Q),.D(Dtemp),.C(C),.CLR(CLR),.PRE(PRE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDCP	 FDCP error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDCP (Q,D,C,CLR,PRE,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
input PRE;
wire   Qtemp;

// Xilinx FD instance
FDCP FD_z (.Q(Qtemp),.D(D),.C(C),.CLR(CLR),.PRE(PRE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDCP_1	 FDCP_1 error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDCP_1 (Q,D,C,CLR,PRE,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
input PRE;
wire   Dtemp;

// Xilinx FD instance
FDCP_1 FD_z (.Q(Q),.D(Dtemp),.C(C),.CLR(CLR),.PRE(PRE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDCP_1	 FDCP_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDCP_1 (Q,D,C,CLR,PRE,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
input PRE;
wire   Qtemp;

// Xilinx FD instance
FDCP_1 FD_z (.Q(Qtemp),.D(D),.C(C),.CLR(CLR),.PRE(PRE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDCPE	 FDCPE error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDCPE (Q,D,C,CLR,PRE,CE,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
input PRE;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDCPE FD_z (.Q(Q),.D(Dtemp),.C(C),.CLR(CLR),.PRE(PRE),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDCPE	 FDCPE error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDCPE (Q,D,C,CLR,PRE,CE,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
input PRE;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDCPE FD_z (.Q(Qtemp),.D(D),.C(C),.CLR(CLR),.PRE(PRE),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule

/////////////////////////////////////////////////////////////////////////
// p_I_FDCPE_1	 FDCPE_1 error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDCPE_1 (Q,D,C,CLR,PRE,CE,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
input PRE;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDCPE_1 FD_z (.Q(Q),.D(Dtemp),.C(C),.CLR(CLR),.PRE(PRE),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDCPE_1	 FDCPE_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDCPE_1 (Q,D,C,CLR,PRE,CE,E);

output Q;
input  D;
input  C;
input  E;
input CLR;
input PRE;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDCPE_1 FD_z (.Q(Qtemp),.D(D),.C(C),.CLR(CLR),.PRE(PRE),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDE	 FDE error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDE (Q,D,C,CE,E);

output Q;
input  D;
input  C;
input  E;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDE FD_z (.Q(Q),.D(Dtemp),.C(C),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDE	 FDE error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDE (Q,D,C,CE,E);

output Q;
input  D;
input  C;
input  E;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDE FD_z (.Q(Qtemp),.D(D),.C(C),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDE_1	 FDE_1 error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDE_1 (Q,D,C,CE,E);

output Q;
input  D;
input  C;
input  E;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDE_1 FD_z (.Q(Q),.D(Dtemp),.C(C),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDE_1	 FDE_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDE_1 (Q,D,C,CE,E);

output Q;
input  D;
input  C;
input  E;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDE_1 FD_z (.Q(Qtemp),.D(D),.C(C),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDP	 FDP error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDP (Q,D,C,PRE,E);

output Q;
input  D;
input  C;
input  E;
input PRE;
wire   Dtemp;

// Xilinx FD instance
FDP FD_z (.Q(Q),.D(Dtemp),.C(C),.PRE(PRE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDP	 FDP error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDP (Q,D,C,PRE,E);

output Q;
input  D;
input  C;
input  E;
input PRE;
wire   Qtemp;

// Xilinx FD instance
FDP FD_z (.Q(Qtemp),.D(D),.C(C),.PRE(PRE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDP_1	 FDP_1 error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDP_1 (Q,D,C,PRE,E);

output Q;
input  D;
input  C;
input  E;
input PRE;
wire   Dtemp;

// Xilinx FD instance
FDP_1 FD_z (.Q(Q),.D(Dtemp),.C(C),.PRE(PRE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDP_1	 FDP_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDP_1 (Q,D,C,PRE,E);

output Q;
input  D;
input  C;
input  E;
input PRE;
wire   Qtemp;

// Xilinx FD instance
FDP_1 FD_z (.Q(Qtemp),.D(D),.C(C),.PRE(PRE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDPE	 FDPE error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDPE (Q,D,C,PRE,CE,E);

output Q;
input  D;
input  C;
input  E;
input PRE;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDPE FD_z (.Q(Q),.D(Dtemp),.C(C),.PRE(PRE),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDPE	 FDPE error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDPE (Q,D,C,PRE,CE,E);

output Q;
input  D;
input  C;
input  E;
input PRE;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDPE FD_z (.Q(Qtemp),.D(D),.C(C),.PRE(PRE),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDPE_1	 FDPE_1 error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDPE_1 (Q,D,C,PRE,CE,E);

output Q;
input  D;
input  C;
input  E;
input PRE;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDPE_1 FD_z (.Q(Q),.D(Dtemp),.C(C),.PRE(PRE),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDPE_1	 FDPE_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDPE_1 (Q,D,C,PRE,CE,E);

output Q;
input  D;
input  C;
input  E;
input PRE;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDPE_1 FD_z (.Q(Qtemp),.D(D),.C(C),.PRE(PRE),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDR	 FDR error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDR (Q,D,C,R,E);

output Q;
input  D;
input  C;
input  E;
input R;
wire   Dtemp;

// Xilinx FD instance
FDR FD_z (.Q(Q),.D(Dtemp),.C(C),.R(R));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDR	 FDR error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDR (Q,D,C,R,E);
parameter INIT=1'b0;
output Q;
input  D;
input  C;
input  E;
input R;
wire   Qtemp;
defparam FD_z.INIT=INIT;
// Xilinx FD instance
FDR FD_z (.Q(Qtemp),.D(D),.C(C),.R(R));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDR_1	 FDR_1 error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDR_1 (Q,D,C,R,E);

output Q;
input  D;
input  C;
input  E;
input R;
wire   Dtemp;

// Xilinx FD instance
FDR_1 FD_z (.Q(Q),.D(Dtemp),.C(C),.R(R));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDR_1	 FDR_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDR_1 (Q,D,C,R,E);

output Q;
input  D;
input  C;
input  E;
input R;
wire   Qtemp;

// Xilinx FD instance
FDR_1 FD_z (.Q(Qtemp),.D(D),.C(C),.R(R));

// Error injection
and (Q,Qtemp,E);

endmodule

/////////////////////////////////////////////////////////////////////////
// p_I_FDRE	 FDRE error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDRE (Q,D,C,R,CE,E);

output Q;
input  D;
input  C;
input  E;
input R;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDRE FD_z (.Q(Q),.D(Dtemp),.C(C),.R(R),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDRE	 FDRE error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDRE (Q,D,C,R,CE,E);
parameter INIT=1'b0;
output Q;
input  D;
input  C;
input  E;
input R;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDRE #(.INIT(INIT)) FD_z (.Q(Qtemp),.D(D),.C(C),.R(R),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDRE_1	 FDRE_1 error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDRE_1 (Q,D,C,R,CE,E);

output Q;
input  D;
input  C;
input  E;
input R;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDRE_1 FD_z (.Q(Q),.D(Dtemp),.C(C),.R(R),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDRE_1	 FDRE_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDRE_1 (Q,D,C,R,CE,E);

output Q;
input  D;
input  C;
input  E;
input R;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDRE_1 FD_z (.Q(Qtemp),.D(D),.C(C),.R(R),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDRS	 FDRS error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDRS (Q,D,C,R,S,E);

output Q;
input  D;
input  C;
input  E;
input R;
input S;
wire   Dtemp;

// Xilinx FD instance
FDRS FD_z (.Q(Q),.D(Dtemp),.C(C),.R(R),.S(S));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDRS	 FDRS error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDRS (Q,D,C,R,S,E);

output Q;
input  D;
input  C;
input  E;
input R;
input S;
wire   Qtemp;

// Xilinx FD instance
FDRS FD_z (.Q(Qtemp),.D(D),.C(C),.R(R),.S(S));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDRS_1	 FDRS_1 error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDRS_1 (Q,D,C,R,S,E);

output Q;
input  D;
input  C;
input  E;
input R;
input S;
wire   Dtemp;

// Xilinx FD instance
FDRS_1 FD_z (.Q(Q),.D(Dtemp),.C(C),.R(R),.S(S));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDRS_1	 FDRS_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDRS_1 (Q,D,C,R,S,E);

output Q;
input  D;
input  C;
input  E;
input R;
input S;
wire   Qtemp;

// Xilinx FD instance
FDRS_1 FD_z (.Q(Qtemp),.D(D),.C(C),.R(R),.S(S));

// Error injection
and (Q,Qtemp,E);

endmodule




/////////////////////////////////////////////////////////////////////////
// p_I_FDRSE	 FDRS error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDRSE (Q,D,C,R,S,CE,E);

output Q;
input  D;
input  C;
input  E;
input R;
input S;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDRSE FD_z (.Q(Q),.D(Dtemp),.C(C),.R(R),.S(S),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDRSE	 FDRSE error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDRSE (Q,D,C,R,S,CE,E);

output Q;
input  D;
input  C;
input  E;
input R;
input S;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDRSE FD_z (.Q(Qtemp),.D(D),.C(C),.R(R),.S(S),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDRSE_1	 FDRSE_1 error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDRSE_1 (Q,D,C,R,S,CE,E);

output Q;
input  D;
input  C;
input  E;
input R;
input S;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDRSE_1 FD_z (.Q(Q),.D(Dtemp),.C(C),.R(R),.S(S),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDRSE_1	 FDRSE_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDRSE_1 (Q,D,C,R,S,CE,E);

output Q;
input  D;
input  C;
input  E;
input R;
input S;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDRSE_1 FD_z (.Q(Qtemp),.D(D),.C(C),.R(R),.S(S),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDS	 FDS error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDS (Q,D,C,S,E);

output Q;
input  D;
input  C;
input  E;
input S;
wire   Dtemp;

// Xilinx FD instance
FDS FD_z (.Q(Q),.D(Dtemp),.C(C),.S(S));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDS	 FDS error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDS (Q,D,C,S,E);

output Q;
input  D;
input  C;
input  E;
input S;
wire   Qtemp;

// Xilinx FD instance
FDS FD_z (.Q(Qtemp),.D(D),.C(C),.S(S));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDS_1	 FDS_1 error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDS_1 (Q,D,C,S,E);

output Q;
input  D;
input  C;
input  E;
input S;
wire   Dtemp;

// Xilinx FD instance
FDS_1 FD_z (.Q(Q),.D(Dtemp),.C(C),.S(S));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDS_1	 FDS_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDS_1 (Q,D,C,S,E);

output Q;
input  D;
input  C;
input  E;
input S;
wire   Qtemp;

// Xilinx FD instance
FDS_1 FD_z (.Q(Qtemp),.D(D),.C(C),.S(S));

// Error injection
and (Q,Qtemp,E);

endmodule



/////////////////////////////////////////////////////////////////////////
// p_I_FDSE	 FDSE error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDSE (Q,D,C,S,CE,E);

output Q;
input  D;
input  C;
input  E;
input S;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDSE FD_z (.Q(Q),.D(Dtemp),.C(C),.S(S),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDSE	 FDSE error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDSE (Q,D,C,S,CE,E);

output Q;
input  D;
input  C;
input  E;
input S;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDSE FD_z (.Q(Qtemp),.D(D),.C(C),.S(S),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule


/////////////////////////////////////////////////////////////////////////
// p_I_FDSE_1	 FDSE_1 error at input
/////////////////////////////////////////////////////////////////////////
module p_I_FDSE_1 (Q,D,C,S,CE,E);

output Q;
input  D;
input  C;
input  E;
input S;
input CE;
wire   Dtemp;

// Xilinx FD instance
FDSE_1 FD_z (.Q(Q),.D(Dtemp),.C(C),.S(S),.CE(CE));

// Error injection
and (Dtemp,D,E);

endmodule
/////////////////////////////////////////////////////////////////////////
// p_O_FDSE_1	 FDSE_1 error at output
/////////////////////////////////////////////////////////////////////////
module p_O_FDSE_1 (Q,D,C,S,CE,E);

output Q;
input  D;
input  C;
input  E;
input S;
input CE;
wire   Qtemp;

// Xilinx FD instance
FDSE_1 FD_z (.Q(Qtemp),.D(D),.C(C),.S(S),.CE(CE));

// Error injection
and (Q,Qtemp,E);

endmodule
