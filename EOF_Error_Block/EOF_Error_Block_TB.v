//`timescale 1ns/1ps
module EOF_Error_Block_TB;

	reg reset, SP, RX, EOF_Flag;
	wire EOF_Error;

EOF_Error_Block block (reset, SP, RX, EOF_Flag, EOF_Error);

initial 
SP = 0;

always
#6 SP = ~SP;

	initial begin
	
		//TUDO CERTO
		RX = 0 ; EOF_Flag = 1; reset = 1; # 10;
		RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		RX = 1 ; EOF_Flag = 0; reset = 0; # 10;
		RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		RX = 1 ; EOF_Flag = 0; reset = 0; # 10;
		RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		RX = 1 ; EOF_Flag = 0; reset = 0; # 10;
		RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		RX = 1 ; EOF_Flag = 0; reset = 0; # 10;
		RX = 1 ; EOF_Flag = 1; reset = 0; # 10; //esse bit
		
		#100 $stop;
	
	end
endmodule