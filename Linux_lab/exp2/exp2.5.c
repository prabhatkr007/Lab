#include <stdio.h>
#include <math.h>

int main() {
    double avogadroNumber = 6.022e23; 
    double numberToCheck;

    printf("Enter a number to check if it's close to Avogadro's number: ");
    scanf("%lf", &numberToCheck);

  
    double threshold = 1e20; 
    if (fabs(numberToCheck - avogadroNumber) < threshold) {
        printf("The entered number is close to Avogadro's number.\n");
    } else {
        printf("The entered number is not close to Avogadro's number.\n");
    }

    return 0;
}
