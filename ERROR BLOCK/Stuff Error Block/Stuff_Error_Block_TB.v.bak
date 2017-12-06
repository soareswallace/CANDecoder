//`timescale 1ns/1ps
module Error_Block_TB;

reg reset, SP, STF_E, EOF_E, CRC_E, FRM_E;
wire ERROR, saida;

Error_Block block(reset, SP, STF_E, EOF_E, CRC_E, FRM_E, ERROR, saida);

	initial begin
		SP = 0;
		reset = 1;
	end
	
	always
	#1 SP = ~SP;
	
	initial begin
		
		STF_E = 1; EOF_E = 1; CRC_E = 1; FRM_E = 1; reset = 0; #3;
		STF_E = 0; EOF_E = 1; CRC_E = 1; FRM_E = 1; reset = 0; #3;
		STF_E = 1; EOF_E = 1; CRC_E = 1; FRM_E = 1; reset = 0; #3;
		STF_E = 1; EOF_E = 0; CRC_E = 1; FRM_E = 1; reset = 0; #3;
		STF_E = 1; EOF_E = 1; CRC_E = 1; FRM_E = 1; reset = 0; #3;
		STF_E = 1; EOF_E = 1; CRC_E = 0; FRM_E = 1; reset = 0; #3;
		STF_E = 1; EOF_E = 1; CRC_E = 1; FRM_E = 1; reset = 0; #3;
		STF_E = 1; EOF_E = 1; CRC_E = 1; FRM_E = 0; reset = 0; #3;
		STF_E = 1; EOF_E = 1; CRC_E = 1; FRM_E = 1; reset = 0; #3;
		STF_E = 1; EOF_E = 1; CRC_E = 1; FRM_E = 1; reset = 0; #3;
		STF_E = 1; EOF_E = 1; CRC_E = 1; FRM_E = 1; reset = 0; #3;
		STF_E = 1; EOF_E = 1; CRC_E = 1; FRM_E = 1; reset = 0; #3;
		
		$stop;
		
	end
endmodule
