#!/usr/bin/perl

use strict;
use warnings;

sub is_prime {
    my $num = shift;
    return 0 if $num <= 1;
    for (my $i = 2; $i <= sqrt($num); $i++) {
        if ($num % $i == 0) {
            return 0;
        }
    }
    return 1;
}

# Taking user input
print "Enter a number to check if it is prime or not: ";
my $number = <STDIN>;
chomp $number;

if (is_prime($number)) {
    print "$number is a prime number.\n";
} else {
    print "$number is not a prime number.\n";
}

