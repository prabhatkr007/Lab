#!/bin/bash
echo "Enter the directiory location"
read directory
file_count=0
for file in "$directory"/*; do
    if [ -f "$file" ]; then
        ((file_count++))
    fi
done
echo "Number of files in $directory: $file_count"
