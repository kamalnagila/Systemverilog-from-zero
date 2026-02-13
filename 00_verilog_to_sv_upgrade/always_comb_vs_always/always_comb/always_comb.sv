// Example  SystemVerilog always_comb (safe & preferred)

module always_comb_example (
    input  logic a,
    input  logic b,
    input  logic sel,
    output logic y
);

    always_comb begin
        if (sel)
            y = a;
        else
            y = b;
    end

endmodule
