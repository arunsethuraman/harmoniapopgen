#!/bin/sh
#PBS -M arun@temple.edu
#PBS -l walltime=48:00:00
#PBS -l nodes=4:ppn=28
#PBS -N harmonia_nomig
#PBS -q normal
#PBS
cd $PBS_O_WORKDIR

#export PATH=$PATH:/home/tuf29140/work/fsc26_linux64/

torque-launch t1_torq.txt
