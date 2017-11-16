module BitStuffErrorBock( 
input reset, SP, RX, F_STF,
output reg STF_ERR);
	
	reg [7:0] estado_atual;
	reg previous_bit;
	reg [8:0] cont = 0 ;
	reg [8:0] i = 0 ;
	parameter sts1 = 0;
	parameter sts2 = 1;
	
	initial STF_ERR = 1'b1;
	initial previous_bit = ~RX;
	
	always@(posedge SP or posedge reset) begin
		i <= i + 9'd1;
		
		if(reset == 1) begin
			estado_atual <= sts1;
			STF_ERR <= 1'b1;
		end
		
		case(estado_atual)
			sts1: begin		//WAITING FOR STUFF
				STF_ERR <= 1'b1;
				if(F_STF == 1'b0) begin
					estado_atual <= sts2;
					cont <= 9'd0;
					$display("Estou verificando se há stuff");
				end
			end
			sts2: begin		//stuff area
				if(F_STF == 1'b1) begin
					estado_atual <= sts1;
					cont <= 9'd0;
					$display("Flag desativada");
				end
				else begin
					if(previous_bit == RX && cont == 4)begin
						STF_ERR <= 1'b0;
						cont <= 9'd0;
						estado_atual <= sts1;
						$display("Erro de bit Stuff");
					end
					else begin
						if(previous_bit != RX) begin
							cont <= 9'd0;
							$display("Encontrei um bit diferente");
						end
						else begin
							if(previous_bit == RX && cont<4) begin
								cont <= cont + 9'd1;
							end
						end
					end
				end
				previous_bit <= RX;
				$display("Contador: %d" , cont);
			end
		endcase
	end	
endmodule
		