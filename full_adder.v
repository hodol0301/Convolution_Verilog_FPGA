`include "half_adder.v"

module full_adder(A,B,Cin,S,Cout);
   input A,B,Cin;
   output S,Cout;
   wire   S1,C1;
   wire   S2,C2;
   
   half_adder i1(A,B,S1,C1);
   half_adder i2(Cin,S1,S2,C2);

   assign S=S2;
   assign Cout=C1^C2;
endmodule // full_adder

   
