#using the cbind() function usually requires use of the "Match()" function.
#Inner Join" where the left table has matching rows from one, or more, key variables from the right table.
#"Outer Join" where all the rows from both tables are joined.
#"Left Join" where all rows from the left table, and any rows with matching keys from the right table are returned.
#"Right Join" where all rows from the right table, and any rows with matching keys from the left table are returned.
builings =data.frame(location = c(1,2,3) , name =c("BUILDING1","BUILDING2","BUILDING3"))
builings
data <- data.frame(survey=c(1,1,1,2,2,2), location=c(1,2,3,2,3,1),
                   efficiency=c(51,64,70,71,80,58))
data
# common key variable called, "location". 
#Use the merge() function to merge the two dataframes by "location", into a new dataframe, "buildingStats".
building_stats =merge(builings,data,by ='location')
building_stats
buildings <- data.frame(location=c(1, 2, 3), name=c("building1", "building2", "building3"))
data <- data.frame(survey=c(1,1,1,2,2,2), LocationID=c(1,2,3,2,3,1),
                   efficiency=c(51,64,70,71,80,58))
building_stats=merge(buildings,data,by.x = "location",by.y = "LocationID")
building_stats
#Inner Join:
#The R merge() function automatically joins the frames by common variable names. 
#In that case, demonstrate how you would perform the merge in Exercise 1 without specifying the key variable.
building_stats =merge(buildings,data)
building_stats
builings =data.frame(location = c(1,2,3) , name =c("BUILDING1","BUILDING2","BUILDING3"))
builings
data <- data.frame(survey=c(1,1,1,2,2,2), location=c(1,2,3,2,3,1),
                   efficiency=c(51,64,70,71,80,58))
buildingStats <- merge(buildings, data, by="location", all=TRUE)
building_stats
data
buildings <- data.frame(location=c(1, 2, 3), name=c("building1", "building2", "building3"))
buildings2 <- data.frame(location=c(5, 4, 6), name=c("building5", "building4", "building6"))
all=rbind(buildings,buildings2)
all
#A new dataframe, buildings3, has variables not found in the previous dataframes

buildings3 <- data.frame(location=c(7, 8, 9),
                         name=c("building7", "building8", "building9"),
                         startEfficiency=c(75,87,91))

#Create a new buildings3 without the extra variables.
buildings3a =buildings3[,-3]
buildings3a
