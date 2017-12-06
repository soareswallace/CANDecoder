module Frame_Makers(input reset, RX, SP, ERROR,
							output wire RTR, IDE, EDL, BRS,
							output wire F_STF, F_EOF, F_CRC, F_IDF, F_ACK_D, F_CRC_D,
							output wire [10:0] IDF,
							output wire [17:0] IDF_ex,
							output wire [3:0] DLC,
							output wire [14:0] CRC,
							output wire [6:0] EOF
);

BR_Frame_Maker BR_out(reset, RX, SP, ERROR, F_ITMSSw, F_OVRLDw, RTRw, IDEw, EDLw, BRSw, F_STFw, F_EOFw, F_CRCw, F_IDFw, F_ACK_Dw, F_CRC_Dw, IDFw, IDF_exw, DLCw, CRCw, EOFw);	 
OE_Frame_Maker OE_out(reset, RX, SP, F_OVRLDw, F_ITMSSw);

   assign RTR = RTRw;
	assign IDE = IDEw;
	assign EDL = EDLw;
	assign BRS = BRSw;
	assign F_STF = F_STFw;
	assign F_EOF = F_EOFw;
	assign F_CRC = F_CRCw;
	assign F_IDF = F_IDFw;
	assign F_ACK_D = F_ACK_Dw;
	assign F_CRC_D = F_CRC_Dw;
	assign IDF = IDFw;
	assign IDF_ex = IDF_exw;
	assign DLC = DLCw;
	assign CRC = CRCw;
	assign EOF = EOFw;

endmodule