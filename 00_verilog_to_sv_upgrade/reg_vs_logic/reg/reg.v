// verilog style

module verilog_style(
    input wire a,
    input wire b,
    input wire clk,
    output reg y
);

 wire and_out; 

  assign and_out= a & b; // continous assignment(net type)

// procedural assignment ( requires reg in verilog)
  always @(posedge clk)
   begin
      y<=and_out;
   end

endmodule
