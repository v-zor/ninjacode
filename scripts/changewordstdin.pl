#!/usr/bin/perl -wT

if ($#ARGV < 1) {

	print "Usage : command <word> <changeword>\n";
} else { 
while (<STDIN>)
{
	if (s/$ARGV[0]/$ARGV[1]/) {
		print $_;
	} else {
		print $_;
	}
}
}
1;
