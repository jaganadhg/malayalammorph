#!/usr/bin/perl
use GDBM_File;
tie(%LEX,GDBM_File,$ARGV[0],&GDBM_WRCREAT,0644);
while(<STDIN>) {
$_ =~ /"([^"]+)","(.*)"$/;
$LEX{$1} = $2;
}
untie(%LEX);
