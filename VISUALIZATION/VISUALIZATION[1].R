#Plot Miles/(US) gallon versus Rear axle ratio by plot(mpg,drat) . On which axis does mpg appear?
mtcars
attach(mtcars)
plot(mpg~drat)
plot(drat~mpg)
#Is a scatterplot recommended for continuous or dichotomous variables?
#ANS=For continuous variables. Dichotomous variables have to be plotted by histogram
#Produce a histogram with hist(gear). What do you see?
hist(gear)
#Change type of visualization of our scatterplot in Exercise 1 plot(mpg,drat,type=""). 
#If we want to see lines what we have to type into "":
plot(mpg~drat , type ='l')
#Now we want to see both point and lines in our plot. What we have to type into
plot(drat~mpg,type=c('b'))
#Add another variable to our plot, for example Weight. What command do we have to use:
plot(mpg~drat);points(mpg~wt)
#Now we have added a new variable to our plot. Suppose we want to use two different colours to separate the points.
plot(mpg, drat, col=2)
#Now we want to differentiate the two different variables in the scatterplot:
#a. Let's change the colours of the second plot
#b. Change use two different types of plot (e.g. points,lines)
plot(mpg,drat,col=2);points(mpg,wt,col=3)
#Now we want to highlight a variable in the final plot.
plot(mpg~drat,lwd=1);points(mpg~wt,lwd=2)
#
plot(cyl~hp,ylim=c(0,10),type='b',col =3);points(cyl~disp,lwd =2)
#### CUSTOMIZATION
#Create a scatterplot of mpg (x-axis) against drat (y-axis) and add a label to the x-axis.
#Which of the following statements is correct:
plot(mpg,drat,xlab="Miles per gallon")
plot(mpg,drat,xaxis="Miles per gallon")
