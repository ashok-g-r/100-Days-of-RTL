module comparator_4bit(input [3:0]a,b,output less,equal,greater);
reg less,equal,greater;
always@(a or b)
begin
if(a<b)
begin
  less=1;
  equal=0;
  greater=0;
end
 else if(a==b)
 begin
   less=0;
   equal=1;
   greater=0;
  end
  else 
  begin
   less=0;
   equal=0;
   greater=1;
   end
 end
endmodule