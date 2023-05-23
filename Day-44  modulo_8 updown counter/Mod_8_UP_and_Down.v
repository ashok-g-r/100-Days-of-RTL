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

module jk_ff(j,k,clk,reset,Q);
input j,k,clk,reset;
output reg Q;
    always@(posedge clk)
          begin
            if(reset)
            Q <= 1'b1;
            else  begin
                  case({j,k})
                  2'b00: Q<= Q;
                  2'b01: Q<= 1'b0;
                  2'b10: Q<= 1'b1;
                  2'b11: Q<= ~Q;
                  default:begin end
                  endcase
         end          
end
endmodule

module Mod_8_UP_and_Down(j,k,sel,clock,reset,q);
input j,k,sel;
input clock,reset;
output [2:0]q;
wire m1,m2;
jk_ff JK1(j,k,clock,reset,q[0]);
mux2to1 mux1(q[0],~q[0],sel,m1);
jk_ff JK2(j,k,m1,reset,q[1]);
mux2to1 mux2(q[1],~q[1],sel,m2);
jk_ff JK3(j,k,m2,reset,q[2]);
endmodule
