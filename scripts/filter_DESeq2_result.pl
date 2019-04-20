#!/usr/bin/perl -w
use strict;

die "\n".'Usage: perl *.pl $deseq2, $pval_cutoff, $logfc_cutoff'."\n\n" unless @ARGV ==3;

my ($deseq2, $pval_cutoff, $logfc_cutoff) = @ARGV;

open DEG, $deseq2 or die "$!";
my $header = <DEG>;
print "$header";
while(<DEG>){
    chomp;
    #gene_id baseMean        log2FoldChange  lfcSE   stat    pvalue  padj
    my ($gene_id, $base_mean, $logfc, $lfcse, $stat, $pval, $padj) = split;
    #if($padj <= 0.05 && ()){
    next if $padj eq "NA";  ## ne
    if($padj <= $pval_cutoff && (abs $logfc >=$logfc_cutoff)){
    #if($padj <= 0.05 && ($logfc >= 2 || $logfc <= -2)){
        print $_, "\n"
    }
}
