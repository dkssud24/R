install.pakcages("PEIP")

library(PEIP)
library(dplyr)
library(data.table)

#step1. read
#a <- fread("")

a["STAT"] <- tinv(a$P,a$NMISS)

#exsist INF value

a2 <- a [ a$STAT == "Inf",]
a3 <- a [ a$STAT != "Inf",]

a2["STAT"] <- 8.209937

a <- rbind(a2,a3)

write.table(a,'.txt',quote=FALSE,row.names=FALSE,sep="\t")

