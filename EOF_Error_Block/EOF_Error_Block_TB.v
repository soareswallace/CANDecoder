//`timescale 1ns/1ps
module EOF_Error_Block_TB;

	reg reset, SP, RX, EOF_Flag;
	wire EOF_Error;

EOF_Error_Block block (reset, SP, RX, EOF_Flag, EOF_Error);

	initial begin
		$dumpfile("BSE.vcd");
		$dumpvars(0, EOF_Error_Block_TB);
	
		//TUDO CERTO
		SP = 0; RX = 0 ; EOF_Flag = 1; reset = 1; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 1; reset = 0; # 10;
		SP = 1; RX = 0 ; EOF_Flag = 1; reset = 0; # 10; //esse bit
		
	
		//BIT DOMINANTE NO EOF
		SP = 0; RX = 0 ; EOF_Flag = 1; reset = 0; # 10; 
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 0 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		
		//BIT DOMINANTE NO ULTIMO BIT DO EOF
		SP = 0; RX = 0 ; EOF_Flag = 1; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 0 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 0 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		
		//BIT DOMINANTE NO PRIMEIRO BIT DO EOF
		SP = 0; RX = 0 ; EOF_Flag = 1; reset = 0; # 10;
		SP = 1; RX = 0 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 0 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		
		//TUDO CERTO AGAIN
		SP = 0; RX = 0 ; EOF_Flag = 1; reset = 0; # 10; 
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 0; reset = 0; # 10;
		SP = 1; RX = 1 ; EOF_Flag = 0; reset = 0; # 10; //esse bit
		SP = 0; RX = 0 ; EOF_Flag = 1; reset = 0; # 10;
		SP = 1; RX = 0 ; EOF_Flag = 1; reset = 0; # 10; //esse bit
		
		
		$display("");
	
	end
endmodule