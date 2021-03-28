library(ggplot2)

mpg <- as.data.frame(ggplot2::mpg)

mpg %>% 
  group_by(manufacturer, drv) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  head(10)