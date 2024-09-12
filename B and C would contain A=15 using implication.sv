class sample;
  rand bit[3:0]a,b,c;
  constraint c1{(a==15)->
  {  (b==a);
   (c==a);}}
endclass
    module top;
      sample s=new();
      initial begin
        s.randomize() with {a==15;};
        $display(s.a,s.b,s.c);
      end
    endmodule 
