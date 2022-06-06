`include "mux_9to1.v"

module mux_layer(in1,in2,in3,in4,in5,in6,in7,in8,in9,s,out);
   input [31:0] in1,in2,in3,in4,in5,in6,in7,in8,in9;
   input [3:0] 	s;
   output [31:0] out;

   mux_9to1 MUX[31:0](in1[31:0],in2[31:0],in3[31:0],in4[31:0],in5[31:0],in6[31:0],in7[31:0],in8[31:0],in9[31:0],s,out[31:0]);

   
   




   

endmodule // mux_layer
