#!/bin/sh

a=101
while [ $a -le 112 ]
do
echo "cd t1;mkdir run"$a"; cd run"$a"; cp ../t1* . ; /home/tuf29140/work/fsc26_linux64/fsc26 -t t1.tpl -e t1.est -M -m -n 10000 -l 40 -L 40 -q -C10 -c1 --multiSFS" >> blah
a=$(( $a + 1 ))
done
