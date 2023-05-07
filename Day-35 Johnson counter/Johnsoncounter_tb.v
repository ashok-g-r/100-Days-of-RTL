module Johnsoncounter_tb();
reg reset, clock;
wire [3:0]q;
Johnson_counter dut(.q(q), .reset(reset),.clock(clock)); 
initial 
begin
  clock = 1'b0;
     forever #5 clock = ~clock;  
end 
initial
 begin 
 reset = 1'b1;
 #10;
 reset = 1'b0;
 end 
 initial begin
 $monitor("reset = %b, q= %b", reset,q);
 #150
 $finish;
 end
endmodule