#!/bin/bash

# Check if the user provided source and destination file names
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 source_file destination_file"
    exit 1
fi

source_file="$1"
destination_file="$2"

# Check if the source file exists
if [ ! -f "$source_file" ]; then
    echo "Source file '$source_file' does not exist."
    exit 1
fi

# Copy the contents of the source file to the destination file
cat "$source_file" > "$destination_file"

# Check if the copy operation was successful
if [ $? -eq 0 ]; then
    echo "Contents of '$source_file' copied to '$destination_file' successfully."
else
    echo "Error copying contents from '$source_file' to '$destination_file'."
fi

