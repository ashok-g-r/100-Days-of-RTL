module jk_ff(j,k,clk,reset,Q);
input j,k,clk,reset;
output reg Q;
    always@(negedge clk)
          begin
            if(reset)
            Q <= 1'b0;
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

module async_4bit_count(j,k,clock,reset,q);
input j,k;
input clock,reset;
output [3:0]q;
jk_ff JK1(j,k,clock,reset,q[0]);
jk_ff JK2(j,k,q[0],reset,q[1]);
jk_ff JK3(j,k,q[1],reset,q[2]);
jk_ff JK4(j,k,q[2],reset,q[3]);
endmodule