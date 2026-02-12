module blocking_assignment;
  int a, b;

  initial begin
    a = 10;
    b = 15;

    $display("Before assignment: a=%0d b=%0d", a, b);

    a = b;
    b = 20;

    $display("After assignment:  a=%0d b=%0d", a, b);
  end
endmodule
