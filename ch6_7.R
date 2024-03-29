library(dplyr, ggplot2)

mpg <- as.data.frame(ggplot2::mpg)

fuel <- data.frame(fl = c("c","d", "e", "p", "r"),
                   price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22),
                   stringsAsFactors = F)

mpg <- left_join(mpg, fuel, by="fl")

mpg %>% select("model", "fl", "price_fl") %>% 
  head(5)