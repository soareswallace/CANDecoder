//`timescale 1ns/1ps

module Stuff_TB;



	reg clk, reset, RX,  SP, F_STF;

	wire sp_decision, saida;



Stuff_Block block (clk, reset, RX,  SP, F_STF, sp_decision, saida);

initial begin
	clk = 0;
	reset = 1;
	SP = 0;
end

always begin 
	#1 clk = ~clk;
end

always
	#3 SP = ~SP;



	initial begin
	reset = 0; RX = 0; F_STF = 0; # 20;
	
	
	$stop;

	end

endmodule