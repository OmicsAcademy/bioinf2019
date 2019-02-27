#!/usr/bin/perl 
use warnings;
use strict;
## this a random string
my $str_random = "Hello, world\n";
#print $str_random;

my $random_num = "3";

#print $random_num/5, "\n";
#print $random_num*5, "\n";
#print $random_num-5, "\n";
#print $random_num+5, "\n";
#print $random_num**5, "\n";
#print log($random_num)/log(2), "\n";

my @gene_expr = (2,6,8, 9);
my $number = @gene_expr;
#print "gene number is: ", $number, "\n";
#print "first element devided by 2 equals: ", $gene_expr[0]/2, "\n";
#print "second element devided by 2 equals: ", $gene_expr[1]/2, "\n";

# This is an example of  for loop 
#for(my $i=0; $i<@gene_expr; ++$i){
#    my $tem_var= $gene_expr[$i]/2;

    #print "At $i place, the number devided by 2 equals: $tem_var\n";
    #print 'At $i place, the number devided by 2 equals: $tem_var\n';    
#}

#my $j = 0;
#foreach(@gene_expr){
#    my $tem_var= $gene_expr[$j]/2;
#    print "At $j place, the number devided by 2 equals: $tem_var\n";
#    #$j = $j +1
#    ++$j;
#}

#while
#1, "string", 

#print 3<2, "\n";
#my $judge = 3>2;
#print "Is 3>2? : $judge\n";
#my $judge2 = 3<2;
#print "Is 3<2? : xx..$judge2..xx\n";
my $k = 0;
while($k<@gene_expr){
    #++$k;
    my $tem_var= $gene_expr[$k]/2;
    print "At $k place, the number devided by 2 equals: $tem_var\n";
    ++$k;
}


#$k = 0;
#while($k<@gene_expr){
#    if($gene_expr[$k] >7){
#        print "At $k place, the number is bigger than 7: $gene_expr[$k]\n";
#    ## || 
#    }elsif($gene_expr[$k] <=7 && $gene_expr[$k] >=5){
#        print "At $k place, the number is between 5-7: $gene_expr[$k]\n";
#    }else{
#        print "At $k place, the number is smaller than 5: $gene_expr[$k]\n";
#    }
#    ++$k;
#}


#$k = 0;
#while($k<@gene_expr){
#    if($gene_expr[$k] >7 || $gene_expr[$k]<5 ){
#        print "At $k place, the number is bigger than 7 or small than 5: $gene_expr[$k]\n";
#    }
#    ++$k;
#}


#if($pval < 0.05 && ($log2FC > 2 || $log2FC <-2)){
# bla
#
#}


