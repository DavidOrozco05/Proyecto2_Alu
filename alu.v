//`include "processing_unit.v"
//`include "Shift_Unit.v"
//`include "Flag_Register.v"


module alu #(parameter MAX_WIDTH = 8)(
	input wire clk,
	input wire rst,
	input wire [MAX_WIDTH-1:0] busA,
	input wire [MAX_WIDTH-1:0] busB,
	input wire [2:0] selop,
	input wire [1:0] shamt,
	input wire enaf,
	output wire [MAX_WIDTH-1:0] busC,
	output wire C,
	output wire N,
	output wire P,
	output wire Z
);

wire [MAX_WIDTH-1:0] result;
wire                 carry;


// Instantiate processing_unit
processing_unit #(.N(MAX_WIDTH)) processs ( 
	.dataa(busA), 
	.datab(busB), 
	.selop(selop), 
	.result(result), 
	.cout(carry)
);

// Instantiate flag_register
Flag_Register #(.MAX_WIDTH(MAX_WIDTH)) flag ( 
	.rst(rst), 
	.clk(clk), 
	.enaf(enaf),
	.carry(carry),
	.dataa(result), 
	.C(C),
	.N(N), 
	.P(P), 
	.Z(Z)
);


// Instantiate shift_unit
Shift_Unit #(.N(MAX_WIDTH)) shift ( 
	.dataa(result), 
	.shamt(shamt), 
	.dataout(busC)
);



endmodule