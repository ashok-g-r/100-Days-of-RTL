module pipo_reg_tb;
reg clk,clear;
wire [3:0] q;
reg [3:0] d;
pipo_reg uut (.clk(clk), .clear(clear),.d(d),.q(q));
initial begin
clk = 0;
clear = 1;
#5 clear=1'b0;
#5 d=4'b0011;
#5 d=4'b0111;
#5 d=4'b1011;
#5 d=4'b1001;
#5 d=4'b1111;
#5 d=4'b0001;
#5 d=4'b1010;
#5 d=4'b1011;
end
always #1 clk = ~clk;
initial 
begin
$monitor(" Data In = %b | Data out=%b",d,q);
#150 $stop;
end
endmodule