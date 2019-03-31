#!/usr/bin/perl -w
use strict;

my %gene_info = ("gene1"=>"ROS",
                 "gene2"=>"WRKY",
                 "gene3"=>"WRKY"
                );

print "$gene_info{gene1}\n";
print "$gene_info{gene2}\n";
print "$gene_info{gene3}\n";

my @hash_key  = keys %gene_info;
@hash_key = sort @hash_key;
#print "Keys of \%gene_info:", @hash_key, "\n";
#print "Keys of \%gene_info:", join("\t", sort keys %gene_info), "\n";
#print "Keys of \%gene_info:", keys %gene_info, "\n";

foreach(sort keys %gene_info){
    print "The value of $_ is: ", $gene_info{$_}, "\n";
}

my %read_dep = ("1"=>"100",
                 "2"=>"200",
                 "3"=>"50",
                 "10"=>"20",
                );

foreach(sort {$b<=>$a} keys %read_dep){
    print "The value of $_ is: ", $read_dep{$_}, "\n";
}

