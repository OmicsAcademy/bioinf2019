#!/usr/bin/perl -w
#use warnings;
use strict;

my @gene_expr = (1, 3, 10);
print "First element: ", $gene_expr[0], "\n";
#my $len = @gene_expr;
my $len = $#gene_expr + 1;
print "Old_array: @gene_expr\n";
print "Length of array: ", $len, "\n";

my $new_gene_expr = 20;
push @gene_expr, $new_gene_expr;
$len = $#gene_expr + 1;
print "New_array: @gene_expr\n";
print "Length of array: ", $len, "\n";

my @new_gene_expr_array = (2, 5);
push @gene_expr, @new_gene_expr_array;
$len = scalar @gene_expr;
print "New_array: @gene_expr\n";
print "Length of array: ", $len, "\n";

my $last_ele = pop @gene_expr;
print "Last element is: $last_ele\n";
print "New_array after poping: @gene_expr\n";

my $first_ele = shift @gene_expr;
print "First element is: $first_ele\n";
print "New_array after shifting: @gene_expr\n";

my $gene_expr1 = 100;
unshift @gene_expr, $gene_expr1;
print "New_array after unshifting: @gene_expr\n";
