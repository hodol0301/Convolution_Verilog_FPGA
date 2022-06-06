

module adder_16bit(in1,in2,out);
   input [31:0] in1,in2;
   output [31:0] out;
   wire [31:0] 	 s;
   wire [31:0] 	 c;

   full_adder FA1(in1[0],in2[0],1'b0,s[0],c[0]);

   full_adder FA[31:1](in1[31:1],in2[31:1],c[30:0],s[31:1],c[31:1]);

   assign out=s;

endmodule // adder_16bit

   
   
   
