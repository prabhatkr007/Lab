#!/usr/bin/perl

use strict;
use warnings;

# Open the current directory
opendir(my $dh, ".") or die "Cannot open directory: $!";

# Read directory contents
my @files = readdir($dh);

# Close the directory
closedir($dh);

# Print the list of files
foreach my $file (@files) {
    next if ($file eq "." or $file eq "..");  # skip the current and parent directory entries
    print "$file\n";
}

