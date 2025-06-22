module double_syn #(parameter WIDTH = 4)(input clk,input reset,input [WDITH:0] data,output reg [WIDTH:0] data_out);

reg [WIDTH:0] n1;

always @(posedge clk or posedge reset)begin 
	if(reset)begin 
		n1 <= 'b0;end
	else
		n1 <= data;
end
always @(posedge clk or posedge reset)begin 
	if(reset)begin 
		data_out <= 'b0;
	else
		data_out <= n1;
end
endmodule 
