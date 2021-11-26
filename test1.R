df  = read.csv('d:/csv-ml/IPL Ball-by-Ball 2008-2020.csv',header= TRUE )
names(df)
class(df)

dim(df)
summary(df)
library(dplyr)
######runs#####
runs  = df %>%
  group_by(batsman, id)%>%
  summarize("score" = sum(batsman_runs))

unique(runs$batsman)
dim(runs)
runs$round = substr(runs$id, start = 1, stop = 3)

str(runs$round)
unique(runs$round)
####wickets#####
wickets  = df %>%
  group_by(bowler, id)%>%
  summarize(wicket = sum(is_wicket))
wickets
unique(wickets$bowler)
dim(wickets)
wickets$round = substr(wickets$id, start = 1, stop = 3)



###to check fitting plot the graph by wickets
str(wickets$id)
str(wickets$bowler)
str(wickets$round)
str(wickets$wicket)
wicketA=as.numeric(as.integer(wickets$wicket))
str(wicketA)

summary(wicketA)
sd(wicketA)
hist(wicketA,freq=F,main="Distribution of wickets")

###to check fitting plot the graph by runs
str(runs$id)
str(runs$batsman)
str(runs$round)
str(runs$score)
runA=as.numeric(as.integer(runs$score))
summary(runA)
sd(runA)
hist(runA,freq=F,main="Distribution of score")
#####batasman####

dim(Nehra)
names(Nehra)
hist(Nehra$score)


#####bowler####

dim(Oram)
names(Oram)
hist(Oram$score)
