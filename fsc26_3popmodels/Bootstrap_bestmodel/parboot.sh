#!/bin/sh
#PBS -M arun@temple.edu
#PBS -l walltime=24:00:00
#PBS -l nodes=1:ppn=1
#PBS -N parboot
#PBS -q big
#PBS
cd $PBS_O_WORKDIR

export PATH=$PATH:/home/tuf29140/work/fsc26_linux64/

fsc26 -i t1_maxL_boot.par -n100 -j -u -d -s0 -x -I -q
