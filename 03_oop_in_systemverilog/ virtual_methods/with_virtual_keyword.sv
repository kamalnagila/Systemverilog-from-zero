// Demonstrates virtual methods and runtime method dispatch

// in SystemVerilog using base handle and extended object 

class base_class;
  
  virtual function void display;
    
    $display("inside base_class");
    
  endfunction
  
endclass

class extended_class extend base_class;
  
  function void display;
    
    $display("Inside extended class");
    
  endfunction
  
endclass

module virtual_class;
  
  initial begin
    
    base_class b_c;
    
    extended_class e_c;
    
    e_c=new();
    
    b_c=e_c;
    
    b_c.display();
    
  end
  
endmodule