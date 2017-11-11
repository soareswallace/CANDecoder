//EOF ERROR BLOCK

module EOF_Error_Block(
	
	input reset, SP, RX, EOF_Flag,
   output reg [1:0] EOF_Error
   
	);

reg [7:0]estado_atual;
reg [8:0]cont;
reg [8:0] i = 0 ;

parameter sts1 = 0;
parameter sts2 = 1;
parameter sts3 = 2;



initial cont = 9'd0;
initial EOF_Error = 1'b1;

always@(posedge SP or posedge reset)begin
   
		i <= i + 9'd1;
		$display(" ");
		$display("Always entry %d", i);
		$display("Sample point %d", SP);
		$display("Estado %d", estado_atual);
		$display("Contador %d", cont);
		$display(" ");
   
	
	if (reset) begin
        estado_atual <= sts1;
        EOF_Error <= 1'b1;
		  cont <= 9'd0;
   end
	
  	case(estado_atual)
      sts1: begin			//Waiting for EOF area
			EOF_Error <= 1'b1; 
			$display("Esperando flag ativar");
			if(EOF_Flag == 1'b0)begin  //Se a FLAG estiver em 0, já estamos no primeiro bit do EOF!!!
				$display("Flag ativada");
				estado_atual <= sts2;
				cont <= 9'd0;
				if(RX == 0)begin 		//EOF Error found
					$display("Erro encontrado");
					EOF_Error <= 1'b0;
					cont <= 9'd0;
					estado_atual <= sts1;
          	end
			end
      end
      sts2: begin  	//EOF Area SEGUNDO BIT
			if(cont == 5) begin
				$display("Tudo certo");
				estado_atual <= sts3;
            cont <= 9'd0;
			end
			if(RX == 0)begin //EOF Error found
				$display("Erro encontrado");
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
			$display("Voltando a esperar flag ativar");
      end
   endcase
end
endmodule