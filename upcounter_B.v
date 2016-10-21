module upcounter_B(value, clk, reset, alphanumeric)
  input[3:0] value; // 4 bit binary code to map to a corresponding digit or numerical representation
  input, clk, reset;
  output [5:0] alphanumeric;
  wire a,b,c,d,e,f,g;
  
  always @ (posedge clk) begin
    if (reset) begin
      {a,b,c,d,e,f,g} = 1; // active low
    end
    case (value)
      3'd0 : 
      3'd1 : {a,b,c,d,e,f,g} =  and({0,0,0,0,0,0});
      default: {a,b,c,d,e,f,g} = {0,0,0,0,0};
      
    
  end
      
  
  
  // we will use combinational logic