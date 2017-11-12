//OVERLOAD ERROR FRAME MAKER

module OE_MAKER(input reset, RX, SP, ERROR, F_OVRLD,
                output reg [1:0] F_ITMSS
               );

  reg [8:0]cont;
  reg [7:0]estado_atual;
  
	parameter sts1 = 0, sts2 = 1, sts3 = 2, sts4 = 3, sts5 = 4;
  
  initial F_ITMSS = 1'b1;
	initial cont = 9'd0;
	initial estado_atual = 8'd0;
  
  always_ff @ (posedge SP or posedge reset) begin
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
      if(F_OVRLD == 1'b0)begin
        cont <= 9'd0;
        estado_atual <= sts2;
			end
    end
    sts2: begin		//OVERLOAD_ERROR_Flag
      if(cont >= 9'd4)begin
        cont <= 9'd0;
        estado_atual <= sts3;
			end
    end
    sts3: begin		//Superposition
      if(cont >= 9'd5 && RX == 1'b0)begin
        cont <= 9'd0;
        estado_atual <= sts4;
			end
      if(RX == 1'b1)begin
        cont <= 9'd0;
        estado_atual <= sts5;
			end
    end
    sts4: begin		//Delimiter First Bit
      if(RX == 1'b1)begin
        cont <= 9'd0;
        estado_atual <= sts5;
      end
    end
    sts5: begin			//Delimiter
      if(RX == 1'b0)begin
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