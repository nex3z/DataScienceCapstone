# Q1
file.info("./data/final/en_US/en_US.blogs.txt")$size / 1024 / 1024


# Q2 
en_US_twitter <- file("./data/final/en_US/en_US.twitter.txt", "r") 
en_US_twitter_text <- readLines(en_US_twitter, skipNul=T, encoding="UTF-8")
length(en_US_twitter_text)
close(en_US_twitter)


# Q3
en_US_twitter <- file("./data/final/en_US/en_US.twitter.txt", "r") 
en_US_twitter_text <- readLines(en_US_twitter, skipNul=T, encoding="UTF-8")

en_US_blogs <- file("./data/final/en_US/en_US.blogs.txt", "r") 
en_US_blogs_text <- readLines(en_US_blogs, skipNul=T, encoding="UTF-8")

en_US_news <- file("./data/final/en_US/en_US.news.txt", "r") 
en_US_news_text <- readLines(en_US_news, skipNul=T, encoding="UTF-8")

max(nchar(en_US_twitter_text))
max(nchar(en_US_blogs_text))
max(nchar(en_US_news_text))

close(en_US_twitter)
close(en_US_blogs)
close(en_US_news)

# Q4
en_US_twitter <- file("./data/final/en_US/en_US.twitter.txt", "r") 

love_cnt <- 0
hate_cnt <- 0
loop <- 0
chunk_size <- 100000
while (1) {
  chunk_text <- readLines(en_US_twitter, chunk_size) 
  love_cnt <- love_cnt + length(grep("love", chunk_text))
  hate_cnt <- hate_cnt + length(grep("hate", chunk_text))
  if (length(chunk_text) < chunk_size) {
    break;
  }
  loop <- loop + 1
  print(loop)
  print(length(chunk_text))
}
love_cnt / hate_cnt

