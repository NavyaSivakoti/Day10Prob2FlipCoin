#!/bin/bash -x

head=0
tail=0


for ((i=1; i<=21; i++ ))
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

if [ $head -eq $tail ]
then
	echo "TIE"
elif [ $head -gt $tail ]
then
	echo "HEADS WIN by $(($head-$tail)) times"
else
	echo "TAILS WIN by $(($tail-$head)) times"
fi
