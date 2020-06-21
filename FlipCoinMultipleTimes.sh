#!/bin/bash -x

head=0
tail=0
read -p "How many times to Flip: " num

for ((i=0; i<$num; i++ ))
{

	if [ $((RANDOM%2)) -eq 0 ]
	then
		echo "HEADS"
		((head++))
	else
		echo "TAILS"
		((tail++))
	fi
}
echo "heads: " $head
echo "tails: " $tail
