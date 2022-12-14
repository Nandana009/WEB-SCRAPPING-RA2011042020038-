library(rvest) 
library(dplyr)
library(robotstxt)
path = paths_allowed ("https://www.chess.com/ratings")
link <-"https://www.chess.com/ratings"
web <- read_html (link) 
name <- web %>% html_nodes (".master-players-rating-username")%>% html_text()
View (name)
blitz<- web %>% html_nodes("td:nth-child(4)") %>% html_text()
View(blitz)
chess.rankings <- data.frame(name,blitz)
write.csv (chess.rankings, "My chess.csv")
