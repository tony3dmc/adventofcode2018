#!/bin/bash

sum=0
echo 0 > sums.txt
for i in $( seq 1 143 ); do
	echo "Loop $i"
	for n in $( cat input.txt ); do
		sum=$(( "$sum $n" ))
		grep -x -- "$sum" sums.txt
		echo $sum >> sums.txt
	done
done
