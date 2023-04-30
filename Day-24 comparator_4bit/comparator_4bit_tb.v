module comparator_4bit_tb;
reg [3:0]a, b;
wire less,equal,greater;
comparator_4bit uut(a,b,less,equal,greater);
initial  begin
a=4'b000; b=4'b0000;
#10
a=4'b000; b=4'b0011;
#10
a=4'b011; b=4'b0000;
#10
a=4'b100; b=4'b0000;
end
endmodule