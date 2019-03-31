#!/usr/bin/perl -w
use strict;

my $gene_seq = "ATGCGAGCGAG";
my $seq_len = length $gene_seq;  # length($gen_seq)
print "The length of the sequence is: ",$seq_len,"\n";

my $gene_seq2 = "CTACGTAGCT";
my $conca_seq = $gene_seq.$gene_seq2;
print "New sequence is: $conca_seq\n";

my $sub_str = substr($conca_seq, 0, 6);
print "Substring from 0: $sub_str\n";

my $find = index($conca_seq, "CGAG", 10);
if($find == -1){
   print "Oops: string not found\n";
}else{
   print 'Wow find stirng at'.$find."\n";
}

## 
#chr1	100	200
#chr1	500	600

my $region = "chr1\t100\t200";
my ($chrom, $start, $end) = split("\t", $region);
print "$chrom, $start, $end\n";
