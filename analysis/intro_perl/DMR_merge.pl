#!/usr/bin/perl -w
use strict;

my ($DMR, $out) = @ARGV;

open DMR, $DMR or die "File not found: $!";
open OUT, "+>$out" or die "$!";

#read  a  line,
# go to next line
#     check overlap 
#      if overlap: merge two regions. Then go to the next line. 
#      if not overlap: print whatever we have now; then start from a line
while(my $region = <DMR>){
    chomp $region;
    my ($chrom1, $start1, $end1) = split(/\t/, $region);
    BLOCK:{
        my $new_region = <DMR>;
       
        if(!$new_region){
            print OUT "$chrom1\t$start1\t$end1\n";
        }else{
            chomp $new_region;
            my ($chrom2, $start2, $end2) = split(/\t/, $new_region);
             ## start1===============end1
             ##           start2=====================end2
             ## start1===============================new_end1
            if($chrom2 eq $chrom1 && $start2 >= $start1 && $start2 <=$end1){
                $end1 = $end2;
                redo BLOCK;
            }else{
                print OUT "$chrom1\t$start1\t$end1\n";
                ($chrom1, $start1, $end1) = ($chrom2, $start2, $end2);
                redo BLOCK;
            }
        }
    }
}
           
            
