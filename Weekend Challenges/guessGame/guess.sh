#!/bin/bash
echo "Pick any positive integer: "
read num
cpuNum=$(($RANDOM % $num + 1))
echo "Guess an integer from 1 to $num: "
read guess
while [ $cpuNum -ne $guess ]
do
	if [ $guess -lt $cpuNum ]
	then
		toilet -f small --filter border --filter metal "HIGHER!"
	fi
	if [ $guess -gt $cpuNum ]
	then
		toilet -f small --filter border --filter metal "LOWER!"
	fi
	read guess
done
if [ $cpuNum -eq $guess ]
then
	toilet -f slant --filter gay --filter border "YOU WIN!"
fi
