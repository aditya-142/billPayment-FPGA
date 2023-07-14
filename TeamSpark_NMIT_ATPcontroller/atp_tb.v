module atp_tb;
  reg in0, in1, in2, in3, in4, in5, in6, in7,in8, in9, in10,in11;
  reg clk, rst;
  wire [3:0] data_out;

  atp (
    .data_out(data_out),
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .in4(in4),
    .in5(in5),
    .in6(in6),
    .in7(in7),
	  .in8(in8),
	  .in9(in9),
	  .in10(in10),
	  .in11(in11),
    .clk(clk),
    .rst(rst)
  );

  // Clock generation
  always #5 clk = ~clk;

  // Test stimulus
  initial begin
    // Initialize inputs
    in0 = 0;
    in1 = 0;
    in2 = 0;
    in3 = 0;
    in4 = 0;
    in5 = 0;
    in6 = 0;
    in7 = 0;
    rst = 1;
    clk = 0;

    // Reset sequence
    #10 rst = 0;
    #20 rst = 1;

    // Test case 1: Transition from S0 to S1
    #10 in0 = 1;
    #10 in1 = 1;
    #10 in0 = 0;
    #10 in1 = 0;

    // Test case 2: Transition from S1 to S2
    #10 in1 = 1;
    #10 in2 = 1;
    #10 in1 = 0;
    #10 in2 = 0;
	 //3
	 #10 in2 = 1;
    #10 in3 = 1;
    #10 in2 = 0;
    #10 in3 = 0;
	 //4
	 #10 in3 = 1;
    #10 in4 = 1;
    #10 in3 = 0;
    #10 in4 = 0;
	 //5
	 #10 in4 = 1;
    #10 in5 = 1;
    #10 in4 = 0;
    #10 in5 = 0;
	 //6
	 #10 in5 = 1;
    #10 in6 = 1;
    #10 in5 = 0;
    #10 in6 = 0;
	 //7
	 #10 in6 = 1;
    #10 in7 = 1;
    #10 in6 = 0;
    #10 in7 = 0;
	 //8
	 #10 in7 = 1;
    #10 in8 = 1;
    #10 in7 = 0;
    #10 in8 = 0;
	 //9
	 #10 in8 = 1;
    #10 in9 = 1;
    #10 in8 = 0;
    #10 in9 = 0;
	 //10
	 #10 in9 = 1;
    #10 in10 = 1;
    #10 in9= 0;
    #10 in10 = 0;
	 //11
	 #10 in10= 1;
    #10 in11= 1;
    #10 in10 = 0;
    #10 in11= 0;

    // End simulation
    #10 $finish;
  end
endmodule
