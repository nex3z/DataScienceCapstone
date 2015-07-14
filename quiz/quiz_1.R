# Q1
en_US_blogs = read.table("./data/final/en_US/en_US.blogs.txt", sep="\n")
print(object.size(data_q1))

# Q2
en_US_twitter = read.table("./data/final/en_US/en_US.twitter.txt", sep="\n", quote=NULL, comment='', skipNul = TRUE)
# en_US_twitter = readLines("./data/final/en_US/en_US.twitter.txt", skipNul = TRUE)
length(en_US_twitter[,])

# Q3
en_US_news = read.table("./data/final/en_US/en_US.news.txt", sep="\n", quote=NULL, comment='', skipNul = TRUE)