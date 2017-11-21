module ERROR_Detection(

input reset, SP, RX, F_STF, EOF_Flag, F_ACK_D, F_CRC_D,
output out

);

wire FORM_Error, EOF_Error, STF_ERR;

Form_Error_Block out_Form(reset, SP, RX, F_ACK_D, F_CRC_D, FORM_Error);
EOF_Error_Block out_EOF(reset, SP, RX, EOF_Flag, EOF_Error);
BitStuffErrorBock out_StuffError(reset, SP, RX, F_STF, STF_ERR);
assign out = EOF_Error && STF_ERR && FORM_Error;

endmodule
