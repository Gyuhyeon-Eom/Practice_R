exam <- read.csv("csv_exam.csv")

exam %>%  summarise(mean_math = mean(math))

exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math))