// ------------------------------------------------------------
// Demonstrates polymorphism using an array of parent-class handles.
// Each array element references a different child object.
// Virtual method calls are resolved at runtime based on object type.
// ------------------------------------------------------------

class base_class;

  virtual function void display();
    $display("Inside base class");
  endfunction

endclass


class class_1 extends base_class;

  function void display();
    $display("Inside class_1");
  endfunction

endclass


class class_2 extends base_class;

  function void display();
    $display("Inside class_2");
  endfunction

endclass


class class_3 extends base_class;

  function void display();
    $display("Inside class_3");
  endfunction

endclass


module tb_array_polymorphism;

  initial begin
    // Array of parent-class handles
    base_class b_c[3];

    // Each element points to a different child object
    b_c[0] = new class_1();
    b_c[1] = new class_2();
    b_c[2] = new class_3();

    // Runtime polymorphism through parent handles
    foreach (b_c[i]) begin
      b_c[i].display();
    end
  end

endmodule
