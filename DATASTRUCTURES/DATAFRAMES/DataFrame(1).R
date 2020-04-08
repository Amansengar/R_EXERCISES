Name <- c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline")
Age <- c(25, 31, 23, 52, 76, 49, 26)
Height <- c(177, 163, 190, 179, 163, 183, 164)
Weight <- c(57, 69, 83, 75, 70, 83, 53)
Sex <- as.factor(c("F", "F", "M", "M", "F", "M", "F"))
df =data.frame(row.names = Name,Age,Height,Weight,Sex)
df
df$sex =factor(df$Sex , levels =c("M","F") ,labels = c("F","M"))
df
# By column Name:
#  df1 <- subset(df, select = -c(y) )
# By column number referencing:
#  df2 <- df[,-2]
df2 =df[,-4]
df2
df3=subset(df,select = c(1,2,3))
df3
df4 =subset(df,select = -c(4))
df4
df
#Create this data frame (make sure you import the variable Working as character and not factor).
Name <- c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline")
Working <- c("Yes", "No", "No", "Yes", "Yes", "No", "Yes")
df6 =data.frame(row.names = Name,Working)
df6
df7 =cbind(df,df6)
df7
dim(df7)
nrow(df7)
ncol(df7)
sapply(df7,class)
## alternative solution
str(df7)
state.center
str(state.center)
sapply(state.center,class)
class(state.center)
df9 =as.data.frame(state.center)
class(df9)
class(state.center)
#Create a simple data frame from 3 vectors. Order the entire data frame by the first column.
v <- c(45:41, 30:33)
b <- LETTERS[rep(1:3, 3)]
n <- round(rnorm(9, 65, 5))
df =data.frame(AGE = v, CLASS = b,GRADE =n)
df
df[with(df,order(AGE)),]
df[with(df,order(GRADE)),]
#ALTERNATE
df[order(df[1]),]
df[order(df$AGE),]
#Create a data frame from a matrix of your choice, change the row names so every row says id_i
#(where i is the row number) and change the column names to variable_i (where i is the column number). I.e.,
#for column 1 it will say variable_1, and for row 2 will say id_2 and so on.
m =matrix(rep(1:8,2) ,ncol =4)
m
df=as.data.frame(m)
df
rownames(df) =paste("VARIABLE_", LETTERS[1:ncol(df)])
df
colnames(df) =paste("id_", 1:ncol(df))
df
#For this exercise, we'll use the (built-in) dataset VADeaths.

#a) Make sure the object is a data frame, if not change it to a data frame.
#b) Create a new variable, named Total, which is the sum of each row.
#c) Change the order of the columns so total is the first variable

VADeaths
str(VADeaths)
class(VADeaths)
df =as.data.frame(VADeaths)
df
df$Total <- df[, 1] + df[, 2] + df[, 3] + df[, 4]
df
df$male_tot =sum(df[,1:3])
df
cbind(df, total_a = rowSums(df))
df
df$new =rowSums(df[,1:4])
df
#For this exercise we'll use the (built-in) dataset state.x77.

#a) Make sure the object is a data frame, if not change it to a data frame.
#b) Find out how many states have an income of less than 4300.
#c) Find out which is the state with the highest income
state.x77
str(state.x77)
class(state.x77)
df=as.data.frame(state.x77)
class(df)
df1=subset(df,df$Income<4300)
df1
nrow(df1)
nrow(df)
r =sort(df$Income, decreasing = TRUE)
class(r)
row.names(df)[(which(max(df$Income) == df$Income))]
#You can include your which.max call as the first argument to your subsetting call:
df[which.max(df$Income),]


