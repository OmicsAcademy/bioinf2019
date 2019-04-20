gene_count <- c(100, 1000, 50, 8, 9)
total_count = sum(gene_count)
cpm = gene_count/total_count
cat(gene_count, "\n")
cat(cpm, "\n")
#CPM: count per million
#CPM (genei) = count/sum(count)


#  sample1	sample2
#  100 1000
# total 1M 400M
