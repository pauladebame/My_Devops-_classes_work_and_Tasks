#!/bin/bash

num1=10
num2=25
num3=10


# -eq: Equal

if [[ $num1 -eq $num3 ]]; then
	echo "$num1 and $num3 are equal"
fi

# -ne: not equal
if [[ $num1 -eq $num2 ]]; then
        echo "$num1 and $num3 are NOT equal"
fi

# -lt: less than
if [[ $num1 -lt $num2 ]]; then
        echo "$num1 is less than $num2 "
fi

# -lt: less than
if [[ $num1 -lt $num2 ]]; then
        echo "$num1 is less than $num2 "
fi

# -le: less than or equal to
if [[ $num1 -le $num2 ]]; then
        echo "$num1 is less than $num3 "
fi

# -gt: greater than
if [[ $num2 -gt $num3 ]]; then
        echo "$num1 is greater than $num2 "
fi

# -ge: less than
if [[ $num1 -ge $num3 ]]; then
        echo "$num1 is greater than or equal to $num2 "
fi



