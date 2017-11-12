module Form_Error_Block(
	input reset, SP, RX, F_ACK_D, F_CRC_D,
	output reg[1:0] FORM_Error
);

initial FORM_Error = 1'b1;

always@(posedge SP or posedge reset) begin
	if(reset) begin
		FORM_Error <= 1'b1;
	end
	else begin
		if(F_ACK_D == 1) begin
			if(RX == 0) begin
				FORM_Error <= 1'b0;
			end
		end
		
		else begin
			if(F_CRC_D == 1) begin
				if(RX ==0) begin
					FORM_Error <= 1'b0;
				end
			end
			else begin
				FORM_Error <= 1'b1;
			end
		end
	end
end
endmodule