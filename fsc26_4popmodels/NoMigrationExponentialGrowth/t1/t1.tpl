//Number of population samples (demes)
4 populations to simulate
//Population effective sizes (number of genes)
N_POP0
N_POP1
N_POP2
N_POP3
//Sample sizes
10 
106 
22
104
//Growth rates
GrowthP0
GrowthP1
GrowthP2
GrowthP3
//Number of migration matrices
3
//Migration Matrix 0
0	0	0	0	
0	0	m12 	0 	
0	0 	0 	0 	
0	0	m32	0	
//Migration Matrix 1
0 0 0 0 
0 0 0 0
0 0 0 0
0 0 0 0
//Migration Matrix 2
0 0 0 0
0 0 0 0
0 0 0 0
0 0 0 0
//historical event: time, source, sink, migrants, new deme size, growth rate, migr mat index 
4 historical event
TMIX 2 3 1 1 0 1
TMIX 2 1 1 1 0 1  
TDIV123 3 1 1 1 0 1
TDIV0_ANC123 1 0 1 1 0 2
//Number of independent loci [chromosomes]
1 0
//Per chromosome: Number of linkage blocks
1
//per block: Datatype, numm loci, rec rate and mut rate + optional parameters
FREQ 1 0 3.5e-9 OUTEXP
