setwd("C:/Users/xie186/Desktop/")
#dir.create("DESeq2_result")
setwd("DESeq2_result")
getwd()

count_tab <- read.table("C:/Users/xie186/Desktop/DESeq2_result/read_count_merge.tab", 
                        header=T) 

rownames(count_tab) = count_tab[, 1] # count_tab$gene_id
count_tab = count_tab[, -c(1)]

colData <- read.table("sample_info4DESeq2.txt", header = T)
colData$Condition = factor(colData$Condition, c("EV", "DNMT3B"))

library(DESeq2)
dds <- DESeqDataSetFromMatrix(countData = count_tab,
                              colData = colData,
                              design= ~ Condition)


dds <- DESeq(dds)
resultsNames(dds) # lists the coefficients
res  <- results(dds, name="Condition_DNMT3B_vs_EV")
res <- res[order(res$padj), ]
resDF = as.data.frame(res)
### One way 
#resDF$gene_id = rownames(resDF)
#resDF <- resDF[, c(7, 1, 2, 3,4,5,6)]

## cbind
resDF = cbind("gene_id"=rownames(resDF), resDF)

write.table(resDF, file = "yeast_DESeq2_DEG.tab", 
            sep = "\t", quote = FALSE, row.names = FALSE)
# or to shrink log fold changes association with condition:
#res <- lfcShrink(dds, coef="condition_trt_vs_untrt", type="apeglm")

library(ggplot2)
## PCA
vsd <- vst(dds, blind=FALSE)
pcaData <- plotPCA(vsd, intgroup=c("Condition"), returnData=TRUE)
percentVar <- round(100 * attr(pcaData, "percentVar"))

plotFig <- ggplot(pcaData, aes(PC1, PC2, color=Condition)) +
  geom_point(size=3) +
  xlab(paste0("PC1: ",percentVar[1],"% variance")) +
  ylab(paste0("PC2: ",percentVar[2],"% variance")) + 
  coord_fixed()
ggsave(plotFig, filename = "yeast_DESeq2_PCA.pdf")

pdf("yeast_DESeq2_MAplot.pdf")
plotMA(res, ylim=c(-2,2))
dev.off()



## How to filter 
resDF_noNA <- resDF[complete.cases(resDF), ]
resDFfil = resDF_noNA[resDF_noNA$padj <= 0.05 & 
                   (resDF_noNA$log2FoldChange > 2 | resDF_noNA$log2FoldChange < -2), ]

