module encoder8to3(en,in,y,v);
input en;
input [7:0]in;
output reg v;
output [2:0] y;
reg [2:0] y;
always @ (in,en)
begin
 if(en==0)
 begin
 y =3'bxxx;
 v=1'b0;
 end 
else
 begin 
 v=1'b1;
case (in)
8'b00000001: y= 3'b000;
8'b00000010: y= 3'b001;
8'b00000100: y= 3'b010;
8'b00001000: y= 3'b011;
8'b00010000: y= 3'b100;
8'b00100000: y= 3'b101;
8'b01000000: y= 3'b110;
8'b10000000: y= 3'b111;
default: y=3'bzzz;
endcase
end
end
endmodule