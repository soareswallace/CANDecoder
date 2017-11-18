module IDF_TB;

reg reset, SP, IDF, IDF_EX, IDE, F_IDF;
wire [28:0] IDTFR;

IDENTIFIER_BLOCK block(reset, SP, IDF, IDF_EX, IDE, F_IDF, IDTFR);

initial
SP = 0;

always
#1 SP = ~SP;

