// systemverilog style

module sv_style(
    input logic a,
    input logic b,
    input logic clk,
    output logic y
);

 logic and_out;

 assign and_out= a & b;

 always_ff @(posedge clk ) begin 

    y<=and_out;
    
 end 
    
endmodule