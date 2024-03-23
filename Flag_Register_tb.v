`timescale 1 ns/10 ps

module Flag_Register_tb();
  localparam N_n = 8;
  reg  clk_tb;
  reg  rst_tb;
  reg  enaf_tb;
  reg  carry_tb;
  reg[N_n-1:0] dataa_tb;
  wire C_tb;
  wire N_tb;
  wire P_tb;
  wire Z_tb;
  
  //instantiate DUT
  Flag_Register #(.MAX_WIDTH(8)) DUT (.clk(clk_tb), .rst(rst_tb), .enaf(enaf_tb), 
                              .carry(carry_tb), .dataa(dataa_tb), .C(C_tb),
										.N(N_tb), .P(P_tb), .Z(Z_tb));
  
  //Clock generation
 initial clk_tb = 0;
 always  #25 clk_tb = ~clk_tb; 
  
  //test sigma generator
  initial
  begin
    //test vector 0
	 rst_tb = 1'b0;
	 enaf_tb = 1'b0;
	 carry_tb = 1'b0;
	 dataa_tb = 8'b11111011;
	 # 125;
	 
	 //test vector 1
	 rst_tb = 1'b0;
	 enaf_tb = 1'b1;
	 carry_tb = 1'b0;
	 dataa_tb = 8'b11111000;
	 # 100;
	 
	 //test vector 2
	 rst_tb = 1'b0;
	 enaf_tb = 1'b1;
	 carry_tb = 1'b1;
	 dataa_tb = 8'b10000000;
	 # 100;
	 
	 //test vector 3
	 rst_tb = 1'b0;
	 enaf_tb = 1'b1;
	 carry_tb = 1'b0;
	 dataa_tb = 8'b00000000;
	 # 100;
	 
	 	 //test vector 3
	 rst_tb = 1'b1;
	 enaf_tb = 1'b0;
	 carry_tb = 1'b0;
	 dataa_tb = 8'b00000000;
	 # 100;
	 
	 	 
	 	 //test vector 3
	 rst_tb = 1'b0;
	 enaf_tb = 1'b0;
	 carry_tb = 1'b0;
	 dataa_tb = 8'b11110000;
	 # 100;
	 
	 	 	 //test vector 3
	 rst_tb = 1'b0;
	 enaf_tb = 1'b1;
	 carry_tb = 1'b0;
	 dataa_tb = 8'b11110000;
	 # 100;
	 
	 //test vector 4
	 rst_tb = 1'b0;
	 enaf_tb = 1'b0;
	 carry_tb = 1'b1;
	 dataa_tb = 8'b00111001;
	 # 100;
	 
	 //test vector 5
	 rst_tb = 1'b0;
	 enaf_tb = 1'b0;
	 carry_tb = 1'b0;
	 dataa_tb = 8'b10011111;
	 # 100;
	 
	 //stop simulation
	 $stop;
   end
endmodule 