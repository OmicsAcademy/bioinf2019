setwd("C:/Users/xie186/Desktop/")
getwd()
go_bp <- read.table("chart_D16CE12791EB1555759135770.txt", 
                    sep="\t", header = T)

go_bp_fil <- go_bp[go_bp$FDR<=5, ]


go_bp_fil$minusLog10FDR = -log10(go_bp_fil$FDR/100)
par(mar=c(12,3,1,1))
x <- barplot(go_bp_fil1)
text(cex=1, x=x-.25, y=0, go_bp_fil$Term, xpd=TRUE, srt=45, adj = 1)

