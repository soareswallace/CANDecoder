module bitTiming(
    input clk, rx,
    output sp
);

reg [8:0] cont;
reg [7:0] estado_atual;

