#!/bin/bash

# Example input file
input_file="input.txt"

# Use sed to print duplicate lines
sed -n '/^\(.*\)$/{x;/./{x;p;x;d};x}' "$input_file"

