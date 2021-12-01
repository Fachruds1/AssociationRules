---
  title: "Fachrudin - MBA"
author: "Fachrudin"
date: "10/2/2021"
output: html_document
---

#Load Package
library(arules)
library(plyr)
library(arulesViz)
#Thats are package and library would used for this case

#Import Dataset
#Dataset about groceries in retail from kaggle
retail <- read_csv("~/Personal/Dibimbing/batch5/day2/Groceries_dataset.csv")
str(retail)

#Groceries dataset includes 38,765 records and 3 columns: Member_number, Date, itemDescription

#check NA values
cbind(lapply(lapply(retail, is.na),sum))

#All goods No NA values

#Read Dataset as Transaction
transaksi <- read.transactions("~/Personal/Dibimbing/batch5/day2/Groceries_dataset.csv", format="single", sep=",", cols=c(1,3), skip=1)

#We only use column member_number and itemDescription. Now, we have transaction dataset and the we explore it.

#Item List
transaksi@itemInfo

#ID Transaction List
transaksi@itemsetInfo

#Plot Top 10 Best Seller
itemFrequencyPlot(transaksi, topN=10)

#Association Rule to get set of rule
#There are 167 distinct products and 3.898 ID transaction
basket <- apriori(transaksi, parameter = list(supp = 0.01, confidence = 0.5, target="rules"))
summary(basket)

#Top 10 Set of Rule
inspect(basket[1:10])

#whole milk has frequency about 40% and the highest frequency of sold item

#Scatter Plot Top 10 Set of Rule
plot(basket[1:10], jitter=0)

#Graph Plot Top 10 Set of Rule
plot(basket[1:10], method="graph")