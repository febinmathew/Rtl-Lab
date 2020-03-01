module chip_top(
input clk,rstn,
output pulse
);
wire [3:0] cnt;
counter u0(clk,rstn,cnt);
comparator u1(cnt,pulse);

endmodule
