#Consider two vectors:
#  x=seq(1,43,along.with=Id)
#  y=seq(-20,0,along.with=Id)
#  Create a data.frame df:
ID =rep(c(1,2,3,4) ,each =3)
ID
LETTER = rep(LETTERS[1:3] ,3)
LETTER
x=seq(1,43,along.with = ID)
y=seq(-20,0,along.with = ID)
DF =data.frame(LETTER,ID,x,y)
id =seq(1:4)
id
Age =sample(10:20,4)
Age
df =data.frame(id,Age)
df
Sex =c("M","F","M","M")
Sex
code=LETTERS[1:4]
code
df1 =data.frame(id,Sex,code)
df1
#MERGING OF DATAFRAMES
M= merge(df,df1,by='id')
M
Score =sample(70:100,4)
Score
df2 =data.frame(id,Score)
m1 =merge(M,df2,by='id')
m1
m1[,c('Sex')] =NULL
m1
m1[1,2,4]
m1[1:2]
m3 =m1[-3]
m3
stack(m3)
trees
str(trees)
class(trees)
Girth =c(mean(Girth),min(Girth),max(Girth),sum(Girth))
#MARGIN is a variable defining how the function is applied: when MARGIN=1, it applies over rows,
#whereas with MARGIN=2, it works over columns.
#Note that when you use the construct MARGIN=c(1,2), it applies to both rows and columns
mean_tree =apply(trees,2,mean)
min_tree =apply(trees, 2,min)
max_tree =apply(trees, 2,max)
sum_tree =apply(trees, 2,sum)
df =data.frame(mean_tree,min_tree,max_tree,sum_tree)
df
df1 =t(df)
df1
df2 =as.data.frame(df1)
df2
df2[order(df2$Girth),]
df2[1:2]
df2["Girth"]
class(df2)
df2
row.names(df2) =c("MEAN","MIN",",AX","SUM")
df2
