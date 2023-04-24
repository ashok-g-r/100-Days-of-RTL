//1st Method
module mux2to1(a,b,sel,y);
input a,b,sel;
output y;
assign y= sel ? b:a;
endmodule
//2nd Method
module mux2to1(a,b,sel,y);
input a,b,sel;
output y;
bufif0(y,a,sel);
bufif1(y,b,sel);
endmodule

//3rd method
module mux2to1(a,b,sel,y);
input a,b,sel;
output reg y;
always@(sel,a,b)
begin
case(sel)
1'b0:y=a;
1'b1:y=b;
endcase
end
endmodule