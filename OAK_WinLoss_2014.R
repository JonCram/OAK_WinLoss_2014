library("ggplot2")
library("grid")
source("~/_dev/themes/theme_cram/theme_cram.R")
df <- read.csv("~/_dev/analysis/OAK_WinLoss_2014/OAK_WinLoss_2014.csv")
# sapply(df,class)

ggplot() + 
  geom_bar(data = df, aes(x=Gm, y=R)
           , stat = "identity"
           , fill="#005596", width=.8) +
  geom_bar(data = df, aes(x=Gm, y=RA)
           , stat = "identity"
           , fill="#A31410", width=.8) +
  xlab("Games") +
  ylab("Runs") +
  ggtitle("Athletics 2014: Runs Scored and Allowed") +
  # annotate("text", x = 0, y = 8, label = "Some text") +
  theme_cram() +
  theme(
    # axis.text.x = element_text(angle=90,hjust=.5,vjust=.5)
  )