module array(
  
  input logic [31:0] data_in,
  
  output logic [7:0] unpacked_out
  
);
  
 logic [7:0] unpacked_array [4]; // treated as a single 32 bit vector

  always_comb begin
 

         unpacked_array[0] = data_in[7:0];
        unpacked_array[1] = data_in[15:8];
        unpacked_array[2] = data_in[23:16];
        unpacked_array[3] = data_in[31:24];

         unpacked_out = unpacked_array[2];// accessing 3 byte independently
     end

endmodule
