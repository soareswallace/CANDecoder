module Stuff_Error_Block_TB;

	reg reset, SP, RX, F_STF;
	wire STF_ERR;

Stuff_Error_Block block (reset, SP, RX, F_STF, STF_ERR);

	initial 
	SP = 0;
	
	always
	#3 SP = ~SP;

	initial begin
	
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;//esse bit
		RX = 1 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6;//esse bit
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		
		$stop;
	
	end
endmodule