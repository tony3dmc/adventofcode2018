#!/usr/bin/perl

use strict;
use warnings;

open(my $fh, 'input.txt');

my @ids;

while (my $id = <$fh>) {
	chomp($id);
	push @ids, $id;
}

foreach my $i (0..$#ids) {
	foreach my $j (0..$#ids) {
		print "$ids[$i] and $ids[$j]\n" if compare($ids[$i], $ids[$j]);
	}
}

sub compare {
	my ($left, $right) = @_;
	my $diffs = 0;
	for (my $i = 0; $i < length $left; $i++) {
		if (substr($left, $i, 1) ne substr($right, $i, 1)) {
			$diffs++;
		}
	}
	if ($diffs == 1) {
		return 1;
	}
	return 0;
}
