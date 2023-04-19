//Implementaion of HALF SUBTRACTOR by using Data Flow Modelling
module half_subtractor(
    input a,
    input b,
    output Diff,Barrow
    );
  assign Diff=a^b;
  assign Barrow=~a&b;
endmodule

//Implementaion of FULL SUBTRACTOR using HALF SUBTRACTOR
module full_subtracor(a,b,c,Diff,Barrow);
    input a,b,c;
    output Diff,Barrow;
    wire d1,b1,b2;  
 half_subtractor h1(a,b,d1,b1);
 half_subtractor h2(d1,c,Diff,b2);
 assign Barrow=b1|b2;
endmodule
