module Error_Block(input reset, SP, SP_old, RX, F_STF, EOF_Flag, F_ACK_D, F_CRC_D,
						output ERROR
);

	wire FORM_Error, EOF_Error, STF_ERR;

	Form_Error_Block out_Form(reset, SP, RX, F_ACK_D, F_CRC_D, FORM_Error);
	EOF_Error_Block out_EOF(reset, SP, RX, EOF_Flag, EOF_Error);
	Stuff_Error_Block out_Stuff(reset, SP_old, RX, F_STF, STF_ERR);
	
	assign ERROR = EOF_Error && FORM_Error && STF_ERR;

endmodule
