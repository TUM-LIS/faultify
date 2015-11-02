`timescale 1ps / 1ps

module main;
   
   
   reg clk = 0;
   always #300 clk = !clk;

   reg A,B,C;

   integer ret;
   integer tvec_file;
   
   integer   Aval,Bval,Cval,Gval;
   
   
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
      
      ret = $fscanf(tvec_file, "%d,%d,%d,%d\n", Aval,Bval,Cval,Gval); 
      if (!$feof(tvec_file)) begin
	 A = Aval;
	 B = Bval;
	 C = Cval;
	 end
      else 
	begin
	   $finish;   
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

   always @(posedge clk) begin
      
      $display("At time %t: A=%b,B=%b,C=%b,G=%b",$time,A,B,C,G);
   end
endmodule
