module comparator(
input [3:0] comp_i,
output comp_o
);
assign comp_o=(comp_i==4'h0)?1'b1:1'b0;
endmodule
