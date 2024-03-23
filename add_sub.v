module add_sub
	#(parameter N = 8)
	(	input     wire [N-1:0] a,
		input     wire [N-1:0] b,
		input     wire         addn_sub,
		output    wire [N-1:0] s,
		output    wire         cout);
	
	
	wire [N-1:0] bxor;
	wire [N-1:0] add_nsub_vector;
	
	assign add_nsub_vector = {N{addn_sub}};
	assign bxor = b ^ add_nsub_vector;
	
	nbit_adder #(.N(N)) adder_inst (
			.a(a), .b(bxor), .cin(addn_sub),
			.s(s), .cout (cout));
endmodule