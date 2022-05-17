#Divided on BMI reffering on WHO
df["data_col"] <- ifelse(vector  < 25 ,1,ifelse(vector <30 ,2 ,ifelse(vector >=30,3,0)))
