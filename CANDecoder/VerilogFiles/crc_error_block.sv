module CRC_error(input reset, SP, RX, EOF_Flag,
                output reg [1:0] CRC_Error,
               );
reg [7:0]estado_atual;
parameter sts1 = 0, sts2 = 1;

initial cont = 9'd0;
initial CRC_Error = 1'b1;

always_ff @ (posedge SP or posedge reset)begin
    if (reset) begin
        estado_atual <= sts1;
        CRC_Error <= 1'b1;
        cont <= 9'd0;
    end