#!/bin/bash

# Function to display process attributes
display_process_attributes() {
    local pid="$1"
    
    echo "Process Attributes for PID: $pid"
    echo "-----------------------------"
    
    # Display process details using ps command
    ps -p "$pid" -o pid,ppid,pgid,cmd,%cpu,%mem,stime,etime,state,nice,user
}

# Main script
read -p "Enter the PID of the process you want to check: " pid

if [[ "$pid" =~ ^[0-9]+$ ]]; then
    display_process_attributes "$pid"
else
    echo "Invalid input. Please enter a valid PID."
fi

