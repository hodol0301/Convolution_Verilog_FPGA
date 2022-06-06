module mux_9to1(in1,in2,in3,in4,in5,in6,in7,in8,in9,s,out);
   input in1,in2,in3,in4,in5,in6,in7,in8,in9;
   input [3:0] s;
   output      out;
   wire        y1,y2,y3,y4,y5,y6,y7,y8,y9;


   assign y1=~s[3]&~s[2]&~s[1]&s[0]&in1;
   assign y2=~s[3]&~s[2]&s[1]&~s[0]&in2;
   assign y3=~s[3]&~s[2]&s[1]&s[0]&in3;
   assign y4=~s[3]&s[2]&~s[1]&~s[0]&in4;
   assign y5=~s[3]&s[2]&~s[1]&s[0]&in5;
   assign y6=~s[3]&s[2]&s[1]&~s[0]&in6;
   assign y7=~s[3]&s[2]&s[1]&s[0]&in7;
   assign y8=s[3]&~s[2]&~s[1]&~s[0]&in8;
   assign y9=s[3]&~s[2]&~s[1]&s[0]&in9;
   

   assign out=y1^y2^y3^y4^y5^y6^y7^y8^y9;

endmodule // mux_9to1
