#!/bin/bash
# author: ZER0-Nu1L

a=$(date +%H%M%S)

parallel -j 12 "./Tar.sh {}" ::: `seq 0 28`
wait

b=$(date +%H%M%S)

echo -e "startTime:\t$a"
echo -e "endTime:\t$b"
time=`expr $b - $a`
echo -e "Time:\t${time}s"
echo "Tar finished."