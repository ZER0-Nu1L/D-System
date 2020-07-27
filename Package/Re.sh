#!/bin/bash
# author: ZER0-Nu1L

Prefix="SAT-03-11-2018_0"
Suffix=".pcapng"
Mprefile="./temp"

num=${1}
Mfile=${Mprefile}${1}
touch ${Mfile}
Ifile=${Prefix}${num}${Suffix}
Ofile="New-"${Prefix}${num}${Suffix}
tcprewrite --infile=${Ifile} --outfile=${Mfile} --dstipmap=${2}:${3}
tcprewrite --infile=${Mfile} --outfile=${Ofile} --fixcsum
rm ${Mfile}