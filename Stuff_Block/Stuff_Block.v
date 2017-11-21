module Stuff_Block(
	input clk, reset, RX,  SP, F_STF,
	output reg sp_decision,
	output wire saida
);

parameter control = 0;

reg [8:0] cont;
reg previous_bit;

initial previous_bit = ~RX;
initial sp_decision = 1'b0;

	always@(posedge clk) begin
		if(reset == 1) 
		begin
			previous_bit = ~RX;
			cont <= 9'd0;
		end
		
		if(F_STF == 0) 
		begin
			$display(" ");
			$display("<============== Always Block ==============>");
			$display("Flag de Bit Stuff Ativada");
			$display(" ");
			$display("RX : %b", RX);
			$display("Previous Bit : %b", previous_bit);
			$display(" ");
			$display("SP: %b", SP);
			$display("Contador: %d", cont);
			$display(" ");
			
			if(previous_bit == RX) 
			begin
				if(cont == 5) 
				begin
					sp_decision = ~SP;
					cont <= 9'd0;
					$display("Bit Stuffing");
				end
				else 
				begin
					$display("Bit igual");
					sp_decision = SP;
					cont <= cont + 9'd1;
				end
			end
			else 
			begin
				$display("Bit diferente");
				sp_decision = SP;
				cont <= 9'd0;
			end
		end
		
		if (F_STF == 1) 
		begin
			$display("Flag de Bit Stuff Ativada");
			sp_decision = SP;
			cont <= 9'd0;
		end
		previous_bit <= RX;
		$display(" ");
		$display("<============== // ==============>");
	end

	assign saida = sp_decision;
	
endmodule
