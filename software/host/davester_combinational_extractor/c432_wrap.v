module c432_wrap(in,out,clk);

   input [0:35] in;
   output [0:6] out;
   input 	clk;


   DFFX1 in0 (.CLK(clk), .D(in[0]), .Q(N1));
   DFFX1 in1 (.CLK(clk), .D(in[1]), .Q(N4));
   DFFX1 in2 (.CLK(clk), .D(in[2]), .Q(N8));
   DFFX1 in3 (.CLK(clk), .D(in[3]), .Q(N11));
   DFFX1 in4 (.CLK(clk), .D(in[4]), .Q(N14));
   DFFX1 in5 (.CLK(clk), .D(in[5]), .Q(N17));
   DFFX1 in6 (.CLK(clk), .D(in[6]), .Q(N21));
   DFFX1 in7 (.CLK(clk), .D(in[7]), .Q(N24));
   DFFX1 in8 (.CLK(clk), .D(in[8]), .Q(N27));
   DFFX1 in9 (.CLK(clk), .D(in[9]), .Q(N30));
   DFFX1 in10 (.CLK(clk), .D(in[10]), .Q(N34));
   DFFX1 in11 (.CLK(clk), .D(in[11]), .Q(N37));
   DFFX1 in12 (.CLK(clk), .D(in[12]), .Q(N40));
   DFFX1 in13 (.CLK(clk), .D(in[13]), .Q(N43));
   DFFX1 in14 (.CLK(clk), .D(in[14]), .Q(N47));
   DFFX1 in15 (.CLK(clk), .D(in[15]), .Q(N50));
   DFFX1 in16 (.CLK(clk), .D(in[16]), .Q(N53));
   DFFX1 in17 (.CLK(clk), .D(in[17]), .Q(N56));
   DFFX1 in18 (.CLK(clk), .D(in[18]), .Q(N60));
   DFFX1 in19 (.CLK(clk), .D(in[19]), .Q(N63));
   DFFX1 in20 (.CLK(clk), .D(in[20]), .Q(N66));
   DFFX1 in21 (.CLK(clk), .D(in[21]), .Q(N69));
   DFFX1 in22 (.CLK(clk), .D(in[22]), .Q(N73));
   DFFX1 in23 (.CLK(clk), .D(in[23]), .Q(N76));
   DFFX1 in24 (.CLK(clk), .D(in[24]), .Q(N79));
   DFFX1 in25 (.CLK(clk), .D(in[25]), .Q(N82));
   DFFX1 in26 (.CLK(clk), .D(in[26]), .Q(N86));
   DFFX1 in27 (.CLK(clk), .D(in[27]), .Q(N89));
   DFFX1 in28 (.CLK(clk), .D(in[28]), .Q(N92));
   DFFX1 in29 (.CLK(clk), .D(in[29]), .Q(N95));
   DFFX1 in30 (.CLK(clk), .D(in[30]), .Q(N99));
   DFFX1 in31 (.CLK(clk), .D(in[31]), .Q(N102));
   DFFX1 in32 (.CLK(clk), .D(in[32]), .Q(N105));
   DFFX1 in33 (.CLK(clk), .D(in[33]), .Q(N108));
   DFFX1 in34 (.CLK(clk), .D(in[34]), .Q(N112));
   DFFX1 in35 (.CLK(clk), .D(in[35]), .Q(N115));

   c432 DUT ( N1, N4, N8, N11, N14, N17, N21, N24, N27, N30, N34, N37, N40, 
              N43, N47, N50, N53, N56, N60, N63, N66, N69, N73, N76, N79, N82, N86, 
              N89, N92, N95, N99, N102, N105, N108, N112, N115, 

	      N223, N329, N370, N421, N430, N431, N432 
	      );


   
   DFFX1 out0 (.CLK(clk), .Q(out[0]), .D(N223));
   DFFX1 out1 (.CLK(clk), .Q(out[1]), .D(N329));
   DFFX1 out2 (.CLK(clk), .Q(out[2]), .D(N370));
   DFFX1 out3 (.CLK(clk), .Q(out[3]), .D(N421));
   DFFX1 out4 (.CLK(clk), .Q(out[4]), .D(N430));
   DFFX1 out5 (.CLK(clk), .Q(out[5]), .D(N431));
   DFFX1 out6 (.CLK(clk), .Q(out[6]), .D(N432));



endmodule
   


