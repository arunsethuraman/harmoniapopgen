#!/bin/sh
#PBS -M arun@temple.edu
#PBS -l walltime=48:00:00
#PBS -l nodes=1:ppn=16
#PBS -N harmonia_2
#PBS -q medium
#PBS
cd $PBS_O_WORKDIR

#export PATH=$PATH:/home/tuf29140/work/fsc26_linux64/

torque-launch torq2.txt
