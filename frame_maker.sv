//FRAME MAKER

module FR_MAKER(input reset, RX, SP, ERROR, F_ITMSS,
                output reg [1:0] F_OVRLD,
                output reg [1:0] RTR, IDE, EDL, BRS, CRCD, CRCD_ex,
                output reg [1:0] F_STF, F_EOF, F_CRC, F_IDF, F_ACK_D, F_CRC_D,
                output reg [10:0] IDF,
                output reg [28:0] IDF_ex,
                output reg [3:0] DLC,
                output reg [14:0] CRC,
                output reg [6:0] EOF,
               );

  reg [8:0]cont;
  reg [7:0]estado_atual;
  
	parameter sts1 = 0, sts2 = 1, sts3 = 2, sts4 = 3, sts5 = 4,
  					sts_B6 = 5, sts_E6 = 6, sts_BF7 = 7, sts_BCD7 = 8,
  					sts_BCR7 = 9, sts_E7 = 10, //...
  
  
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
  //initial CRC = ??
  
  always_ff @ (posedge SP or posedge reset) begin
	if(reset == 1)begin
		cont <= 9'd0;
		estado_atual <= sts1;
    BRS <= 1'b0;
    F_OVRLD <= 1'b1;
	end
  else begin
  	cont <= cont + 9'd1;
  end

  case(estado_atual)
    sts1: begin		//BUS IDLE
      if (RX == 1'b0)begin
        estado_atual <= sts1;
        cont <= 9'd0;
      end
      else begin
        estado_atual <= sts2;
      end
    end
    sts2: begin		//SOF
      estado_atual <= sts3;
      cont <= 9'd0;
    end
    sts3: begin		//IDENTIFIER
      IDF [cont] <= RX;//Verificar este assignment bit a bit
      if (cont >= 9'd10)begin
        estado_atual <= sts4;
        cont <= 9'd0;
      end
    end
    sts4: begin		//RTR
      estado_atual <= sts5;
      IDF_ex [10:0] <= IDF; //Verificar este assignment
      cont <= 9'd0;
    end
    sts5: begin		//IDE
      if (RX == 1'b0)begin
        estado_atual <= sts_B6;
      end
      if (RX == 1'b1)begin
        estado_atual <= sts_E6;
      end
      cont <= 9'd0;
    end
    sts_B6: begin		//EDL Base
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
      IDF_ex [cont + 11] <= RX;//Verificar este assignment bit a bit
      if (cont >= 9'd17)begin
        estado_atual <= sts_E7;
        cont <= 9'd0;
      end
    end

  //---------------Estados de CAN BASE (BC)---------------//

    sts_BCD7: begin		//DLC CAN Data
      DLC [cont] <= RX;//Verificar este assignment bit a bit
      if (cont >= 9'd3)begin
        estado_atual <= sts_BCD8;
        cont <= 9'd0;
      end
    end
    sts_BCR7: begin		//DLC CAN Remote
      DLC [cont] <= RX;//Verificar este assignment bit a bit
      if (cont >= 9'd3)begin
        estado_atual <= sts_BC9;
        cont <= 9'd0;
      end
    end
    sts_BCD8: begin		//DATA FIELD
      if (cont >= (DLC*8) - 1)begin  //Verificar esta comparação
        estado_atual <= sts_BC9;
        cont <= 9'd0;
      end
    end
    sts_BC9: begin		//CRC
      if (cont >= 14)begin
        estado_atual <= sts_BC10;
        cont <= 9'd0;
      end
    end
    sts_BC10: begin		//CRC Delimiter
      estado_atual <= sts_BC11;
      cont <= 9'd0;
    end
    sts_BC11: begin		//ACK
      estado_atual <= sts_BC12;
      cont <= 9'd0;
    end
    sts_BC12: begin		//ACK Delimiter
      estado_atual <= sts_BC13;
      cont <= 9'd0;
    end

  //---------------Estados de CAN BASE FD---------------//

    sts_BF7: begin		//Dummy STATE
      estado_atual <= sts_BF8;
      cont <= 9'd0;
    end  
    sts_BF8: begin		//BRS
      estado_atual <= sts_BF9;
      cont <= 9'd0;
    end
    sts_BF9: begin		//ESI
      estado_atual <= sts_BF10;
      cont <= 9'd0;
    end
    sts_BF10: begin		//DLC_FD
      DLC [cont] <= RX;		//Verificar este assignment bit a bit
      if (cont >= 9'd3)begin
        estado_atual <= sts_BF11;
        cont <= 9'd0;
      end
    end
    sts_BF11: begin		//DATA_FIELD_FD
      if (cont >= (DLC*8) - 1)begin  //Verificar esta comparação
        estado_atual <= sts_BF12;
        cont <= 9'd0;
      end
    end
    sts_BF12: begin		//CRC_FD
      if (cont >= 14)begin  //Verificar tamanho do CRC no CAN FD
        estado_atual <= sts_BF13;
        cont <= 9'd0;
      end
    end  
    sts_BF13: begin		//CRC_Delimiter_FD
      estado_atual <= sts_BF14;
      cont <= 9'd0;
    end
    sts_BF14: begin		//ACK_FD
      estado_atual <= sts_BF15;
      cont <= 9'd0;
    end
    sts_BF15: begin		//ACK_Delimiter_FD
      estado_atual <= sts_BF16;
      cont <= 9'd0;
    end

  //---------------Estados de CAN EXTENDED (E)---------------//

    sts_E7: begin			//RTR EXTENDED
      estado_atual <= sts_E8;
      cont <= 9'd0;
    end
    sts_E8: begin			//EDL
      estado_atual <= sts_E9;
      cont <= 9'd0;
    end
    sts_E9: begin			//r0
      if(EDL == 1'b1)begin
        estado_atual <= sts_EF10;
      end
      if(EDL == 1'b0 and RTR == 1'b0)begin
        estado_atual <= sts_ECD10;
      end
      if(EDL == 1'b0 and RTR == 1'b1)begin
        estado_atual <= sts_ECR10;
      end
      cont <= 9'd0;
    end

  //---------------Estados de CAN EXTENDED COMUM (EC)---------------//

    sts_ECD10: begin			//DLC EXTENDED DATA
      DLC [cont] <= RX;		//Verificar este assignment bit a bit
      if (cont >= 9'd3)begin
        estado_atual <= sts_ECD11;
        cont <= 9'd0;
      end
    end
    sts_ECR10: begin			//DLC EXTENDED REMOTE
      DLC [cont] <= RX;		//Verificar este assignment bit a bit
      if (cont >= 9'd3)begin
        estado_atual <= sts_EC12;
        cont <= 9'd0;
      end
    end
    sts_ECD11: begin			//DATA FIELD
      if (cont >= (DLC*8) - 1)begin  //Verificar esta comparação
        estado_atual <= sts_EC12;
        cont <= 9'd0;
      end
    end
    sts_EC12: begin			//CRC
      if (cont >= 9'd14)begin
        estado_atual <= sts_EC13;
        cont <= 9'd0;
      end
    end
    sts_EC13: begin		//CRC_Delimiter
      estado_atual <= sts_EC14;
      cont <= 9'd0;
    end 
    sts_EC14: begin		//ACK
      estado_atual <= sts_EC15;
      cont <= 9'd0;
    end
    sts_EC15: begin		//ACK_Delimiter
      estado_atual <= sts_EC16;
      cont <= 9'd0;
    end

  //---------------Estados de CAN EXTENDED FD (EF)---------------//

    sts_EF10: begin			//BRS FD
      estado_atual <= sts_EF11;
      cont <= 9'd0;
    end
    sts_EF11: begin			//ESI_FD
      estado_atual <= sts_EF12;
      cont <= 9'd0;
    end
    sts_EF12: begin			//DLC_FD
      DLC [cont] <= RX;		//Verificar este assignment bit a bit
      if(cont>= 9'd3)begin
        estado_atual <= sts_EF13;
        cont <= 9'd0;
      end
    end
    sts_EF13: begin			//DATA_FIELD_FD
      if (cont >= (DLC*8) - 1)begin    	
        estado_atual <= sts_EF14;
        cont <= 9'd0;
      end
    end
    sts_EF14: begin			//CRC_FD
      if (cont >= 9'd14)begin //Verificar tamanho do CRC no CAN FD
        estado_atual <= sts_EF15;
        cont <= 9'd0;
      end
    end
    sts_EF15: begin		//CRC_Delimiter_FD
      estado_atual <= sts_EF16;
      cont <= 9'd0;
    end 
    sts_EF16: begin		//ACK_FD
      estado_atual <= sts_EF17;
      cont <= 9'd0;
    end
    sts_EF17: begin		//ACK_Delimiter_FD
      estado_atual <= sts_EF18;
      cont <= 9'd0;
    end

  //---------------Tratando estados finais, INTERMISSION, ERROR e OVERLOAD---------------//

    sts_BC13: begin		//EOF_BASE
      if (cont >= 9'd6)begin
        estado_atual <= sts_INT;
        cont <= 9'd0;
      end
    end
    sts_BF16: begin		//EOF_FD_BASE
      if (cont >= 9'd6)begin
        estado_atual <= sts_INT;
        cont <= 9'd0;
      end
    end
    sts_EC16: begin		//EOF_EXTENDED
      if (cont >= 9'd6)begin
        estado_atual <= sts_INT;
        cont <= 9'd0;
      end
    end
    sts_EF18: begin		//EOF_FD_EXTENDED
      if (cont >= 9'd6)begin
        estado_atual <= sts_INT;
        cont <= 9'd0;
      end
    end
    sts_INT:begin			//INTERMISSION
      if (cont >= 9'd1 and RX == 1'b1)begin
        estado_atual <= sts1;
        cont <= 9'd0;
      end
      if (RX == 1'b0)begin				//Nesse caso, já estamos no primeiro
        estado_atual <= sts_OVL;	//bit de Overload
        F_OVRLD <= 1'b0;
        cont <= 9'd0;
      end
    end
    sts_OVL:begin			//OVERLOAD
      F_OVRLD <= 1'b1;
    	if (F_ITMSS == 1'b0)begin
        estado_atual <= sts_INT;
        cont <= 9'd0;
    	end
    end
  endcase
end

endmodule