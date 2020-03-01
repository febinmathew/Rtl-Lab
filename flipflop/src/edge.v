module edge_mod(
input clk,
input rstn,
input cin,
output cout
);

reg cin_1;
//initially this was not here
reg cin_2;
reg cin_3;
reg cin_4;


always @(posedge clk or negedge rstn)
begin
 if(~rstn)
  begin
   cin_1 <= 1'b0;
   cin_2 <= 1'b0;
   cin_3 <= 1'b0;
   cin_4 <= 1'b0;
  end
 else
  begin
   //cin_f <= cin;
   cin_1 <= cin;
   cin_2 <= cin_1;
   cin_3 <= cin_2;
   cin_4 <= cin_3;
  end
end

//initally it was assign_count = cin_f;
assign cout = cin_4 & ~cin_3 & cin_2 & cin_1;

endmodule
