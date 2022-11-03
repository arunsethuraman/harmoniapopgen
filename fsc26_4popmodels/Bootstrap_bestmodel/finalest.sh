#!/bin/sh


for i in {1..100}
do


echo "cd t1_boot; cd t1_boot_$i; cp ../t1.est . ; cp ../t1.tpl . ; cp ../t1.pv . ; cp t1_boot_DSFS.obs t1_MSFS.obs; /home/tuf29140/work/fsc26_linux64/fsc26 -u -t t1.tpl -e t1.est -M -m -n 10000 -l 40 -L 40 -q -C10 -c1 --initvalues t1.pv" >> torq1.txt


done

