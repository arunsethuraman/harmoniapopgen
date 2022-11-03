#!/bin/sh

#Here SNP.final.recode.maf.missing.vcf is the final VCF file that is being used for all demographic analyses, while popfile is the file that contains all population designations

#Created a pop file for easySFS.py, separating the WCN populations from ECN, then EUR and AME as separate populations
#Installed easySFS according to instructions here:https://github.com/isaacovercast/easySFS; had to use conda, so used mesx cluster

#Thereon run easySFS preview
easySFS/easySFS.py -i SNP.final.recode.maf.missing.vcf -p popfile --preview

#Picked projection based on most number of segregating sites captured as WCN=10, ECN=106, EUR=22, AME=104

#Then run easySFS.py
easySFS/easySFS.py -i SNP.final.recode.maf.missing.vcf -p popfile -a --proj=10,106,22,104

#This creates an output folder, which contains the 1D, 2D, multiSFS files under a folder called fastsimcoal2 - these files are SNP_jointMAF*.obs, which contain the 2D SFS across all population pairs, and SNP_MSFS.obs which is the multidimensional SFS

#Thereon, created all models and topologies - Asymmetric Migration, Asymmetric Migration with Exponential Growth, No Migration, and No Migration with Exponential Growth, under four different topologies - t1, t2, t3, t4. All tpl and est files required for these runs are provided in this folder

#These runs were performed using the torque scheduler system - scripts for running are found in torq*.sh, and torq*.txt

#Once the runs complete, calculateAIC.sh was used to compute the likelihood differences, AIC values for each run. 

#The best run across all these runs was then picked to perform parametric bootstrapping - all required files to perform this are provided in the folder called Bootstrap_bestmodel




