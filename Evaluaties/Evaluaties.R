library(ggplot2)
grades <- read.csv("Evaluaties.csv")
grades$Periode <- as.factor(grades$Periode)
g <- ggplot(grades, aes(x = Periode, y = Cijfer)) +
  ggtitle("Cijfers Dojo")

g + geom_violin(); ggsave("Evaluaties_viool.png")
g + geom_boxplot(); ggsave("Evaluaties_box.png")

grades <- read.csv("Evaluaties.csv")
grades
grades$Periode <- as.numeric(grades$Periode)
grades$Cijfer <- as.numeric(grades$Cijfer)
grades$Cijfer

g <- ggplot(grades, aes(x = Periode, y = Cijfer)) +
  geom_point() +
  geom_smooth() +
  geom_jitter(width = 0.125, height = 0.125) +
  ggplot2::scale_x_continuous(breaks = seq(1, 10)) +
  ggplot2::scale_y_continuous(breaks = seq(1, 10), limits = c(1, 10)) +
  ggtitle("Cijfers Dojo")

g + ggsave("Evaluaties_scatter.png")
