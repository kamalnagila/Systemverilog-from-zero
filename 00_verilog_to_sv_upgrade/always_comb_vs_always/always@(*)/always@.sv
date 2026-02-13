// Latch inferred due to incomplete assignment
// This is a common RTL bug

module latch_bug_example (
    input  logic a,
    input  logic b,
    input  logic sel,
    output logic y
);

    always @(*) begin
        if (sel)
            y = a;
        // ❌ y is not assigned when sel == 0 → latch inferred
    end

endmodule
