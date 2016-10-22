module upcounter_B(value, clk, reset, alphanumeric)
  input[3:0] value; // 4 bit binary code to map to a corresponding digit or numerical representation
  input, clk, reset;
  output [5:0] alphanumeric;
  reg a,b,c,d,e,f,g;
  
  always @ (posedge clk) begin
    if (reset) begin
      {a,b,c,d,e,f,g} = 1; // active low
    end
    case (value)
      3'd0 : {a,b,c,d,e,f,g} <=  {0,0,0,0,0,0};
      3'd1 : {a,b,c,d,e,f,g} <=  {0,0,0,0,0,0};
      3'd2 : {a,b,c,d,e,f,g} <= 
      default: {a,b,c,d,e,f,g} <= {0,0,0,0,0};
      
    
  end
      
  
  
  // we will use combinational logic