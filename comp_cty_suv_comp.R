library(dplyr, ggplot2)
mpg <- as.data.frame(ggplot2::mpg)

mpgc_suv <- mpg %>% filter(class == "suv")
mpgc_compact <- mpg %>% filter(class == "compact")

suv <- mean(mpgc_suv$cty)
compact <- mean(mpgc_compact$cty)

res <- ifelse(suv > compact, "suv win", "compact win")

res
