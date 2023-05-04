module SR_LATCH(S,R,Q,Q_bar);
input S,R;
output Q,Q_bar;
assign Q=~(R|Q_bar);
assign Q_bar=~(S|Q);
endmodule
