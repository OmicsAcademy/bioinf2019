#!/usr/bin/perl -w
use strict;

die "\n".'Usage: perl *.pl $deseq2, $annotation'."\n\n" unless @ARGV ==2;

my ($deseq2, $ann) = @ARGV;

#geneA geneA-description 
# store-hash
open ANN, $ann or die "$!";
my %record_ann;
while(<ANN>){
    chomp;
    my ($gene_id, $desc) = split(/\t/, $_);
    $record_ann{$gene_id} = $desc; 
}

open DEG, $deseq2 or die "$!";
my $header = <DEG>;
chomp $header;
print "$header\tdescription\n";
while(<DEG>){
    chomp;
    #gene_id baseMean        log2FoldChange  lfcSE   stat    pvalue  padj
    my ($gene, $base_mean, $logfc, $lfcse, $stat, $pval, $padj) = split;
    my $description = "NA";
    $description = $record_ann{$gene} if exists $record_ann{$gene};
    #my $description =  $record_ann{$gene};
    print "$_\t$description\n";
    #if($padj <= 0.05 && ()){
    #next if $padj eq "NA";  ## ne
    #if($padj <= $pval_cutoff && (abs $logfc >=$logfc_cutoff)){
    #if($padj <= 0.05 && ($logfc >= 2 || $logfc <= -2)){
    #    print $_, "\n"
    #}
}
