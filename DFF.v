module DFF(clk,reset,D,Q,Qb);
   input clk,reset,D;
   output reg Q,Qb;

   always@(negedge clk)
     begin
	if(reset)
	  begin
	     Q=Q;
      	     Qb=Qb;
	  end
	else	
	  begin
	     Q=D;
       	     Qb=~D;
	  end
     end // always@ (posedge clk)
   
endmodule // DFF
