# Q1
en_US_blogs = read.table("./data/final/en_US/en_US.blogs.txt", 
                         stringsAsFactors=F, sep="\n", quote=NULL, 
                         comment='', skipNul = TRUE)
object.size(en_US_blogs)

# Q2
en_US_twitter = read.table("./data/final/en_US/en_US.twitter.txt", 
                           stringsAsFactors=F, sep="\n", quote=NULL, 
                           comment='', skipNul = TRUE)
length(en_US_twitter[,])

# Q3
en_US_news = read.table("./data/final/en_US/en_US.news.txt", 
                        stringsAsFactors=F, sep="\n", quote=NULL, 
                        comment='', skipNul = TRUE)
max(nchar(en_US_blogs[, ]))
max(nchar(en_US_twitter[, ]))
max(nchar(en_US_news[, ]))
