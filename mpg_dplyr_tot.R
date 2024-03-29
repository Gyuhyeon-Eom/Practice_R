library(dplyr, ggplot2)

mpg <- as.data.frame(ggplot2 :: mpg)

'''
mpg %>% 
  group_by(manufacturer) %>% 
  filter(class == "suv") %>% 
  mutate(tot = (cty +hwy)/2) %>% 
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% 
  head(5)
''' %>% %>% 

mpg %>% group_by(manufacturer) %>% 
  filter(class == "suv") %>% 
  mutate(tot = (cty + hwy)/2) %>% 
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% 
  head(5)