mtcars
attach(mtcars)
plot(mpg,drat,xlab ="Miles per gallon")
plot(mpg,drat,xlab="Miles per gallon" ,ylab = "Rear axle ratio",xlim = c(0,30),col =2,ylim=c(0,7))
plot(mpg,drat,main="Miles vs Rar")
plot(mpg,drat,axes = F)
axis(side=1,at=c(0,40))
axis(side =2,at=c(0,10))
mtext("Miles vs Rar" ,side =3)
mtext("Miles",side=1)
mtext("Miscellaneous", side =2)

plot(mpg,drat,pch =3)
points(mpg,wt,col=3)
legend("bottomright",legend=c("Rar","Wt"),col=c(1,3),ncol=3,pch=2,bg="light blue")
plot(mpg,drat,pch=1)
points(mpg,wt,col=2,pch=2)
points(mpg,cyl,col=3,pch=3)
legend("topright",legend = c("Drat","Wt","cyl"),col=1:3,pch=1:3,bg="green")

##BOXPLOTS
iris
boxplot(Sepal.Width ~ Species ,iris)
#Change the range of the y-axis so it starts at 2 and ends at 4.5
boxplot(Sepal.Width ~ Species,iris,ylim = c(2,4.5))
#Modify the boxplot function so it doesn't draw ticks nor labels of the x and y axes.
boxplot(Sepal.Width ~ Species,iris,ylim = c(2,4.5) ,xaxt='n',yaxt ='n')
#Add notches (triangular dents around the median representing confidence intervals) to the boxes in the plot.
boxplot(Sepal.Width~Species,iris,ylim=c(2,4.5) ,notch = TRUE)
#Increase the distance between boxes in the plot
boxplot(Sepal.Width~Species,iris,ylim=c(2,4.5) ,notch = TRUE,boxwex =0.5)
#Change the color of the box borders to blue.
boxplot(Sepal.Width~Species,iris,ylim=c(2,4.5) ,notch = TRUE,boxcolor ='blue')
# Change the color of the median lines to red. b. Change the line width of the median line to 1.
boxplot(Sepal.Width ~ Species, data=iris, ylim=c(2, 4.5), xaxt='n', yaxt='n',
        notch=TRUE, boxwex=0.5, boxcol="blue",medcol = 'red',medlwd =1)

#a. Change the color of the outlier points to red. b. Change the symbol of the outlier points to "+".
#c. Change the size of the outlier points to 0.8.
boxplot(Sepal.Width ~ Species, data=iris, ylim=c(2, 4.5), xaxt='n', yaxt='n',
notch=TRUE, boxwex=0.5, boxcol="blue", medcol="red", medlwd=1,outcol ='red',outpch =3,outcex =0.9)

#a. Add the title to the boxplot (try to replicate the style of matlab's boxplot).
#b. Add the y-axis label to the boxplot (try to replicate the style of matlab's boxplot).
boxplot(Sepal.Width ~ Species, data=iris, ylim=c(2, 4.5), xaxt='n', yaxt='n',
        notch=TRUE, boxwex=0.5, boxcol="blue", medcol="red", medlwd=1,outcol ='red',outpch =3,outcex =0.9)
mtext("BOXPLOT VARIATION OF THREE SPECIES",3,cex=0.9)
mtext("Sepal Width in mm" ,2,cex =0.7)

#a. Add x-axis (try to make it resemble the x-axis in the matlab's boxplot)
#b. Add y-axis (try to make it resemble the y-axis in the matlab's boxplot)
#c. Add the y-axis ticks on the other side.


