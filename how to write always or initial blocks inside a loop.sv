// with always
module top;
  genvar i;
  bit rst=1;
  for(i=0; i<10; i++)begin
    always@(rst) begin
      $display("Sample");
      rst=0;
    end
    end
endmodule
// With initial 
module top;
  genvar i;
  for(i=0; i<10; i++)begin
    initial begin
      $display("Sample");
    end
    end
endmodule
//======================================RESULT====================================
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 19 03:00 2024
Sample
Sample
Sample
Sample
Sample
Sample
Sample
Sample
Sample
Sample
