`timescale 1 ns/10 ps

module Shift_Unit_Test();
  //signal declaration
  localparam N = 8;
  reg[1:0]  shamt_tb;
  reg[N-1:0] dataa_tb;
  wire[N-1:0] dataout_tb;
  
  //instantiate DUT
  Shift_Unit #(.N(8)) DUT (.shamt(shamt_tb), .dataa(dataa_tb),
                           .dataout(dataout_tb));
									
  //test sigma generator
  initial
  begin
    //test vector 0
	 shamt_tb = 2'b00;
	 dataa_tb = 8'b11111111;
	 # 200;
	 
	 //test vector 1
	 shamt_tb = 2'b01;
	 dataa_tb = 8'b11111111;
	 # 200;
	 
	 //test vector 2
	 shamt_tb = 2'b10;
	 dataa_tb = 8'b11111111;
	 # 200;
	 
	 //test vector 3
	 shamt_tb = 2'b11;
	 dataa_tb = 8'b11111111;
	 # 200;
	 
	 //test vector 4   
	 shamt_tb = 2'b00;
	 dataa_tb = 8'b11111111;
	 # 200;
	 
	 //stop simulation
	 $stop;
  end
endmodule
	 
