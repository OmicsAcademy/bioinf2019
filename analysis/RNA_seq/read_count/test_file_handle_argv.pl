#!/usr/bin/perl -w
use strict;

#print $ARGV[0], "\n";
#print $ARGV[1], "\n";

my $peak_file = $ARGV[0];
my $out = $ARGV[1];

## Create a file handle
open PEAK, $peak_file;
#open OUT, ">>$out"; #append
open OUT, "+>$out";  #empty and fill 
while(my $peak_tem = <PEAK>){
    chomp $peak_tem;
    #chomp;
    #my ($chrom, $stt, $end) =split;
    #my ($chrom, $stt, $end) =split("\t", $peak_tem);
    #if($end - $stt > 100){
    #    print "$peak_tem\n";
    #}
    #print "$chrom, $stt, $end\n";

    my @array_region = split("\t", $peak_tem);
    if($array_region[2] - $array_region[1] > 100){
        print "$peak_tem\n";
        print OUT "$peak_tem\n";
    }
}
close OUT;
close PEAK;



