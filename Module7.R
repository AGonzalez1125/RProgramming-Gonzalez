## Module 7 Assignment
## Programmer: Andre Gonzalez

## Loading MTcars data
data("mtcars")

## Checking type of class
class(mtcars)

## Checking data with generic function
head(mtcars)

## Checking if s3 or s4
isS4(mtcars)

## Creating Example S3 object
s <- list(name = "Myself", age = 29, GPA = 3.5)
s2 <- list(name = "John", age = 22, GPA = 2.5)
s
s2


## Creating S4 class and object,
setClass("student",
         representation(
           name="character",
           age="numeric",
           GPA="numeric")
)
s4 <- new("student",name="Myself", age=29, GPA=3.5)
s5 <- new("student",name="John", age=22, GPA=2.5)
s4
s5

