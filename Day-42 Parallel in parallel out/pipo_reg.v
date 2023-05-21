module pipo_reg(clk,clear,d,q);
input clk,clear;
output reg [3:0]  q;
input [3:0] d;
always @(posedge clk )
begin
if (clear)
q=  4'b0000;
else
q=d;
end
endmodule