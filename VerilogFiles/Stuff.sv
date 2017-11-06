//STUFF BLOCK

module Stuff (input reset, RX, SP
              output sp_decision
               );

parameter control = 0;
reg [8:0]cont;
reg previous_bit;

initial previous_bit = ~RX;

always_ff @ (negedge SP or posedge reset) 
begin
  if(reset == 1)begin
      previous_bit = ~RX;
      cont <= 9'd0;
  end
  
  if(previous_bit == RX)begin
    if(cont==5)begin
        cont <= 9'd0;
    end
    else begin
        cont <= cont + 9'd1;
        sp_decison = ~sp_decison;
    end
  end
  if(previous_bit != actual_bit)begin
      sp_decision <= ~sp_decision;
      cont <= 9'd0;
  end
  previous_bit <= RX;
  end
endmodule