//FRAME MAKER 2

always_comb begin  //definindo oq fazer nos estados de forma combinacional
    case(estado_atual)
    sts1: begin			//Não faz nada no BUS IDLE
    end
    sts2: begin
      F_STF = 1'b0;	//Estado SOF ativa a FLAG de Stuff
    end
    sts3: begin
    end
    sts4: begin
      F_IDF = 1'b0;
      RTR = RX;
    end
    sts5: begin
      IDE = RX;
    end
    sts_B6: begin		//EDL_Base
      EDL = RX;
    end
    sts_E6: begin		//IDENTIFIER_Extended
    end
      
//---------------Estados de CAN BASE (BC)---------------//

    sts_BCD7: begin
    end
    sts_BCR7: begin
    end
    sts_BCD8: begin
    end
    sts_BC9: begin
    	F_CRC = 1'b0;
    end
    sts_BC10: begin
    	F_CRC = 1'b1;
      	F_STF = 1'b1;
      	F_CRC_D = 1'b0;
    end
    sts_BC11: begin
    	F_CRC_D = 1'b1;
    end
    sts_BC12: begin
    	F_ACK_D = 1'b0;
    end
    sts_BC13: begin
    	F_ACK_D = 1'b1;
      	F_EOF = 1'b0;
    end
      
//---------------Estados de CAN BASE FD (BF)---------------//

    sts_BF7: begin		//Dummy STATE
    end 
    sts_BF8: begin		//BRS
    	BRS = RX;
    end
    sts_BF9: begin		//ESI
	end
    sts_BF10: begin		//DLC_FD
	end 
    sts_BF11: begin		//DATA_FIELD_FD
	end
    sts_BF12: begin		//CRC_FD
    	F_CRC = 1'b0;
    end
    sts_BF13: begin		//CRC_Delimiter_FD
    	F_CRC = 1'b1;
        F_STF = 1'b1;
        F_CRC_D = 1'b0;
    end
    sts_BF14: begin		//ACK_FD
    	F_CRC_D = 1'b1;
      	BRS = 0;
    end
    sts_BF15: begin		//ACK_Delimiter
    	F_ACK_D = 1'b0;
    end
    sts_BF16: begin		//EOF_FD
    	F_ACK_D = 1'b1;
      	F_EOF = 1'b0;
    end
      
//---------------Estados de CAN EXTENDED (E)---------------//
 
    sts_E7: begin  		//RTR_Extended
      RTR = RX;
    end
    sts_E8: begin			//EDL
    	EDL = RX;
    end
    sts_E9: begin			//r0
    end

//---------------Estados de CAN EXTENDED COMUM (EC)---------------//
    
  	sts_ECD10: begin			//DLC EXTENDED DATA
		end
  	sts_ECR10: begin			//DLC EXTENDED REMOTE
		end
  	sts_ECD11: begin			//DATA FIELD
    end
  	sts_EC12: begin				//CRC
			F_CRC = 1'b0;
    end
    sts_EC13: begin				//CRC_Delimiter
    	F_CRC = 1'b1;
      	F_STF = 1'b1;
      	F_CRC_D = 1'b0;
    end
    sts_EC14: begin				//ACK
    	F_CRC_D = 1'b1;
    end
    sts_EC15: begin				//ACK_Delimiter
    	F_ACK_D = 1'b0;
    end
    sts_EC16: begin				//EOF
    	F_ACK_D = 1'b1;
      F_EOF = 1'b0;
    end
      
//---------------Estados de CAN EXTENDED FD (EF)---------------//

    sts_EF10: begin		//BRS_FD
    	BRS = RX;
    end
    sts_EF11: begin		//ESI_FD
	end
    sts_EF12: begin		//DLC_FD
	end 
    sts_EF13: begin		//DATA_FIELD_FD
	end
    sts_EF14: begin		//CRC_FD
    	F_CRC = 1'b0;
    end
    sts_EF15: begin		//CRC_Delimiter_FD
    	F_CRC = 1'b1;
      	F_STF = 1'b1;
      	F_CRC_D = 1'b0;
    end
    sts_EF16: begin		//ACK_FD
    	F_CRC_D = 1'b1;
      	BRS = 0;
    end
    sts_EF17: begin		//ACK_Delimiter
    	F_ACK_D = 1'b0;
    end
    sts_EF18: begin		//EOF_FD
    	F_ACK_D = 1'b1;
      	F_EOF = 1'b0;
    end
      
//--------------OVERLOAD E ERROR-------------//
    sts_INT:begin
      	F_EOF = 1'b1;
    end
    sts_OVL:begin
    end
    sts_EFB:begin
    end
    endcase
  end