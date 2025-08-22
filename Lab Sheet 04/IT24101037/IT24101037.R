setwd("C:\\Users\\it24101037\\Desktop\\IT24101037")
branch_data<-read.csv("Exercise.txt",header=TRUE)

str(branch_data)

boxplot(branch_data$Sales_X1, main="Box Plot for Sales",ulab="Sales")

fivenum(branch_data$Advertising_X2)
summary(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

find_outliers<-function(x){
  q1<-quantile(x,0.25)
  q3<-quantile(x,0.75)
  IQR_value<-IQR(x)
  
  ub<-q3+1.5*IQR_value
  lb<-q1-1.5*IQR_value
  
  outliers<-x[x<lb|x>ub]
  return(outliers)
}

outlier_years<-find_outliers(branch_data$Years_X3)
outlier_years

