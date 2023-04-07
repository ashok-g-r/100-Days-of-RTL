//Data Flow Modelling
module Basic_gates(
    input a,
    input b,
    output [0:6]y   
    );
    assign y[0]=~a;
    assign y[1]=a&b;
    assign y[2]=a|b;
    assign y[3]=~(a &b);
    assign y[4]=~(a|b);
    assign y[5]=a^b;
    assign y[6]=~(a^b);
    endmodule