module counter(clk,reset,count);
   input clk,reset;
   output reg [7:0] count;
   
   always@(posedge clk)
     begin
	if(reset)
	  begin
	     count=8'b00000000;
	  end
	else
	  begin
	     count[0]=~count[0];
	  end
     end // always@ (posedge clk)
   
   always@(negedge count[0])
     begin
	if(reset==0)
	  begin
	     count[1]=~count[1];
	  end
     end

   always@(negedge count[1])
     begin
	if(reset==0)
	  begin
	     count[2]=~count[2];
	  end
     end

    always@(negedge count[2])
     begin
	if(reset==0)
	  begin
	     count[3]=~count[3];
	  end
     end


    always@(negedge count[3])
     begin
	if(reset==0)
	  begin
	     count[4]=~count[4];
	  end
     end

    always@(negedge count[4])
     begin
	if(reset==0)
	  begin
	     count[5]=~count[5];
	  end
     end

    always@(negedge count[5])
     begin
	if(reset==0)
	  begin
	     count[6]=~count[6];
	  end
     end

    always@(negedge count[6])
     begin
	if(reset==0)
	  begin
	     count[7]=~count[7];
	  end
     end

   
endmodule // counter
