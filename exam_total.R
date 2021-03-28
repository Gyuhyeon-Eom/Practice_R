library(dplyr)

exam <- read.csv("csv_exam.csv")

exam %>% 
  mutate(total = math + english + science,
         mean = (math + english + science)/3,
         test = ifelse(mean >= 70, "pass", "fail")) %>%
  arrange(total) %>% 
  head

