//Implementaion of HALF ADDER 
module half_adder(a,b,sum,carry );
    input a,b;
    output sum,carry;
   assign sum=a^b;
  assign carry=a&b;
endmodule

//Implementaion of FULL ADDER using Half Adder 
module full_adder(a,b,c,sum,carry);
    input a,b,c;
    output sum,carry;
    wire s1,c1,c2;  
 half_adder h1(a,b,s1,c1);
 half_adder h2(s1,c,sum,c2);
 assign carry=c1|c2;
endmodule
