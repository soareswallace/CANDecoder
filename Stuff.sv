module Stuff(   input reset, RX, SP
                output sp_decision
               );

parameter control = 0;
reg [8:0]cont;
reg previous_bit;
reg actual_bit;
reg [7:0]estado_atual;

initial estado_atual = 8'd0;


always_ff @ (negedge SP or posedge reset) 
begin
    if(reset == 1)
    begin
        estado_atual <= sts1;
        actual_bit <= 1;
        previous_bit <= 1;
		cont <= 9'd0;
	end
    else
    begin
        cont <= cont + 9'd1;
        actual_bit <= SP;
        if(previous_bit == actual_bit && cont==5)
        begin
            sp_decision <= ~SP;
            cont <= 9'd0;
        end
        if(previous_bit != actual_bit)
        begin
            cont <= 9'd0;
        end
        else
        begin
            previous_bit <= actual_bit;
        end       
    end
end