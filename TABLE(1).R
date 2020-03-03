#The table() function is intended for use during the Data Exploration phase of Data Analysis.
#The table() function performs categorical tabulation of data.
#In the R programming language, "categorical" variables are also called "factor" variables.
#The table() function allows for logical parameters to modify data tabulation.
Gender <- c("Female","Female","Male","Male")
Restaurant <- c("Yes","No","Yes","No")
Count <- c(220, 780, 400, 600)
DiningSurvey <- data.frame(Gender, Restaurant, Count)
DiningSurvey
ftable(DiningSurvey)
table(DiningSurvey$Gender)
DiningSurvey[[3,3]] =1900
DiningSurvey[[1,1]]="Male"
DiningSurvey
table(DiningSurvey$Gender)
#Use the table() function, and logical vector of "Count > 650", to summarize the DiningSurvey data.
table(DiningSurvey$Count>600)
#Apply the "useNA" argument to find missing Restaurant data.
DiningSurvey$Restaurant[1] =NA
table(DiningSurvey$Restaurant, UseNA = "always")
DiningSurvey
table(DiningSurvey$Restaurant , is.na(DiningSurvey$Restaurant))
table(DiningSurvey$Gender ,exclude = "Male")
#The "margin.table()" function requires data in array form, and generates tables of marginal frequencies.
#The margin.table() function summarizes arrays within a given index:
RentalUnits <- matrix(c(45,37,34,10,15,12,24,18,19),ncol=3,byrow=TRUE)
colnames(RentalUnits) <- c("Section1","Section2","Section3")
rownames(RentalUnits) <- c("Rented","Vacant","Reserved")
RentalUnits <- as.table(RentalUnits)
RentalUnits
margin.table(RentalUnits,1)
margin.table(RentalUnits,2)
df =as.data.frame(RentalUnits)
#The prop.table() function creates tables of proportions within the dataset:

#With the "RentalUnits" data table, 
#use the "prop.table()" function to create a basic table of proportions.
# Next, find row percentages, and column percentages.
prop.table(RentalUnits)
prop.table(RentalUnits,1)
prop.table(RentalUnits,2)
ftable(RentalUnits)
summary(RentalUnits)
#The "summary()" function performs an independence test of factors:

#Use "summary()" to perform a Chi-Square Test of Independence, of the "RentalUnits" variables.
#The main thing is, we reject the null hypothesis if the p-value that comes out in the result is less than a predetermined significance level,
#which is 0.05 usually, then we reject the null hypothesis.
as.data.frame(RentalUnits)
#The "addmargins()" function creates arbitrary margins on multivariate arrays:

#Use "addmargins()" to append "RentalUnits" with sums.
addmargins(RentalUnits)
addmargins(RentalUnits,1)
addmargins(RentalUnits,2)
addmargins(prop.table(RentalUnits,1))
