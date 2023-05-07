module T_flip_flop_tb;
reg clk,rst,t;
wire q;
  T_flip_flop dut(t,clk,rst,q);
  
  initial 
  begin 
       clk=0;
       t=0;
       forever #5 clk=~clk;
  end
  
  initial begin
  $monitor("Time=%0t , clock=%b , reset=%b , T=%b , Q=%b",$time,clk,rst,t,q);
  end
  
  initial 
      begin
          rst=1;
          #5;
          rst=0;
          repeat(5)
          
          begin   
          #20 t = 1'b1;
          #40  t = 1'b0; 
          end
          
$finish;
       end  
endmodule
