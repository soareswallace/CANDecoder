//BASE REMOTE FRAME MAKER

module BR_Frame_Maker(input reset, RX, SP, ERROR, F_ITMSSw,
                output wire F_OVRLDw,
                output wire RTRw, IDEw, EDLw, BRSw,
                output wire F_STFw, F_EOFw, F_CRCw, F_IDFw, F_ACK_Dw, F_CRC_Dw,
                output wire [10:0] IDFw,
                output wire [17:0] IDF_exw,
                output wire [3:0] DLCw,
                output wire [14:0] CRCw,
                output wire [6:0] EOFw
               );

	reg [8:0] cont;
	reg [7:0] estado_atual;
	reg [7:0] state_machine;
	reg F_OVRLD;
   reg RTR, IDE, EDL, BRS;
   reg F_STF, F_EOF, F_CRC, F_IDF, F_ACK_D, F_CRC_D;
   reg [10:0] IDF;
   reg [17:0] IDF_ex;
   reg [3:0] DLC;
   reg [14:0] CRC;
   reg [6:0] EOF;
	reg ACK_d, CRC_d;
  
  	initial F_OVRLD = 1'b1;
	initial cont = 9'd0;
	initial estado_atual = 8'd0;
	initial BRS = 1'b0;
	initial F_CRC = 1'b1;
	initial F_STF = 1'b1;
	initial F_EOF = 1'b1;
	initial F_IDF = 1'b1;
	initial F_ACK_D = 1'b1;
	initial F_CRC_D = 1'b1;
	
	assign F_OVRLDw = F_OVRLD;
   assign RTRw = RTR;
	assign IDEw = IDE;
	assign EDLw = EDL;
	assign BRSw = BRS;
	assign F_STFw = F_STF;
	assign F_EOFw = F_EOF;
	assign F_CRCw = F_CRC;
	assign F_IDFw = F_IDF;
	assign F_ACK_Dw = F_ACK_D;
	assign F_CRC_Dw = F_CRC_D;
	assign IDFw = IDF;
	assign IDF_exw = IDF_ex;
	assign DLCw = DLC;
	assign CRCw = CRC;
	assign EOFw = EOF;

  
parameter sts1 = 0, sts2 = 1, sts3 = 2, sts4 = 3, sts5 = 4, sts_B6 = 5, sts_E6 = 6, sts_BCD7 = 7,
  			sts_BCR7 = 8, sts_BCD8 = 9, sts_BF7 = 10, sts_BF8 = 11, sts_BF9 = 12, sts_BF10 = 13, 
  			sts_BF11 = 14, sts_E7 = 15, sts_E8 = 16, sts_E9 = 17, sts_ECD10 = 18, sts_ECR10 = 19,
  			sts_ECD11 = 20, sts_EF10 = 21, sts_EF11 = 22, sts_EF12 = 23, sts_EF13 = 24, sts_I = 25,
			sts_II = 26, sts_III = 27, sts_IV = 28, sts_V = 29, sts_INT = 30, sts_OVL = 31;

 
