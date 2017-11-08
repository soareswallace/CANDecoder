module EOF_error(input reset, SP, RX, EOF_Flag,
                output reg [1:0] EOF_Error,
               );

reg [7:0]estado_atual;
parameter sts1 = 0, sts2 = 1;

initial cont = 9'd0;
initial EOF_Error = 1'b1;

always_ff @ (posedge SP or posedge reset)begin
    if (reset) begin
        estado_atual <= sts1;
        EOF_Error <= 1'b1;
        cont <= 9'd0;
    end

    case(estado_atual)
        sts1: begin
            EOF_Error <= 1'b1; //waiting for EOF area
            if(EOF_Flag == 1'b0)begin
                estado_atual <= sts2;
                cont <= 9'd0;
            end
        end

        sts2: begin  //EOF Area
            if(EOF_Flag == 1'b1)begin
                estado_atual <= sts1;
                cont <= 9'd0;
            end
            else begin
                if(cont<=6 && RX==0)begin //EOF Error found
                    EOF_Error <= 1'b0;
                    cont <= 9'd0;
                    estado_atual <= sts1;
                end
                else begin
                    cont <= cont + 9'd1;
                end
            end
        end
    endcase
end