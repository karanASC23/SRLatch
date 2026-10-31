module SRLatch( 

	input wire S,	
	input wire R,
	output wire Q,
	output wire nQ
		
);
	

	assign Q = ~(S & nQ);	
	assign nQ = ~(R & Q);
	
endmodule 

