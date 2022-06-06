module mux_8to1(in0,in1,in2,in3,in4,in5,in6,in7,s,out);
   input in0,in1,in2,in3,in4,in5,in6,in7;
   input [2:0] s;
   output      out;
   wire        y0,y1,y2,y3,y4,y5,y6,y7;


   assign y0=~s[2]&~s[1]&~s[0]&in0;
   assign y1=~s[2]&~s[1]&s[0]&in1;
   assign y2=~s[2]&s[1]&~s[0]&in2;
   assign y3=~s[2]&s[1]&s[0]&in3;
   assign y4=s[2]&~s[1]&~s[0]&in4;
   assign y5=s[2]&~s[1]&s[0]&in5;
   assign y6=s[2]&s[1]&~s[0]&in6;
   assign y7=s[2]&s[1]&s[0]&in7;
   

   assign out=y0^y1^y2^y3^y4^y5^y6^y7;

endmodule // mux_8to1
