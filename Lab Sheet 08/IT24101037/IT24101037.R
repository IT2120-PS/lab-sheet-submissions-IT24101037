setwd("C:\\Users\\it24101037\\Desktop\\IT24101037")
getwd()

data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

# Q1
popmn<-mean(Weight.kg.)
popmn
popsd<- sd(Weight.kg.)
popsd

#Q2
samples<-c()
n<-c

for(i in 1:25){
  s<-sample(Weight.kg.,5,replace=TRUE)
  samples<-cbind(samples,s)
  n <- c(n,paste('5',i))
}
colnames(samples)=n
samples

s.means <- apply(samples,2,mean)
s.means
s.sd <- apply(samples,2,sd)
s.sd


#Q3
samplemean <- mean(s.means)
samplemean
samplesd <- sd(s.means)
samplesd
