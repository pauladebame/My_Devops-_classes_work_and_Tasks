#!/bin/bash

# check if file exist

file="deep.txt"

if [[ -e "$file" ]]; then
	echo "$file exist"
fi


#To check if the file is a regular file or a directory/symlink
if [[ -f "$file" ]]; then
        echo "$file is a regular file"
fi


# to check if a file is a directory
if [[ -d "$file" ]]; then
        echo "$file is a directory"
else
	echo "Not a directory"
fi

#check if file is empty
if [[ -s "$file" ]]; then
        echo "$file has content"
fi

#check if its a symlinkl
if [[ -h "link_to_deep" ]]; then
        echo "link_to_deep is a symlink"
else
	echo "link_to_deep is not a symlink"
fi

