//alu
`timescale 1 ns/10 ps

module alu_tb();
  //signal declaration
  localparam M = 8;
	  reg  clk_tb;
	  reg  rst_tb;
	  reg  enaf_tb;
	  reg		[2:0]  selop_tb;
	  reg		[1:0]  shamt_tb;
	  reg		[M-1:0] busA_tb;
	  reg		[M-1:0] busB_tb;
	  wire	[M-1:0] busC_tb;
	  wire	C_tb;
	  wire 	N_tb;
	  wire 	P_tb;
	  wire 	Z_tb;
  
  //instantiate DUT
  alu #(.MAX_WIDTH(M)) DUT (.clk(clk_tb), .rst(rst_tb), .enaf(enaf_tb), 
                            .selop(selop_tb), .shamt(shamt_tb), .busA(busA_tb), 
									 .busB(busB_tb), .C(C_tb), .N(N_tb), .P(P_tb), .Z(Z_tb),
									 .busC(busC_tb));
  
  //Clock generation
 initial clk_tb = 0;
 always  #25 clk_tb = ~clk_tb; 
  
  //test sigma generator
  initial
  begin
 
	//selop = 101
    //test vector 0
	 rst_tb = 1'b0;
	 enaf_tb = 1'b1;
	 selop_tb = 3'b101;
	 shamt_tb = 2'b00;
	 busA_tb = 8'b00100110;
	 busB_tb = 8'b11111111;
	 # 125;
	 
	 //test vector 1
	 rst_tb = 1'b0;
	 enaf_tb = 1'b1;
	 selop_tb = 3'b001;
	 shamt_tb = 2'b01;
	 busA_tb = 8'b11101011;
	 busB_tb = 8'b01010101;
	 # 100;
	 
	 //test vector 2
	 rst_tb = 1'b1;
	 enaf_tb = 1'b1;
	 selop_tb = 3'b010;
	 shamt_tb = 2'b10;
	 busA_tb = 8'b11101011;
	 busB_tb = 8'b01010101;
	 # 100;
	 
	 //test vector 3
	 rst_tb = 1'b1;
	 enaf_tb = 1'b1;
	 selop_tb = 3'b011;
	 shamt_tb = 2'b10;
	 busA_tb = 8'b00000000;
	 busB_tb = 8'b01010101;
	 # 100;
	 
	 //test vector 4
	 rst_tb = 1'b0;
	 enaf_tb = 1'b1;
	 selop_tb = 3'b100;
	 shamt_tb = 2'b11;
	 busA_tb = 8'b11111111;
	 busB_tb = 8'b01010101;
	 # 100;
	 
	 //test vector 5
	 rst_tb = 1'b0;
	 enaf_tb = 1'b1;
	 selop_tb = 3'b101;
	 shamt_tb = 2'b00;
	 busA_tb = 8'b10101010;
	 busB_tb = 8'b01010101;
	 # 100;
	 
	 //test vector 6
	 rst_tb = 1'b0;
	 enaf_tb = 1'b1;
	 selop_tb = 3'b111;
	 shamt_tb = 2'b00;
	 busA_tb = 8'b00000000;
	 busB_tb = 8'b00000000;
	 # 100;
	 
	 //test vector 7
	 rst_tb = 1'b1;
	 enaf_tb = 1'b1;
	 selop_tb = 3'b101;
	 shamt_tb = 2'b00;
	 busA_tb = 8'b11111111;
	 busB_tb = 8'b11111111;
	 # 100;
	 
	 	 //test vector 8
	 rst_tb = 1'b0;
	 enaf_tb = 1'b1;
	 selop_tb = 3'b001;
	 shamt_tb = 2'b01;
	 busA_tb = 8'b11101011;
	 busB_tb = 8'b01010101;
	 # 100;
	 
	 //test vector 9
	 rst_tb = 1'b1;
	 enaf_tb = 1'b1;
	 selop_tb = 3'b111;
	 shamt_tb = 2'b10;
	 busA_tb = 8'b11101011;
	 busB_tb = 8'b01010101;
	 # 100;

	 $stop;
   end
endmodule 