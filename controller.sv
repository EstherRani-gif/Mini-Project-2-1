module traffic_light_controller(
    input clk, rst,
  output reg [2:0] NS_light,
  output reg [2:0] EW_light
);
parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
reg [1:0] state, next_state;
reg [3:0] count;

always @(posedge clk or posedge rst) begin
    if(rst) begin state<=S0; count<=0; end
    else begin
        if(count==9) begin count<=0; state<=next_state; end
        else count<=count+1;
    end
end

always @(*) begin
    case(state)
        S0: begin NS_light=3'b001; EW_light=3'b100; next_state=(count==9)?S1:S0; end
        S1: begin NS_light=3'b010; EW_light=3'b100; next_state=(count==9)?S2:S1; end
        S2: begin NS_light=3'b100; EW_light=3'b001; next_state=(count==9)?S3:S2; end
        S3: begin NS_light=3'b100; EW_light=3'b010; next_state=(count==9)?S0:S3; end
        default: begin NS_light=3'b100; EW_light=3'b100; next_state=S0; end
    endcase
end
endmodule
