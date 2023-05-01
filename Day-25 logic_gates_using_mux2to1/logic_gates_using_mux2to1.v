module mux2to1(out,sel,a,b);
input [3:0]a,b;
input sel;
output [3:0]out;
assign out=~sel&a|sel&b;
endmodule

module logic_gates_using_mux2to1(a,b,y);
input a,b;
output  [0:6]y;

mux2to1 not_gate(.out(y[0]),.sel(a),.a(1),.b(0));
mux2to1 and_gate(.out(y[1]),.sel(a),.a(0),.b(b));
mux2to1 or_gate(.out(y[2]),.sel(a),.a(b),.b(1));
mux2to1 nand_gate(.out(y[3]),.sel(a),.a(1),.b(~b));
mux2to1 nor_gate(.out(y[4]),.sel(a),.a(~b),.b(0));
mux2to1 xor_gate(.out(y[5]),.sel(a),.a(b),.b(~b));
mux2to1 xnor_gate(.out(y[6]),.sel(a),.a(~b),.b(b));

endmodule