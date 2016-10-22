module seven_seg_B(value, clk, reset, alphanumeric);
  input [3:0] value; // 4 bit binary code to map to a corresponding digit or numerical representation
  input clk, reset;
  output [5:0] alphanumeric;
  reg a,b,c,d,e,f,g,alphanumeric;
  
  always @ (posedge clk) begin
    if (reset) begin
      {a,b,c,d,e,f,g} = 1; // active low
    end
    else begin
    case (value)
      3'd0  :  {a,b,c,d,e,f,g} <=   6'b000001;  // 0
      3'd1  :  {a,b,c,d,e,f,g} <=   6'b000001;  // 1
      3'd2  :  {a,b,c,d,e,f,g} <=   6'b000001;  // 2
      3'd3  :  {a,b,c,d,e,f,g} <=   6'b000001;  // 3
      3'd4  :  {a,b,c,d,e,f,g} <=   6'b000001;  // 4
      3'd5  :  {a,b,c,d,e,f,g} <=   6'b000001;  // 5
      3'd6  :  {a,b,c,d,e,f,g} <=   6'b000001;  // 6
      3'd7  :  {a,b,c,d,e,f,g} <=   6'b000001;  // 7
      3'd8  :  {a,b,c,d,e,f,g} <=   6'b000001;  // 8
      3'd9  :  {a,b,c,d,e,f,g} <=   6'b000001;  // 9
      3'd10 :  {a,b,c,d,e,f,g} <=   6'b000001;  // A
      3'd11 :  {a,b,c,d,e,f,g} <=   6'b000001;  // b
      3'd12 :  {a,b,c,d,e,f,g} <=   6'b000001;  // C
      3'd13 :  {a,b,c,d,e,f,g} <=   6'b000001;  // d
      3'd14 :  {a,b,c,d,e,f,g} <=   6'b000000;  // E
      3'd15 :  {a,b,c,d,e,f,g} <=   6'b000001;  // F
      default: {a,b,c,d,e,f,g} <=   6'b111111;  // All off
    endcase
    
    alphanumeric <= {a,b,c,d,e,f,g};
    end
    
  end
  
  
endmodule