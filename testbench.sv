module tb;
reg clk, rst;
  wire [2:0] NS_light, EW_light;
traffic_light_controller uut(.clk(clk), .rst(rst), .NS_light(NS_light), .EW_light(EW_light));
initial begin clk=0; forever #5 clk=~clk; end
  initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, tb);
end
initial begin
    rst=1; #10 rst=0;
    #500 $finish;
end
endmodule
