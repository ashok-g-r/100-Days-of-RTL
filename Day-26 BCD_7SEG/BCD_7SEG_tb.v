module BCD_7SEG_tb();
  reg [3:0] bcd;
  wire [6:0] seg;
  integer i;
  
BCD_7SEG  uut ( .bcd(bcd),  .seg(seg));

initial begin
for(i = 0; i < 10; i = i+1) 
begin
            bcd = i; 
            #10; //wait for 10 ns
            $monitor("bcd=%b, 7seg=%b",bcd,seg);
 end          
end
endmodule