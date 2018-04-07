#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Enter the video URL:"
	read userinput
else 
	userinput=$1
fi

youtube-dl -o - ${userinput} | castnow --quiet -
