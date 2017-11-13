module TYPE_OF_FRAME_BLOCK(
	input reset, SP, EDL, RTR, 
	output reg [1:0] TYPE_FR
);

initial TYPE_FR = 1'b0;

always@(posedge SP or posedge reset) begin
	if(reset == 1) begin
		TYPE_FR <= 1'b0;
	end
	
	else if (EDL == 1) begin
		TYPE_FR <= 1'b0;
	end
	
	else begin
		if(RTR == 1'b0) begin
			TYPE_FR <= 1'b0;
		end
		else begin
			TYPE_FR <=  1'b1;
		end
	end
end
endmodule 