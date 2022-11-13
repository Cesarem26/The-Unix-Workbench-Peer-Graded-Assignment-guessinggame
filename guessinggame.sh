#!/usr/bin/env bash

echo "Guessing game"

ask () {
	echo "Please enter the number of files in the current directory:"
	read guess
    files=$(ls | wc -w)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low. Guess again!"
	else
		echo "Too high. Guess again"
	fi
	ask
done

echo "Congratulations! It is the correct answer."
