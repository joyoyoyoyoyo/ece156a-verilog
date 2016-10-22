module seven_seg_B_tm();
  
  reg [3:0] value;
  reg clk,reset;
  wire [5:0] display;
  
  seven_seg_B led(
    .value        (value), 
    .clk          (clk),
    .reset        (reset),
    .alphanumeric (alphanumeric)
    );
    
  initial begin
    clk   = 1'b0;
    reset = 1'b0;
    value = 4'b0000;
  end
  
  initial #100 $finish;
  
  always #5 value = value + 1;
  //always # 10 {reset,d} = {reset,d} + 1;
  
  always # 5 clk = ~ clk;
  
  
endmodule