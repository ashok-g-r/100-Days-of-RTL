module Mod_8_UP_and_Down_tb;
reg j,k,clock,sel,reset;
wire [2:0]q;
Mod_8_UP_and_Down uut(j,k,sel,clock,reset,q);
initial 
  begin 
  j<=1'b0;
  k<=1'b0;
  sel<=1'b0;
       reset=1;
       clock=0;
       forever #5 clock=~clock;
  end
initial begin
#20 
reset<=0;
j<=1'b1;
k<=1'b1;
#80 reset=1;
#20
reset<=0;
sel<=1;
#160
$finish;
end
endmodule 