perl ../../../scripts/filter_DESeq2_result.pl yeast_DESeq2_DEG.tab > yeast_DESeq2_DEG.fil.tab

perl ../../../scripts/add_annotation.pl yeast_DESeq2_DEG.fil.tab ensembl_biomart_annotation.txt > yeast_DESeq2_DEG.fil.ann.tab
