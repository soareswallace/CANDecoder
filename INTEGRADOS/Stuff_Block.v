module Stuff_Block(
	input reset, RX, SP_old, F_STF,
	output wire SP
);

reg [8:0] cont;
reg previous_bit, SPw;
reg [7:0] estado_atual;

initial previous_bit = ~RX;
initial SPw = 1'b0;
initial estado_atual = 8'd0;

parameter sts0 = 0, sts1 = 1, sts2 = 2;
assign SP = SPw;

always@(posedge SP_old) begin
	if(reset == 1) begin
		previous_bit = ~RX;
		cont <= 9'd0;
		estado_atual <= 8'd0;
	end
	$display("Contador no Stuff: %d", cont);
	case(estado_atual)
		sts0:begin
			if(F_STF == 1'b0) begin	
				previous_bit <=  RX;
				estado_atual <= 8'd1;
				cont <= 9'd0;
			end
		end
		sts1:begin
			if(F_STF == 1'b0) begin	
				if(previous_bit == RX) begin
					$display("previous_bit == RX");
					if(cont >= 9'd3) begin
						$display("cont >= 9'd3");
						cont <= 9'd0;
						estado_atual <= 8'd2;
					end
					else begin
						$display("cont < 9'd3");
						cont <= cont + 9'd1;
					end
				end
				else begin
					$display("previous_bit != RX");
					cont <= 9'd0;
				end
			end
			else begin
				cont <= 9'd0;
				estado_atual <= 8'd0;
			end
			previous_bit <=  RX;
		end
		sts2:begin
			estado_atual <= 8'd0;
			cont <= 9'd0;
		end
	endcase
end
always@(*) begin
	case(estado_atual)
		sts0:begin
			SPw = SP_old;
		end
		sts1:begin
			SPw = SP_old;
		end
		sts2:begin
		end
	endcase
end
endmodule
