setwd("C:\\Users\\Savid\\OneDrive\\Desktop\\IT24101037")
getwd()

#Q1

#i
baking_items <- rnorm(25, mean=45, sd=2)

#ii
t.test(baking_items, mu=46, alternative="less")