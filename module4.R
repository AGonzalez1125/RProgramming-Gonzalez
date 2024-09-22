##Programmer: Andre Gonzalez
##Assignment: Module 4


## First Question
A <- c(3, 2, 5, 6, 4, 8, 1, 2, 3, 2, 4)
boxplot(A)


## Second Question:
B <- c(2, 4, 5, 7, 12, 14, 16)
hist(B)


## Third Question:
## To analyze the data I will create a data frame that contains all the information.

## Creation of the vectors:
patientName <- c("patient01", "patient02", "patient03", "patient04", "patient05", "patient06", "patient07","patient08", "patient09", "patient10")
visitFreq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
firstDoc <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1) ##(bad=1, good =0)
secondDoc <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1) ##(low = 0, high =1)
finalDoc <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1) ##(low = 0, high =1)

## Creation of Data Frame
patients <- data.frame(patientName,visitFreq,bp,firstDoc,secondDoc,finalDoc, stringsAsFactors = FALSE)

## Renaming Columns
colnames(patients)[1] <- "Name"
colnames(patients)[2] <- "Frequency"
colnames(patients)[3] <- "Blood Pressure"
colnames(patients)[4] <- "First"
colnames(patients)[5] <- "Second"
colnames(patients)[6] <- "Final"

##Display Data Frame
patients


