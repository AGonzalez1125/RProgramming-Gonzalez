## Module 8 Assignment
## Programmer: Andre Gonzalez

## Step 1: Import data set
x <- read.table(file.choose(),header=TRUE, sep = ",")

## Step 2: Install and run plyr
install.packages("plyr")
library(plyr)
y= ddply(x, "Sex", transform, Grade.Average=mean(Grade))

## Step 3: Print to file
write.table(y, "Sorted_Average")

## Step 3.1 Override the file to separate
write.table(y, "Sorted_Average", sep=",")

## Step 4: filter names
newx = subset(x, grepl("[iI]",x$Name))
subset(x, grepl("i", x$Name))
write.table(newx, "DataSubset",sep=",")

## Display Table
newx

