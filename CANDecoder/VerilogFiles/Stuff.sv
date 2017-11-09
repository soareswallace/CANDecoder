//STUFFING BLOCK

module STUFF_BLOCK(input reset, RX, SP, F_STF,
              output sp_decision
               );

parameter control = 0;
reg [8:0]cont;
reg previous_bit;

initial previous_bit = ~RX;
initial sp_decision = 1'b0;

always_ff @ (negedge SP or posedge reset) 
begin
  if(reset == 1)begin
      previous_bit = ~RX;
      cont <= 9'd0;
  end

  if(F_STF == 1'b0)begin
    if(previous_bit == RX)begin
      if(cont==4)begin
          cont <= 9'd0;
      end
      else begin
          cont <= cont + 9'd1;
          sp_decison = ~sp_decison;
      end
    end
    else begin
        sp_decision <= ~sp_decision;
        cont <= 9'd0;
    end
    previous_bit <= RX;
  end
  else begin
    sp_decision <= ~sp_decision;
    cont <= 9'd0;
    previous_bit <= RX;
  end
end
endmodule