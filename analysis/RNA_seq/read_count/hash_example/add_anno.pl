#!/usr/bin/perl -w
use strict;

my ($deg, $anno) = @ARGV;
#print "\@ARGV content: @ARGV\n";
#print "$deg, $anno\n"

#step1 read annotation info
open AN, $anno or die "$!: $anno";
my %record_anno;
while(<AN>){
    my ($gene_id, $anno) = split;
    $record_anno{$gene_id} = $anno;
}
close AN;

#print %record_anno, "\n";

open DEG, $deg or die "$!: $deg";
while(<DEG>){
    chomp;
    if($_=~/#/){
        print "$_\tdescription\n";
    }else{
        my ($gene_id, $log2fc, $pval) = split;
        #my $gene_anno = "NA";
        #if(exists $record_anno{$gene_id}){
        #    $gene_anno = $record_anno{$gene_id};
        #}
        my $gene_anno = (exists $record_anno{$gene_id}) ? $record_anno{$gene_id} : "NA";  ## (judgement) ? true_action : false_action
        #my $gene_anno = $record_anno{$gene_id};
        print "$gene_id\t$log2fc\t$pval\t$gene_anno\n";
    }
}
