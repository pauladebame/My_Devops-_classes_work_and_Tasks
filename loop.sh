#!/bin/bash

# ----------------------
# FOR LOOP (1–10, skip multiples of 3)
# ----------------------
echo "Numbers 1 to 10 (skipping multiples of 3):"
for i in {1..10}
do
    if (( i % 3 == 0 )); then
        continue
    fi
    echo "$i"
done

# ----------------------
# WHILE LOOP (countdown)
# ----------------------
read -p "Enter a number to countdown from: " num

echo "Countdown:"
while [ "$num" -gt 0 ]
do
    echo "$num"
    ((num--))
done

echo "Done!"

# ----------------------
# SELECT MENU
# ----------------------
echo "Menu:"
PS3="Choose an option (1-3): "

select option in Hello Date Exit
do
    case $option in
        Hello)
            echo "Hello there!"
            ;;
        Date)
            date
            ;;
        Exit)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done

# ----------------------
# BONUS: Read file line-by-line
# ----------------------
if [ -f "names.txt" ]; then
    echo "Reading names from file:"
    while read line
    do
        echo "Name: $line"
    done < names.txt
else
    echo "names.txt not found"
fi
``
