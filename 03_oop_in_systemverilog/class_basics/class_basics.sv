class sv_class;
   int x; // class properties
  
  task set(int i);// method-1
    x=i;
  endtask
  
  function int get();
  return x;
  end function
    
 end class 
   
  module sv_class_ex;

    sv_class class_1;// creating handles
    
    initial begin
      sv_class class_2=new();// creating handles and object
      
      class_1=new();// creating boject for the handle
      
      class.set(10);// accessing class method 
       
      class.set(20);
        
        $display("\t class_1:: value of x=%0d",class_1.get());
        
        $display("\t class_2:: value of x=%0d",class_2,get());
        
        end
        
        endmodule
          
      
      
      
      
      
      
      
      
      
      
      
      
