#!/bin/bash
echo "Coin Flip Simulation"
function HeadorTail() {
	case $1 in
	1)
		ctHead=$(( $ctHead + 1 ))
		;;
	0)
		ctTail=$(( $ctTail + 1 ))
		;;
	esac
}
for i in {1..43}
do
	HeadorTail $(( RANDOM%2 ))
	if [[ $ctHead -eq 21 && $ctTail -eq 21 ]]
	then
		for i in {1..3}
		do
			HeadorTail $(( RANDOM%2 ))
			if [[ $(( $ctHead - $ctTail )) -eq 2 ]]
			then
				echo "Head Won!!"
				exit
			elif [[ $(( $ctTail - $ctHead )) -eq 2 ]]
			then
				echo "Tail Won!!"
				exit
			fi
		done
	elif [[ $ctHead -gt 21 || $ctTail -gt 21 ]]
	then
		if [[ $ctHead > $ctTail ]]
		then
    		echo "Heads have won by "$(( $ctHead - $ctTail ))
			exit
		elif [[ $ctTail > $ctHead ]]
		then
    		echo "Tails have won by "$(( $ctTail - $ctHead ))
			exit
		fi
	fi
done
