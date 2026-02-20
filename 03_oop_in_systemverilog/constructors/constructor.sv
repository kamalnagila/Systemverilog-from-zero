class packet;
  
  bit [31:0] addr;
  
  bit [31:0] data;
  
  bit write;
  
  string pkt_type;
  
  function new();// constructor
    
    addr=32'h10;
    
    data=32'hff;
    
    write=1;
    
    pkt_type="GOOD_PKT";
    
  endfunction
  
  function void display();// method to display
    
    $display("\t addr=%0d ",addr);
    
    $display("\t data=%0h",data);
    
    $display("\t pkt_type=%0s",pkt_type);
    
  endfunction
  
endclass

module sv_constructor;
  
   packet pkt;
  
   initial begin 
     
     pkt=new();
     
     pkt.display();
     
   end
  
endmodule
