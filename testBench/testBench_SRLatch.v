`timescale 1ns/1ps	 //delay unit/percision

module testBench_SRLatch;

	reg S, R;
	wire Q, nQ;
	
	SRLatch dut (.S(S), .R(R), .Q(Q), .nQ(nQ);	// dut(decive under test)  .pin(signal)

	initial begin
		$dumpfile("SRLatch.vcd"); //GTWave
		$dumpvars(0, testbench_SRLatch.v); //GTWave
		$monitor("t=%0t S=%b R=%b | Q=%b nQ=%b", $time, S, R, Q, nQ); //%b is print in binary

		S = 0; R = 0; #10;
		S = 1; R = 0; #10;
		S = 1; R = 1; #10;
		S = 0; R = 1; #10;
	
		$finish;
 	end
endmodule
 


