
class parent_class;
  
  bit [31:0] addr;
  
  function display();
    
    $display("\t value of addr=%0h",addr);
    
  endfunction
  
endclass


class child_class extends parent_class;
  
  bit[31:0] data;
  
  function display();
    
    $display("\t value of data=%0h",data);
    
    
  endfunction
  
endclass


module inheritance;
  
  
  initial begin
    
     child_class c=new();

    
     c.addr=32'hABCD;
    
    c.display();  // inherited methods
    
  end
  
  
endmodule
  