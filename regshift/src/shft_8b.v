module  shft_mod(
input clk,
input rstn,
input load, dir,
input [7:0] LD,
output cout
);

reg [7:0] shft_reg;

always @(posedge clk or negedge rstn)
begin
 if(~rstn)
  begin
   shft_reg <= 8'h00;
  end
 else
  begin
   if(load)
    shft_reg <= LD[7:0];
   else
    if(dir)
     shft_reg[7:0] <= {1'b0, shft_reg[7:1]};
    else
     shft_reg[7:0] <= {shft_reg[6:0], 1'b0};
  end
end

assign cout = dir ? shft_reg[0] : shft_reg[7];

endmodule



