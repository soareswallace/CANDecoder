//BIT STUFFING ERROR

module BIT_STUFF_ERROR(input reset, SP, RX, F_STF,
                output reg [1:0] STF_ERR,
               );

  reg [7:0]estado_atual;
  reg previous_bit;
  parameter sts1 = 0, sts2 = 1;
  
  initial cont = 9'd0;
  initial STF_ERR = 1'b1;
  initial previous_bit = ~RX;
  
  always_ff @ (posedge SP or posedge reset) begin
    if(reset == 1)begin
      estado_atual <= sts1;
      STF_ERR <= 1'b1;
    end
    
  	case(estado_atual)
      sts1: begin		//WATING FOR STUFF AREA
        STF_ERR <= 1'b1;
        if(F_STF == 1'b0)begin
            estado_atual <= sts2;
          	cont <= 9'd0;
        end
      end
      sts2: begin		//STUFF AREA
        if(F_STF == 1'b1)begin
            estado_atual <= sts1;
						cont <= 9'd0;
        end
        else begin
          if(previous_bit == RX && cont==4)begin
        			STF_ERR <= 1'b0;
              cont <= 9'd0;
            	estado_atual <= sts1;
          end
    			else begin
            if(previous_bit != RX)begin
            	cont <= 9'd0;
  					end
            else begin 
              if(previous_bit == RX && cont<4)begin
                cont <= cont + 9'd1;
          		end
            end
        	end
      	end
  		end
    endcase
  end