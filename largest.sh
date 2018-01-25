#!/bin/sh

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]
then
	echo "Error: Too few parameters"
	exit 1

elif [ "$#" -gt 3 ]
then
        echo "Error: Too many parameters"
	exit 1
fi

if [ "$1" -lt "$2" ]
then
	if [ "$2" -lt "$3" ]
	then
		echo "$3"
	else
		echo "$2"
	fi
else
	if [ "$1" -lt "$3" ]
	then
		echo "$3"
	else
		echo "$1"
	fi
fi
