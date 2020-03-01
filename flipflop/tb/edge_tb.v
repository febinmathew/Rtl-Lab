module edge_tb;
reg clk,rstn;
reg cin;
wire cout;

edge_mod dut0(.clk(clk),.rstn(rstn),.cin(cin),.cout(cout));

initial
begin
 clk = 0;
 forever #5 clk = ~clk;
end

initial
begin
 $dumpfile("edge.vcd");
 $dumpvars(0,edge_tb);

 rstn=0; cin=0; #20; rstn =1;
 #500; cin=1;
 #500; cin=0;
 #500; cin=0;
 #500; cin=1;
 #500; cin=0;

 #5000;
 $display("\n*********FINISHING********\n");
 $finish;

end
endmodule
