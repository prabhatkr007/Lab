#!/usr/bin/awk -f

# Calculate and print Fibonacci series up to a specified limit
BEGIN {
    printf("Enter the limit: ")
    getline limit < "-"
    fib[0] = 0
    fib[1] = 1
    print "Fibonacci series up to " limit " is:"
    printf("%d %d ", fib[0], fib[1])
    for (i = 2; i <= limit; i++) {
        fib[i] = fib[i - 1] + fib[i - 2]
        if (fib[i] > limit) {
            break
        }
        printf("%d ", fib[i])
    }
    printf("\n")
}

