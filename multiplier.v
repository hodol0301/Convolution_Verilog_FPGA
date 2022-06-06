`include "full_adder.v"


module multiplier_16bit(in1,in2,out);
   input [15:0] in1,in2;
   output [31:0] out;
   wire [15:0] 	 S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15;
   wire [14:0] 	 C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15;
   wire [15:0] 	 row1,row2,row3,row4,row5,row6,row7,row8,row9,row10,row11,row12,row13,row14,row15,row16;

   assign row1={~(in1[15]&in2[0]),in1[14]&in2[0],in1[13]&in2[0],in1[12]&in2[0],in1[11]&in2[0],in1[10]&in2[0],in1[9]&in2[0],in1[8]&in2[0],in1[7]&in2[0],in1[6]&in2[0],in1[5]&in2[0],in1[4]&in2[0],in1[3]&in2[0],in1[2]&in2[0],in1[1]&in2[0],in1[0]&in2[0]};
   assign row2={~(in1[15]&in2[1]),in1[14]&in2[1],in1[13]&in2[1],in1[12]&in2[1],in1[11]&in2[1],in1[10]&in2[1],in1[9]&in2[1],in1[8]&in2[1],in1[7]&in2[1],in1[6]&in2[1],in1[5]&in2[1],in1[4]&in2[1],in1[3]&in2[1],in1[2]&in2[1],in1[1]&in2[1],in1[0]&in2[1]};
   assign row3={~(in1[15]&in2[2]),in1[14]&in2[2],in1[13]&in2[2],in1[12]&in2[2],in1[11]&in2[2],in1[10]&in2[2],in1[9]&in2[2],in1[8]&in2[2],in1[7]&in2[2],in1[6]&in2[2],in1[5]&in2[2],in1[4]&in2[2],in1[3]&in2[2],in1[2]&in2[2],in1[1]&in2[2],in1[0]&in2[2]};
   assign row4={~(in1[15]&in2[3]),in1[14]&in2[3],in1[13]&in2[3],in1[12]&in2[3],in1[11]&in2[3],in1[10]&in2[3],in1[9]&in2[3],in1[8]&in2[3],in1[7]&in2[3],in1[6]&in2[3],in1[5]&in2[3],in1[4]&in2[3],in1[3]&in2[3],in1[2]&in2[3],in1[1]&in2[3],in1[0]&in2[3]};
   assign row5={~(in1[15]&in2[4]),in1[14]&in2[4],in1[13]&in2[4],in1[12]&in2[4],in1[11]&in2[4],in1[10]&in2[4],in1[9]&in2[4],in1[8]&in2[4],in1[7]&in2[4],in1[6]&in2[4],in1[5]&in2[4],in1[4]&in2[4],in1[3]&in2[4],in1[2]&in2[4],in1[1]&in2[4],in1[0]&in2[4]};
   assign row6={~(in1[15]&in2[5]),in1[14]&in2[5],in1[13]&in2[5],in1[12]&in2[5],in1[11]&in2[5],in1[10]&in2[5],in1[9]&in2[5],in1[8]&in2[5],in1[7]&in2[5],in1[6]&in2[5],in1[5]&in2[5],in1[4]&in2[5],in1[3]&in2[5],in1[2]&in2[5],in1[1]&in2[5],in1[0]&in2[5]};
   assign row7={~(in1[15]&in2[6]),in1[14]&in2[6],in1[13]&in2[6],in1[12]&in2[6],in1[11]&in2[6],in1[10]&in2[6],in1[9]&in2[6],in1[8]&in2[6],in1[7]&in2[6],in1[6]&in2[6],in1[5]&in2[6],in1[4]&in2[6],in1[3]&in2[6],in1[2]&in2[6],in1[1]&in2[6],in1[0]&in2[6]};
   assign row8={~(in1[15]&in2[7]),in1[14]&in2[7],in1[13]&in2[7],in1[12]&in2[7],in1[11]&in2[7],in1[10]&in2[7],in1[9]&in2[7],in1[8]&in2[7],in1[7]&in2[7],in1[6]&in2[7],in1[5]&in2[7],in1[4]&in2[7],in1[3]&in2[7],in1[2]&in2[7],in1[1]&in2[7],in1[0]&in2[7]};
   assign row9={~(in1[15]&in2[8]),in1[14]&in2[8],in1[13]&in2[8],in1[12]&in2[8],in1[11]&in2[8],in1[10]&in2[8],in1[9]&in2[8],in1[8]&in2[8],in1[7]&in2[8],in1[6]&in2[8],in1[5]&in2[8],in1[4]&in2[8],in1[3]&in2[8],in1[2]&in2[8],in1[1]&in2[8],in1[0]&in2[8]};
   assign row10={~(in1[15]&in2[9]),in1[14]&in2[9],in1[13]&in2[9],in1[12]&in2[9],in1[11]&in2[9],in1[10]&in2[9],in1[9]&in2[9],in1[8]&in2[9],in1[7]&in2[9],in1[6]&in2[9],in1[5]&in2[9],in1[4]&in2[9],in1[3]&in2[9],in1[2]&in2[9],in1[1]&in2[9],in1[0]&in2[9]};
   assign row11={~(in1[15]&in2[10]),in1[14]&in2[10],in1[13]&in2[10],in1[12]&in2[10],in1[11]&in2[10],in1[10]&in2[10],in1[9]&in2[10],in1[8]&in2[10],in1[7]&in2[10],in1[6]&in2[10],in1[5]&in2[10],in1[4]&in2[10],in1[3]&in2[10],in1[2]&in2[10],in1[1]&in2[10],in1[0]&in2[10]};
   assign row12={~(in1[15]&in2[11]),in1[14]&in2[11],in1[13]&in2[11],in1[12]&in2[11],in1[11]&in2[11],in1[10]&in2[11],in1[9]&in2[11],in1[8]&in2[11],in1[7]&in2[11],in1[6]&in2[11],in1[5]&in2[11],in1[4]&in2[11],in1[3]&in2[11],in1[2]&in2[11],in1[1]&in2[11],in1[0]&in2[11]};
   assign row13={~(in1[15]&in2[12]),in1[14]&in2[12],in1[13]&in2[12],in1[12]&in2[12],in1[11]&in2[12],in1[10]&in2[12],in1[9]&in2[12],in1[8]&in2[12],in1[7]&in2[12],in1[6]&in2[12],in1[5]&in2[12],in1[4]&in2[12],in1[3]&in2[12],in1[2]&in2[12],in1[1]&in2[12],in1[0]&in2[12]};
   assign row14={~(in1[15]&in2[13]),in1[14]&in2[13],in1[13]&in2[13],in1[12]&in2[13],in1[11]&in2[13],in1[10]&in2[13],in1[9]&in2[13],in1[8]&in2[13],in1[7]&in2[13],in1[6]&in2[13],in1[5]&in2[13],in1[4]&in2[13],in1[3]&in2[13],in1[2]&in2[13],in1[1]&in2[13],in1[0]&in2[13]};
   assign row15={~(in1[15]&in2[14]),in1[14]&in2[14],in1[13]&in2[14],in1[12]&in2[14],in1[11]&in2[14],in1[10]&in2[14],in1[9]&in2[14],in1[8]&in2[14],in1[7]&in2[14],in1[6]&in2[14],in1[5]&in2[14],in1[4]&in2[14],in1[3]&in2[14],in1[2]&in2[14],in1[1]&in2[14],in1[0]&in2[14]};
   assign row16={in1[15]&in2[15],~(in1[14]&in2[15]),~(in1[13]&in2[15]),~(in1[12]&in2[15]),~(in1[11]&in2[15]),~(in1[10]&in2[15]),~(in1[9]&in2[15]),~(in1[8]&in2[15]),~(in1[7]&in2[15]),~(in1[6]&in2[15]),~(in1[5]&in2[15]),~(in1[4]&in2[15]),~(in1[3]&in2[15]),~(in1[2]&in2[15]),~(in1[1]&in2[15]),~(in1[0]&in2[15])};

   assign out[0]=row1[0]; //그대로 내려오는

   full_adder HA1(row1[1],row2[0],1'b0,out[1],C1[0]);

   full_adder FA1[14:0] ({1'b1,row1[15:2]},row2[15:1],C1,S1[14:0],{S1[15],C1[14:1]});

   full_adder HA2(S1[0],row3[0],1'b0,out[2],C2[0]);

   full_adder FA2[14:0] (S1[15:1],row3[15:1],C2[14:0],S2[14:0],{S2[15],C2[14:1]});

   full_adder HA3(S2[0],row4[0],1'b0,out[3],C3[0]);

   full_adder FA3[14:0] (S2[15:1],row4[15:1],C3[14:0],S3[14:0],{S3[15],C3[14:1]});

   full_adder HA4(S3[0],row5[0],1'b0,out[4],C4[0]);

   full_adder FA4[14:0] (S3[15:1],row5[15:1],C4[14:0],S4[14:0],{S4[15],C4[14:1]});

   full_adder HA5(S4[0],row6[0],1'b0,out[5],C5[0]);

   full_adder FA5[14:0] (S4[15:1],row6[15:1],C5[14:0],S5[14:0],{S5[15],C5[14:1]});

   full_adder HA6(S5[0],row7[0],1'b0,out[6],C6[0]);

   full_adder FA6[14:0] (S5[15:1],row7[15:1],C6[14:0],S6[14:0],{S6[15],C6[14:1]});

   full_adder HA7(S6[0],row8[0],1'b0,out[7],C7[0]);

   full_adder FA7[14:0] (S6[15:1],row8[15:1],C7[14:0],S7[14:0],{S7[15],C7[14:1]});

   full_adder HA8(S7[0],row9[0],1'b0,out[8],C8[0]);

   full_adder FA8[14:0] (S7[15:1],row9[15:1],C8[14:0],S8[14:0],{S8[15],C8[14:1]});

   full_adder HA9(S8[0],row10[0],1'b0,out[9],C9[0]);

   full_adder FA9[14:0] (S8[15:1],row10[15:1],C9[14:0],S9[14:0],{S9[15],C9[14:1]});

   full_adder HA10(S9[0],row11[0],1'b0,out[10],C10[0]);

   full_adder FA10[14:0] (S9[15:1],row11[15:1],C10[14:0],S10[14:0],{S10[15],C10[14:1]});

   full_adder HA11(S10[0],row12[0],1'b0,out[11],C11[0]);

   full_adder FA11[14:0] (S10[15:1],row12[15:1],C11[14:0],S11[14:0],{S11[15],C11[14:1]});

   full_adder HA12(S11[0],row13[0],1'b0,out[12],C12[0]);

   full_adder FA12[14:0] (S11[15:1],row13[15:1],C12[14:0],S12[14:0],{S12[15],C12[14:1]});

   full_adder HA13(S12[0],row14[0],1'b0,out[13],C13[0]);

   full_adder FA13[14:0] (S12[15:1],row14[15:1],C13[14:0],S13[14:0],{S13[15],C13[14:1]});

   full_adder HA14(S13[0],row15[0],1'b0,out[14],C14[0]);

   full_adder FA14[14:0] (S13[15:1],row15[15:1],C14[14:0],S14[14:0],{S14[15],C14[14:1]});

   full_adder HA15(S14[0],row16[0],1'b0,out[15],C15[0]);

   full_adder FA15[14:0] (S14[15:1],row16[15:1],C15[14:0],S15[14:0],{S15[15],C15[14:1]});

   assign out[31]=~(S15[15]);
   assign out[30:16]=S15[14:0];

endmodule // multiplier_8bit

