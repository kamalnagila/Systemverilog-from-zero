// Demonstrates SystemVerilog enum data type and iteration methods

module enum_basic;

  typedef enum {white, green, yellow, red, purple} color_t;
  color_t color;

  initial begin
    color = color.first();

    repeat (color.num()) begin
      #10;  // delay added for waveform visibility
      $display("[ENUM] name=%0s value=%0d", color.name(), color);
      color = color.next();
    end
  end

endmodule

