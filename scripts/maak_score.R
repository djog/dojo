library(ggplot2)

df <- read.csv("~/GitHubs/score.csv", stringsAsFactors = FALSE)

lubridate::as_date(df$datum, tz = NULL, format = NULL)
df$team <- as.factor(df$team)
ggplot(
  df,
  aes(x = datum, y = score, fill = team)
) + geom_col(position = position_dodge2()) +
  labs(
    title = "Aantal open Issues"
  ); ggsave("~/GitHubs/dojo/open_issues.png")
