//FORM ERROR BLOCK

module FORM_ERROR(input reset, SP, RX, F_ACK_D, F_CRC_D,
                 output reg [1:0] FORM_Error
               );

initial FORM_Error = 1'b1;

always_ff @ (posedge SP or posedge reset)begin
    if (reset) begin
        FORM_Error <= 1'b1;
    end 
  
  if(F_ACK_D == 1'b0)begin
    if(RX == 0)begin 		//ACK Error found
    	FORM_Error <= 1'b0;
    end
  end
  else begin
    if(F_CRC_D == 1'b0)begin
      if(RX == 0)begin 		//ACK Error found
        FORM_Error <= 1'b0;
      end
    end
    else begin
      FORM_Error <= 1'b1;
    end
  end
end
endmodule