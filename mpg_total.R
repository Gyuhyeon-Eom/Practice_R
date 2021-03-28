library(ggplot2, dplyr)

mpg <- as.data.frame(ggplot2::mpg)
'''
mpg_new <- mpg %>% 
  mutate(total = cty + hwy,
         mean_total =  total/2)

mpg_new <- mpg_new %>% arrange(mean_total) %>% 
  head(3)

mpg_new
'''

mpg %>% 
  mutate(total_mean = (cty+hwy)/2) %>% 
           arrange(desc(total_mean)) %>% 
           head(3)

