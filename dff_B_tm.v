module dff_B_tm();
  
  // D Flip-Flop takes three parameters
  reg clk, reset, d;
  wire q;
  wire q_bar;
  
  dff_B DFF (
    .clk    (clk),
    .reset  (reset),
    .q      (q),
    .q_bar  (q_bar),
    .d      (d)
    );
  
  initial begin
    clk = 0;
    reset = 0;
    d = 0;
  end
  
  initial #100 $finish;
  
  
  always # 5 {reset,d} = {reset,d} + 1;
  
  always # 5 clk = ~ clk;
 
  
endmodule