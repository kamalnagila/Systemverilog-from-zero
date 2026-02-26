//---------------------------------------------
// Demonstrates runtime polymorphism using virtual methods
// Base transaction handle calling derived class behavior
// This pattern is fundamental to UVM-style testbenches


class base_transcation;
 
 rand bit [31:0] addr;
 rand bit [31:0] data;

virtual function void display();// virtual method
 
 $display("base class: value addr=%oh data=%0h",addr,data);

endfunction

endclass

class read_transcation extends base_transcation;

 function void display();// overriding method
  
  $display("read_semantics: addr=%0h data=%0h",addr,data);
endfunction

class write_transcation extends base_transcation;

 function void display();// overidding method
  
  $display("write_semantics: addr=%0h data=%0h",addr,data);

endfunction

endclass

module basic_polmoriphism;

 initial begin

  base_transcation ptr;

  ptr=new();

  ptr.display();
  
  read_transcatioin s=new();

  ptr=s;

  ptr.display();

  write_transcation p=new();

  ptr=p;

  ptr.display();
end

endmodule
