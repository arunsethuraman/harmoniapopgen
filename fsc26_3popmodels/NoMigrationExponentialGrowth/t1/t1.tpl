//Number of population samples (demes)
3 populations to simulate
//Population effective sizes (number of genes)
N_POP0
N_POP1
N_POP2
//Sample sizes
157 
35 
129
//Growth rates
GrowthP0
GrowthP1
GrowthP2
//Number of migration matrices
0
//historical event: time, source, sink, migrants, new deme size, growth rate, migr mat index 
5 historical event
TDIV01 0 0 0 1 0 0
TDIV01 1 1 0 1 0 0
TDIV01 2 2 0 1 0 0
TDIV01 0 1 1 RELANC01 0 0
TDIV2_ANC01 2 1 1 RELANC21 0 0 
//Number of independent loci [chromosomes]
1 0
//Per chromosome: Number of linkage blocks
1
//per block: Datatype, numm loci, rec rate and mut rate + optional parameters
FREQ 1 0 3.5e-9 OUTEXP
