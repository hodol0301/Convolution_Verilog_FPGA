module simple_mem(clk, write_en,write_data,read_en,read_data);
   input clk, write_en,read_en;
   input write_data;
   output reg read_data;
   reg 	  data;
   
   always @(posedge clk)
     begin
	 if (write_en)
	   begin
	      data=write_data;
	      read_data=1'bz;
	   end
	 else
	   begin
	      if (read_en)
		begin
		   read_data=data;
		end
	      else
		begin
		   read_data=1'bz;
		end
	      
		    
	   end // else: !if(write_en)
     end // always @ (posedge clk)
   
endmodule // simple_mem

