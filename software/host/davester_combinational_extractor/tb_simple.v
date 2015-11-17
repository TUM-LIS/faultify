`timescale 1ps / 1ps

module main;
   
   
   reg clk = 0;
   always #200 clk = !clk;

   reg [2:0] in  = "111";
   reg [1:0] out;
   reg  out_golden;
   reg 	     out_del;
   
   
   integer   seed = 1234;
   integer   rvec_file;
   integer   ret;
   integer  soe0 = 0;
  
   
   initial begin
      $sdf_annotate("mydesign.sdf",DUT,,,"MAXIMUM");
      $dumpfile("test.vcd");
      $dumpvars(0,main);
      
      
      assert($urandom(seed)); 
`ifdef GENTEST
      rvec_file = $fopen("../simple.rvec", "w");
`else
      rvec_file = $fopen("../simple.rvec", "r");
`endif 
      if (rvec_file == 0) begin
	 $display("data_file handle was NULL");
	 $finish;
      end

      
      
   end
   
   integer num_cycles = 0;
   integer max_cycles = 10000;
   
   always @ (posedge clk) begin
      std::randomize(in);
      if (num_cycles == max_cycles) begin
	 $display("SoE: %d\n",soe0);
	 $fclose(rvec_file);
	 $finish;
      end
      num_cycles = num_cycles + 1;

      
   end
   
   simple DUT (clk,in[0],in[1],in[2],out[0],out[1]);


   always @(posedge clk) begin
      // delay signal
      #440 out_del = out[1]; 
   end
   

   
   always @ (posedge clk) begin
      //#440 
`ifdef GENTEST
      // write output to generate golden result   
      $fwrite(rvec_file, "%b\n", out[1]); 
`else
      $fscanf(rvec_file, "%b\n", out_golden);
      //if (out_del != out_golden) begin
      if (out[1] != out_golden) begin
	 //$display("ERROR At time %t: out[0]=%b",$time,out[0]);
	 soe0 = soe0 + 1;
      end 

`endif    
   end // always @ (posedge clk)

   always @(posedge clk) begin      
      //$display("At time %t: out[0]=%b,%b - out[1]=%b,%b",$time,out[0],out_golden[0],out[1],out_golden[1]);
   end
   
   
   
   
endmodule
