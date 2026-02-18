
module unique_if;
  
  int a,b,c;

  initial begin
  
   a=10;
    
   b=50;
    
   c=60;
  
   unique if(a<b) $display("\t a is less than b");
  
   else if(b<c)   $display("\t b is less than c");
  
   else $display("a is greater than b and c");
    
   end
    
endmodule
