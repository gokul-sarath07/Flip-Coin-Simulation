#!/bin/bash
echo "Coin Flip Simulation"
check=$(( RANDOM%2 ))
if [[ $check -eq 1 ]]
then
	echo "Heads"
else
	echo "Tails"
fi
