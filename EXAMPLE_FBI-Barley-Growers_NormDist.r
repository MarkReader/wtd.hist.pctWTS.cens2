############################################
# Example Executions wtd.hist.pctWTS.cens2 #
############################################
#   WORK FINE UNDER R-3.3.1 (2016-06-12)   #
############################################
#  

## EXAMPLES ##
## 1 Plot the distribution of income of barley growers
wtd.hist.pctWTS.cens2(scrtbl[ which(scrtbl[,"barley.area"]!=0), "farm.business.income"], nclass=42, main="", xlab="fbi", ylab="Per Cent of Farms (%)", las=1, col="yellow", weight=scrtbl[ which(scrtbl[,"barley.area"]!=0), "weight"])

## 2 Plot a Normal Distribution (n=100,000)
y <- rnorm(100000)
w <- abs(y)
w[1:100000] <- 1
wtd.hist.pctWTS.cens2(y, nclass=42, main="", xlab="sd", ylab="Per Cent of Population (%)", las=1, col="yellow", weight=w)
