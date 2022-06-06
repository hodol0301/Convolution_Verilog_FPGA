`include "ram_32x32.v"

module ram_32x32_16bit(clk,add_row,add_col,w_en,w_data,r_en,r_data);
   input clk,w_en,r_en;
   input [4:0] add_row,add_col;
   input [15:0] w_data;
   output [15:0] r_data;
  
   
   ram_32x32 RAM[15:0] (clk,add_row,add_col,w_en,w_data[15:0],r_en,r_data[15:0]);

endmodule // ram_32x32_16bit
