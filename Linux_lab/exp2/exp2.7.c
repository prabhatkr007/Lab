#include <stdio.h>
#include <stdlib.h>

int power(int base, int exponent) {
    int result = 1;
    for (int i = 0; i < exponent; ++i) {
        result *= base;
    }
    return result;
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "Usage: %s <base> <exponent>\n", argv[0]);
        return EXIT_FAILURE;
    }

    int base = atoi(argv[1]);
    int exponent = atoi(argv[2]);

    int result = power(base, exponent);
    printf("%d raised to the power of %d is %d\n", base, exponent, result);

    return EXIT_SUCCESS;
}
