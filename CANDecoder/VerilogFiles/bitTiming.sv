module bitTiming(
    input clk, rx,
    output sp
);

reg [8:0] cont;
reg [7:0] estado_atual;

parameter baudrate_prescaler = 9600,
            oscilator_frequency = 4000; //aleatory values
            SJW = 4


always_ff @(posedge reset or negedge clk) begin
    
end

