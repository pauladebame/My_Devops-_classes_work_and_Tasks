#!/BIN/BASH


# Indexed array (5 favorite fruits)
fruits=("Apple" "Banana" "Mango" "Orange" "Pineapple")

# Associative array (capitals)
declare -A capitals
capitals[UK]="London"
capitals[France]="Paris"
capitals[Nigeria]="Abuja"

# Print array length
echo "Number of fruits: ${#fruits[@]}"

# Print all elements
echo "All fruits: ${fruits[@]}"

echo "Capitals:"
for country in "${!capitals[@]}"
do
    echo "$country -> ${capitals[$country]}"
done

# Loop through fruits
echo "Fruit list:"
for fruit in "${fruits[@]}"
do
    echo "Fruit: $fruit"
done

