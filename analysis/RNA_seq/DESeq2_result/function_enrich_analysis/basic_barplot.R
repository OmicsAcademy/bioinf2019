setwd("C:/Users/xie186/Desktop/")
getwd()
go_bp <- read.table("chart_D16CE12791EB1555759135770.txt", 
                    sep="\t", header = T)

## < 0.05 
go_bp_fil <- go_bp[go_bp$FDR<=5, ]

go_bp_fil$minusLog10FDR = -log10(go_bp_fil$FDR/100)
pdf("test_bar.plot.pdf")

par(mar=c(12,10,0.5,0.5))
x <- barplot(go_bp_fil$minusLog10FDR)
text(cex=1, x=x, y=-0.25, go_bp_fil$Term, xpd=TRUE, srt=45, adj = 1)

dev.off()

