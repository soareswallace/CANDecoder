module Error_Block(
	
	input reset, SP, STF_E, EOF_E, CRC_E, FRM_E,
	output reg[1:0] ERROR

);

reg [7:0] estado_atual;
parameter sts1 = 0, sts2= 1;
initial ERROR = 1'b1;

always@(posedge SP or posedge reset) begin
	if(reset == 1) begin
		estado_atual <= sts1;
	end
	case(estado_atual)
		sts1: begin
			if((STF_E==0) || (EOF_E == 0) || (CRC_E == 0) || (FRM_E == 0)) begin
				estado_atual <= sts2;
			end
		end
		
		sts2: begin
			estado_atual <= sts1;
			ERROR = 1'b0;
		end
	endcase
end
endmodule
