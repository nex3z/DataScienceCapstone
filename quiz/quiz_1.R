# Q1
en_US_blogs <- read.table("./data/final/en_US/en_US.blogs.txt", 
                         stringsAsFactors=F, sep="\n", quote=NULL, 
                         comment='', skipNul = TRUE)
object.size(en_US_blogs)


# Q2
en_US_twitter <- read.table("./data/final/en_US/en_US.twitter.txt", 
                           stringsAsFactors=F, sep="\n", quote=NULL, 
                           comment='', skipNul = TRUE)
length(en_US_twitter[,])


# Q3
en_US_news <- read.table("./data/final/en_US/en_US.news.txt", 
                        stringsAsFactors=F, sep="\n", quote=NULL, 
                        comment='', skipNul = TRUE)
max(nchar(en_US_blogs[, ]))
max(nchar(en_US_twitter[, ]))
max(nchar(en_US_news[, ]))


# Q4
step <- 10000
love_cnt <- 0
hate_cnt <- 0
for (i in 0 : (length(en_US_twitter[,])/step)) {
  print(i*step + 1)
  print((i+1)*step)
  love_cnt <- love_cnt + length(grep("love", en_US_twitter[(i*step + 1) : ((i+1)*step), ]))
  hate_cnt <- hate_cnt + length(grep("hate", en_US_twitter[(i*step + 1) : ((i+1)*step), ]))
}

love_cnt / hate_cnt


# Q5
step <- 10000
biostats_id <- 0
for (i in 0 : (length(en_US_twitter[,])/step)) {
  print(i*step + 1)
  print((i+1)*step)
  biostats_id <- grep("biostats", en_US_twitter[(i*step + 1) : ((i+1)*step), ])
  if (length(biostats_id) != 0) {
    biostats_id <- biostats_id + i*step
    break;
  }
}

en_US_twitter[biostats_id, ]


# Q6
step <- 10000
sentence_cnt <- 0
for (i in 0 : (length(en_US_twitter[,])/step)) {
  print(i*step + 1)
  print((i+1)*step)
  sentence_cnt <- sentence_cnt + length(grep("A computer once beat me at chess, but it was no match for me at kickboxing", en_US_twitter[(i*step + 1) : ((i+1)*step), ]))
}

sentence_cnt

