library("ggplot2")
library("grid")
source("~/_dev/themes/theme_cram/theme_cram.R")
df <- read.csv("~/_dev/analysis/OAK_WinLoss_2014/OAK_WinLoss_2014.csv")
# sapply(df,class)

ggplot() + 
  geom_bar(data = df, aes(x=Gm, y=R)
           , stat = "identity"
           , fill="#00483A", width=.8) +
  geom_bar(data = df, aes(x=Gm, y=RA)
           , stat = "identity"
           , fill="#FFBE00", width=.8) +
  xlab("Games") +
  ylab("Runs") +
  ggtitle("Athletics 2014: Runs Scored and Allowed") +
  annotate("text", x = 4, y = 11, size=6
           , label = "Runs Scored", colour = "#00483A") +
  annotate("text", x = 4, y = -14, size=6
           , label = "Runs Allowed", colour = "#FFBE00") +
 
  theme_cram() +
  theme(
    axis.ticks.margin=unit(c(0,0),'cm')
  )