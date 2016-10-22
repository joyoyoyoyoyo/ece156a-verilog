module seven_seg_B(value, clk, reset, alphanumeric);
  input [3:0] value; // 4 bit binary code to map to a corresponding digit or numerical representation
  input clk, reset;
  output [5:0] alphanumeric;
  reg [5:0] alphanumeric;
  
  always @ (posedge clk) begin
    if (reset) begin
      alphanumeric = 1; // active low
    end
    else begin
    case (value)
      4'b0000  :  alphanumeric <=   6'b000001;  // 0
      4'b0001  :  alphanumeric <=   6'b000010;  // 1
      4'b0010  :  alphanumeric <=   6'b001001;  // 2
      4'b0011  :  alphanumeric <=   6'b001001;  // 3
      4'b0100  :  alphanumeric <=   6'b010001;  // 4
      4'b0101  :  alphanumeric <=   6'b000001;  // 5
      4'b0110  :  alphanumeric <=   6'b000001;  // 6
      4'b0111  :  alphanumeric <=   6'b000001;  // 7
      4'b1000  :  alphanumeric <=   6'b010001;  // 8
      4'b1001  :  alphanumeric <=   6'b000001;  // 9
      4'b1010  :  alphanumeric <=   6'b000001;  // A
      4'b1011  :  alphanumeric <=   6'b000001;  // b
      4'b1100  :  alphanumeric <=   6'b000001;  // C
      4'b1101  :  alphanumeric <=   6'b000001;  // d
      4'b1110  :  alphanumeric <=   6'b000000;  // E
      4'b1111  :  alphanumeric <=   6'b000001;  // F
      //default  :  alphanumeric <=   6'b111111;  // All off
    endcase
    end
    
  end
  
  
endmodule