#!/bin/bash

echo "Enter the path to a file or directory: "
read path

if [ -e "$path" ]; then
    if [ -d "$path" ]; then
        echo "$path is a directory."
    else
        echo "$path is not a directory."
    fi
else
    echo "$path does not exist."
fi

