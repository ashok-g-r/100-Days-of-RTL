module logic_gates_using_mux2to1_tb;
reg a,b;
wire [0:6]y;
logic_gates_using_mux2to1 u1(.a(a),.b(b),.y(y));
initial begin
a=0; b=0;
#100
a=0; b=1;
#100
a=1; b=0;
#100
a=1; b=1;
$finish;
end 

endmodule