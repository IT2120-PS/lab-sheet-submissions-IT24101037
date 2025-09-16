setwd("C:\\Users\\Savid\\OneDrive\\Desktop\\IT24101037")
getwd()
#1
# i) random variable X has a binomial distributution with n=50 and p=0.85
# ii)
pbinom(46, size=50, prob=0.85, lower.tail = FALSE)

#2

# i) X = number of calls reveived per hour
# ii) X ~ Poisson(λ=12)
# iii) 
dpois(15, lambda = 12)
