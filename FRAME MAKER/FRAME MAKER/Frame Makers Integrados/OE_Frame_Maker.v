//OVERLOAD ERROR FRAME MAKER

module OE_Frame_Maker(input reset, RX, SP, F_OVRLDw,
                output wire F_ITMSSw
               );

	reg [8:0] cont;
	reg [7:0] estado_atual;
	reg F_ITMSS;
	
	parameter sts1 = 0, sts2 = 1, sts3 = 2, sts4 = 3, sts5 = 4;
  
	initial cont = 9'd0;
	initial estado_atual = 8'd0;
	initial F_ITMSS = 1'b1;
	
	assign F_ITMSSw = F_ITMSS;
  
always @ (posedge SP) begin
    if(reset == 1)begin
		cont <= 9'd0;
		estado_atual <= sts1;
		F_ITMSS <= 1'b1;
    end
    else begin
		cont <= cont + 9'd1;
  	end

	case(estado_atual)
		sts1: begin		//WAITING FOR OVERLOAD OR ERROR
			F_ITMSS <= 1'b1;
			if(F_OVRLDw == 1'b1)begin
				$display("Waiting for Error");
			end
			if(F_OVRLDw == 1'b0)begin	//Já estamos no segundo bit de Overload
				$display("Estou no Bit de Flag 2");
				cont <= 9'd0;
				estado_atual <= sts2;
			end
		end
		sts2: begin		//OVERLOAD_ERROR_Flag THIRD Bit
			$display("Estou no Bit de Flag %d", cont+3);
			if(cont >= 9'd3)begin
				cont <= 9'd0;
				estado_atual <= sts3;
			end
		end
		sts3: begin		//Superposition
			if(RX == 1'b0)begin
				$display("Estou no Superposition %d", cont+1);
			end
			if(cont >= 9'd5 && RX == 1'b0)begin
				cont <= 9'd0;
				estado_atual <= sts4;
			end
			if(RX == 1'b1)begin
				$display("Estou no Delimiter 1");
				cont <= 9'd0;
				estado_atual <= sts5;
			end
		end
		sts4: begin		//Delimiter First Bit
			$display("Estou no Delimiter 1");
			if(RX == 1'b1)begin
				cont <= 9'd0;
				estado_atual <= sts5;
			end
		end
		sts5: begin			//Delimiter
			$display("Estou no Delimiter %d", cont+2);
			if(RX == 1'b0)begin
				$display("Vou resetar o Delimiter");
				cont <= 9'd0;
				estado_atual <= sts4;
			end
			if(RX == 1'b1 && cont >= 9'd6)begin
				cont <= 9'd0;
				estado_atual <= sts1;
				F_ITMSS <= 1'b0;
			end
		end
	endcase
end
endmodule