//------------------------------------
// Demonstrates transaction inheritance in SystemVerilog.
// A base transaction defines common fields and behavior.
// Read and Write transactions extend the base and override
// a virtual method to implement specialized behavior

class base_transcation;

  bit [31:0] data;

  bit [31:0] addr;

virtual function void display();
   
  $dislay(" base transcation: data=%0h addr=%0h",data,addr);

endfunction

endclass

class read_transcation extends base_transcation;

   bit [31:0] read_latency;
   
   function void display();

      read_latency++;
     
       $display("Read transaction: addr=%0h latency=%0d",
             addr, read_latency);

   endfunction
endclass

class write_transcation extends base_transcation;
 
  bit [3:0] write_strobe;

  function void display();

    wirte_strobe++;
      
     $display("Write transaction: addr=%0h data=%0h strobe=%0h",
             addr, data, write_strobe); 
endfunction

endclass



module transcation_inheritance;

 initial begin

   base_transcation t=new();
   
     // paraent handle	 read transcation

     t = new read_transaction();

    t.addr = 32'h1000;

    t.display();

    
      // Parent handle -> write transaction
    t = new write_transaction();
    t.addr = 32'h2000;

    t.data = 32'hABCD_1234;

    t.display();
end
endmodule

   
