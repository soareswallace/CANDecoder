module EOF_Error_Block(
	
	input reset, SP, RX, EOF_Flag,
   output reg EOF_Error
   
	);

reg [7:0] estado_atual;
reg [8:0] cont;
reg [8:0] i = 0 ;

parameter sts1 = 0;
parameter sts2 = 1;
parameter sts3 = 2;

initial cont = 9'd0;
initial EOF_Error = 1'b1;
initial estado_atual = 8'd0;

always@(posedge SP)begin

	cont <= cont + 9'd1;
      
	if (reset) begin
        estado_atual <= sts1;
        EOF_Error <= 1'b1;
		  cont <= 9'd0;
   end
	
  	case(estado_atual)
		sts1: begin			//Waiting for EOF area
			EOF_Error <= 1'b1; 
			if(EOF_Flag == 1'b1)begin
				$display("Esperando flag ativar");
			end
			if(EOF_Flag == 1'b0)begin  //Se a FLAG estiver em 0, já estamos no primeiro bit do EOF!!!
				if(RX == 0)begin 			//EOF Error found
					$display("Erro encontrado no EOF");
					EOF_Error <= 1'b0;
					cont <= 9'd0;
					estado_atual <= sts1;
          	end
				else begin
					$display("Estou verificando o EOF 1");
					estado_atual <= sts2;
					cont <= 9'd0;
				end
			end
      end
      sts2: begin  	//EOF Area SEGUNDO BIT\
			if(cont <= 9'd5) begin
				$display("Estou verificando o EOF %d", cont+2);
			end
			if(cont >= 9'd5) begin
				cont <= 9'd0;
				estado_atual <= sts1;
			end
			if(RX == 0 && cont <= 5)begin //EOF Error found
				$display("Erro encontrado");
				EOF_Error <= 1'b0;
            cont <= 9'd0;
            estado_atual <= sts1;
			end
      end
   endcase
end
endmodule