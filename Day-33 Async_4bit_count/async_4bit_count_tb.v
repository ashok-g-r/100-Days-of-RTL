module async_4bit_count_tb;
reg j,k,clock,reset;
wire [3:0]q;
async_4bit_count uut(j,k,clock,reset,q);
initial 
  begin 
  j<=1'b0;
  k<=1'b0;
       reset=1;
       clock=0;
       forever #5 clock=~clock;
  end
initial begin
#20 
reset<=0;
j<=1'b1;
k<=1'b1;
#160 reset=1;
#20
reset<=0;
#160
$finish;
end
endmodule
