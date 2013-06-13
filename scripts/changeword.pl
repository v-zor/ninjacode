#!/usr/bin/perl ###-wT

use IO::File;

if ($#ARGV < 1) {

	print "Usage : cat <file> | command <file> <word> <changeword>\n";
} else { 

my $FH = IO::File->new;
open(FH, ">", $ARGV[0]) or die "$ARGV[0] : $!";

my $nbytes = 0;
my $line;
while (<STDIN>)
{

	$line = $_;

	if (s/$ARGV[1]/$ARGV[2]/) {
		seek(FH,$nbytes,SEEK_SET);
		print FH $_;
	} else {
		print FH $_;
	}

	$nbytes += length($_);
}
}
1;
