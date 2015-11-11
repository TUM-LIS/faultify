`timescale 1ps / 1ps

module main;
   
   
   reg clk = 0;
   always #300 clk = !clk;

   reg A,B,C;

   integer ret;
   integer tvec_file;
   
   reg   Aval,Bval,Cval,Gval;
   integer   delay=0;
   reg [3:0]	     gg="0000";
   
   
   initial begin
      $sdf_annotate("mydesign.sdf",DUT,,,"MAXIMUM");
      $dumpfile("test.vcd");
      $dumpvars(0,main);
      
      tvec_file = $fopen("../test_circuit.tvec", "r");
      if (tvec_file == 0) begin
	 $display("data_file handle was NULL");
	 $finish;
      end
   end   
   
   always @(posedge clk) begin
      gg = {gg[2:0], gg[3]};
      
      ret = $fscanf(tvec_file, "%b,%b,%b,%b\n", Aval,Bval,Cval,Gval); 
      if (!$feof(tvec_file)) begin
	 A = Aval;
	 B = Bval;
	 C = Cval;
	 gg[0] = Gval;
	 
	 end
      else 
	begin
	   if (delay==4) begin
	      $display("SoE: %d",sum_of_errors);
	      $finish;
	   end
	   else begin
	      gg[0] = Gval;
	      delay = delay + 1;
	   end
	end
 end
   
   
   wire G;
   
   test_circuit DUT (.clk(clk),
		     .A(A),
		     .B(B),
		     .C(C),
		     .G(G));
   
   //initial
   //  $monitor("At time %t: A=%b,B=%b,C=%b,G=%b",$time,A,B,C,G);

   integer sum_of_errors=0;
   
   always @(posedge clk) begin
      if (G != gg[3]) begin
	 if (delay != 4) begin
	    //$display("ERROR At time %t: A=%b,B=%b,C=%b,G=%b,gg=%b",$time,A,B,C,G,gg);
	    sum_of_errors = sum_of_errors + 1;
	 end
      end
   end
   

   
   always @(posedge clk) begin      
      //$display("At time %t: A=%b,B=%b,C=%b,G=%b,gg=%b,Gval=%b",$time,A,B,C,G,gg,Gval);
   end
endmodule
