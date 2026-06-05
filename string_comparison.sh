#!/bin/bash

string1=apple
string2=apple
string3=banana

# ==: string equality
if [[ "$string1 " == "$string2" ]]; then
	echo "$string1" equals "$string2"
fi


# !=: string inequality
if [[ "$string1 " == "$string3" ]]; then
        echo "$string1" NOT equals "$string3"
fi

