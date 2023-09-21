#!/bin/bash

# Function to change process priority
change_process_priority() {
    local pid="$1"
    local new_priority="$2"

    renice "$new_priority" -p "$pid"

    if [ $? -eq 0 ]; then
        echo "Priority of process with PID $pid changed to $new_priority."
    else
        echo "Failed to change priority for process with PID $pid."
    fi
}

# Main script
read -p "Enter the PID of the process you want to change priority for: " pid
read -p "Enter the new priority value (-20 to 19, where -20 is highest): " new_priority

if [[ "$new_priority" =~ ^-?[0-9]+$ && "$new_priority" -ge -20 && "$new_priority" -le 19 ]]; then
    change_process_priority "$pid" "$new_priority"
else
    echo "Invalid priority value. Priority should be between -20 and 19."
fi

