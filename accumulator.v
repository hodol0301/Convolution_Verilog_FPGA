`include "adder_16bit.v"

module accumulator(clk,reset,in,out);
   input clk,reset;
   input [31:0] in;
   output reg [31:0] out;
   wire [31:0] 	     sub_out;

   adder_16bit ADD(in,out,sub_out);
   
   
   

   always @(posedge clk)
     begin
	if (reset)
	  begin
	     out=0;
	  end
	else
	  begin
	     out=sub_out;
	  end
     end // always @ (posedge clk)
endmodule // accumulator

	     
   
