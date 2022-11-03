#!/bin/sh

for i in {1..100}
do
echo "mkdir run$i; cd run$i; cp ../t4* . ; /home/tuf29140/work/fsc26_linux64/fsc26 -t t4.tpl -e t4.est -M -m -n 10000 -l 40 -L 40 -q -C10 -c1" >> t4_torq.txt
done

