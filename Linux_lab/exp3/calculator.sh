#!/bin/bash

echo "Calculator"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Exponentiation"
echo "6. Square root"
echo "7. Trigonometric functions"
echo "8. Logarithm"
echo "9. Exit"

read -p "Enter your choice (1/2/3/4/5/6/7/8/9): " choice

case $choice in
    1)
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$(echo "$num1 + $num2" | bc)
        ;;
    2)
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$(echo "$num1 - $num2" | bc)
        ;;
    3)
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$(echo "$num1 * $num2" | bc)
        ;;
    4)
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$(echo "scale=2; $num1 / $num2" | bc)
        ;;
    5)
        read -p "Enter base number: " base
        read -p "Enter exponent: " exponent
        result=$(echo "$base ^ $exponent" | bc)
        ;;
    6)
        read -p "Enter the number to find its square root: " num
        result=$(echo "scale=2; sqrt($num)" | bc -l)
        ;;
    7)
        echo "1. Sine"
        echo "2. Cosine"
        echo "3. Tangent"
        read -p "Enter your choice (1/2/3): " trig_choice
        read -p "Enter the angle in radians: " angle
        case $trig_choice in
            1)
                result=$(echo "scale=2; s($angle)" | bc -l)
                ;;
            2)
                result=$(echo "scale=2; c($angle)" | bc -l)
                ;;
            3)
                result=$(echo "scale=2; s($angle) / c($angle)" | bc -l)
                ;;
            *)
                echo "Invalid choice"
                exit 1
                ;;
        esac
        ;;
    8)
        read -p "Enter the number to find its logarithm (base 10): " num
        result=$(echo "scale=2; l($num)" | bc -l)
        ;;
    9)
        echo "Exiting the calculator."
        exit 0
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

echo "Result: $result"
