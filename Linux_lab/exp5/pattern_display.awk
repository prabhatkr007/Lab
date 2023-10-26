#!/usr/bin/awk -f

# Example usage: awk -f pattern_display.awk

# Pattern to search
BEGIN {
    pattern = "your_pattern_here"  # Replace with the desired pattern
}

# Search for the pattern and display matching lines
{
    if ($0 ~ pattern) {
        print "Pattern found in line:", NR, ":", $0
    }
}

