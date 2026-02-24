class base_class;
  
  virtual function void display();
    
    $display("grandfather class execution");
    
  endfunction
  
endclass

class child_one extends base_class;
  
  function void display();
  
  $display("father class execution");
  
  endfunction
  
endclass


class child_two extends base_class;
  
  
  function void display();
    
    
    $display("son class execution");
    
    
  endfunction
  
endclass


module multiple_children;
  
  initial begin
  
    grandfather_class t;
    
    t=new child_one();
    
      t.display();

    
    t=new child_two();
    
      t.display();

    
  end
  
endmodule
   
  
  