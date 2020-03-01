module edge_mod(
input clk,
input rstn,
input cin,
output cout
);

reg cin_f;
//initially this was not here
reg cin_ff;

always @(posedge clk or negedge rstn)
begin
 if(~rstn)
  begin
   cin_f <=1'b0;
   cin_ff <=1'b0;
  end
 else
  begin
   //cin_f <= cin;
   cin_f <= cin;
   cin_ff<=cin_f;
  end
end

//initally it was assign_count = cin_f;
assign cout = ~cin_ff & cin_f;

endmodule
