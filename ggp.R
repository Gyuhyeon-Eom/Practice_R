library(ggplot2)

mpg <- as.data.frame(ggplot2::mpg)

#mf <- mpg %>% filter(manufacturer == "chevrolet" | manufacturer == "ford" | manufacturer == "honda")
mf <- mpg %>% filter(manufacturer %in% c("chevrolet", "ford", "honda"))

mean(mf$hwy)
