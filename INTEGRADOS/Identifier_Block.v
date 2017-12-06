module Identifier_Block(
	input reset, SP, 
	input [10:0] IDF, 
	input [17:0] IDF_ex, 
	input IDE, F_IDF,
	output wire [28:0] IDTFR
);

//initial IDTFR = 29'd0;

reg [10:0] a, c;
reg [6:0] b;

assign IDTFR[28:18] = a;
assign IDTFR[17:11] = b;
assign IDTFR[10:0] = c;

always@(posedge SP) begin
	if(F_IDF == 1'b0) begin
		if(IDE == 1'b0) begin
			a <= 11'd0;
			b <= 7'd0;
			c <= IDF;
		end
		else begin
			a <= IDF;
			b <= IDF_ex[17:11];
			c <= IDF_ex[10:0];
		end
	end
end

endmodule
