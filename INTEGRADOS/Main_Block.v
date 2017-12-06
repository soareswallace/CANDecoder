module Main_Block(input reset, RX, SP_old,
							output wire Type_Frame, IDE, EDL, BRS,
							output wire F_STF, F_EOF, F_CRC, F_IDF, F_ACK_D, F_CRC_D,
							output wire [10:0] IDF,
							output wire [17:0] IDF_ex,
							output wire [3:0] DLC,
							output wire [6:0] EOF,
							output wire ERROR, SP
);


Stuff_Block ST_out(reset, RX, SP_old, F_STF, SP);

Error_Block ER_out(reset, SP, SP_old, RX, F_STF, F_EOF, F_ACK_D, F_CRC_D, ERROR);
BR_Frame_Maker BR_out(reset, RX, SP, ERROR, F_ITMSS, F_OVRLD, RTR, IDE, EDL, BRS, F_STF, F_EOF, F_CRC, F_IDF, F_ACK_D, F_CRC_D, IDF, IDF_ex, DLC, CRC, EOF);	 
OE_Frame_Maker OE_out(reset, RX, SP, F_OVRLD, F_ITMSS);

TypeOfFrameBlock TF_out(reset, SP, EDL, RTR, Type_Frame); //0 pra DATA e 1 pra Remote

endmodule