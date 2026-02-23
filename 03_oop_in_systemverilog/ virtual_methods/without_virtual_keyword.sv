
// Description:

// Demonstrates virtual methods without using virtual keyword


class base_class;
  
  function void display();
    
    $display("Inside base_class");
    
  endfunction
  
endclass

class extended_class extend base_class;
  
  function void display;
    
    $display("inside extended class");
    
  endfunction
  
endclass

module virtual_class;
  
  initial begin 
    
    base_class b_c;
    
    extended_class e_c;
    
    b_c=e_c;
    
    b_c.display();
    
    
  end
  
endmodule