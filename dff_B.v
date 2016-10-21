module dff_B(clk, q, q_bar, d);
  output q, q_bar;
  input clk, d;
  reg q;
  // do I make q a q_bar or use my assign operation
  
  always @ (posedge clk)
  begin
      q <= d;
      q_bar <= ~d
  end
endmodule
    
