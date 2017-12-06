module EOF_Error_Block_TB;

	reg reset, SP, RX, EOF_Flag;
	wire EOF_Error;

EOF_Error_Block block (reset, SP, RX, EOF_Flag, EOF_Error);

initial 
SP = 0;

always
#3 SP = ~SP;

	initial begin
	
		//TUDO CERTO
		RX = 1 ; EOF_Flag = 1; reset = 1; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 1; # 6;
		RX = 1 ; EOF_Flag = 0; reset = 0; # 6; //esse bit
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 0 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 0; reset = 0; # 6; //esse bit
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 0 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 0 ; EOF_Flag = 0; reset = 0; # 6; //esse bit
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 6;
		
		$stop;
	
	end
endmodule