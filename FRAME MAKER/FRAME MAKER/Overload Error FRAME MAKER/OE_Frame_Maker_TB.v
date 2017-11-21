module OE_Frame_Maker_TB;

	reg reset, RX, SP, F_OVRLD;
   wire F_ITMSSw;

	OE_Frame_Maker block (reset, RX, SP, F_OVRLD, F_ITMSSw);
	
	initial 
	SP = 0;
	
	always
	#3 SP = ~SP;

	initial begin
	
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;//WAITING FOR OVERLOAD OR ERROR
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//Erro
		
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;//Error Frame
		RX = 0 ; F_OVRLD = 0; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;//Superposition
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//Delimiter
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//Recomeço do Delimiter
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//Frame Ends
		
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//Intermission Begins
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//Intermission Ends
		
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//BUS IDLE
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//BUS IDLE ENDS	
		
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;//WAITING FOR OVERLOAD OR ERROR
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;//Erro
		
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;//Error Frame
		RX = 0 ; F_OVRLD = 0; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//Delimiter
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//Recomeço do Delimiter
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//Frame Ends

		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//Intermission Begins
		
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;//Overload Frame
		RX = 0 ; F_OVRLD = 0; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;//Superposition
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//Delimiter
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 0 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//Recomeço do Delimiter
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;
		RX = 1 ; F_OVRLD = 1; reset = 0;# 6;//Frame Ends
		
		
		$stop;
	
	end
endmodule