module fsm_patren_detector_tb;
reg din,clk,reset;
wire y;
fsm_patren_detector dut(din,reset,clk,y);
initial 
begin
reset=0;clk=0;din=0;
$monitor($time,,,"c=%b",clk,,"y=%b",y,,"r=%b",reset,,"d=%b",din);
repeat(10) begin
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=1;
#10 din=0;
#10 din=0;
end
end
always
#5 clk=~clk;
initial 
#500 $finish;
endmodule
