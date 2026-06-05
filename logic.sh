#!/bin/bash


file="data.txt"

#Create data.txt
echo 'echo "This was interesting"' >$file

# && : AND (both must be true)
if [[ -f "$file" ]] && [[ -s "$file" ]]; then
        echo "$file exist AND not empty"
else
        echo "AND condition not met"
fi

# || : OR (both must be true)
if [[ -f "$file" ]] || [[ -s "$file" ]]; then
	echo "$file exist OR not empty"
else
	echo "AND condition not met"
fi 


