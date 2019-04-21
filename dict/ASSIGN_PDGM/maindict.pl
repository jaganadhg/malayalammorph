#!/usr/bin/perl
require "/home/amba/anusAraka/Sanskrit/dict/ASSIGN_PDGM/dictm.pl";
require "/home/amba/anusAraka/Sanskrit/dict/ASSIGN_PDGM/dictf.pl";
require "/home/amba/anusAraka/Sanskrit/dict/ASSIGN_PDGM/dictn.pl";
require "/home/amba/anusAraka/Sanskrit/dict/ASSIGN_PDGM/dict_pron.pl";

while($in=<STDIN>){
chomp($in);

$pdgm = "";
$in =~ /^("[^"]+")/;
$rt = $1;
if($in =~ /"avy"/) { $in =~ s/"avy"/"avy","avy"/;}
elsif($in=~/noun_m/){
	$pdgm = &masc($rt);
        #print $pdgm,"\n";
        $in =~ s/"noun_/"$pdgm","noun_/;
 }elsif($in=~/noun_f/){
	$pdgm = &female($rt);
        #print $pdgm,"\n";
        $in =~ s/"noun_/"$pdgm","noun_/;
 }elsif($in=~/noun_n/){
	$pdgm = &napums($rt);
        #print $pdgm,"\n";
        $in =~ s/"noun_/"$pdgm","noun_/;
 }
 print $in,"\n";
}
