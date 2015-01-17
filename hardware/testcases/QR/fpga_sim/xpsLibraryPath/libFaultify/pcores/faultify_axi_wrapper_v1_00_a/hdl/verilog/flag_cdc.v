/*
module flag_cdc(
		clkA, FlagIn_clkA, 
		clkB, FlagOut_clkB,rst_n);
   
   // clkA domain signals
   input clkA, FlagIn_clkA;
   input rst_n;
   
// clkB domain signals
   input clkB;
   output FlagOut_clkB;
   
   reg 	  FlagToggle_clkA;
   reg [2:0] SyncA_clkB;
   
   // this changes level when a flag is seen
   always @(posedge clkA)
     begin : cdc_clk_a
	if (rst_n == 1'b0) begin
	   FlagToggle_clkA <= 1'b0;
	end
	
	else if(FlagIn_clkA == 1'b1) begin
	   FlagToggle_clkA <= ~FlagToggle_clkA;
	end
	
     end
   
   // which can then be sync-ed to clkB
   always @(posedge clkB) SyncA_clkB <= {SyncA_clkB[1:0], FlagToggle_clkA};
   
   // and recreate the flag from the level change
   assign FlagOut_clkB = (SyncA_clkB[2] ^ SyncA_clkB[1]);
endmodule
*/


module flag_cdc(
		input  clkA,
		input  FlagIn_clkA, 
		input  clkB,
		output FlagOut_clkB,
		input  rst_n
		);
   
   // this changes level when the FlagIn_clkA is seen in clkA
   reg 		       FlagToggle_clkA = 1'b0;
   
   always @(posedge clkA or negedge rst_n)
     if (rst_n == 1'b0) begin
	FlagToggle_clkA <= 1'b0;
     end else begin
	FlagToggle_clkA <= FlagToggle_clkA ^ FlagIn_clkA;
     end
   
   
   // which can then be sync-ed to clkB
   reg [2:0] SyncA_clkB = 3'b0;
   always @(posedge clkB or negedge rst_n)
     if (rst_n == 1'b0) begin
	SyncA_clkB <= 3'b0;
     end else begin
	SyncA_clkB <= {SyncA_clkB[1:0], FlagToggle_clkA};
     end
   // and recreate the flag in clkB
   assign FlagOut_clkB = (SyncA_clkB[2] ^ SyncA_clkB[1]);
endmodule