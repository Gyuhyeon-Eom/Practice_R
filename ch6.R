library(ggplot2, dplyr)

mpg <- as.data.frame(ggplot2 :: mpg)



mpg %>% group_by(class) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty))

mpg %>% group_by(manufacturer) %>% 
  summarise(mean_hwy = mean(hwy)) %>% 
  arrange(desc(mean_hwy)) %>% 
  head(3)

mpg %>% group_by(manufacturer) %>%
  filter(class == "compact") %>%
  summarise(n = n()) %>% 
  arrange(desc(n)) %>% 
  head(3)
