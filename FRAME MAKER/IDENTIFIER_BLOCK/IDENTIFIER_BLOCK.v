module IDENTIFIER_BLOCK(
	input reset, SP, 
	input [10:0] IDF, 
	input [17:0] IDF_EX, 
	input IDE, F_IDF,
	output reg [28:0] IDTFR
	
);

initial IDTFR = 29'd0;

always@(posedge SP) begin
	if(reset == 1) begin
		IDTFR = 29'd0;
	end
	else if(F_IDF == 1'b0) begin
		IDTFR[10:0] <= IDF;
		if(IDE == 1'b0) begin
			IDTFR[28:11] <= 18'd0;
		end
		else begin
			IDTFR[28:11] <= IDF_EX;
		end
	end
end

endmodule
