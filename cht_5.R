library(ggplot2)
library(dplyr)

midwest <- as.data.frame(ggplot2::midwest)

head(midwest,10)

midwest <- rename(midwest, total = poptotal, asian = popasian)

midwest$total_asian <- (midwest$asian / midwest$total)*100

mean(midwest$total_asian)

midwest$mean <- ifelse(midwest$total_asian >= 0.4872462, "large", "small")

table(midwest$mean)

qplot(midwest$mean)
