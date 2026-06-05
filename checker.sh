#!/bin/bash

# Check if filename argument is provided
if [ $# -lt 1 ]; then
    echo "Usage: ./checker.sh <filename>"
    exit 1
fi

file=$1

# File checks
if [ -f "$file" ]; then
    echo "$file is a regular file"

    # Bonus: permission checks (nested if)
    if [ -r "$file" ]; then
        echo "File is readable"
    fi

    if [ -w "$file" ]; then
        echo "File is writable"
    fi

    if [ -x "$file" ]; then
        echo "File is executable"
    fi

elif [ -d "$file" ]; then
    echo "$file is a directory"
else
    echo "$file does not exist"
fi

# Number input with case
read -p "Enter a number (1-3): " num

case $num in
    1)
        echo "Low"
        ;;
    2)
        echo "Medium"
        ;;
    3)
        echo "High"
        ;;
    *)
        echo "Invalid choice"
        ;;
esac

# Age check
read -p "Enter your age: " age

if [ "$age" -lt 18 ]; then
    echo "Minor"
else
    echo "Adult"
fi

