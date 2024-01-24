library(data.table)
library(dplyr)
root <- fread("/BiO/1_jelim/4_Mendel/2_Mendel_test_21_diseases/4_ref_UKB_HR_panel/3_21_dz_case_control/1_PGS_add_case_cont")
list <- fread("disease.list",header=F)
list <- data.frame(list)
for(i in 1:22){
#i= 1
list[i,1]
paste("Result_",list[i,1],".txt",sep="")
var1 <- paste("Result_",list[i,1],".txt",sep="")
var2 <- fread(var1)
names(var2)[2] <- var1
var2[[var1]] <- as.character(var2[[var1]])
var3 <- paste(list[i,1],"_year",sep="")
var4 <- paste(list[i,1],"_month",sep="")
var5 <- paste(list[i,1],"_day",sep="")
var2[[var3]] <- sapply(strsplit(var2[[var1]], "-"), function(x) x[1])
var2[[var4]] <- sapply(strsplit(var2[[var1]], "-"), function(x) x[2])
var2[[var5]] <- sapply(strsplit(var2[[var1]], "-"), function(x) x[3])
root <- left_join(root,var2,by="eid")
}
