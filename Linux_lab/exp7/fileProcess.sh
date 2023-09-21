#!/bin/bash

# Function to check file attributes
check_file_attributes() {
    local file_path="$1"
    
    if [ -e "$file_path" ]; then
        echo "File Attributes for $file_path"
        echo "-------------------------------"
        stat "$file_path"
    else
        echo "File not found: $file_path"
    fi
}

# Function to check process attributes
check_process_attributes() {
    local pid="$1"
    
    echo "Process Attributes for PID: $pid"
    echo "-----------------------------"
    
    ps -p "$pid" -o pid,ppid,pgid,cmd,%cpu,%mem,stime,etime,state,nice,user
}

# Main script
read -p "Enter the path to a file you want to check: " file_path
read -p "Enter the PID of a process you want to check: " process_pid

if [ -n "$file_path" ]; then
    check_file_attributes "$file_path"
else
    echo "Invalid file path."
fi

if [[ "$process_pid" =~ ^[0-9]+$ ]]; then
    check_process_attributes "$process_pid"
else
    echo "Invalid process PID."
fi

