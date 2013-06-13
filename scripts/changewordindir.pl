#!/usr/bin/perl ###-wT

use IO::File;

if ($#ARGV < 1) {

	print "Usage : command <directory> <word> <changeword>\n";
} else { 

my $directory = @ARGV[0];
opendir (DIR, $directory) or die "$!";

while (my $file = readdir(DIR)) 
{

next if ($file =~ m/^\./);# ignore . and ..

my $FH = IO::File->new;
open(FH, ">", $file) or die "$ARGV[0] : $!";

my $nbytes = 0;
my $line;
while (<FH>)
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

close(FH);
}

closedir(DIR);
1;
