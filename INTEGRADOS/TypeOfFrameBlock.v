module TypeOfFrameBlock(
	input reset, SP, EDL, RTR,
	output reg Type_Frame
);

initial Type_Frame = 1'b0;

always@(posedge SP) begin
	if(reset == 1) begin
		Type_Frame <= 1'b0;
	end
	else begin
		if (EDL == 1) begin
			Type_Frame <= 1'b0;
		end
		else begin //ELD == 0
			if(RTR == 1'b0) begin
				Type_Frame <= 1'b0;
			end
			else begin
				Type_Frame <=  1'b1;
			end
		end
	end
end
endmodule 