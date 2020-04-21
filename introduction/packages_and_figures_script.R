# install needed packages
# install.packages("rmarkdown", "devtools")
#devtools::install_github('yihui/xaringan')
#devtools::install_github('emitanaka/anicon')
#devtools::install_github("gadenbuie/xaringanthemer")
library(xaringanthemer)

style_mono_accent_inverse(base_color = "#3C989E")

library(ggplot2)
time = 1:5
data <- data.frame(timeline = time,
           ability = -2^(time))

ggplot(data, aes(x = timeline, y = (ability) - 10)) + geom_line() +
  xlab(label = "Time") + ylab("Ability to reproduce the analysis") +
  annotate("segment", x = data[2, 1], xend = data[2, 1], y = (data[2, 2] - 10), yend = (data[2, 2] - 15),
           color = "black", linetype = "dotted") + 
  annotate("segment", x = data[3, 1], xend = data[3, 1], y = (data[3, 2] - 10), yend = (data[3, 2] - 15),
           color = "black", linetype = "dotted") + 
  annotate("segment", x = data[4, 1], xend = data[4, 1], y = (data[4, 2] - 10), yend = (data[4, 2] - 7),
           color = "black", linetype = "dotted") + 
  annotate("segment", x = (data[4, 1] + 0.45), xend = (data[4, 1] + 0.2 ), y = (-2^(data[4, 1] + 0.5) - 11 ), yend =  (-2^(data[4, 1] + 0.5) - 11) ,
           color = "black", linetype = "dotted") + 
  annotate("text", x = data[2, 1], y = (data[2, 2] - 16), label = "person who wrote the analysis left the lab") +
  annotate("text", x = data[3, 1], y = (data[3, 2] - 16), label = "raw data moved around or renamed") +
  annotate("text", x = data[4, 1], y = (data[4, 2] - 4), label = "edit made to analysis script \nbut collaborator still uses \nold workflow/results") +
  annotate("text", x = (data[4, 1] - 0.5), y = (-2^(data[4, 1] + 0.5)) - 11, label = "software package changed or \n is no longer maintained") +
  theme_classic() +
  theme(
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(), 
        axis.ticks.y=element_blank(),
        axis.text.y=element_blank()
        )
ggsave("images/analyis_over_time.png")
