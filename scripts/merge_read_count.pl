#!/usr/bin/perl -w
use strict;

my ($sample_list)  = @ARGV;
#print $sample_list, "\n";

my @sample_list = split(",", $sample_list);
#print join("\t", @sample_list), "\n";

#key -> value
#key -> 1
#key -> (1,,3,5)
my %record_count;
my @new_sampl_id;
foreach my $sample_name(@sample_list){

    my $new_sam_id = $sample_name; #EV_3.count.tab
    $new_sam_id =~ s/.count.tab//;
    push @new_sampl_id, $new_sam_id;
    open SAMPLE, $sample_name or die "$!";
    while(my $line = <SAMPLE>){
        chomp $line;
        if($line !~ /^__/){ ## if line doesn't start with "__"
           my ($gene_id, $count) = split("\t", $line);
           push @{$record_count{$gene_id}}, $count;
        }
    }
}

print "gene_id\t", join("\t", @new_sampl_id), "\n";
foreach(keys %record_count){
    my @count = @{$record_count{$_}};
    print "$_\t", join("\t", @count), "\n";
}


#psedocode:
# get count file name
# process file
# %sample1_hash:
# %sample2_hash;
#  ...
# %sample5_hash;
#  loop{
#     process each file{
          
           
#      }
#}

## for each key {
##    print expr
    
#}
# output to a destination file
