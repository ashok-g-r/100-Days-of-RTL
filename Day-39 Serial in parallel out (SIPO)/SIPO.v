module dff(d,clk,q);
input d,clk;
output q;
reg q=0;
always @(posedge clk)
begin
q<=d;
end
endmodule

module SIPO(d,clk,q);
input d,clk;
output [3:0]q;
dff a1(d,clk,q[3]);
dff a2(q[3],clk,q[2]);
dff a3(q[2],clk,q[1]);
dff a4(q[1],clk,q[0]);
endmodule