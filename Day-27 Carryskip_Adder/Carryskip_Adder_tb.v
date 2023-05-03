module  Carryskip_Adder_tb();
reg [3:0] a, b; 
reg cin;
wire [3:0] sum; 
wire cout;
Carryskip_Adder dut(a, b, cin, sum, cout);
initial
begin
a = 4'b0000; b = 4'b0000; cin = 1'b0; #10
a = 4'b0001; b = 4'b0010; cin = 1'b0; #10
a = 4'b1111; b = 4'b1110; cin = 1'b1; #10
a = 4'b1110; b = 4'b1110; cin = 1'b1; #10
a = 4'b1111; b = 4'b1111; cin = 1'b1;
end
initial
begin
//display variables
$monitor("A=%b | B=%b | Cin=%b | Sum=%b | Carry=%b",a,b,cin,sum,cout);
#100 $finish;
end 
endmodule
