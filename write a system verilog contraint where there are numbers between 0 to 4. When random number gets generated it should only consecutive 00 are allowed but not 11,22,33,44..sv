class RandomNumber;
  rand int unsigned num;
  
  constraint num_range { num inside {[0:4]}; }
  constraint no_consecutive {
    // Ensure no consecutive 11, 22, 33, 44
    if (num == 1) num != 11;
    if (num == 2) num != 22;
    if (num == 3) num != 33;
    if (num == 4) num != 44;
  }
  constraint allow_00 {
    // Allow consecutive 00
    if (num == 0) num == 0;
  }
endclass

module test;
  initial begin
    RandomNumber rn = new();
    repeat (10) begin
      rn.randomize();
      $display("Random number: %0d", rn.num);
    end
  end
endmodule
