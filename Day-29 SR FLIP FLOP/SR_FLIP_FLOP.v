module SR_FLIP_FLOP(S,R,Q,Q_bar);
input S,R;
output Q,Q_bar;
wire nand1_out; // output of nand1 
wire nand2_out; // output of nand2 

nand (nand1_out,S); 
nand (nand2_out,R); 
nand (Q,nand1_out,Q_bar);
nand (Q_bar,nand2_out,Q);

endmodule