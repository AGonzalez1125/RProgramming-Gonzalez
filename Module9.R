## Module 9 Assignment
## Programmer: Andre Gonzalez

## I used the college distance file
## Step 1: Import data set
data1<- read.table(file.choose(),header=TRUE, sep = ",")

data1
## Install packages
install.packages("lattice")
library(lattice)
install.packages("ggplot2")
library(ggplot2)

## Remove unneeded column
data1 <- subset(data1, select = -rownames)
data1

## Create vector of the distance
distance <- data1$distance
## Use the maximum y value
max_dist <- max(distance)
## Create the histogram
hist(distance, col=heat.colors(max_dist), breaks=max_dist, xlim =c(0,max_dist)
     , right=F, main= "Distance Histogram", las=1)



## Creating xplot of wage vs distance
xyplot(wage ~ distance, data1, grid = TRUE, scales = list(x = list(log = 10)),
       type = c("p", "smooth"), col.line = "darkorange", lwd = 3,
       groups = gender , auto.key = TRUE)

## using ggplot 2
gdata1 <- ggplot(data1, aes(ethnicity, colour = factor(gender))) + geom_bar()
gdata1 + scale_fill_hue()



