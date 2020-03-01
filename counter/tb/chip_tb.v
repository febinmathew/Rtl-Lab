


module chipt_tb();
reg clk,rstn;
wire pulse; 

chip_top dut0(clk,rstn,pulse);

initial 
begin

clk=0;
forever #5 clk=~clk;
end

initial
begin
$dumpfile("chip.vcd");
$dumpvars(0,chip_tb);

rstn=0;
#20;rstn=1;

#10000;
$display("\n***********************************************************\n");
$display("Finishing RUN ..... GOOD BYE\n");
$display("\n***********************************************************\n");
$finish

end
endmodule

