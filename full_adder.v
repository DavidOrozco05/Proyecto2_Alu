module full_adder(
	input wire a,
	input wire b,
	input wire cin,
	output wire cout,
	output wire s
);

	assign s=a^b^cin;
	assign cout=(a&cin)|(b&cin)|(a&b);
endmodule