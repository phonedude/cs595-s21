#!/usr/bin/perl

# read in the top 500
# source: https://moz.com/top-500/download/?table=top500Domains

$i = 0;
while (<STDIN>) {
	$line = $_;
	$line =~ s/"//g;
	$sites[$i] = $line;
	$i++;
}

# pick random 100 with no duplicates
$j = 0;
while ($j < 100) {

	$r = int(rand(500));
	next if $already[$r];
	
	print $sites[$r];
	$already[$r]=1;
	$j++;
}
