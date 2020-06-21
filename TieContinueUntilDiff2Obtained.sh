#!/bin/bash -x

head=0
tail=0
nhead=0
ntail=0
function FlipCoin () {
        if [ $((RANDOM%2)) -eq 0 ]
        then
                echo "HEADS"
		echo "function head $head"
                ((nhead++))
        else
                echo "TAILS"
                ((ntail++))
        fi
}


for ((i=1; i<21; i++ ))
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
	#FlipCoin
	rem=$((nhead-ntail))
	echo "out rem " $rem
	until [ $rem -eq 2 ] || [ $rem -eq -2 ]
	do
		FlipCoin
		rem=$((nhead-ntail))
	done

	if [ $rem -eq 2 ]
	then
		echo "TIE HEAD WINS"
	else
		echo "TIE TAIL WINS"
	fi
elif [ $head -gt $tail ]
then
	echo "HEADS WIN by $(($head-$tail)) times"
else
	echo "TAILS WIN by $(($tail-$head)) times"
fi
