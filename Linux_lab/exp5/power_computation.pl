#!/usr/bin/perl

use strict;
use warnings;

sub power {
    my ($base, $exponent) = @_;
    my $result = 1;
    for (my $i = 0; $i < $exponent; $i++) {
        $result *= $base;
    }
    return $result;
}

# Example usage
my $base = $ARGV[0] // 2;  # Replace with your desired base, or use the command-line argument if provided
my $exponent = $ARGV[1] // 3;  # Replace with your desired exponent, or use the command-line argument if provided

my $result = power($base, $exponent);
print "$base raised to the power of $exponent is: $result\n";

