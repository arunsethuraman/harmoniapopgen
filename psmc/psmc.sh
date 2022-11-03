#!/bin/sh
# This script performs a series of analyses in order to run PSMC on the SRR13482200 genome, generated from resequencing by Chen et al., 2021
# The script assumes that the paired end files, SRR13482200_1.fastq.gz and SRR13482200_2.fastq.gz are downloaded and present in the same folder. These were obtained from https://www.ebi.ac.uk/ena/browser/view/PRJNA579455
# A similar script was used for running PSMC on the ERR6054990 genome, generate by Boyes et al., 2021, which was downloaded from https://www.ebi.ac.uk/ena/browser/view/PRJEB45165

#PBS -V
#PBS -l nodes=1:ppn=1
#PBS -N bwamem2
#PBS -q batch
#PBS -l walltime=300:00:00 

cd $PBS_O_WORKDIR

#Run bwa-mem2 on the FASTQ files against the Haxyridis genome from Chen et al 2021, to produce aln.sam
/home/arun/C7/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 56 ./Haxyridis.fa ./SRR13482200/SRR13482200_1.fastq.gz ./SRR13482200/SRR13482200_2.fastq.gz -o aln.sam

#Run samtools to sort and convert the SAM file into BAM file
/home/arun/C7/samtools-1.16.1/bin/samtools view -b aln.sam | /home/arun/C7/samtools-1.16.1/bin/samtools sort --threads 56 > aln_SRR13482200.bam

#Run samtools mpileup on the above BAM file, clubbed with bcftools to generate the variant calls, stored here as SRR.vcf
/home/arun/C7/samtools-1.16.1/bin/samtools mpileup -C50 -f Haxyridis.fa aln_SRR13482200.bam | /home/arun/bcftools/bcftools view -v > SRR.vcf

#Run samtools consensus on the BAM file to produce the diploid consensus FASTQ file, here output as SRR.fq
/home/arun/C7/samtools-1.16.1/bin/samtools consensus -f fastq aln_SRR13482200.bam -o SRR.fq

#Run fq2psmcfa to convert the FASTQ file to the PSMCFA format, required by PSMC
/home/arun/psmc/utils/fq2psmcfa -q30 SRR.fq > SRR.psmcfa

#Run PSMC
/home/arun/psmc/psmc -N25 -t5 -r1 -p "4+30*2+4+6+10" -o SRR.psmc SRR.psmcfa

#Store the PSMC estimated run as an ms formatted command line
/home/arun/psmc/utils/psmc2history.pl SRR.psmc | /home/arun/psmc/utils/history2ms.pl > SRR-ms-cmd.sh

#Produce a plot of the PSMC output, which is then saved here as SRR.eps
/home/arun/psmc/utils/psmc_plot.pl SRR SRR.psmc

#Combined plot of PSMC outputs from the SRR (China) and ERR (Europe) files was then produced, here saved as both.eps
/home/arun/psmc/utils/psmc_plot.pl -M "Europe,China" -u 3.5e-09 -g 1 both ERR.psmc SRR.psmc 
