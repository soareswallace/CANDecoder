module TYPE_TB;

reg reset, SP, EDL, RTR;
wire TYPE_FR;

TYPE_OF_FRAME_BLOCK block(reset, SP, EDL, RTR, TYPE_FR);

initial begin
	SP = 0;
	reset = 1;
end

always 
#1 SP = ~SP;

initial begin
 reset = 0; EDL = 1; RTR = 0; #3;
 reset = 0; EDL = 0; RTR = 0; #3;
 reset = 0; EDL = 0; RTR = 1; #3;
 reset = 0; EDL = 1; RTR = 0; #3;
 
 $stop;
end
endmodule