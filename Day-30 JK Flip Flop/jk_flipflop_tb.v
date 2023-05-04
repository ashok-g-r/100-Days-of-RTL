module jk_flipflop_tb;
reg clk,rst,j,k;
wire q_n,q_n_bar;

  jk_flipflop dut(j,k,clk,rst,q_n,q_n_bar);
  
  initial begin 
  clk=0;
  forever #5 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;

     rst=0;
     #10;

     j = 1'b0;
     k = 1'b0;     
     #10;
    
     j = 1'b0;
     k = 1'b1;     
     #10;
     
     j = 1'b1;
     k = 1'b0;     
     #10;
     
     j = 1'b1;
     k = 1'b1;
     #10;
  
     $finish;
    end 
endmodule