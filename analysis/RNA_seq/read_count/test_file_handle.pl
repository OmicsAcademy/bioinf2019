#!/usr/bin/perl -w
use strict;

my $peak_file = "peak_region.txt";

## Create a file handle
open PEAK, $peak_file;
my @peak_list = <PEAK>;
#print "Length of \@peak_list: ", scalar @peak_list, "\n";
foreach my $peak_tem(@peak_list){
    #print "$peak_tem";
    chomp $peak_tem;
    my ($chrom, $start, $end)  = split("\t", $peak_tem);
    ## Peak bed format 
    if($end - $start > 100){
        print "$peak_tem\n";
    }
}

