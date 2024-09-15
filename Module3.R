##Programmer: Andre Gonzalez
##Assignment: Module 3



#Name <- c("Jeb", “Donald”, "Ted”, “Marco” “Carly”, “Hillary”, “Berine”)
#ABC political poll results <- c(4, 62 51, 21, 2, 14, 15)
#CBS political poll results <- c(12, 75, 43, 19, 1, 21, 19)



##Fixed
##Creating the vectors
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")
ABC_political_poll_results <- c(4, 62, 51, 21, 2, 14, 15)
CBS_political_poll_results <- c(12, 75, 43, 19, 1, 21, 19)

##Creating a Data Frame
Poll2016 <- data.frame(Name, ABC_political_poll_results, CBS_political_poll_results, stringsAsFactors = FALSE)

##Renaming Columns 2 and 3
colnames(Poll2016)[2] <- "ABC"
colnames(Poll2016)[3] <- "CBS"


##Displaying Data Frame
Poll2016
