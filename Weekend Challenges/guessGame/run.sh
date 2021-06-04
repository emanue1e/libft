#!/bin/bash
figlet "Welcome to the Guessing Game!" -f smslant -c

bash guess.sh
if [ $cpuNum -eq $guess ]
then
	figlet "Welcome to the C Guessing Game!" -f smslant -c
	./a.out
fi
