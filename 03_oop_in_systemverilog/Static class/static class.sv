class packet;

  byte packet_id;// class properties
  
  static byte no_of_pkt_created;
  
  function new();// constructor
    
    no_of_pkt_created++;
    
    packet_id=no_of_pkt_created;
    
  endfunction
  
  function void display();// method to display class properties 
    
    $display("\t packet_id=%0d",packet_id);
    
  endfunction
  
endclass

module static properties;
  
  packet pkt[3];
  
  initial begin
    
    foreach(pkt[i]) begin
      
      pkt[i]=new();
      
      pkt[i].display();
      
    end
    
  end
  
endmodule