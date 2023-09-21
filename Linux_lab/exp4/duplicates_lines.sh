#!/bin/bash

input_file = $1

# Use sed to print duplicate lines
sed -n '/^\(.*\)$/{x;/./{x;p;x;d};x}' "$input_file"

