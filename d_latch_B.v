module d_latch_B(clk, q, q_bar, d);
  output q, q_bar;
  input clk, d;
  reg q; 
  
  assign q_bar = ~q;
  
  always @ (r or s )
    begin
      if (clk) // True is any non-zero value
      begin
        q <= d;
      end
    end
  end
  
endmodule 