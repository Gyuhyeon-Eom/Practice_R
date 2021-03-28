library(ggplot2)

mpg <- as.data.frame(ggplot2::mpg)

mpgh <- mpg %>% filter(manufacturer == "audi")

mpgh <- mpgh %>% arrange(desc(hwy)) %>% head(5)
mpgh
