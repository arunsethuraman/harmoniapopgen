#!/bin/sh
#PBS -M arun@temple.edu
#PBS -l walltime=48:00:00
#PBS -l nodes=10:ppn=28
#PBS -N harmonia_amig_exp
#PBS -q normal
#PBS
cd $PBS_O_WORKDIR

#export PATH=$PATH:/home/tuf29140/work/fsc26_linux64/

torque-launch t1_torq.txt
torque-launch t2_torq.txt
torque-launch t3_torq.txt
torque-launch t4_torq.txt
