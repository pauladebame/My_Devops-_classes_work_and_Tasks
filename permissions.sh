#!/bin/bash

script="myscript.sh"
echo 'echo "hello"' >"$script"
chmod 644 "$script"

# -r: Readable
if [[ -r "$script" ]]; then
	echo "$script is readable"
fi

# -w: Writable
if [[ -w "$script" ]]; then
        echo "$script is writable"
fi

# -x: Readable
if [[ -x "$script" ]]; then
        echo "$script is executable"
else 
	echo "$script is NOT executable"
fi




