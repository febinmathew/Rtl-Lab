module shft_tb();
reg clk, rstn;
reg load, dir;
reg [7:0] LD;
wire cout;

shft_mod dut0(.clk(clk), .rstn(rstn), .load(load), .dir(dir), .LD(LD), .cout(cout));

initial
begin
 clk = 0;
 forever #5 clk = ~clk;
end

initial
begin
 $dumpfile("shft.vcd");
 $dumpvars(0,shft_tb);

 rstn = 0; load = 0; dir = 1; rstn = 1;

 dir = 1'b1; // RIGHT shift 
 #500; LD = 8'hA9;
 #500; 
 @(posedge clk); #1;
 load = 1'b1;
 @(posedge clk); #1;
 load = 1'b0;
 
 #500; 
 dir = 1'b0;  // LEFT shift
 #500; LD = 8'h56;
 #500; 

 @(posedge clk); #1;
 load = 1'b1;
 @(posedge clk); #1;
 load = 1'b0;

 #5000;
 $display("\n**************************\n");
 $display("finishing RUN ... Good Bye \n");
 $display("\n**************************\n");
 $finish;
end

endmodule

