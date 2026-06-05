#!/bin/bash

#creating a greater script

read -p "Welcome, what is your name: " NAME

#confirm if the age is a number 
while true; do
	read -p "how old are you: " AGE
	if [[ "$AGE" =~	^[0-9]+$ ]]; then
		break
	else
		echo invalid input. please enter a numeric age
	fi
done

read -sp "password: " PW


echo "Hello, $NAME you are $AGE your $PW is safely secured"

