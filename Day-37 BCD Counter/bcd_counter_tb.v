module bcd_counter_tb;
reg clk;
reg reset;
wire [3:0] q;

bcd_counter DUT(.clk(clk), .reset(reset), .q(q));
initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

initial begin
  reset = 1;
  #10 reset = 0;
   $monitor ("T=%0t out=%b", $time, q);
  #150 reset = 1;
 #10 reset = 0;
 #200
 $finish;
 end
endmodule