#!/bin/bash
# author: ZER0-Nu1L

Prefix="New-SAT-03-11-2018_0"
Suffix_package=".pcapng"
Suffix_tar=".tar.gz"
num=`expr $1 \* 5`
Ofile="./"${Prefix}"~"${num}${Suffix_tar}

Ifile_item=()
for i in 0 1 2 3 4
do {
    sequ=`expr ${num} + ${i}`
    Ifile_item[$i]="./"${Prefix}${sequ}${Suffix_package}
	echo ${sequ}
	# echo ${Ifile_item[$i]}
	# echo ${Ifile_item[*]}
} # &
done

tar -zcvf ${Ofile} ${Ifile_item[*]}
