module BR_Frame_Maker_TB;

	reg reset, RX, SP, ERROR, F_ITMSS;
   wire F_OVRLDw;
   wire RTRw, IDEw, EDLw, BRSw;
   wire F_STFw, F_EOFw, F_CRCw, F_IDFw, F_ACK_Dw, F_CRC_Dw;
   wire [10:0] IDFw;
   wire [17:0] IDF_exw;
   wire [3:0] DLCw;
   wire [14:0] CRCw;
   wire [6:0] EOFw;

	BR_Frame_Maker block (reset, RX, SP, ERROR, F_ITMSS, F_OVRLDw, RTRw, IDEw, EDLw, BRSw, F_STFw, F_EOFw, F_CRCw, F_IDFw, F_ACK_Dw, F_CRC_Dw, IDFw, IDF_exw, DLCw, CRCw, EOFw);

	initial 
	SP = 0;
	
	always
	#3 SP = ~SP;

	initial begin
	
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//SOF CAN Base Data
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Ends
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//DATA Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Data Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Frame Ends
		
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//INTERMISSION Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//INTERMISSION ENDS
		
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//SOF CAN Base Data
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Ends
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//DATA Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Erro de Stuff
		
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 0;# 6;//Error Frame
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Superposition
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Delimiter
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Recomeço do Delimiter
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Frame Ends
		
		RX = 1 ; F_ITMSS = 0; reset = 0; ERROR = 1;# 6;//Intermission Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Intermission Ends
		
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE ENDS	
		
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//SOF CAN Extended Remote
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//SRR
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//IDE
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//RTR
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//EDL
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//r0
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Frame Ends
		
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Intermission Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Intermission Ends
		
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//SOF CAN Extended Remote
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//SRR
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//IDE
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//RTR
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//EDL
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//r0
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Erro de EOF
		
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 0;# 6;//Error Frame
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Superposition
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Delimiter
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Recomeço do Delimiter
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Frame Ends
		
		RX = 1 ; F_ITMSS = 0; reset = 0; ERROR = 1;# 6;//Intermission
		
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Overload Frame
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Superposition
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Delimiter
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Recomeço do Delimiter
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Frame Ends
		
		RX = 1 ; F_ITMSS = 0; reset = 0; ERROR = 1;# 6;//Intermission Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Intermission Ends
		
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//SOF CAN FD Base Frame
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Ends
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//RTR
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//IDE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//EDL
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//r0
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BRS
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//ESI
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//DATA Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Data Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Frame Ends
		
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Intermission Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Intermission Ends
		
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CAN FD Extended Frame
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//SRR
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//IDE
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Ends
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//RTR
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//EDL
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//r0
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BRS
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//ESI
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//DATA Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Data Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Frame Ends
		
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Intermission Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Intermission Ends
		
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CAN FD Extended Frame
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//SRR
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//IDE
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Ends
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//RTR
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//EDL
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//r0
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BRS
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//ESI
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//DATA Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Data Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Erro de ACK Delimiter
		
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 0;# 6;//Error Frame
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Superposition
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Delimiter
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Frame Ends
		
		RX = 0 ; F_ITMSS = 0; reset = 0; ERROR = 1;# 6;//Overload Frame
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Superposition
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Delimiter
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Recomeço do Delimiter
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Frame Ends
		
		RX = 1 ; F_ITMSS = 0; reset = 0; ERROR = 1;# 6;//Intermission Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Intermission Ends
		
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BUS IDLE
		
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CAN FD Extended Frame
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//SRR
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//IDE
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Identifier Ends
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//RTR
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//EDL
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//r0
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//BRS
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//ESI
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//DATA Begins
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Data Ends
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Begins
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//CRC Ends
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Erro de CRC Delimiter
		
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 0;# 6;//Error Frame
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 0 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Delimiter
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;
		RX = 1 ; F_ITMSS = 1; reset = 0; ERROR = 1;# 6;//Frame Ends
		
		$stop;
	
	end
endmodule