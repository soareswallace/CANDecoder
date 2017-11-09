//EOF ERROR BLOCK

module EOF_ERROR(input reset, SP, RX, EOF_Flag,
                output reg [1:0] EOF_Error,
               );

reg [7:0]estado_atual;
parameter sts1 = 0, sts2 = 1;

initial cont = 9'd0;
initial EOF_Error = 1'b1;

always_ff @ (posedge SP or posedge reset)begin
    if (reset) begin
        estado_atual <= sts1;
        EOF_Error <= 1'b1;
      	cont <= 9'd0;
    end

  	case(estado_atual)
      sts1: begin			//Waiting for EOF area
        EOF_Error <= 1'b1; 
        if(EOF_Flag == 1'b0)begin  //Se a FLAG estiver em 0, já estamos no primeiro bit do EOF!!!
              estado_atual <= sts2;
              cont <= 9'd0;
              if(RX == 0)begin 		//EOF Error found
              	EOF_Error <= 1'b0;
                cont <= 9'd0;
                estado_atual <= sts1;
          		end
            end
      end
      sts2: begin  	//EOF Area SEGUNDO BIT
        if(cont == 4) begin
              estado_atual <= sts3;
              cont <= 9'd0;
        end
        if(RX == 0)begin //EOF Error found
              EOF_Error <= 1'b0;
              cont <= 9'd0;
              estado_atual <= sts1;
        end
        else begin
              cont <= cont + 9'd1;
        end
      end
      sts3: begin //EOF LAST BIT
              estado_atual <= sts1;
      end
    endcase
end
endmodule