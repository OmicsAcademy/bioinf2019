setwd("C:/Users/xie186/Desktop/")
getwd()
go_bp <- read.table("chart_D16CE12791EB1555759135770.txt", 
                    sep="\t", header = T)

go_bp_fil <- go_bp[go_bp$FDR<=5, ]
go_bp_fil$minusLog10FDR = -log10(go_bp_fil$FDR/100)

library(ggplot2)
# Basic barplot
p<-ggplot(data=go_bp_fil, aes(x=Term, y=minusLog10FDR)) +
  geom_bar(stat="identity") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

pdf("test_barplot.pdf")
print(p)
dev.off()
