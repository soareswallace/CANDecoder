module IDF_TB;

reg reset, SP;
reg [10:0] IDF;
reg [17:0] IDF_EX; 
reg IDE, F_IDF;
wire [28:0] IDTFR;

IDENTIFIER_BLOCK block(reset, SP, IDF, IDF_EX, IDE, F_IDF, IDTFR);

initial begin
	SP = 0;
	reset = 1;

end

always
#1 SP = ~SP;

initial begin
	
	//reset
	reset = 0; IDF =11'b11001001010 ; IDF_EX =18'b111110001011000000; IDE = 0; F_IDF = 0; #3;
	reset = 0; IDF =11'b11001001010 ; IDF_EX =18'b111110001011000000; IDE = 1; F_IDF = 0; #3;
	$stop;
end
endmodule

