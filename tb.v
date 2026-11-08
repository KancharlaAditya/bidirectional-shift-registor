`include "bi_directional.v"
module test_bench;
reg clk,reset,load,mode,si;
reg [3:0]pi;
wire [3:0]q;
bi dut(.*);
always #10 clk=~clk;
initial begin
$monitor("[%0t]|clk=%b|reset=%b|load=%b|mode=%b|si=%b|pi=%b|q=%b",$time,clk,reset,load,mode,si,pi,q);

clk=0;
reset=1;
mode=0;
load=0;
si=0;
pi=4'b0000;
#10;
reset=0;
load=1;
pi=4'b1011;
#10;
load=0;
mode=1;
si=0;
#10;
si=1;
#10;
mode=0;
si=0;
#70;
$finish;
end
endmodule

