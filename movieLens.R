#reading rating.csv file from movielens dataset
read.csv("ratings.csv")
rate= read.csv("ratings.csv",sep = ',',head = TRUE)
rate
r =head(rate,n = 1000)
r
names(r)
#plotes using library(ggplot2)
library(ggplot2)
#Plotting of Rating by UserId
ggplot(r,aes(x=r$rating,y=r$userId,fill = rating ),alpha =0.4)+geom_bar(stat = "identity")+ggtitle("Plotting of Rating by\n UserId") +
  xlab("Rating") + ylab("userId")
#Plotting of Rating by MovieId
ggplot(r,aes(x=r$rating,y=r$userId,fill = rating),alpha = 0.5)+geom_bar(stat = "identity")+ggtitle("Plotting of Rating by\n MovieId") +
  xlab("Rating") + ylab("MovieId")
#Plotting of UserId by MovieId
ggplot(r,aes(x=r$userId,y=r$movieId,fill = userId),alpha = 0.5)+geom_bar(stat = "identity")+ggtitle("Plotting of UserId by\n MovieId") +
  xlab("UserId") + ylab("MovieId")



#reading movies.csv file from movielens dataset
read.csv("movies.csv")
movie = read.csv("movies.csv",sep = ',',head = TRUE)
movie
m =head(movie,n = 100)
names(m)
library(ggplot2)
#spliting the genres col
sp1 <- strsplit(as.character(m$genres),"|", fixed = TRUE)
sp1
# relist with the unlist method for relistable objects
MovieGenres = unlist(sp1, recursive = FALSE, use.names = TRUE)
MovieGenres
tb = table(MovieGenres)
tb
df = data.frame(tb)
df



sample = read.csv("ratings.csv",sep = ',',head = TRUE) #reading ratings.csv file to r
sample1 = read.csv("movies.csv",sep = ',',head = TRUE) #reading movies.csv file to r
sample2 = read.csv("tags.csv",sep = ',',head = TRUE) # reading tags.csv file to r
sample3 = read.csv("links.csv",sep = ',',head = TRUE) #reading links.csv file to r
names(sample) #getting column names
library(ggplot2) #checking ggplot library
sample = head( sample,n =1000)
with(sample,hist(movieId,rating,col=rating,breaks=20,ylab="movie rating")) #histogram for movie rating on the given dataset
options(scipen = 999)
qplot(sample2$userId,sample2$timestamp,data=sample2,colour="brown",xlab = "userId",ylab="timestamp",main="users since 1970" )# qplot for users and timestamp since 1970 
count=table(sample$rating) #taking the count of repeated values to count variable
count #getting a table with count
pie(count,main="movie ratings") #pie chart for rating
barplot(count,sample$timestamp,xlab="ratings",ylab="count",main="rating of movies",col = rainbow(length(count)))#barplot for movie rating


