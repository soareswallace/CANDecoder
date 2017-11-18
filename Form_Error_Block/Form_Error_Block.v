module Form_Error_Block(
	input reset, SP, RX, F_ACK_D, F_CRC_D,
	output reg FORM_Error
);

initial FORM_Error = 1'b1;

always@(posedge SP) begin
	
	if(reset) begin
		FORM_Error <= 1'b1;
	end
	else begin
	FORM_Error <= 1'b1;
		if(F_ACK_D == 0) begin
			$display("Verificando o bit do ACK Delimiter");
			if(RX == 0) begin
				$display("Encontrei um erro no ACK Delimiter");
				FORM_Error <= 1'b0;
			end
		end
		
		else begin
			if(F_CRC_D == 0) begin
				$display("Verificando o bit do CRC Delimiter");
				if(RX ==0) begin
					$display("Encontrei um erro no CRC Delimiter");
					FORM_Error <= 1'b0;
				end
			end
			else begin
				$display("Tudo certo");
				FORM_Error <= 1'b1;
			end
		end
	end
	
end
endmodule