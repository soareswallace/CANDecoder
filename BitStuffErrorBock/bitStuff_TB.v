//`timescale 1ns/1ps
module bitStuff_TB;

	reg reset, SP, RX, F_STF;
	wire STF_ERR;

BitStuffErrorBock block (reset, SP, RX, F_STF, STF_ERR);

	initial 
	SP = 0;
	
	always
	#3 SP = ~SP;

	initial begin
	
		RX = 0 ; F_STF = 0; reset = 1; # 10;
		RX = 0 ; F_STF = 0; reset = 0; # 10;
		RX = 0 ; F_STF = 0; reset = 0; # 10; //esse bit
		RX = 0 ; F_STF = 0; reset = 0; # 10;
		RX = 1 ; F_STF = 0; reset = 0; # 10; //esse bit
		RX = 1 ; F_STF = 0; reset = 0; # 10;
		RX = 1 ; F_STF = 0; reset = 0; # 10; //esse bit
		RX = 0 ; F_STF = 0; reset = 0; # 10;
		RX = 0 ; F_STF = 0; reset = 0; # 10; //esse bit
		RX = 0 ; F_STF = 0; reset = 0; # 10;
		RX = 1 ; F_STF = 0; reset = 0; # 10; //esse bit
		RX = 1 ; F_STF = 0; reset = 0; # 10;
		RX = 1 ; F_STF = 0; reset = 0; # 10; //esse bit
		RX = 0 ; F_STF = 0; reset = 0; # 10;
		RX = 0 ; F_STF = 0; reset = 0; # 10;
		RX = 0 ; F_STF = 0; reset = 0; # 10; //esse bit
		RX = 0 ; F_STF = 0; reset = 0; # 10; //esse bit
		
		$stop;
	
	end
endmodule