#!/bin/bash

# Check if the filename is provided as an argument
if [ -z "$1" ]; then
  echo "Please provide the file name as an argument."
  exit 1
fi

filename="$1"

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "File does not exist."
  exit 1
fi

# Count the number of words
word_count=$(wc -w "$filename")

# Count the number of characters
character_count=$(wc -c "$filename")

# Count the number of lines
line_count=$(wc -l "$filename")

# Print the results
echo "The number of words in the file is $word_count"
echo "The number of characters in the file is $character_count"
echo "The number of lines in the file is $line_count"

