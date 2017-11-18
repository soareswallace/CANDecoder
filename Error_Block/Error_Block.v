module Error_Block(
	
	input reset, SP, STF_E, EOF_E, FRM_E,
	output reg ERROR,
	output wire saida

);

reg [7:0] estado_atual = 0;
parameter sts1 = 0, sts2 = 1;
initial ERROR = 1'b1;

always@(posedge SP) begin
	if(reset == 1) begin
		estado_atual <= sts1;
	end
	case(estado_atual)
		sts1: begin
			$display("Estou verificando erro");
			if((STF_E==0) || (EOF_E == 0) || (FRM_E == 0)) begin
				$display("ERRO");
				ERROR = 1'b0; //isso funciona, verilog atribui na hora este valor
			end
			else begin
				
				ERROR = 1'b1;
			end
		end
	endcase
end 

assign saida = ERROR;
endmodule
