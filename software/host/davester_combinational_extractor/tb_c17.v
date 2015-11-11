`timescale 1ps / 1ps

module main;
   
   
   reg clk = 0;
   always #300 clk = !clk;

   reg [4:0] in  = "11111";
   reg [1:0] out;
   reg [1:0] out_golden;
   
   
   integer   seed = 1234;
   integer   rvec_file;
   integer   ret;
   integer  soe0 = 0;
   integer  soe1 = 0;
   
   
   initial begin
      $sdf_annotate("mydesign.sdf",DUT,,,"MAXIMUM");
      $dumpfile("test.vcd");
      $dumpvars(0,main);
      
      
      assert($urandom(seed)); 
`ifdef GENTEST
      rvec_file = $fopen("../c17.rvec", "w");
`else
      rvec_file = $fopen("../c17.rvec", "r");
`endif 
      if (rvec_file == 0) begin
	 $display("data_file handle was NULL");
	 $finish;
      end
      
      
   end
   
   integer num_cycles = 0;
   integer max_cycles = 100000;
   
   always @ (posedge clk) begin
      std::randomize(in);
      if (num_cycles == max_cycles) begin
	 $display("SoE: %d,%d\n",soe0,soe1);
	 $fclose(rvec_file);
	 $finish;
      end
      num_cycles = num_cycles + 1;
   end
   
   c17 DUT (clk,in[0],in[1],in[2],in[3],in[4],out[0],out[1]);


   always @ (posedge clk) begin
`ifdef GENTEST
      // write output to generate golden result
      $fwrite(rvec_file, "%b,%b\n", out[0],out[1]); 
`else
      $fscanf(rvec_file, "%b,%b\n", out_golden[0],out_golden[1]);
      if (out[0] != out_golden[0]) begin
	 //$display("ERROR At time %t: out[0]=%b",$time,out[0]);
	 soe0 = soe0 + 1;
	 
      end
      if (out[1] != out_golden[1]) begin
	 soe1 = soe1 + 1;
      end
`endif    
   end // always @ (posedge clk)

   always @(posedge clk) begin      
      //$display("At time %t: out[0]=%b,%b - out[1]=%b,%b",$time,out[0],out_golden[0],out[1],out_golden[1]);
   end
   
   
   
   
endmodule
