`include "multiplier_layer.v"
`include "mux_layer.v"
`include "accumulator.v"
module test01(clk,reset,in1,in2,in3,in4,in5,in6,in7,in8,in9,w1,w2,w3,w4,w5,w6,w7,w8,w9,out1,out2,out3,out4,out5,out6,out7,out8,out9);
   input clk,reset;
   input [15:0] in1,in2,in3,in4,in5,in6,in7,in8,in9;
   input [15:0] w1,w2,w3,w4,w5,w6,w7,w8,w9;
   wire [31:0] o1,o2,o3,o4,o5,o6,o7,o8,o9;
   reg [35:0]  s1,s2,s3,s4,s5,s6,s7,s8,s9;
   wire [31:0] acc1,acc2,acc3,acc4,acc5,acc6,acc7,acc8,acc9;
   output [31:0] out1,out2,out3,out4,out5,out6,out7,out8,out9;
   wire [21:0] 	 out_pixel1,out_pixel2,out_pixel3,out_pixel4,out_pixel5,out_pixel6,out_pixel7,out_pixel8,out_pixel9;

   assign out_pixel1=out1[31:10];
   assign out_pixel2=out2[31:10];
   assign out_pixel3=out3[31:10];
   assign out_pixel4=out4[31:10];
   assign out_pixel5=out5[31:10];
   assign out_pixel6=out6[31:10];
   assign out_pixel7=out7[31:10];
   assign out_pixel8=out8[31:10];
   assign out_pixel9=out9[31:10]; //out_pixel is integer
   
   multiplier_layer ML(in1,in2,in3,in4,in5,in6,in7,in8,in9,w1,w2,w3,w4,w5,w6,w7,w8,w9,o1,o2,o3,o4,o5,o6,o7,o8,o9);
   mux_layer MUX1(o1,o2,o3,o4,o5,o6,o7,o8,o9,s1[3:0],acc1);
   mux_layer MUX2(o1,o2,o3,o4,o5,o6,o7,o8,o9,s2[3:0],acc2);
   mux_layer MUX3(o1,o2,o3,o4,o5,o6,o7,o8,o9,s3[3:0],acc3);
   mux_layer MUX4(o1,o2,o3,o4,o5,o6,o7,o8,o9,s4[3:0],acc4);
   mux_layer MUX5(o1,o2,o3,o4,o5,o6,o7,o8,o9,s5[3:0],acc5);
   mux_layer MUX6(o1,o2,o3,o4,o5,o6,o7,o8,o9,s6[3:0],acc6);
   mux_layer MUX7(o1,o2,o3,o4,o5,o6,o7,o8,o9,s7[3:0],acc7);
   mux_layer MUX8(o1,o2,o3,o4,o5,o6,o7,o8,o9,s8[3:0],acc8);
   mux_layer MUX9(o1,o2,o3,o4,o5,o6,o7,o8,o9,s9[3:0],acc9);

   accumulator ACC1(clk,reset,acc1,out1);
   accumulator ACC2(clk,reset,acc2,out2);
   accumulator ACC3(clk,reset,acc3,out3);
   accumulator ACC4(clk,reset,acc4,out4);
   accumulator ACC5(clk,reset,acc5,out5);
   accumulator ACC6(clk,reset,acc6,out6);
   accumulator ACC7(clk,reset,acc7,out7);
   accumulator ACC8(clk,reset,acc8,out8);
   accumulator ACC9(clk,reset,acc9,out9);
   
   
   always @(posedge clk)
     begin
	if(reset)
	  begin
	     s1=36'b000101000111001001011000001101101001;
	     s2=36'b001101101001000101000111001001011000;
	     s3=36'b001001011000001101101001000101000111;
	     s4=36'b011100010100100000100101100100110110;
	     s5=36'b100100110110011100010100100000100101;
	     s6=36'b100000100101100100110110011100010100;
	     s7=36'b010001110001010110000010011010010011;
	     s8=36'b011010010011010001110001010110000010;
	     s9=36'b010110000010011010010011010001110001;
	  end // if (reset)
	else
	  begin
	     s1={s1[3:0],s1[35:4]};
	     s2={s2[3:0],s2[35:4]};
	     s3={s3[3:0],s3[35:4]};
	     s4={s4[3:0],s4[35:4]};
	     s5={s5[3:0],s5[35:4]};
	     s6={s6[3:0],s6[35:4]};
	     s7={s7[3:0],s7[35:4]};
	     s8={s8[3:0],s8[35:4]};
	     s9={s9[3:0],s9[35:4]};
	  end // else: !if(reset)
     end // always @ (posedge clk)
endmodule // test01

	     
	     
	

   
