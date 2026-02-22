class parent_class;
  
  bit [31:0] addr;
  
  function new();
    
    $display("\t value of addr=%0h",addr);
    
  endfunction
  
endclass


class child_class extends parent_class;
 
  
endclass


module inherited_methods;
  
  
  initial begin
    
     child_class c=new();

    
     c.addr=32'hABCD;
    
    c.display();  // inherited methods
    
  end
  
  
endmodule
  