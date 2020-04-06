dataset1 <- cbind(observationA = 16:8, observationB = c(20:19, 6:12))
dataset1
apply(dataset1, 2, mean)
apply(dataset1,2, sum)
apply(dataset1,2,sort)
apply(dataset1,1 ,prod)
fun<- function(x)
{
  x/2
}
apply(dataset1,2,fun)
apply(dataset1, 2, function(x) x*10)
apply(dataset1, 1,print)
apply(dataset1,1,length)
apply(dataset1,2,length)
apply(dataset1,2,range)
#sapply
#function applies a function to individual values of a dataframe, and simplifies the output.
dataset1 <- data.frame(observationA = 16:8, observationB = c(20:19, 6:12))
dataset1
sapply(dataset1, length)
sapply(dataset1, quantile)
sapply(dataset1, class)
sapply(dataset1, print)
sapply(dataset1, is.numeric)
#mapply Runs a command on the first item in vector1 and vector2, then second item of vector1 and vector2, etc.
#Therefore the two vectors or lists have to be of the same length.
PersonnelData <- data.frame(Representative=c(1:4),Sales=c(95,110,115,90), Territory=c(1:4))
PersonnelData
mapply(print, PersonnelData)
mapply(is.numeric, PersonnelData)
mapply(sum,10:12,1:3)
mapply(paste, 1:5,6:10,sep=LETTERS[1:5])
mapply(paste,PersonnelData$Representative,PersonnelData$Sales,PersonnelData$Territory,MoreArgs = list(sep="-"))
newsales <-data.frame(representative =1:5,sales=c(101,282,372,321,272) ,territory =2:6)
newsales
mapply(sum, PersonnelData$Sales,newsales$sales)
fun1 <- function(x,y){return(x+y)}
mapply(fun1,PersonnelData$sales,newsales$sales)
library(parallel)
mcmapply(rep,1:5,5)
#TAPPLY 
#It is primarily used when we have the following circumstances:
# 1. dataset that can be broken up into groups (via categorical variables - aka factors)
# 2.We desire to break the dataset up into groups
# 3.Within each group, we want to apply a function
mtcars
mtcars$cyl
# calculate the mean of the mpg variable grouped by the cyl variable.
# get the mean of the mpg column grouped by cylinders 
tapply(mtcars$mpg, mtcars$cyl, mean)
#Now let's say you want to calculate the mean for each column in the mtcars dataset grouped by the cylinder categorical variable. 
#To do this you can embed the tapply function within the apply function.
apply(mtcars, 2, function(x) tapply(x, mtcars$cyl, mean))
