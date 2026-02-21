/------------------------------------------------------------
// Example: Inheritance with Constructor Chaining
// Demonstrates how a child class calls a parent constructor
// using super.new() to ensure proper initialization.

class parent_class;
  
  bit [31:0] addr;
  
endclass

 function new(bit [31:0] addr);
  
  this.addr=addr;
  
 endfunction




 function void display();
  
  $display("addr=%0h "addr);
  
 endfunction

endclass

class child extends parent_class;
  
  bit [31:0] data;
   
  function new (bit [31:0] addr, bit [31:0] data);
  
  
    super.new(addr);
    
    this.data=data;
    
  endfunction
  
  
  function void print();
    
    $display(" Child:addr=%0h data=%0h",addr,data);
    
  endfunction
  
  
module inheritance_with_constructor_tb;

  initial begin
    
    child_class c;

    c = new(32'h10, 32'h20);
    
    c.print();
  end

endmodule
