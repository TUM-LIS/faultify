`timescale 1ps / 1ps

module main;
   
   
   reg clk = 0;
   always #1000 clk = !clk;

   reg [35:0] in  = "1111111111111111111111111111111111";
   reg [6:0] out;
   reg [6:0] out_golden;
   
   
   integer   seed = 1234;
   integer   rvec_file;
   integer   ret;
   integer   soe0 = 0;
   integer   soe1 = 0;
   integer   soe2 = 0;
   integer   soe3 = 0;
   integer   soe4 = 0;
   integer   soe5 = 0;
   integer   soe6 = 0;
   
   
   
   initial begin
      $sdf_annotate("mydesign.sdf",DUT,,,"MAXIMUM");
      $dumpfile("test.vcd");
      $dumpvars(0,main);
      
      
      assert($urandom(seed)); 
`ifdef GENTEST
      rvec_file = $fopen("../c432.rvec", "w");
`else
      rvec_file = $fopen("../c432.rvec", "r");
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
	 $display("SoE: %d,%d,%d,%d,%d,%d,%d\n",soe0,soe1,soe2,soe3,soe4,soe5,soe6);
	 $fclose(rvec_file);
	 $finish;
      end
      num_cycles = num_cycles + 1;
   end
   
   c432_wrap DUT ({in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7],in[8],in[9],
	    in[10],in[11],in[12],in[13],in[14],in[15],in[16],in[17],in[18],in[19],
	    in[20],in[21],in[22],in[23],in[24],in[25],in[26],in[27],in[28],in[29],
	    in[30],in[31],in[32],in[33],in[34],in[35]},
		  
	    {out[0],out[1],out[2],out[3],out[4],out[5],out[6]},
		  clk);


   always @ (posedge clk) begin
`ifdef GENTEST
      // write output to generate golden result
      $fwrite(rvec_file, "%b,%b,%b,%b,%b,%b,%b\n", out[0],out[1],out[2],out[3],out[4],out[5],out[6]); 
`else
      $fscanf(rvec_file, "%b,%b,%b,%b,%b,%b,%b\n", out_golden[0],out_golden[1],out_golden[2],out_golden[3],out_golden[4],out_golden[5],out_golden[6]);
      
      if (out[0] != out_golden[0]) begin
	 //$display("ERROR At time %t: out[0]=%b",$time,out[0]);
	 soe0 = soe0 + 1;	 
      end
      if (out[1] != out_golden[1]) begin
	 soe1 = soe1 + 1;
      end
      if (out[2] != out_golden[2]) begin
	 soe2 = soe2 + 1;	 
      end
      if (out[3] != out_golden[3]) begin
	 soe3 = soe3 + 1;
      end
      if (out[4] != out_golden[4]) begin
	 soe4 = soe4 + 1;	 
      end
      if (out[5] != out_golden[5]) begin
	 soe5 = soe5 + 1;
      end
      if (out[6] != out_golden[6]) begin
	 soe6 = soe6 + 1;
      end
`endif    
   end // always @ (posedge clk)
   
   always @(posedge clk) begin      
      //$display("At time %t: out[0]=%b,%b - out[1]=%b,%b",$time,out[0],out_golden[0],out[1],out_golden[1]);
   end
   
   
   
   
endmodule
