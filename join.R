library(dplyr)

test1 <- data.frame( id = c(1,2,3,4,5),
                     mid = c(60,70,10,20,100))

test2 <- data.frame(id = c(1,2,3,4,5),
                    fin = c(70,20,40,50,60))

total <- left_join(test1, test2, by = "id")

