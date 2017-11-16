//`timescale 1ns/1ps

module Stuff_TB;



	reg reset, SP, RX, F_STF;

	wire sp_decision;



Stuff_Block block (reset, SP, RX, F_STF, sp_decision);



	initial begin

		$dumpfile("BSE.vcd");

		$dumpvars(0, bitStuff_TB);

	

		SP = 0; RX = 0 ; F_STF = 0; reset = 1; # 10;

		SP = 1; RX = 0 ; F_STF = 0; reset = 0; # 10; //esse bit

		SP = 0; RX = 0 ; F_STF = 0; reset = 0; # 10;

		SP = 1; RX = 0 ; F_STF = 0; reset = 0; # 10; //esse bit

		SP = 0; RX = 0 ; F_STF = 0; reset = 0; # 10;

		SP = 1; RX = 0 ; F_STF = 0; reset = 0; # 10; //esse bit

		SP = 0; RX = 0 ; F_STF = 0; reset = 0; # 10;

		SP = 1; RX = 0 ; F_STF = 0; reset = 0; # 10; //esse bit

		SP = 0; RX = 0 ; F_STF = 0; reset = 0; # 10;

		SP = 1; RX = 0 ; F_STF = 0; reset = 0; # 10; //esse bit

		SP = 0; RX = 0 ; F_STF = 0; reset = 0; # 10;

		SP = 1; RX = 1 ; F_STF = 0; reset = 0; # 10; //esse bit

		SP = 0; RX = 0 ; F_STF = 0; reset = 0; # 10;

		SP = 1; RX = 0 ; F_STF = 0; reset = 0; # 10; //esse bit

		SP = 0; RX = 0 ; F_STF = 0; reset = 0; # 10;

		SP = 1; RX = 0 ; F_STF = 0; reset = 0; # 10; //esse bit

		

		$display("");

	

	end

endmodule