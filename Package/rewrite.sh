#!/bin/bash
# author: ZER0-Nu1L

Prefix="SAT-03-11-2018_0"
Suffix=".pcapng"
Mprefile="./temp"
# tcprewrite --infile="SAT-03-11-2018_001.pcapng" --outfile=${Mfile} --dstipmap=192.168.50.4:10.0.0.1
# tcprewrite --infile=${Mfile} --outfile=${Ofile} --fixcsum

# install parallel

ReWrite()
{
    num=${1}
    Mfile=${Mprefile}${1}
    touch ${Mfile}
    Ifile=${Prefix}${num}${Suffix}
    Ofile="New-"${Prefix}${num}${Suffix}
    tcprewrite --infile=${Ifile} --outfile=${Mfile} --dstipmap=${2}:${3}
    tcprewrite --infile=${Mfile} --outfile=${Ofile} --fixcsum
    rm ${Mfile}
}

a=$(date +%H%M%S)

# ReWrite 1 "192.168.50.4" "10.0.0.1"
:<<!
for i in 1 2 3 4 5 6 7 
do {
    ReWrite ${i} "192.168.50.4" "10.0.0.1"
} &
done
!

parallel -j 8 "./Re.sh {} '192.168.50.4' '10.0.0.1'" ::: `seq 1 145`

wait

b=$(date +%H%M%S)

echo -e "startTime:\t$a"
echo -e "endTime:\t$b"
time=`expr $b - $a`
echo -e "Time:\t${time}s"
echo "Rewrite finished."