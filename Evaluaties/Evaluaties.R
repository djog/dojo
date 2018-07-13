library(ggplot2)
grades <- read.csv("Evaluaties.csv")
grades$Periode <- as.factor(grades$Periode)
g <- ggplot(grades, aes(x = Periode, y = Cijfer)) + 
  ggtitle("Cijfers Dojo")

g + geom_violin() + ggsave("Evaluaties_viool.png")
g + geom_boxplot() + ggsave("Evaluaties_box.png")
