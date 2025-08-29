setwd("C:\\Users\\it24101037\\Desktop\\IT24101037")
getwd()

#Q1
Delivery_Times<-read.table("Exercise - Lab 05.txt", header=TRUE)
fix(Delivery_Times)

attach(Delivery_Times)

#Q2
hist(Delivery_Times$Delivery_Time_.minutes., breaks = seq(20, 70, by=5),
     right=TRUE,
     col='green',
     main="Histogram of delivary time",
     xlab="Delivary Time",
     ylab="Frequency")
#3
#the histogram shows a roughly bell-shaped distribution, with a peak
#around 30-50 minutes. The distribution has fewer deliveries below 30 minutes
#and above 60 minutes.

#4
cf <- cumsum(table(cut(Delivery_Times$Delivery_Time_.minutes., breaks = seq(20, 70, by = 5), right = TRUE)))

plot(seq(22.5, 67.5, by = 5), cf, type = "o", col = "red",
     xlab = "Delivery Time", ylab = "Cumulative Frequency",
     main = "Cumulative Frequency Polygon (Ogive)")
