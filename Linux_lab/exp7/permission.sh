#!/bin/bash

# Function to change file permissions
change_file_permissions() {
    local file_path="$1"
    local mode="$2"

    if [ -e "$file_path" ]; then
        chmod "$mode" "$file_path"
        echo "Permissions for $file_path changed to $(stat -c '%a' "$file_path")."
    else
        echo "File not found: $file_path"
    fi
}

# Main script
read -p "Enter the path to the file you want to modify: " file_path

if [ -z "$file_path" ]; then
    echo "Invalid input. Please provide a valid file path."
    exit 1
fi

read -p "Enter the new permissions as an octal number (e.g., 755): " mode

if [[ ! "$mode" =~ ^[0-7]{3,4}$ ]]; then
    echo "Invalid input. Please enter a valid octal permission value."
    exit 1
fi

change_file_permissions "$file_path" "$mode"

