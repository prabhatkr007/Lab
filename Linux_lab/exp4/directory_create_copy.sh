#!/bin/bash

# Specify the directory and file names
directory_name="my_directory"
file_name="my_file.txt"
content="This is some sample content."

# Create the directory
mkdir "$directory_name"

# Check if the directory was created successfully
if [ $? -eq 0 ]; then
    echo "Directory '$directory_name' created successfully."
else
    echo "Error creating directory '$directory_name'."
    exit 1
fi

# Write content to a file within the directory
echo "$content" > "$directory_name/$file_name"

# Check if the file was created successfully
if [ $? -eq 0 ]; then
    echo "Content written to '$file_name' in '$directory_name' successfully."
else
    echo "Error writing content to '$file_name' in '$directory_name'."
    exit 1
fi

# Specify a suitable location in your home directory
destination_directory="$HOME/Documents"

# Copy the entire directory to the destination
cp -r "$directory_name" "$destination_directory"

# Check if the copy operation was successful
if [ $? -eq 0 ]; then
    echo "Directory '$directory_name' copied to '$destination_directory' successfully."
else
    echo "Error copying directory '$directory_name' to '$destination_directory'."
fi

