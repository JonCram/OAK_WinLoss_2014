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
  annotate("text", x = 6, y = 11, size=6
           , label = "Runs Scored", colour = "#00483A") +
  annotate("text", x = 6.5, y = -9, size=6
           , label = "Runs Allowed", colour = "#FFBE00") +
  theme_cram() +
  theme(
    axis.ticks.margin=unit(c(0,0),'cm') # remove some space between axis and label
  ) +
# mean average of runs scored, h line and text
  geom_hline(aes(yintercept=round(mean(df$R),0)), colour = "#00483A") +
  geom_text(aes(0,mean(df$R),
              label = round(mean(df$R),2)), hjust = 1, vjust = -.7, size=4) +
            #, colour = "#00483A") +
# mean average of runs allowed, h line and text
  geom_hline(aes(yintercept=mean(df$RA)), colour = "#FFBE00") +
  geom_text(aes(0,mean(df$RA),
              label = round(mean(df$RA),2)), hjust = 1, vjust = 1.5, size=4)
           # , colour = "#FFBE00") 