module bi(input clk,reset,si,load,mode,[3:0]pi,output reg[3:0]q);
always @(posedge clk or posedge reset)begin
if(reset)
q<=4'b0000;
else if(load)
q<=pi;
else if(mode)
q<={si,q[3:1]};
else
q<={q[2:0],si};
end
endmodule

