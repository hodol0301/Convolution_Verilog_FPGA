`include "test01.v"
`include "ram_32x32_16bit.v"
`include "DFF_16bit.v"
`include "counter.v"

module test02(clk,reset,add_row,add_col,w_en,w_data,r_en,out1,out2,out3,out4,out5,out6,out7,out8,out9,w1,w2,w3,w4,w5,w6,w7,w8,w9,start);
   input clk,w_en,r_en,reset,start;
   input [15:0] w1,w2,w3,w4,w5,w6,w7,w8,w9; // w[9:0] is not integer, w[15:10] is integer
   input [4:0] add_row,add_col;
   input [15:0] w_data;
   wire [15:0]   r_data;
   output [31:0] out1,out2,out3,out4,out5,out6,out7,out8,out9;
   wire [15:0] 	 data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20,data21,data22,data23,data24,data25;
   reg [15:0] 	 in1,in2,in3,in4,in5,in6,in7,in8,in9;
   reg [51:0] 	 data_save_enable;
   wire [7:0] 	 count;


   
   counter COUNT1(clk,start,count);
   
   ram_32x32_16bit RAM1(clk,add_row,add_col,w_en,w_data,r_en,r_data);

   test01 TEST01(clk,reset,in1,in2,in3,in4,in5,in6,in7,in8,in9,w1,w2,w3,w4,w5,w6,w7,w8,w9,out1,out2,out3,out4,out5,out6,out7,out8,out9);
   
   DFF_16bit DATA1 (clk,data_save_enable[0],r_data,data1,);
   DFF_16bit DATA2 (clk,data_save_enable[2],r_data,data2,);
   DFF_16bit DATA3 (clk,data_save_enable[4],r_data,data3,);
   DFF_16bit DATA4 (clk,data_save_enable[6],r_data,data4,);
   DFF_16bit DATA5 (clk,data_save_enable[8],r_data,data5,);
   DFF_16bit DATA6 (clk,data_save_enable[10],r_data,data6,);
   DFF_16bit DATA7 (clk,data_save_enable[12],r_data,data7,);
   DFF_16bit DATA8 (clk,data_save_enable[14],r_data,data8,);
   DFF_16bit DATA9 (clk,data_save_enable[16],r_data,data9,);
   DFF_16bit DATA10 (clk,data_save_enable[18],r_data,data10,);
   DFF_16bit DATA11 (clk,data_save_enable[20],r_data,data11,);
   DFF_16bit DATA12 (clk,data_save_enable[22],r_data,data12,);
   DFF_16bit DATA13 (clk,data_save_enable[24],r_data,data13,);
   DFF_16bit DATA14 (clk,data_save_enable[26],r_data,data14,);
   DFF_16bit DATA15 (clk,data_save_enable[28],r_data,data15,);
   DFF_16bit DATA16 (clk,data_save_enable[30],r_data,data16,);
   DFF_16bit DATA17 (clk,data_save_enable[32],r_data,data17,);
   DFF_16bit DATA18 (clk,data_save_enable[34],r_data,data18,);
   DFF_16bit DATA19 (clk,data_save_enable[36],r_data,data19,);
   DFF_16bit DATA20 (clk,data_save_enable[38],r_data,data20,);
   DFF_16bit DATA21 (clk,data_save_enable[40],r_data,data21,);
   DFF_16bit DATA22 (clk,data_save_enable[42],r_data,data22,);
   DFF_16bit DATA23 (clk,data_save_enable[44],r_data,data23,);
   DFF_16bit DATA24 (clk,data_save_enable[46],r_data,data24,);
   DFF_16bit DATA25 (clk,data_save_enable[48],r_data,data25,);
   
   
   always @(negedge clk)
     begin
	if (count==8'b00000001)
	  begin
	     in1=data13;
	     in2=data13;
	     in3=data13;
	     in4=data13;
	     in5=data13;
	     in6=data13;
	     in7=data13;
	     in8=data13;
	     in9=data13;
	  end // if (count==8'b00000001)
	else if (count==8'b00000010)
	  begin
	     in1=data8;
	     in2=data8;
	     in3=data8;
	     in4=data8;
	     in5=data8;
	     in6=data8;
	     in7=data23;
	     in8=data23;
	     in9=data23;
	  end // if (count==8'b00000010)
	else if (count==8'b00000011)
	  begin
	     in1=data3;
	     in2=data3;
	     in3=data3;
	     in4=data18;
	     in5=data18;
	     in6=data18;
	     in7=data18;
	     in8=data18;
	     in9=data18;
	  end // if (count==8'b00000011)
	else if (count==8'b00000100)
	  begin
	     in1=data12;
	     in2=data12;
	     in3=data15;
	     in4=data12;
	     in5=data12;
	     in6=data15;
	     in7=data12;
	     in8=data12;
	     in9=data15;
	  end // if (count==8'b00000100)
	else if (count==8'b00000101)
	  begin
	     in1=data7;
	     in2=data7;
	     in3=data10;
	     in4=data7;
	     in5=data7;
	     in6=data10;
	     in7=data22;
	     in8=data22;
	     in9=data25;
	  end // if (count==8'b00000101)
	else if (count==8'b00000110)
	  begin
	     in1=data2;
	     in2=data2;
	     in3=data5;
	     in4=data17;
	     in5=data17;
	     in6=data20;
	     in7=data17;
	     in8=data17;
	     in9=data20;
	  end // if (count==8'b00000110)
	else if (count==8'b00000111)
	  begin
	     in1=data11;
	     in2=data14;
	     in3=data14;
	     in4=data11;
	     in5=data14;
	     in6=data14;
	     in7=data11;
	     in8=data14;
	     in9=data14;
	  end // if (count==8'b00000111)
	else if (count==8'b00001000)
	  begin
	     in1=data6;
	     in2=data9;
	     in3=data9;
	     in4=data6;
	     in5=data9;
	     in6=data9;
	     in7=data21;
	     in8=data24;
	     in9=data24;
	  end // if (count==8'b00001000)
	else if (count==8'b00001001)
	  begin
	     in1=data1;
	     in2=data4;
	     in3=data4;
	     in4=data16;
	     in5=data19;
	     in6=data19;
	     in7=data16;
	     in8=data19;
	     in9=data19;
	  end // if (count==8'b00001001)
	else
	  begin
	     in1=0;
	     in2=0;
	     in3=0;
	     in4=0;
	     in5=0;
	     in6=0;
	     in7=0;
	     in8=0;
	     in9=0;
	  end // else: !if(count==8'b00001001)
     end // always @ (negedge clk)
   
   
   
   
   always @(posedge clk)
     begin
	if (start)
	  begin
	     if (r_en)
	       begin
		  data_save_enable={data_save_enable[50:0],data_save_enable[51]};
	       end
	     else
	       begin
		  data_save_enable=data_save_enable;
	       end
	  end // if (start)
	
	else
	  begin
	     data_save_enable=52'b1011111111111111111111111111111111111111111111111111;
	  end // else: !if(r_en)
     end // always @ (posedge clk)
   

    //data_save_enable signal --> posedge~posedge, simultaneously with read_data 

endmodule // test02

