`timescale 1 ns/10 ps

module processing_unit_tb();
	// Signal Declaration
	localparam N = 8;
	reg  [N-1:0]	  dataa_tb, datab_tb;
	reg  [3-1:0]     selop_tb;
	wire [N-1:0]     result_tb;
	wire             cout_tb;


	//Instantiate DUT
	processing_unit #(.N(8)) DUT (  .dataa(dataa_tb), .datab(datab_tb), .selop(selop_tb),
										.result (result_tb), .cout(cout_tb));

	//Test signa Generator
	initial
	begin
		// test vector 0
		dataa_tb    =  8'b00000000;
		datab_tb    =  8'b00000000;
		selop_tb  =  3'b000;
		# 200;
		// test vector 1
		dataa_tb    =  8'b00000010;
		datab_tb    =  8'b00000001;
		selop_tb  =  3'b001;
		# 200;
		// test vector 2
		dataa_tb    =  8'b00000010;
		datab_tb    =  8'b00000001;
		selop_tb  =  3'b010;
		# 200;
		// test vector 3
		dataa_tb    =  8'b00000010;
		datab_tb    =  8'b00000001;
		selop_tb  =  3'b011;
		# 200;
		// test vector 4
		dataa_tb    =  8'b00000010;
		datab_tb    =  8'b00000001;
		selop_tb  =  3'b100;
		# 200;
		// test vector 5
		dataa_tb    =  8'b00000010;
		datab_tb    =  8'b00000001;
		selop_tb  =  3'b101;
		# 200;
		// test vector 6
		dataa_tb    =  8'b00000010;
		datab_tb    =  8'b00000001;
		selop_tb  =  3'b110;
		# 200;
		// test vector 7
		dataa_tb    =  8'b00000010;
		datab_tb    =  8'b00000001;
		selop_tb  =  3'b111;
		# 200;
		// test vector 8
		dataa_tb    =  8'b00000010;
		datab_tb    =  8'b00000001;
		selop_tb  =  3'b000;
		# 200;
		// stop simulation
		$stop;
	end
endmodule