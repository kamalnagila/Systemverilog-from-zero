module non_blocking_assignment;

int a , b;

initial begin
    a=10;
    b=15;

  $display("before assignment: a=%0d b=%0d",a,b);

  a<=b; // non-blocking assignment
  b<=20;

  $display("after assignment(sametimestep): a=%0d b=%0d ",a,b);


end
endmodule