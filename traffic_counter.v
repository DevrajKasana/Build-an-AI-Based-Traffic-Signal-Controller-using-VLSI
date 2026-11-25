
module trffic_counter(
input clk,  
input reset,
output reg[2:0] count
);
begin
if(reset)
count <= 0;
else if(count == 5)
count <= 0;
else
count <= count + 1;
end
endmodule
