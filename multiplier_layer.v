`include "multiplier.v"

module multiplier_layer(in1,in2,in3,in4,in5,in6,in7,in8,in9,w1,w2,w3,w4,w5,w6,w7,w8,w9,out1,out2,out3,out4,out5,out6,out7,out8,out9);
   input [15:0] in1,in2,in3,in4,in5,in6,in7,in8,in9;
   input [15:0] w1,w2,w3,w4,w5,w6,w7,w8,w9;
   output [31:0] out1,out2,out3,out4,out5,out6,out7,out8,out9;





   multiplier_16bit MUL1(w1,in1,out1);
   multiplier_16bit MUL2(w2,in2,out2);
   multiplier_16bit MUL3(w3,in3,out3);
   multiplier_16bit MUL4(w4,in4,out4);
   multiplier_16bit MUL5(w5,in5,out5);
   multiplier_16bit MUL6(w6,in6,out6);
   multiplier_16bit MUL7(w7,in7,out7);
   multiplier_16bit MUL8(w8,in8,out8);
   multiplier_16bit MUL9(w9,in9,out9);

   

endmodule // multiplier_layer
