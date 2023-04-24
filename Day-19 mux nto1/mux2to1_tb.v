module mux2to1_tb;
reg a,b,sel;
wire y;
mux2to1 m1(.a(a),.b(b),.sel(sel),.y(y));
initial begin
a=1;
b=0;
sel=0;
#100
sel=1;
end 
endmodule