module mux4to1_tb;
reg a,b,c,d;
reg[1:0]sel;
wire y;
mux4to1 m1(.a(a),.b(b),.c(c),.d(d),.sel(sel),.y(y));
initial begin
a=1;
b=0;
c=1;
d=0;
sel=2'b00;
#10
sel=2'b01;
#10
sel=2'b10;
#10
sel=2'b11;
end 
endmodule
