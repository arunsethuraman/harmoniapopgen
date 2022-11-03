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
3
//Migration matrix 0
0.000 MIG01 MIG02
MIG10 0.000 MIG12
MIG20 MIG21 0.000
//Migration matrix 1
0.000 MIGA1 0.000
MIG1A 0.000 0.000
0.000 0.000 0.000
//Migration matrix 2
0.000 0.000 0.000
0.000 0.000 0.000
0.000 0.000 0.000
//historical event: time, source, sink, migrants, new deme size, growth rate, migr mat index 
5 historical event
TDIV02 0 0 0 1 0 1
TDIV02 1 1 0 1 0 1
TDIV02 2 2 0 1 0 1
TDIV02 2 0 1 RELANC02 0 1
TDIV1_ANC02 1 0 1 RELANC12 0 2 
//Number of independent loci [chromosomes]
1 0
//Per chromosome: Number of linkage blocks
1
//per block: Datatype, numm loci, rec rate and mut rate + optional parameters
FREQ 1 0 3.5e-9 OUTEXP
