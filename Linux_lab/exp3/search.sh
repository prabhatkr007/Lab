#!/bin/bash

# Define the list of elements
elements=("apple" "banana" "cherry" "date" "grape")

echo "Enter the element to search for: "
read search_element

# Loop through the list and check if the search element is present
found=0
for element in "${elements[@]}"; do
    if [ "$element" = "$search_element" ]; then
        found=1
        break
    fi
done

if [ $found -eq 1 ]; then
    echo "$search_element is present in the list."
else
    echo "$search_element is not present in the list."
fi

