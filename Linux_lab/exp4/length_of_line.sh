#!/bin/bash
echo "Enter the file name you want to read"
read file_name

# Use command substitution and pipeline to set line length to a variable
line_length=$(head -n 1 "$file_name" | wc -c)

# Print the line length
echo "The length of the first line in '$file_name' is $line_length characters."

