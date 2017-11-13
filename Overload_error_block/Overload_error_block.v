module Overload_error_block(
	input reset, RX, SP, ERROR, F_OVRLD,
	output reg [1:0] F_ITMSS
);

reg [8:0] cont = 9'd0;
reg [7:0] estado_atual;

parameter sts1 = 0, sts2 = 1, sts3 = 2, sts4 = 3, sts5 = 4;

initial F_ITMSS = 1'b1;
initial cont = 9'd0;
initial estado_atual = 8'd0;

always@(posedge SP or posedge reset) begin
	
	if(reset == 1) begin
		cont <= 9'd0;
		estado_atual <= sts1;
		F_ITMSS <= 1'b1;
	end
	else begin
		cont <= cont + 9'd1;
	end
	
	case (estado_atual)
		sts1: begin 
			$display("Waiting for overload or error");
			F_ITMSS <= 1'b1;
			if(F_OVRLD == 1'b0) begin
				$display("Overload or Error Detected");
				cont <= 9'd0;
				estado_atual <= sts2;
			end
		end
		sts2: begin
			if(cont >= 9'd4) begin
				cont <= 9'd0;
				estado_atual <= sts3;
			end
		end
		sts3: begin
			if(cont >= 9'd5 && RX == 1'b0) begin
				cont <= 9'd0;
				estado_atual <= sts4;
			end
			if(RX == 1'b1)begin
				cont <= 9'd0;
				estado_atual <= sts5;
			end
		end
		
		sts4: begin
			if(RX == 1'b1) begin
				cont <= 9'd0;
				estado_atual <= sts5;
			end
		end
		sts5: begin
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
