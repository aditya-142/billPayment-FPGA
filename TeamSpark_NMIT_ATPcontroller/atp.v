
module atp (output reg [3:0] data_out,input in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11, input clk,rst);
  
 parameter s0= 4'b0000; //scanqr
 parameter s1= 4'b0001; //data display
 parameter s2= 4'b0010; //balance or oth
 parameter s3= 4'b0011; // pay by bal
 parameter s4= 4'b0100; // pay by oths
 parameter s5= 4'b0101; //pay caash or dd or cheq
 parameter s6= 4'b0110; // card or upi
 parameter s7= 4'b0111; //cash 
 parameter s8= 4'b1000; //dd/chq
 parameter s9= 4'b1001; //FAIL
 parameter s10=4'b1010; // success
 parameter s11=4'b1011; // print receipt
 
 reg [1:0] c_state,n_state;

 always @(posedge clk)
  begin
 if (rst==1)
 begin 
   c_state=0;
	n_state=0;
	end
else
    c_state=n_state;
	
case(c_state)
 
 s0: begin
 if (in0==0) n_state = s0;
 else if ( in0==1) n_state = s1;
 end

 s1: begin
 if (in1==0) n_state = s0;
 else if ( in1==1) n_state = s2;
 end
 
 s2: begin
 if ( in2==0) n_state = s3;
 
 else if ( in2==1) n_state = s4;
 
end

s3: begin
if (in3==0) n_state = s4;
else if ( in3==1) n_state = s10;
end

s4: begin
if (in4==0) n_state = s5;

else if (in4==1)n_state = s6;

end

s5: begin
if (in5==0) n_state = s7;
else if (in5==1)n_state = s8;
end
s6: begin
if (in6==0) n_state = s9;
else if (in6==1)n_state = s10;
end
s7: begin
if (in7==0) n_state = s9;
else if (in7==1)n_state = s10;
end
s8: begin
if (in8==0) n_state = s9;
else if (in8==1)n_state = s10;
end
s9: begin
if (in9==0) n_state = s4;
else if (in9==1)n_state = s0;
end
s10: begin
if (in10==0) n_state = s11;
else if (in10==1)n_state = s11;
end
s11: begin
if (in11==0) n_state = s0;
else if (in11==1)n_state = s0;
end
endcase
end
endmodule
	