always @(posedge SP) begin

	cont <= cont + 9'd1;

	case(estado_atual)
		sts1: begin		//BUS IDLE
			if (RX == 1'b1)begin
				$display("Estou no Bus Idle");
			end
			BRS <= 1'b0;
			F_EOF <= 1'b1;
			F_IDF <= 1'b1;
			F_ACK_D <= 1'b1;
			F_CRC_D <= 1'b1;
			if (RX == 1'b0)begin	//Já estou no bit de SOF
				$display("\n\n");
				$display("Estou no SOF");
				F_STF <= 1'b0;
				estado_atual <= sts3;
				cont <= 9'd0;
			end
		end
		sts3: begin		//IDENTIFIER
			IDF [10-cont] <= RX;
			$display("Estou no Identifier %d", cont+1);
			//$display("Contador: %d" , cont);
			if (cont >= 9'd10)begin
				//$display("Contador: %d" , cont);
				estado_atual <= sts4;
				cont <= 9'd0;
			end
		end
		sts4: begin		//RTR
			$display("Estou no RTR");
			estado_atual <= sts5;
			cont <= 9'd0;
			RTR <= RX;
		end
		sts5: begin		//IDE
			IDE <= RX;
			$display("Estou no IDE");
			if (RX == 1'b0)begin
				estado_atual <= sts_B6;
			end
			if (RX == 1'b1)begin
				estado_atual <= sts_E6;
			end
			cont <= 9'd0;
		end
		sts_B6: begin		//EDL Base
			EDL <= RX;
			F_IDF <= 1'b0;
			$display("Estou no EDL Base");
			if (RX == 1'b0 && RTR == 1'b0)begin
				estado_atual <= sts_BCD7;
			end
			if (RX == 1'b0 && RTR == 1'b1)begin
				estado_atual <= sts_BCR7;
			end
			if (RX == 1'b1)begin
				estado_atual <= sts_BF7;
			end
			cont <= 9'd0;
		end
		sts_E6: begin		//IDENTIFIER EXTENSION EXTENDED
			$display("Estou no Idf extended %d", cont+1);
			IDF_ex [17-cont] <= RX;
			if (cont >= 9'd17)begin
				estado_atual <= sts_E7;
				cont <= 9'd0;
			end
		end

	  //---------------Estados de CAN BASE (BC)---------------//

			
		sts_BCD7: begin		//DLC CAN Data
			F_IDF <= 1'b1;
			$display("Estou no DLC do CAN Base Data %d", cont+1);
			//$display("Contador: %d" , cont);
			DLC [3-cont] <= RX;
			if (cont >= 9'd3)begin
				//$display("Vou mudar pro Data Field");
				//$display("Contador: %d" , cont);
				estado_atual <= sts_BCD8;
				cont <= 9'd0;
			end
		end
		sts_BCR7: begin		//DLC CAN Remote
			F_IDF <= 1'b1;
			$display("Estou no DLC do CAN Base Remote %d", cont+1);
			DLC [3-cont] <= RX;
			if (cont >= 9'd3)begin
				estado_atual <= sts_I;
				cont <= 9'd0;
				F_CRC <= 1'b0;
				F_STF <= 1'b1;
			end
		end
		sts_BCD8: begin		//DATA FIELD
			$display("Estou no Data Field %d", cont+1);
			if (cont >= (DLC*8)-1)begin  //Verificar esta comparação
				estado_atual <= sts_I;
				cont <= 9'd0;
				F_CRC <= 1'b0;
				F_STF <= 1'b1;
		  end
		end

		//---------------Estados de CAN BASE FD (BF)---------------//
		
		
		sts_BF7: begin		//Dummy STATE
			F_IDF <= 1'b1;
			$display("Estou no Dummy State do Can Base FD");
			estado_atual <= sts_BF8;
			cont <= 9'd0;
		end
		sts_BF8: begin		//BRS
			BRS <= RX;
			$display("Estou no BRS");
			estado_atual <= sts_BF9;
			cont <= 9'd0;
		end
		sts_BF9: begin		//ESI
			$display("Estou no ESI");
			estado_atual <= sts_BF10;
			cont <= 9'd0;
		end
		sts_BF10: begin		//DLC_FD
			$display("Estou no DLC do CAN Base FD %d", cont+1);
			DLC [3-cont] <= RX;
			if (cont >= 9'd3)begin
				estado_atual <= sts_BF11;
				cont <= 9'd0;
			end
		end
		sts_BF11: begin		//DATA_FIELD_FD
			$display("Estou no Data Field %d", cont+1);
			if (cont >= (DLC*8)-1)begin  //Verificar esta comparação
				estado_atual <= sts_I;
				cont <= 9'd0;
				F_CRC <= 1'b0;
				F_STF <= 1'b1;
		  end
		end

	  //---------------Estados de CAN EXTENDED (E)---------------//

		sts_E7: begin			//RTR EXTENDED
			RTR <= RX;
			F_IDF <= 1'b0;
			$display("Estou no RTR do CAN Extended");
			$display("RX: %d", RX);
			estado_atual <= sts_E8;
			cont <= 9'd0;
		end
		sts_E8: begin			//EDL
			EDL <= RX;
			F_IDF <= 1'b1;
			$display("Estou no EDL");
			$display("RX: %d", RX);
			estado_atual <= sts_E9;
			cont <= 9'd0;
		end
		sts_E9: begin			//r0
			$display("Estou no r0");
			$display("EDL: %d", EDL);
			if(EDL == 1'b1)begin
				estado_atual <= sts_EF10;
			end
			if(EDL == 1'b0 && RTR == 1'b0)begin
				estado_atual <= sts_ECD10;
			end
			if(EDL == 1'b0 && RTR == 1'b1)begin
				estado_atual <= sts_ECR10;
			end
			cont <= 9'd0;
		end

	  //---------------Estados de CAN EXTENDED COMUM (EC)---------------//

		sts_ECD10: begin			//DLC EXTENDED DATA
			$display("Estou no DLC do CAN Extended DATA %d", cont+1);
			DLC [3-cont] <= RX;
			if (cont >= 9'd3)begin
				estado_atual <= sts_ECD11;
				cont <= 9'd0;
			end
		end
		sts_ECR10: begin			//DLC EXTENDED REMOTE
			$display("Estou no DLC do CAN Extended Remote %d", cont+1);
			DLC [3-cont] <= RX;
			if (cont >= 9'd3)begin
				estado_atual <= sts_I;
				cont <= 9'd0;
				F_CRC <= 1'b0;
				F_STF <= 1'b1;
			end
		end
		sts_ECD11: begin			//DATA FIELD
			$display("Estou no Data Field %d", cont+1);
			if (cont >= (DLC*8)-1)begin  //Verificar esta comparação
				estado_atual <= sts_I;
				cont <= 9'd0;
				F_CRC <= 1'b0;
				F_STF <= 1'b1;
			end
		end

	  //---------------Estados de CAN EXTENDED FD (EF)---------------//

		sts_EF10: begin			//BRS FD
			BRS <= RX;
			$display("Estou no BRS do CAN Extended FD");
			estado_atual <= sts_EF11;
			cont <= 9'd0;
		end
		sts_EF11: begin			//ESI_FD
			$display("Estou no ESI do CAN Extended FD");
			estado_atual <= sts_EF12;
			cont <= 9'd0;
		end
		sts_EF12: begin			//DLC_FD
			$display("Estou no DLC do CAN Extended FD %d", cont+1);
			DLC [3-cont] <= RX;
			if(cont>= 9'd3)begin
				estado_atual <= sts_EF13;
				cont <= 9'd0;
			end
		end
		sts_EF13: begin			//DATA_FIELD_FD
			$display("Estou no Data Field %d", cont+1);
			if (cont >= (DLC*8)-1)begin    	
				estado_atual <= sts_I;
				cont <= 9'd0;
				F_CRC <= 1'b0;
				F_STF <= 1'b1;
			end
		end

	  //---------------Tratando estados finais---------------//
 
		sts_I: begin		//CRC
			$display("Estou no CRC %d", cont+1);
			$display("Contador: %d", cont);
			F_CRC <= 1'b1;
			if (cont >= 9'd14)begin
				estado_atual <= sts_II;
				cont <= 9'd0;
				F_CRC_D <= 1'b0;
			end
		end
		sts_II: begin		//CRC Delimiter
			F_CRC_D <= 1'b1;
			BRS <= 1'b0;
			CRC_d <= RX;
			$display("Estou no CRC Delimiter");
			estado_atual <= sts_III;
			cont <= 9'd0;
		end
		sts_III: begin		//ACK
			F_ACK_D <= 1'b0;
			$display("Estou no ACK");
			estado_atual <= sts_IV;
			cont <= 9'd0;
		end
		sts_IV: begin		//ACK Delimiter
			F_ACK_D <= 1'b1;
			F_EOF <= 1'b0;
			ACK_d <= RX;
			$display("Estou no ACK Delimiter");
			estado_atual <= sts_V;
			cont <= 9'd0;
		end
		sts_V: begin		//EOF
			F_EOF <= 1'b1;
			$display("Estou no EOF %d", cont+1);
			EOF[6-cont] <= RX;
			if (cont >= 9'd6)begin
				estado_atual <= sts_INT;
				cont <= 9'd0;
			end
		end
		
	  //---------------Tratando INTERMISSION, ERROR e OVERLOAD---------------//

		sts_INT:begin			//INTERMISSION
			if(cont == 9'd0)begin
				$display("\n");
				$display("----------RELATORIO DO FRAME----------");
				$display("\n");
				if(RTR == 0)begin
					$display("Data");
				end
				else begin
					$display("Remote");
				end
				if(IDEw == 0)begin
					$display("Base");
				end
				else begin
					$display("Extended");
				end
				if(EDLw == 0)begin
					$display("CAN");
				end
				else begin
					$display("CAN FD");
				end
				$display("RTR: %d 0(Data) e 1(Remote)", RTRw);
				$display("IDE: %d 0(Base) e 1(Extended)", IDEw);
				$display("EDL: %d 0(CAN) e 1(CAN FD)", EDLw);
				$display("BRS: %d 0(Mantem) e 1(Muda)", BRSw);
				$display("Identifier: %d" , IDFw);
				$display("Identifier Extended: %d" , IDF_exw);
				$display("DLC: %d" , DLCw);
				$display("EOF: %d (Tem que ser 127)" , EOFw);
				$display("CRC Delimiter: %d" , CRC_d);
				$display("ACK Delimiter: %d" , ACK_d);
				$display("\n");	
			end
			if (RX == 1'b1)begin	
				$display("Estou no Intermission");
			end
			if (RX == 1'b0)begin							//Nesse caso, já estamos no primeiro
				estado_atual <= sts_OVL;				//bit de Overload
				cont <= 9'd0;
				F_OVRLD <= 1'b0;
				$display("\n\n");
				$display("Estou no Primeiro Bit de Overload");
			end
			if (RX == 1'b1 && cont == 9'd1)begin	//Vou para o BUS IDLE
				estado_atual <= sts1;
				cont <= 9'd0;
			end
		end
		sts_OVL:begin			//OVERLOAD AND ERROR
			if (F_ITMSSw == 1'b1)begin
				$display("Estou no Overload ou Error");
			end
			F_OVRLD <= 1'b1;
			F_CRC <= 1'b1;
			F_STF <= 1'b1;
			BRS <= 1'b0;
			F_EOF <= 1'b1;
			F_IDF <= 1'b1;
			F_ACK_D <= 1'b1;
			F_CRC_D <= 1'b1;
			if (F_ITMSSw == 1'b0)begin		//Primeiro bit do INTERMISSON
				if (RX == 1'b1)begin
					$display("Estou no Primeiro Bit de Intermission");
				end
				if (RX == 1'b0)begin			//Nesse caso, já estamos no primeiro
					estado_atual <= sts_OVL;//bit de Overload
					cont <= 9'd0;
					F_OVRLD <= 1'b0;
					$display("\n\n");
					$display("Estou no Primeiro Bit de Overload");
				end
				else begin
					estado_atual <= sts_INT;	//INTERMISSION
					cont <= 9'd1;
				end
			end
		end
	endcase
	
	if(reset == 1)begin
		$display("\n\n");
		$display("Estou resetando");
		cont <= 9'd0;
		estado_atual <= sts1;
		F_OVRLD <= 1'b1;
		F_STF <= 1'b1;
		F_CRC <= 1'b1;
		BRS <= 1'b0;
		F_EOF <= 1'b1;
		F_IDF <= 1'b1;
		F_ACK_D <= 1'b1;
		F_CRC_D <= 1'b1;
		IDF <= 11'd0;
      IDF_ex <= 18'd0;
      DLC <= 4'd0;
      EOF <= 7'd0;
	end
	else begin
		if(ERROR == 0  && estado_atual != sts_OVL)begin		//Estou no primeiro bit de ERROR
			$display("\n\n");
			$display("Estou no primeiro Bit de Erro");
				$display("\n\n");
				$display("----------RELATORIO DO FRAME----------");
				$display("\n");
				if(RTR == 0)begin
					$display("Data");
				end
				else begin
					$display("Remote");
				end
				if(IDEw == 0)begin
					$display("Base");
				end
				else begin
					$display("Extended");
				end
				if(EDLw == 0)begin
					$display("CAN");
				end
				else begin
					$display("CAN FD");
				end
				$display("RTR: %d 0(Data) e 1(Remote)", RTRw);
				$display("IDE: %d 0(Base) e 1(Extended)", IDEw);
				$display("EDL: %d 0(CAN) e 1(CAN FD)", EDLw);
				$display("BRS: %d 0(Mantem) e 1(Muda)", BRSw);
				$display("Identifier: %d" , IDFw);
				$display("Identifier Extended: %d" , IDF_exw);
				$display("DLC: %d" , DLCw);
				$display("EOF: %d (Tem que ser 127)" , EOFw);
				$display("CRC Delimiter: %d" , CRC_d);
				$display("ACK Delimiter: %d" , ACK_d);
				$display("\n");		
			cont <= 9'd0;
			estado_atual <= sts_OVL;
			F_OVRLD <= 1'b0;
			F_STF <= 1'b1;
			F_CRC <= 1'b1;
			BRS <= 1'b0;
			F_EOF <= 1'b1;
			F_IDF <= 1'b1;
			F_ACK_D <= 1'b1;
			F_CRC_D <= 1'b1;
		end
	end
end
endmodule