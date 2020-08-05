#!/bin/bash -x
echo "Coin Flip Simulation"
for i in {1..43}
do
	check=$(( RANDOM%2 ))
	if [[ $check -eq 1 ]]
	then
		ctHead=$(( $ctHead + 1 ))
	else
		ctTail=$(( $ctTail + 1 ))
	fi
	if [[ $ctHead -eq 21 || $ctTail -eq 21 ]]
	then
		break
	fi
done
if [[ $ctHead -gt $ctTail ]]
then
	echo "Heads have won by "$(( $ctHead - $ctTail ))
else
	echo "Tails have won by "$(( $ctTail - $ctHead ))
fi
