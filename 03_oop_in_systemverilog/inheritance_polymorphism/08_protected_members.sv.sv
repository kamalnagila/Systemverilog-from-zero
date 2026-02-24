
//Description
// Demonstrates use of 'protected' class members in SystemVerilog.
// Protected members are accessible within the class and its
// derived classes, but NOT from outside the class hierarchy.
// ------------------------------------------------------------

class parent_class;

  // Protected data member

  protected bit [31:0] temp_addr

  function new(bit [31:0] addr);

    temp_addr = addr;

  endfunction

  // Public method to observe protected member

  function void display();

    $display("temp_addr = %0d", temp_addr);

  endfunction

endclass


class child_class extends parent_class;

  function new(bit [31:0] addr);
    
    super.new(addr);
    
  endfunction

  // Child class can access and modify protected member

  function void increment_addr();

    temp_addr++;

  endfunction

endclass


module tb_protected_members;

  initial begin

    parent_class p;

    child_class  c;

    p = new(5);
    c = new(10);

    // Valid access through public method

    p.display();

    // Valid child modifies protected member internally

    c.increment_addr();

    c.display();

    
  end

endmodule