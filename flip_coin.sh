#!/bin/bash
echo "Coin Flip Simulation"
for i in {1..10}
do
	check=$(( RANDOM%2 ))
	if [[ $check -eq 1 ]]
	then
		ctHead=$(( $ctHead + 1 ))
	else
		ctTail=$(( $ctTail + 1 ))
	fi
done
echo "Total Head: "$ctHead
echo "Total Tail: "$ctTail
