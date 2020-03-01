module counter(
input clk,
input rstn,
output[3:0] cnt
);
reg [3:0] cnt_i;

always @(posedge clk or negedge rstn)
begin 
if(~rstn)
        cnt_i<=4'h0;
    else
        cnt_i <= cnt_i+4'h1;
end

assign cnt=cnt_i;
endmodule
