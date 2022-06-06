
module DFF_16bit(clk,reset,D,Q,Qb);
   input clk,reset;
   input [15:0] D;
   output [15:0] Q,Qb;

   DFF DFF1[15:0] (clk,reset,D,Q,Qb);
   
  
endmodule // DFF_8bit
