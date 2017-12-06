module Stuff_Block_TB;
	reg reset, RX, SP_old, F_STF;
	wire SP;



Stuff_Block block (reset, RX, SP_old, F_STF, SP);

  initial 
  SP_old = 0;
  
  always
  #3 SP_old = ~SP_old;

	initial begin

		RX = 1 ; F_STF = 1; reset = 0; # 6;
		RX = 1 ; F_STF = 1; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6; //esse bit
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6;
		RX = 1 ; F_STF = 0; reset = 0; # 6;
		RX = 0 ; F_STF = 0; reset = 0; # 6; //esse bit
		RX = 0 ; F_STF = 0; reset = 0; # 6;

		$stop;

	

	end

endmodule