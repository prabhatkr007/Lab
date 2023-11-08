#!/bin/bash

DEBUG=false

while getopts ":d" opt; do
  case $opt in
    d)
      DEBUG=true
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

if [ "$DEBUG" = true ]; then
  set -x  # Enable debug mode
fi

set -x  # Enable xtrace option

echo "Calculator"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read -p "Enter your choice (1/2/3/4): " choice

read -p "Enter first number: " num1
read -p "Enter second number: " num2

case $choice in
    1)
        result=$(echo "$num1 + $num2" | bc)
        ;;
    2)
        result=$(echo "$num1 - $num2" | bc)
        ;;
    3)
        result=$(echo "$num1 * $num2" | bc)
        ;;
    4)
        result=$(echo "scale=2; $num1 / $num2" | bc)
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

if [ "$DEBUG" = true ]; then
  set +x  # Disable debug mode
fi

set +x  # Disable xtrace option

echo "Result: $result"
