library(ggplot2, dplyr)

midwest <- as.data.frame(ggplot2::midwest)

midwest <- midwest %>% 
  mutate(midwest_per =((poptotal - popadults)/poptotal)*100)

midwest <- midwest %>%
  mutate(grade = ifelse(midwest_per>= 40, "large", 
                        ifelse(midwest_per>=30, "middle", "small")))
  
midwest <- midwest %>% 
  mutate(asian = popasian/poptotal*100)

midwest %>% 
  select("state","county","asian") %>% 
  arrange(asian) %>% 
  head()