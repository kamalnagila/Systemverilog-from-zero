// Simple testbench to run enum_basic example

module enum_basic_tb;

  enum_basic dut();

  initial begin
    $display("---- ENUM BASIC TEST START ----");
    #100;
    $display("---- ENUM BASIC TEST END ------");
    $finish;
  end

endmodule

