//Implementaion of FULL ADDER by using Behavioral Modelling
module full_adder(
    input a,
    input b,
    input c,
    output reg sum,carry
    );
    always@(*)
    begin
   sum=a^b^c;
   carry=(a^b)&c|a&b;
   end
endmodule

//Carry skipAdder
module Carryskip_Adder(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire c1,c2,c3,c4,p0,p1,p2,p3,m;
full_adder  FA1(a[0],b[0],cin,sum[0],c1);
full_adder FA2(a[1],b[1],c1,sum[1],c2);
full_adder FA3(a[2],b[2],c2,sum[2],c3);
full_adder FA4(a[3],b[3],c3,sum[3],c4);
//calculating carry propogate
xor(p0,a[0],b[0]);
xor(p1,a[1],b[1]);
xor(p2,a[2],b[2]);
xor(p3,a[3],b[3]);

and #5 (m,p0,p1,p2,p3);
//applying 2x1 multiplexer
assign cout=m?cin:p3;
endmodule