library(dplyr)

exam <- read.csv("csv_exam.csv")

exam %>% arrange(math)
exam %>% arrange(desc(math))
exam %>% arrange(class,math)

