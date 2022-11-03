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
0
0
0
//Number of migration matrices
2
//Migration matrix 0
0.000 MIG01 MIG02
MIG10 0.000 MIG12
MIG20 MIG21 0.000
//Migration matrix 1
0.000 0.000 0.000
0.000 0.000 0.000
0.000 0.000 0.000
//historical event: time, source, sink, migrants, new deme size, growth rate, migr mat index 
2 historical event
TDIV 2 0 1 1 0 1
TDIV 1 0 1 RELANC 0 1 
//Number of independent loci [chromosomes]
1 0
//Per chromosome: Number of linkage blocks
1
//per block: Datatype, numm loci, rec rate and mut rate + optional parameters
FREQ 1 0 3.5e-9 OUTEXP
