module Form_Error_TB;

reg reset, SP, RX, F_ACK_D, F_CRC_D;
wire FORM_Error;

Form_Error_Block block(reset, SP, RX, F_ACK_D, F_CRC_D, FORM_Error);

initial 
SP = 0;

always
#6 SP = ~SP;

initial begin
	reset = 1; RX = 1; F_ACK_D = 0; F_CRC_D = 1; #10;
	reset = 0; RX = 1; F_ACK_D = 0; F_CRC_D = 1; #10;
	reset = 0; RX = 1; F_ACK_D = 0; F_CRC_D = 1; #10;
	reset = 0; RX = 1; F_ACK_D = 0; F_CRC_D = 1; #10;
	reset = 0; RX = 1; F_ACK_D = 0; F_CRC_D = 1; #10;
	reset = 0; RX = 1; F_ACK_D = 0; F_CRC_D = 1; #10;
	reset = 0; RX = 0; F_ACK_D = 0; F_CRC_D = 1; #10;
	reset = 0; RX = 0; F_ACK_D = 1; F_CRC_D = 0; #10;
	reset = 0; RX = 1; F_ACK_D = 1; F_CRC_D = 1; #10;
	reset = 0; RX = 1; F_ACK_D = 0; F_CRC_D = 1; #10;
	reset = 0; RX = 0; F_ACK_D = 0; F_CRC_D = 0; #10;
	reset = 0; RX = 1; F_ACK_D = 0; F_CRC_D = 1; #10;
	
	$stop;
	
end
endmodule