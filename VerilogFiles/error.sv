//ERROR BLOCK

module ERROR_BLOCK(input reset, SP, STF_E, EOF_E, CRC_E, FRM_E,
                output reg [1:0] ERROR,
               );

  reg [7:0]estado_atual;
	parameter sts1 = 0, sts2 = 1;
  initial ERROR = 1'b1;
  
  always_ff @ (posedge SP or posedge reset) begin
    if(reset == 1)begin
      estado_atual <= sts1;
    end
    case(estado_atual)
      sts1: begin		//WATING FOR ERROR
        if((STF_E == 1'b0) || (EOF_E == 1'b0) || (CRC_E == 1'b0) || (FRM_E == 1'b0))begin
            estado_atual <= sts2;
        end
      end
      sts2: begin		//ERROR
          estado_atual <= sts1;
      end
    endcase
  end
    
  always_comb begin  //definindo oq fazer nos estados de forma combinacional
    case(estado_atual)
      sts1: begin		//WATING FOR ERROR
          ERROR = 1'b1;
      end
      sts2: begin		//ERROR
          ERROR = 1'b0;
      end
    endcase
  end
endmodule