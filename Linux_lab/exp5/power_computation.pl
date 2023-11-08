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

# Read values from the user
print "Enter the base: ";
my $base = <STDIN>;
chomp($base);

print "Enter the exponent: ";
my $exponent = <STDIN>;
chomp($exponent);

my $result = power($base, $exponent);
print "$base raised to the power of $exponent is: $result\n";
