//`timescale 1ns/1ps

module ERRO_Detection_TB;



reg reset, SP, RX, F_STF, EOF_Flag, F_ACK_D, F_CRC_D;

wire out;



ERROR_Detection block(reset, SP, RX, F_STF, EOF_Flag, F_ACK_D, F_CRC_D, out);



	initial begin

		SP = 0;

		reset = 1;

	end

	

	always

	#1 SP = ~SP;

	

	initial begin

		reset = 1; RX = 0; F_STF = 1; EOF_Flag = 1; F_ACK_D = 1; F_CRC_D = 1; #3;
		//Stuff Test
		reset = 0; RX = 0; F_STF = 0; EOF_Flag = 1; F_ACK_D = 1; F_CRC_D = 1; #3;
		reset = 0; RX = 0; F_STF = 0; EOF_Flag = 1; F_ACK_D = 1; F_CRC_D = 1; #3;
		reset = 0; RX = 0; F_STF = 0; EOF_Flag = 1; F_ACK_D = 1; F_CRC_D = 1; #3;
		reset = 0; RX = 0; F_STF = 0; EOF_Flag = 1; F_ACK_D = 1; F_CRC_D = 1; #3;
		reset = 0; RX = 0; F_STF = 0; EOF_Flag = 1; F_ACK_D = 1; F_CRC_D = 1; #3;
		reset = 0; RX = 0; F_STF = 0; EOF_Flag = 1; F_ACK_D = 1; F_CRC_D = 1; #3;
		//EOF_Error
		reset = 0; RX = 1; F_STF = 1; EOF_Flag = 0; F_ACK_D = 1; F_CRC_D = 1; #3;
		reset = 0; RX = 1; F_STF = 1; EOF_Flag = 0; F_ACK_D = 1; F_CRC_D = 1; #3;
		reset = 0; RX = 1; F_STF = 1; EOF_Flag = 0; F_ACK_D = 1; F_CRC_D = 1; #3;
		reset = 0; RX = 1; F_STF = 1; EOF_Flag = 0; F_ACK_D = 1; F_CRC_D = 1; #3;
		reset = 0; RX = 0; F_STF = 1; EOF_Flag = 0; F_ACK_D = 1; F_CRC_D = 1; #3;
		reset = 0; RX = 0; F_STF = 1; EOF_Flag = 1; F_ACK_D = 1; F_CRC_D = 1; #3;
		reset = 0; RX = 0; F_STF = 1; EOF_Flag = 0; F_ACK_D = 1; F_CRC_D = 1; #3;
		
		//Form Error
		reset = 0; RX = 1; F_STF = 1; EOF_Flag = 1; F_ACK_D = 1; F_CRC_D = 1; #3;
		reset = 0; RX = 0; F_STF = 1; EOF_Flag = 1; F_ACK_D = 0; F_CRC_D = 1; #3;
		reset = 0; RX = 1; F_STF = 1; EOF_Flag = 1; F_ACK_D = 1; F_CRC_D = 1; #3;
		reset = 0; RX = 0; F_STF = 1; EOF_Flag = 1; F_ACK_D = 1; F_CRC_D = 0; #3;
		
		
		
		

		$stop;

		

	end

endmodule

